FsRtlFastCheckLockForWrite proc near    ; CODE XREF: FsRtlCheckLockForWriteAccess+89↑p
                                        ; DATA XREF: .rdata:000000014007B744↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140474690 SIZE 000000DF BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, [rcx+18h]
                test    rsi, rsi
                jz      loc_140474765
                cmp     qword ptr [rsi+20h], 0
                jz      short loc_14032912E

loc_1403290BD:                          ; CODE XREF: FsRtlFastCheckLockForWrite+A3↓j
                mov     rax, [r8]
                test    rax, rax
                jz      loc_140474765
                mov     r14, [rdx]
                lea     r15, [rax-1]
                lea     rbp, [rsi+18h]
                mov     [rsp+78h+var_48], r14
                add     r15, r14
                mov     rcx, rbp
                mov     [rsp+78h+arg_0], r15
                call    KeAcquireSpinLockRaiseToDpc
                mov     ebx, 1
                movzx   edi, al
                cmp     r15, [rsi]
                jnb     short loc_14032913A

loc_1403290F9:                          ; CODE XREF: FsRtlFastCheckLockForWrite+149↓j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474690

loc_14032910F:                          ; CODE XREF: FsRtlFastCheckLockForWrite+134↓j
                                        ; FsRtlFastCheckLockForWrite+14B602↓j ...
                mov     cr8, rdi
                mov     al, bl

loc_140329115:                          ; CODE XREF: FsRtlFastCheckLockForWrite+14B6DA↓j
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032912E:                          ; CODE XREF: FsRtlFastCheckLockForWrite+2B↑j
                cmp     qword ptr [rsi+28h], 0
                jnz     short loc_1403290BD
                jmp     loc_140474765
; ---------------------------------------------------------------------------

loc_14032913A:                          ; CODE XREF: FsRtlFastCheckLockForWrite+67↑j
                mov     r13, [rsp+78h+arg_20]
                mov     r12, [rsp+78h+arg_28]
                mov     rax, [r13+78h]
                test    rax, rax
                jz      loc_1404746F4
                cmp     r14, [rax]
                mov     r14d, [rsp+78h+arg_18]
                jb      short loc_14032916A
                cmp     r15, [rax+28h]
                jbe     short loc_1403291C9

loc_14032916A:                          ; CODE XREF: FsRtlFastCheckLockForWrite+D2↑j
                                        ; FsRtlFastCheckLockForWrite+13D↓j ...
                lea     r8, [rsp+78h+arg_0]
                mov     rcx, rbp
                lea     rdx, [rsp+78h+var_48]
                call    sub_14036C5A0
                mov     sil, al
                cmp     al, bl
                jnz     short loc_1403291AB
                mov     [rsp+78h+var_50], r12
                lea     r8, [rsp+78h+arg_0]
                mov     r9d, r14d
                mov     [rsp+78h+var_58], r13
                lea     rdx, [rsp+78h+var_48]
                mov     rcx, rbp
                call    sub_14036BCC8
                mov     sil, al

loc_1403291AB:                          ; CODE XREF: FsRtlFastCheckLockForWrite+F4↑j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474701

loc_1403291C1:                          ; CODE XREF: FsRtlFastCheckLockForWrite+14B673↓j
                                        ; FsRtlFastCheckLockForWrite+14B67F↓j ...
                mov     bl, sil
                jmp     loc_14032910F
; ---------------------------------------------------------------------------

loc_1403291C9:                          ; CODE XREF: FsRtlFastCheckLockForWrite+D8↑j
                cmp     [rax+14h], r14d
                jnz     short loc_14032916A
                cmp     [rax+20h], r12
                jnz     short loc_14032916A
                cmp     byte ptr [rax+10h], 0
                jnz     loc_1403290F9
                jmp     short loc_14032916A
FsRtlFastCheckLockForWrite endp
