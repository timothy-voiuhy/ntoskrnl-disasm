NtSetQuotaInformationFile proc near     ; DATA XREF: .pdata:000000014011CBA4↑o
                                        ; PAGE:000000014098BB38↓o
                sub     rsp, 38h
                call    sub_140893B3C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtSetQuotaInformationFile endp
