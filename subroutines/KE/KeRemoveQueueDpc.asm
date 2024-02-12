KeRemoveQueueDpc proc near              ; CODE XREF: sub_1406DD1C8+18E↓p
                                        ; IoDisconnectInterrupt+38↓p ...
                sub     rsp, 28h
                xor     edx, edx
                call    KeRemoveQueueDpcEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRemoveQueueDpc endp
