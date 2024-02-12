SeSetSecurityAttributesToken proc near  ; DATA XREF: .pdata:0000000140122778↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                mov     r9, r8
                xor     r8d, r8d
                call    sub_140595E84
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeSetSecurityAttributesToken endp
