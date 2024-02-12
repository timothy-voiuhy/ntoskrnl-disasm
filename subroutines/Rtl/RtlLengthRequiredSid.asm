RtlLengthRequiredSid proc near          ; CODE XREF: sub_14030D258+33F↑p
                                        ; sub_14030D258+362↑p ...
                cmp     ecx, 3FFFFFF7h
                ja      short loc_1406B6FE1
                lea     eax, ds:8[rcx*4]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B6FE1:                          ; CODE XREF: RtlLengthRequiredSid+6↑j
                or      eax, 0FFFFFFFFh
                retn
RtlLengthRequiredSid endp
