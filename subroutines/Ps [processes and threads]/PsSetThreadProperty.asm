PsSetThreadProperty proc near           ; DATA XREF: .pdata:00000001400D5AE0↑o
                sub     rsp, 28h
                mov     r9, r8
                mov     r10, rdx
                call    sub_140325A30
                test    eax, eax
                js      short loc_140325A1A
                add     rcx, 5C8h
                mov     rdx, r10
                test    r9, r9
                jz      short loc_140325A20
                mov     r8, r9
                call    sub_140325AB0

loc_140325A1A:                          ; CODE XREF: PsSetThreadProperty+11↑j
                                        ; PsSetThreadProperty+38↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140325A20:                          ; CODE XREF: PsSetThreadProperty+20↑j
                xor     r8d, r8d
                call    sub_140325918
                jmp     short loc_140325A1A
PsSetThreadProperty endp
