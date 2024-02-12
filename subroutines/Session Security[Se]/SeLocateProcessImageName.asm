SeLocateProcessImageName proc near      ; DATA XREF: .pdata:0000000140101BEC↑o
                sub     rsp, 28h
                call    sub_140696F78
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeLocateProcessImageName endp
