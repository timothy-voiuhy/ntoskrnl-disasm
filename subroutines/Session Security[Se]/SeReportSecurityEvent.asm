SeReportSecurityEvent proc near         ; DATA XREF: .pdata:00000001400F87A8↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                test    r9, r9
                jz      short loc_140596F50
                mov     dword ptr [r9], 3

loc_140596F50:                          ; CODE XREF: SeReportSecurityEvent+7↑j
                mov     [rsp+38h+var_18], 7Ah ; 'z'
                call    SeReportSecurityEventWithSubCategory
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeReportSecurityEvent endp
