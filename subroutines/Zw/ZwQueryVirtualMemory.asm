ZwQueryVirtualMemory proc near          ; CODE XREF: sub_14037B868+119682↓p
                                        ; sub_14037B868+1196A7↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 23h ; '#'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryVirtualMemory endp
