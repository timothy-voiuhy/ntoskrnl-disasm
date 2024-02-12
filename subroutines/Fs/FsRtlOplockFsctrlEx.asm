FsRtlOplockFsctrlEx proc near           ; DATA XREF: .pdata:0000000140105F3C↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], 7000h
                call    sub_14061ADE0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlOplockFsctrlEx endp
