RtlAddAuditAccessAceEx proc near        ; DATA XREF: .pdata:0000000140121F2C↑o

var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h

                sub     rsp, 38h
                mov     eax, r8d
                mov     [rsp+38h+var_10], 2
                or      eax, 40h
                cmp     [rsp+38h+arg_28], 0
                cmovz   eax, r8d
                mov     r8d, eax
                bts     r8d, 7
                cmp     [rsp+38h+arg_30], 0
                cmovz   r8d, eax
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                call    sub_140622B20
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAddAuditAccessAceEx endp
