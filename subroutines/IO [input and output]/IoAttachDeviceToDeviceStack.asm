IoAttachDeviceToDeviceStack proc near   ; CODE XREF: sub_1407AE1F0+74↓p
                                        ; sub_1409E6F04+168↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     r8d, r8d
                call    sub_140349804
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAttachDeviceToDeviceStack endp
