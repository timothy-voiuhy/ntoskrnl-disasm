RtlNumberOfClearBits proc near          ; CODE XREF: sub_1409957A0+333↓p
                                        ; sub_1409957A0+1017D↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    RtlNumberOfSetBits
                mov     ecx, [rbx]
                sub     ecx, eax
                mov     eax, ecx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNumberOfClearBits endp
