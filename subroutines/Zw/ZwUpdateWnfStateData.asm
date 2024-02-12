ZwUpdateWnfStateData proc near          ; CODE XREF: FsRtlSendModernAppTermination+60↑p
                                        ; sub_14039B008+F5274↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1D0h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUpdateWnfStateData endp
