ZwQuerySystemInformation proc near      ; CODE XREF: sub_1403B4620+31↑p
                                        ; sub_140304F00+1650CC↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 36h ; '6'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQuerySystemInformation endp
