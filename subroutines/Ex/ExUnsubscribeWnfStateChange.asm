ExUnsubscribeWnfStateChange proc near   ; CODE XREF: sub_14091AB6C+12↓p
                                        ; sub_140A957A4+29↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdx, cs:PsInitialSystemProcess
                call    sub_1405F2EB8
                mov     rcx, gs:188h
                call    sub_14021E1F0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExUnsubscribeWnfStateChange endp
