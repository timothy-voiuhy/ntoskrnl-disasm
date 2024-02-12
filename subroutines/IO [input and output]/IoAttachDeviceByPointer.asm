IoAttachDeviceByPointer proc near       ; DATA XREF: .pdata:00000001400F2700↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    sub_140349804
                neg     rax
                sbb     eax, eax
                not     eax
                and     eax, 0C000000Eh
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAttachDeviceByPointer endp
