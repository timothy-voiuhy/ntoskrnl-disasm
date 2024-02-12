MmMapLockedPages proc near              ; CODE XREF: sub_1409D0220+D4↓p
                                        ; DATA XREF: .pdata:00000001400F48B4↑o

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                mov     r8d, 1
                mov     [rsp+38h+var_10], 20h ; ' '
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r8d
                call    MmMapLockedPagesSpecifyCache
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMapLockedPages endp
