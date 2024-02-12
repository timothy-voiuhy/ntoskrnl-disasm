PsGetThreadHardErrorsAreDisabled proc near
                                        ; DATA XREF: .pdata:00000001400DCF5C↑o
                mov     al, [rcx+510h]
                shr     al, 4
                and     al, 1
                retn
PsGetThreadHardErrorsAreDisabled endp
