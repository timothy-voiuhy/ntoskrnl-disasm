ZwProtectVirtualMemory proc near        ; CODE XREF: sub_1402B0E44+2C↑p
                                        ; sub_140524924+79↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 50h ; 'P'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwProtectVirtualMemory endp
