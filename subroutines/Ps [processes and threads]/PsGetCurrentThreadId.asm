PsGetCurrentThreadId proc near          ; CODE XREF: sub_1408AD014:loc_1408AD0BC↓p
                                        ; PoShutdownBugCheck+8B↓p ...
                mov     rax, gs:188h
                mov     rax, [rax+480h]
                retn
PsGetCurrentThreadId endp
