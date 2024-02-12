ObIsKernelHandle proc near              ; CODE XREF: sub_1406A9778:loc_1406A987F↓p
                                        ; DATA XREF: .pdata:00000001400D998C↑o
                sub     rsp, 28h
                xor     edx, edx
                call    sub_140243260
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObIsKernelHandle endp
