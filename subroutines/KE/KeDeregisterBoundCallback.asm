KeDeregisterBoundCallback proc near     ; DATA XREF: .pdata:00000001400F34BC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbp, rcx
                mov     esi, 0C0000008h
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C31420
                call    sub_1402A9540
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140514337
                xor     dil, dil
                cmp     [rax+8], rbp
                jnz     short loc_1405142ED
                mov     r8, rax
                lea     rcx, qword_140C31420
                xor     edx, edx
                call    sub_1403AF5DC
                mov     dil, al

loc_1405142ED:                          ; CODE XREF: KeDeregisterBoundCallback+47↑j
                prefetchw byte ptr cs:qword_140C31420
                mov     rax, cs:qword_140C31420
                jmp     short loc_14051430C
; ---------------------------------------------------------------------------

loc_1405142FD:                          ; CODE XREF: KeDeregisterBoundCallback+86↓j
                lea     rcx, [rax+1]
                lock cmpxchg cs:qword_140C31420, rcx
                jz      short loc_140514320

loc_14051430C:                          ; CODE XREF: KeDeregisterBoundCallback+6B↑j
                mov     rcx, rax
                xor     rcx, rbx
                cmp     rcx, 0Fh
                jb      short loc_1405142FD
                mov     rcx, rbx
                call    sub_14024C380

loc_140514320:                          ; CODE XREF: KeDeregisterBoundCallback+7A↑j
                test    dil, dil
                jz      short loc_140514337
                mov     rcx, rbx
                call    sub_1409506CC
                mov     rcx, rbx
                call    sub_140718840
                xor     esi, esi

loc_140514337:                          ; CODE XREF: KeDeregisterBoundCallback+3E↑j
                                        ; KeDeregisterBoundCallback+93↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeDeregisterBoundCallback endp
