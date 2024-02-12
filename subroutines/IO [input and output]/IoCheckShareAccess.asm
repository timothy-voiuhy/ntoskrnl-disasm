IoCheckShareAccess proc near            ; DATA XREF: .pdata:00000001401071FC↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_20          = byte ptr  28h

                sub     rsp, 38h
                xor     eax, eax
                cmp     [rsp+38h+arg_20], al
                setnz   al
                mov     [rsp+38h+var_10], eax
                and     [rsp+38h+var_18], 0
                call    IoCheckLinkShareAccess
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCheckShareAccess endp
