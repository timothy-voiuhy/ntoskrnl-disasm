SeDeleteAccessState proc near           ; CODE XREF: sub_14030D258+7B2↑p
                                        ; ObDuplicateObject+504↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_14024C4F0
                lea     rcx, [rbx+20h]
                call    SeReleaseSubjectContext
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeDeleteAccessState endp
