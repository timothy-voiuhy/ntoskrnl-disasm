PsIsThreadTerminating proc near         ; CODE XREF: sub_140653C50+1246↓p
                                        ; DATA XREF: .pdata:00000001400CFF48↑o
                mov     eax, [rcx+510h]
                and     al, 1
                retn
PsIsThreadTerminating endp
