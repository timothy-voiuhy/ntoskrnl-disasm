FsRtlNotifyReportChange proc near       ; DATA XREF: .pdata:000000014011C478↑o

var_28          = dword ptr -28h
arg_20          = dword ptr  28h

                mov     r11, rsp
                sub     rsp, 58h
                movzx   eax, word ptr [r9]
                xor     r10d, r10d
                movzx   r9d, word ptr [r8]
                mov     [r11-10h], r10
                sub     r9w, ax
                mov     eax, [rsp+58h+arg_20]
                mov     [r11-18h], r10
                mov     [r11-20h], r10d
                mov     [rsp+58h+var_28], eax
                mov     [r11-30h], r10
                mov     [r11-38h], r10
                call    FsRtlNotifyFilterReportChange
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyReportChange endp
