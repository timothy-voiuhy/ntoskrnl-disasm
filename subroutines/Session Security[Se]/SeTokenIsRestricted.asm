SeTokenIsRestricted proc near           ; CODE XREF: sub_14063EF70+296↓p
                                        ; sub_14063EF70+2A2↓p ...
                mov     eax, [rcx+0C8h]
                shr     eax, 4
                and     al, 1
                retn
SeTokenIsRestricted endp
