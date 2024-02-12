IoUninitializeWorkItem proc near        ; DATA XREF: .rdata:0000000140086CB4↑o
                                        ; .pdata:00000001400D8BAC↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404884C2 SIZE 0000001D BYTES

                sub     rsp, 38h
                cmp     qword ptr [rcx], 0
                jnz     loc_1404884C2
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUninitializeWorkItem endp
