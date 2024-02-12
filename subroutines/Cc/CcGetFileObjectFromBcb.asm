CcGetFileObjectFromBcb proc near        ; DATA XREF: .pdata:00000001400F0DE0↑o
                mov     rax, [rcx+0B0h]
                mov     rax, [rax+60h]
                and     rax, 0FFFFFFFFFFFFFFF0h
                retn
CcGetFileObjectFromBcb endp
