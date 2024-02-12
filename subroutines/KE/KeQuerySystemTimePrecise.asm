KeQuerySystemTimePrecise proc near      ; CODE XREF: sub_140664200+178↓p
                                        ; sub_14067EC44+234F↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402D2E80
                mov     [rbx], rax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeQuerySystemTimePrecise endp
