CcFlushCacheToLsn proc near             ; DATA XREF: .pdata:00000001400D9140↑o

var_18          = byte ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], r8
                mov     r9, rdx
                xor     r8d, r8d
                mov     [rsp+38h+var_18], 0
                xor     edx, edx
                call    sub_140260E80
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcFlushCacheToLsn endp
