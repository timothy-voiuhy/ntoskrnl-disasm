KeRegisterBugCheckReasonCallback proc near
                                        ; CODE XREF: sub_1403CF798+E616C↓p
                                        ; sub_1404F948C+B3↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A2ED4 SIZE 000000BB BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, r9
                movsxd  rdi, r8d
                mov     r12, rdx
                mov     rbx, rcx
                mov     bpl, 1
                mov     rsi, cr8
                mov     r13d, 0Fh
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                or      r14, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404A2ED4

loc_14039F31B:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+103C07↓j
                                        ; KeRegisterBugCheckReasonCallback+103C10↓j ...
                lea     rcx, qword_140C31E20
                call    KeAcquireSpinLockAtDpcLevel
                cmp     byte ptr [rbx+2Ch], 0
                jnz     loc_14039F40C
                cmp     edi, 4
                jz      loc_14039F3E3
                lea     rcx, qword_140C32020
                cmp     edi, 6
                jz      loc_14039F3E3

loc_14039F34A:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+11A↓j
                mov     rdx, rbx
                call    sub_14039F418
                test    al, al
                jnz     loc_14039F40C
                lea     rax, [r12+rdi]
                mov     [rbx+10h], r12
                add     rax, r15
                mov     [rbx+28h], edi
                mov     [rbx+18h], r15
                mov     [rbx+20h], rax
                mov     [rbx+2Ch], bpl
                cmp     edi, 3FFh
                jz      loc_1404A2F18

loc_14039F380:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+103C4F↓j
                cmp     edi, 7
                jz      short loc_14039F3EF
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     loc_1404A2F24
                mov     [rbx], rax
                mov     [rbx+8], rcx
                mov     [rax+8], rbx
                mov     [rcx], rbx

loc_14039F3A0:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+13A↓j
                                        ; KeRegisterBugCheckReasonCallback+13F↓j
                lea     rcx, qword_140C31E20
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A2F2B

loc_14039F3BA:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+103C5D↓j
                                        ; KeRegisterBugCheckReasonCallback+103C6A↓j ...
                movzx   ecx, sil
                mov     cr8, rcx
                mov     rbx, [rsp+48h+arg_0]
                mov     al, bpl
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039F3E3:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+64↑j
                                        ; KeRegisterBugCheckReasonCallback+74↑j
                lea     rcx, qword_140C32000
                jmp     loc_14039F34A
; ---------------------------------------------------------------------------

loc_14039F3EF:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+B3↑j
                mov     rax, [rcx+8]
                cmp     [rax], rcx
                jnz     loc_1404A2F24
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     [rcx+8], rbx
                jmp     short loc_14039F3A0
; ---------------------------------------------------------------------------

loc_14039F40C:                          ; CODE XREF: KeRegisterBugCheckReasonCallback+5B↑j
                                        ; KeRegisterBugCheckReasonCallback+84↑j
                xor     bpl, bpl
                jmp     short loc_14039F3A0
KeRegisterBugCheckReasonCallback endp
