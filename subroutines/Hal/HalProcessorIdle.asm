HalProcessorIdle proc near              ; CODE XREF: sub_140253E20:loc_1402542C7↑p
                                        ; sub_140390670+9↑p ...
                sub     rsp, 28h
                call    sub_140396280
                add     rsp, 28h
                sti
                hlt
; ---------------------------------------------------------------------------
                retn
HalProcessorIdle endp
