IoSetFileObjectIgnoreSharing proc near  ; DATA XREF: .pdata:000000014011CA00↑o
                sub     rsp, 28h
                mov     r8b, 1
                mov     edx, 1
                call    sub_1402B9640
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetFileObjectIgnoreSharing endp
