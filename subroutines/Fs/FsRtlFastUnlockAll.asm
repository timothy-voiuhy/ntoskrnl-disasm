FsRtlFastUnlockAll proc near            ; DATA XREF: .pdata:00000001400D5C18↑o

var_18          = byte ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], r9
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                call    sub_140326284
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlFastUnlockAll endp
