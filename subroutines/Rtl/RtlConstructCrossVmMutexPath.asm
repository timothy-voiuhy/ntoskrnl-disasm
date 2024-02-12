RtlConstructCrossVmMutexPath proc near  ; DATA XREF: .pdata:0000000140122118↑o
                sub     rsp, 28h        ; RtlConstructCrossVmEventPath
                call    sub_140916FA8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlConstructCrossVmMutexPath endp
