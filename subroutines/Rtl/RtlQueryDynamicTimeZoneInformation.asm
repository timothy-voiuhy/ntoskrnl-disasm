RtlQueryDynamicTimeZoneInformation proc near
                                        ; CODE XREF: sub_1407A9004+151↓p
                                        ; sub_1407A9004:loc_1407A91CE↓p ...
                sub     rsp, 28h
                mov     edx, 1B0h
                call    sub_1406DC150
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlQueryDynamicTimeZoneInformation endp
