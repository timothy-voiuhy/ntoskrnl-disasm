IoFreeMiniCompletionPacket proc near    ; CODE XREF: sub_14030CB40+167↑p
                                        ; sub_14030E380+7A↑p ...
                sub     rsp, 28h
                and     qword ptr [rcx+38h], 0
                call    sub_140613E40
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFreeMiniCompletionPacket endp
