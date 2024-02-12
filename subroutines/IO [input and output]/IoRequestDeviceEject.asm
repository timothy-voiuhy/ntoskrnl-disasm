IoRequestDeviceEject proc near          ; CODE XREF: sub_1407408F4+F4EEF↓p
                                        ; sub_1408B6BD0+80↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    IoRequestDeviceEjectEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRequestDeviceEject endp
