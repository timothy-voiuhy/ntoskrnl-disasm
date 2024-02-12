KeRegisterBugCheckCallback proc near    ; DATA XREF: .rdata:00000001400ACE34↑o
                                        ; .pdata:00000001400DFC98↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404B42D0 SIZE 000000AD BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14d, r9d
                mov     r15, r8
                mov     r12, rdx
                mov     rbx, rcx
                mov     rdi, cr8
                mov     r13d, 0Fh
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404B42D0

loc_1403CD4C8:                          ; CODE XREF: KeRegisterBugCheckCallback+E6E52↓j
                                        ; KeRegisterBugCheckCallback+E6E5B↓j ...
                lea     rcx, qword_140C31E20
                call    KeAcquireSpinLockAtDpcLevel
                xor     sil, sil
                cmp     [rbx+38h], sil
                jnz     short loc_1403CD540
                lea     r8, qword_140C31FF0
                mov     rdx, rbx
                mov     rcx, r8
                call    sub_14039F418
                test    al, al
                jnz     short loc_1403CD540
                mov     rcx, [rsp+48h+arg_20]
                lea     rax, [r12+r14]
                add     rax, r15
                mov     [rbx+10h], r12
                add     rax, rcx
                mov     [rbx+18h], r15
                mov     [rbx+30h], rax
                mov     [rbx+20h], r14d
                mov     [rbx+28h], rcx
                mov     byte ptr [rbx+38h], 1
                mov     rax, cs:qword_140C31FF0
                cmp     [rax+8], r8
                jnz     loc_1404B4313
                mov     [rbx], rax
                mov     sil, 1
                mov     [rbx+8], r8
                mov     [rax+8], rbx
                mov     cs:qword_140C31FF0, rbx

loc_1403CD540:                          ; CODE XREF: KeRegisterBugCheckCallback+5B↑j
                                        ; KeRegisterBugCheckCallback+71↑j
                lea     rcx, qword_140C31E20
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B431A

loc_1403CD55A:                          ; CODE XREF: KeRegisterBugCheckCallback+E6E9C↓j
                                        ; KeRegisterBugCheckCallback+E6EA9↓j ...
                movzx   ecx, dil
                mov     cr8, rcx
                mov     rbx, [rsp+48h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRegisterBugCheckCallback endp
