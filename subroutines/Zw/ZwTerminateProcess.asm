ZwTerminateProcess proc near            ; CODE XREF: sub_140339370+141100↓p
                                        ; sub_140526110+565↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 2Ch ; ','
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwTerminateProcess endp
