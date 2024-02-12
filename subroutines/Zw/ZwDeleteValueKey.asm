ZwDeleteValueKey proc near              ; CODE XREF: sub_14039B628+4↑p
                                        ; sub_1403B7D14:loc_1403B7D98↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 0D7h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDeleteValueKey endp
