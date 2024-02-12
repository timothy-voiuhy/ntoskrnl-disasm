ExSystemExceptionFilter proc near       ; CODE XREF: sub_140216560+2020D9↑p
                                        ; sub_14027ED80+199CA9↑p ...
                mov     rcx, gs:188h
                xor     eax, eax
                cmp     [rcx+232h], al
                setnz   al
                retn
ExSystemExceptionFilter endp
