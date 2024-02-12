PsReleaseProcessExitSynchronization proc near
                                        ; CODE XREF: sub_1405072E0+162↑p
                                        ; ObDuplicateObject+337↑p ...
                sub     rsp, 28h
                add     rcx, 458h
                call    sub_14024C380
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReleaseProcessExitSynchronization endp
