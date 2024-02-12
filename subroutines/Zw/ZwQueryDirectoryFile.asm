ZwQueryDirectoryFile proc near          ; CODE XREF: sub_14077B5E0+D33AD↓p
                                        ; sub_14077B5E0+D35DD↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 35h ; '5'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryDirectoryFile endp
