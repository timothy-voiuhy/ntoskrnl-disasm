RtlEnumerateGenericTableAvl proc near   ; CODE XREF: sub_1407976A0+1B↓p
                                        ; sub_1407904D8+A4F0B↓p ...
                sub     rsp, 28h
                test    dl, dl
                jz      short loc_14035C41D
                and     qword ptr [rcx+38h], 0

loc_14035C41D:                          ; CODE XREF: RtlEnumerateGenericTableAvl+6↑j
                lea     rdx, [rcx+38h]
                call    RtlEnumerateGenericTableWithoutSplayingAvl
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlEnumerateGenericTableAvl endp
