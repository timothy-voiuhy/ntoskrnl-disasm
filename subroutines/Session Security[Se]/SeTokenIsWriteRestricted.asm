SeTokenIsWriteRestricted proc near      ; CODE XREF: sub_14063EF70+2AE↓p
                                        ; sub_14063EF70+2BA↓p ...
                mov     eax, [rcx+0C8h]
                shr     eax, 3
                and     al, 1
                retn
SeTokenIsWriteRestricted endp
