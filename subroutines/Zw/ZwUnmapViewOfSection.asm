ZwUnmapViewOfSection proc near          ; CODE XREF: sub_1402AFFF4+A↑p
                                        ; sub_14037128C+76↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 2Ah ; '*'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnmapViewOfSection endp
