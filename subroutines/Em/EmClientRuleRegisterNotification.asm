EmClientRuleRegisterNotification proc near
                                        ; DATA XREF: .pdata:000000014011C154↑o
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_14088B590
                mov     eax, 0C000000Dh
                jmp     short loc_14088B595
; ---------------------------------------------------------------------------

loc_14088B590:                          ; CODE XREF: EmClientRuleRegisterNotification+7↑j
                call    sub_14088B5A4

loc_14088B595:                          ; CODE XREF: EmClientRuleRegisterNotification+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EmClientRuleRegisterNotification endp
