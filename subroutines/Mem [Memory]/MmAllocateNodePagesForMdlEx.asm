MmAllocateNodePagesForMdlEx proc near   ; DATA XREF: .pdata:00000001400DFE00↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h

                sub     rsp, 48h
                and     [rsp+48h+var_10], 0
                mov     eax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], eax
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], eax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], eax
                call    MmAllocatePartitionNodePagesForMdlEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocateNodePagesForMdlEx endp
