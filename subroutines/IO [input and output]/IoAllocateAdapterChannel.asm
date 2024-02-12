IoAllocateAdapterChannel proc near      ; DATA XREF: .pdata:00000001400F26D0↑o

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rcx+8]
                mov     r10, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], r10
                mov     rax, [rax+20h]
                call    sub_1404079D0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateAdapterChannel endp
