IoReleaseVpbSpinLock proc near          ; CODE XREF: sub_1402EFDAC:loc_1402EFDFC↑p
                                        ; sub_1402EFDAC+9C↑p ...
                sub     rsp, 28h
                mov     dl, cl
                mov     ecx, 9
                call    KeReleaseQueuedSpinLock
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReleaseVpbSpinLock endp
