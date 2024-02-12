FsRtlOplockFsctrl proc near             ; DATA XREF: .pdata:0000000140105DB0↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 7000h
                call    sub_14061ADE0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlOplockFsctrl endp
