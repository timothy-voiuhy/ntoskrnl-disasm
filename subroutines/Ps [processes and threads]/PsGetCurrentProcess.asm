PsGetCurrentProcess proc near           ; CODE XREF: sub_1402834D0:loc_140283AE3↑p
                                        ; sub_1402834D0:loc_140283BB6↑p ...
                mov     rax, gs:188h    ; IoGetCurrentProcess
                mov     rax, [rax+0B8h]
                retn
PsGetCurrentProcess endp
