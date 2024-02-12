FsRtlIsTotalDeviceFailure proc near     ; CODE XREF: sub_14033ADF4:loc_14033AE21↑p
                                        ; sub_14033AE38+4E↑p ...
                test    ecx, ecx
                jns     short loc_14033AED0
                cmp     ecx, 0C000003Fh
                jz      short loc_14033AED0
                cmp     ecx, 0C000009Ch
                jz      short loc_14033AED0
                cmp     ecx, 0C0000470h
                jz      short loc_14033AED0
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14033AED0:                          ; CODE XREF: FsRtlIsTotalDeviceFailure+2↑j
                                        ; FsRtlIsTotalDeviceFailure+A↑j ...
                xor     al, al
                retn
FsRtlIsTotalDeviceFailure endp
