KeQueryActiveProcessorAffinity proc near
                                        ; CODE XREF: sub_1407B9668+8C↓p
                                        ; sub_1407B9830+A9↓p ...
                sub     rsp, 28h
                lea     rdx, word_140CFC840
                call    KeCopyAffinityEx
                mov     eax, cs:dword_140CFC404
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeQueryActiveProcessorAffinity endp
