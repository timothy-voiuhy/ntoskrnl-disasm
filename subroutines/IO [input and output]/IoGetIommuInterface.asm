IoGetIommuInterface proc near           ; DATA XREF: .rdata:00000001400AE010↑o
                                        ; .pdata:000000014010F314↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140864CE6 SIZE 00000020 BYTES

                sub     rsp, 38h
                mov     rax, cr8
                test    al, al
                jnz     loc_140864CE6
                mov     rax, cs:off_140C009D0
                call    sub_1404079D0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetIommuInterface endp
