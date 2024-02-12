MmMapViewInSystemSpaceEx proc near      ; DATA XREF: .pdata:00000001401070AC↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                and     [rsp+48h+var_18], 0
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], r9
                mov     r9, r8
                mov     r8, rdx
                lea     rdx, unk_140C4CBE8
                call    sub_14065FA54
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMapViewInSystemSpaceEx endp
