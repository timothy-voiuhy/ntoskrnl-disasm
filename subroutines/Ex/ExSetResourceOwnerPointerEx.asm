ExSetResourceOwnerPointerEx proc near   ; DATA XREF: .rdata:00000001400779A0↑o
                                        ; .pdata:00000001400D4B44↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014046E26E SIZE 0000001B BYTES

                sub     rsp, 38h
                test    byte ptr [rcx+1Ah], 1
                jnz     loc_14046E26E
                call    sub_1403131E0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSetResourceOwnerPointerEx endp
