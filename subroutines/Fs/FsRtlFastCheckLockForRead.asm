FsRtlFastCheckLockForRead proc near     ; CODE XREF: FsRtlCheckLockForReadAccess+6C↑p
                                        ; DATA XREF: .rdata:000000014007B784↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140474770 SIZE 000000CA BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, [rcx+18h]
                mov     r12d, r9d
                test    rsi, rsi
                jz      short loc_1403292A9
                cmp     qword ptr [rsi+28h], 0
                jnz     short loc_1403292C8

loc_1403292A9:                          ; CODE XREF: FsRtlFastCheckLockForRead+20↑j
                                        ; FsRtlFastCheckLockForRead+4E↓j
                mov     eax, 1

loc_1403292AE:                          ; CODE XREF: FsRtlFastCheckLockForRead+E2↓j
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403292C8:                          ; CODE XREF: FsRtlFastCheckLockForRead+27↑j
                mov     rax, [r8]
                test    rax, rax
                jz      short loc_1403292A9
                mov     r14, [rdx]
                lea     r15, [rax-1]
                lea     rbp, [rsi+18h]
                mov     [rsp+68h+var_38], r14
                add     r15, r14
                mov     rcx, rbp
                mov     [rsp+68h+arg_0], r15
                call    KeAcquireSpinLockRaiseToDpc
                mov     ebx, 1
                movzx   edi, al
                cmp     r15, [rsi]
                jb      short loc_140329373
                mov     rdx, [rsp+68h+arg_20]
                mov     rcx, [rsp+68h+arg_28]
                mov     rax, [rdx+78h]
                test    rax, rax
                jz      short loc_140329321
                cmp     r14, [rax]
                jb      short loc_140329321
                cmp     r15, [rax+28h]
                jbe     short loc_140329367

loc_140329321:                          ; CODE XREF: FsRtlFastCheckLockForRead+94↑j
                                        ; FsRtlFastCheckLockForRead+99↑j ...
                mov     [rsp+68h+var_40], rcx
                lea     r8, [rsp+68h+arg_0]
                mov     [rsp+68h+var_48], rdx
                mov     r9d, r12d
                lea     rdx, [rsp+68h+var_38]
                mov     rcx, rbp
                call    sub_14036BCC8
                mov     rcx, rbp
                mov     sil, al
                call    KeReleaseSpinLockFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_1404747D4

loc_140329359:                          ; CODE XREF: FsRtlFastCheckLockForRead+14B556↓j
                                        ; FsRtlFastCheckLockForRead+14B563↓j ...
                mov     bl, sil

loc_14032935C:                          ; CODE XREF: FsRtlFastCheckLockForRead+103↓j
                                        ; FsRtlFastCheckLockForRead+14B4F2↓j ...
                mov     cr8, rdi
                mov     al, bl
                jmp     loc_1403292AE
; ---------------------------------------------------------------------------

loc_140329367:                          ; CODE XREF: FsRtlFastCheckLockForRead+9F↑j
                cmp     [rax+14h], r12d
                jnz     short loc_140329321
                cmp     [rax+20h], rcx
                jnz     short loc_140329321

loc_140329373:                          ; CODE XREF: FsRtlFastCheckLockForRead+7B↑j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14032935C
                jmp     loc_140474770
FsRtlFastCheckLockForRead endp
