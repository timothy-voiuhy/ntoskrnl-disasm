ZwSystemDebugControl proc near          ; CODE XREF: sub_1405EB770+440↓p
                                        ; sub_140794038+6B↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1BFh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwSystemDebugControl endp
