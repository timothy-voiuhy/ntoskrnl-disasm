IoAttachDeviceToDeviceStackSafe proc near
                                        ; CODE XREF: IoAttachDevice+CC↓p
                                        ; DATA XREF: .pdata:00000001400D7AD8↑o
                sub     rsp, 28h
                call    sub_140349804
                neg     rax
                sbb     eax, eax
                not     eax
                and     eax, 0C000000Eh
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAttachDeviceToDeviceStackSafe endp
