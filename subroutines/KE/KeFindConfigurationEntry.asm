KeFindConfigurationEntry proc near      ; DATA XREF: .pdata:00000001401304E8↑o

var_28          = qword ptr -28h
var_18          = qword ptr -18h

                sub     rsp, 48h
                and     [rsp+48h+var_18], 0
                lea     rax, [rsp+48h+var_18]
                mov     [rsp+48h+var_28], rax
                call    KeFindConfigurationNextEntry
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeFindConfigurationEntry endp
