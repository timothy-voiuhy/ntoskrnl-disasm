IoAcquireVpbSpinLock proc near          ; CODE XREF: sub_1402EFDAC+32↑p
                                        ; sub_1402EFDAC+21A↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 9
                call    KeAcquireQueuedSpinLock
                mov     [rbx], al
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAcquireVpbSpinLock endp
