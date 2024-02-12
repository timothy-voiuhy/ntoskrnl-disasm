ZwFreeVirtualMemory proc near           ; CODE XREF: sub_1403F7E44+72↑p
                                        ; sub_1403F7E44+A5↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1Eh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwFreeVirtualMemory endp
