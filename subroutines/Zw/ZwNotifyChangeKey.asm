ZwNotifyChangeKey proc near             ; CODE XREF: sub_14039ACB0+ED↑p
                                        ; sub_1403B4FB0+6A↑p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 11Ah
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwNotifyChangeKey endp
