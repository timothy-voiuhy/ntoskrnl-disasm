FsRtlNotifyChangeDirectory proc near    ; DATA XREF: .pdata:000000014011C430↑o

var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = dword ptr -38h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                mov     r11, rsp
                sub     rsp, 68h
                xor     eax, eax
                mov     r10, r9
                mov     [r11-18h], rax
                mov     r9, r8
                mov     [r11-20h], rax
                mov     r8, rdx
                mov     [r11-28h], rax
                mov     rdx, r10
                mov     rax, [rsp+68h+arg_30]
                mov     [r11-30h], rax
                mov     eax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_38], eax
                mov     al, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], 1
                mov     [rsp+68h+var_48], al
                call    FsRtlNotifyFilterChangeDirectory
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyChangeDirectory endp
