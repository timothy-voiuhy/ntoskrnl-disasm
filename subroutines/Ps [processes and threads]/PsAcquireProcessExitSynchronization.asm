PsAcquireProcessExitSynchronization proc near
                                        ; CODE XREF: sub_1405F1014+102↑p
                                        ; DATA XREF: .pdata:00000001400FC438↑o ...
                sub     rsp, 28h
                add     rcx, 458h
                call    sub_14024C840
                neg     al
                sbb     eax, eax
                not     eax
                and     eax, 0C000010Ah
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsAcquireProcessExitSynchronization endp
