KeAreApcsDisabled proc near             ; CODE XREF: sub_1403DDA90+129↓p
                                        ; sub_1403DDA90+171↓p ...
                mov     rax, gs:188h
                cmp     dword ptr [rax+1E4h], 0
                setnz   al
                retn
KeAreApcsDisabled endp
