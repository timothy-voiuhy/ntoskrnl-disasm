MmFreePagesFromMdlEx proc near          ; DATA XREF: .rdata:000000014009598C↑o
                                        ; .pdata:00000001400DB6A8↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404972F6 SIZE 0000001E BYTES

                sub     rsp, 38h
                test    edx, 0FFFFFFFEh
                jnz     loc_1404972F6
                test    dword ptr [rcx+28h], 0FFFh
                jnz     loc_1404972F6
                call    sub_1402DABA8
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmFreePagesFromMdlEx endp
