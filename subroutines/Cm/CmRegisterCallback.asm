CmRegisterCallback proc near            ; DATA XREF: .pdata:000000014010F4DC↑o

var_18          = byte ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], r8
                mov     r9b, 1
                lea     r8, unk_140CF4310
                mov     [rsp+38h+var_18], 0
                call    sub_1407021C8
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CmRegisterCallback endp
