ZwMapViewOfSection proc near            ; CODE XREF: sub_1402B0F00+4F↑p
                                        ; sub_1403BD814+12D↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 28h ; '('
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwMapViewOfSection endp
