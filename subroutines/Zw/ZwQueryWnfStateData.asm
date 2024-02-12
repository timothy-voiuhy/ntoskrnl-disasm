ZwQueryWnfStateData proc near           ; CODE XREF: sub_14038C388+A0↑p
                                        ; sub_1403F8DE4+8E↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 164h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryWnfStateData endp
