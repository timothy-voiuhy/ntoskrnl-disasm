HalRegisterDynamicProcessor proc near   ; CODE XREF: sub_1408BBF18+D0↓p
                                        ; DATA XREF: .pdata:00000001400EEAE8↑o
                sub     rsp, 28h
                call    sub_1404BC5E8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalRegisterDynamicProcessor endp
