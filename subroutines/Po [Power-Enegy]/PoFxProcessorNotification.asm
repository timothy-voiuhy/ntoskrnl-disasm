PoFxProcessorNotification proc near     ; DATA XREF: .rdata:00000001400AD384↑o
                                        ; .pdata:00000001400DFDA0↑o

; FUNCTION CHUNK AT 00000001404B4E68 SIZE 00000026 BYTES

                sub     rsp, 28h
                mov     rax, [rcx+40h]
                test    rax, rax
                jnz     loc_1404B4E68

loc_1403CE211:                          ; CODE XREF: PoFxProcessorNotification+E6C6F↓j
                mov     eax, 0C0000002h

loc_1403CE216:                          ; CODE XREF: PoFxProcessorNotification+E6C89↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxProcessorNotification endp
