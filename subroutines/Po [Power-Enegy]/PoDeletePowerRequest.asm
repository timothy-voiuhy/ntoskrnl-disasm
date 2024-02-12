PoDeletePowerRequest proc near          ; CODE XREF: PoUnregisterSystemState+9↑p
                                        ; DATA XREF: .pdata:00000001401075F8↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402B2220
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoDeletePowerRequest endp
