MmAllocatePagesForMdlEx proc near       ; CODE XREF: sub_140387F58+39↓p
                                        ; sub_140388120+39↓p ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                sub     rsp, 48h
                mov     rax, gs:188h
                lea     r10, qword_140CFDCC0
                and     [rsp+48h+var_10], 0
                mov     eax, [rax+24Ch]
                mov     rax, [r10+rax*8]
                mov     r10, [rax+0C0h]
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], eax
                mov     eax, [rsp+48h+arg_20]
                movzx   r11d, word ptr [r10+92h]
                mov     [rsp+48h+var_20], r11d
                mov     [rsp+48h+var_28], eax
                call    MmAllocatePartitionNodePagesForMdlEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocatePagesForMdlEx endp
