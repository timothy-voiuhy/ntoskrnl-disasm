PsReferencePrimaryToken proc near       ; CODE XREF: sub_140219D20+102↑p
                                        ; sub_1402A97D8+1A2AF0↑p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                lea     rsi, [rcx+4B8h]
                mov     rdi, rcx
                mov     rcx, rsi
                call    sub_14024C570
                xor     r14d, r14d
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14061C496

loc_14061C47F:                          ; CODE XREF: PsReferencePrimaryToken+8E↓j
                mov     rbp, [rsp+38h+arg_10]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061C496:                          ; CODE XREF: PsReferencePrimaryToken+2D↑j
                mov     rbp, gs:188h
                dec     word ptr [rbp+1E4h]
                add     rdi, 438h
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockSharedEx
                mov     rcx, rsi
                call    sub_14021AEA8
                mov     rbx, rax
                mov     eax, 11h
                lock cmpxchg [rdi], r14
                jnz     short loc_14061C4E0

loc_14061C4CE:                          ; CODE XREF: PsReferencePrimaryToken+98↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                jmp     short loc_14061C47F
; ---------------------------------------------------------------------------

loc_14061C4E0:                          ; CODE XREF: PsReferencePrimaryToken+7C↑j
                mov     rcx, rdi
                call    ExfReleasePushLockShared
                jmp     short loc_14061C4CE
PsReferencePrimaryToken endp
