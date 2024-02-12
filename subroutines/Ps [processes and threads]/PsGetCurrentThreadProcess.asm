PsGetCurrentThreadProcess proc near     ; CODE XREF: SeCheckForCriticalAceRemoval+65↓p
                                        ; sub_140631260+714↓p ...
                mov     rax, gs:188h
                mov     rax, [rax+220h]
                retn
PsGetCurrentThreadProcess endp
