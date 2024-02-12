MmAllocateContiguousMemorySpecifyCache proc near
                                        ; DATA XREF: .pdata:00000001400DFF74↑o

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h

                sub     rsp, 38h
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], 80000000h
                mov     [rsp+38h+var_18], eax
                call    MmAllocateContiguousMemorySpecifyCacheNode
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocateContiguousMemorySpecifyCache endp
