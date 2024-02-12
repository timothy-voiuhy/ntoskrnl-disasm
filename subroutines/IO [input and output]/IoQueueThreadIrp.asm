IoQueueThreadIrp proc near              ; CODE XREF: sub_1407C8950+6C↓p
                                        ; sub_1408B5CFC+57↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    sub_140245C90
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoQueueThreadIrp endp
