ZwDeviceIoControlFile proc near         ; CODE XREF: sub_140576BE4+57↓p
                                        ; sub_1405DDE84+9A↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 7
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwDeviceIoControlFile endp
