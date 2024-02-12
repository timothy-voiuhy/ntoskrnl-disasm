SeCaptureSubjectContextEx proc near     ; CODE XREF: NtSetInformationFile+183↑p
                                        ; sub_14034F684+53↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140808026 SIZE 00000059 BYTES

                push    rbx
                push    rdi
                sub     rsp, 38h
                mov     rax, [rdx+440h]
                mov     rbx, r8

loc_140653AD1:                          ; DATA XREF: .rdata:0000000140058C10↑o
                                        ; .rdata:0000000140058C24↑o ...
                mov     [rsp+48h+arg_8], rbp
                mov     rdi, rcx
                mov     [rsp+48h+arg_10], rsi
                mov     rsi, rdx
                mov     [rsp+48h+var_20], r14
                mov     [rsp+48h+var_28], r15
                mov     [r8+18h], rax
                test    rcx, rcx
                jz      loc_140653BD4
                mov     eax, [rcx+510h]
                test    al, 8
                jnz     short loc_140653B52
                xor     ebp, ebp
                mov     r14d, ebp

loc_140653B07:                          ; CODE XREF: SeCaptureSubjectContextEx+10F↓j
                                        ; SeCaptureSubjectContextEx+119↓j
                mov     [rbx], r14
                lea     r14, [rsi+4B8h]
                mov     rcx, r14
                call    sub_14024C570
                mov     rdi, rax
                test    rax, rax
                jz      loc_140653BEC

loc_140653B25:                          ; CODE XREF: SeCaptureSubjectContextEx+175↓j
                mov     r15, [rsp+48h+var_28]
                mov     r14, [rsp+48h+var_20]
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
                mov     [rbx+10h], rdi
                cmp     cs:dword_140D2D010, 0
                jnz     loc_14080802E

loc_140653B4A:                          ; CODE XREF: SeCaptureSubjectContextEx+1B4595↓j
                                        ; SeCaptureSubjectContextEx+1B45B3↓j ...
                add     rsp, 38h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140653B52:                          ; CODE XREF: SeCaptureSubjectContextEx+40↑j
                                        ; DATA XREF: .pdata:00000001400FF774↑o ...
                mov     [rsp+48h+var_18], r12
                mov     r12, gs:188h
                dec     word ptr [r12+1E4h]
                xor     edx, edx
                add     rcx, 500h
                call    ExAcquirePushLockSharedEx
                mov     eax, [rdi+510h]
                xor     ebp, ebp
                test    al, 8
                jz      loc_140808026
                mov     r14, [rdi+4A8h]
                and     r14, 0FFFFFFFFFFFFFFF8h
                mov     rcx, r14
                call    ObfReferenceObject
                mov     eax, [rdi+4A8h]
                and     eax, 3
                mov     [rbx+8], eax

loc_140653BA6:                          ; CODE XREF: SeCaptureSubjectContextEx+1B4569↓j
                mov     eax, 11h
                lock cmpxchg [rdi+500h], rbp
                jnz     short loc_140653BDE

loc_140653BB6:                          ; CODE XREF: SeCaptureSubjectContextEx+12A↓j
                lea     rcx, [rdi+500h]
                call    sub_140243660
                mov     rcx, r12
                call    sub_14021E1F0
                mov     r12, [rsp+48h+var_18]
                jmp     loc_140653B07
; ---------------------------------------------------------------------------

loc_140653BD4:                          ; CODE XREF: SeCaptureSubjectContextEx+32↑j
                                        ; DATA XREF: .rdata:0000000140058C38↑o ...
                xor     ebp, ebp
                mov     r14d, ebp
                jmp     loc_140653B07
; ---------------------------------------------------------------------------

loc_140653BDE:                          ; CODE XREF: SeCaptureSubjectContextEx+F4↑j
                                        ; DATA XREF: .rdata:0000000140058C38↑o ...
                lea     rcx, [rdi+500h]
                call    ExfReleasePushLockShared
                jmp     short loc_140653BB6
; ---------------------------------------------------------------------------

loc_140653BEC:                          ; CODE XREF: SeCaptureSubjectContextEx+5F↑j
                                        ; DATA XREF: .pdata:00000001400FF798↑o ...
                mov     r15, gs:188h
                dec     word ptr [r15+1E4h]
                add     rsi, 438h
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                mov     rcx, r14
                call    sub_14021AEA8
                mov     rdi, rax
                mov     eax, 11h
                lock cmpxchg [rsi], rbp
                jnz     short loc_140653C3A

loc_140653C25:                          ; CODE XREF: SeCaptureSubjectContextEx+182↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                jmp     loc_140653B25
; ---------------------------------------------------------------------------

loc_140653C3A:                          ; CODE XREF: SeCaptureSubjectContextEx+163↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     short loc_140653C25
SeCaptureSubjectContextEx endp
