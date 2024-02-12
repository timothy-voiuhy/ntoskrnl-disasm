ZwDuplicateObject proc near             ; CODE XREF: sub_1403114A8+4F↑p
                                        ; sub_14064A9E0+11CA↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 3Ch ; '<'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDuplicateObject endp
