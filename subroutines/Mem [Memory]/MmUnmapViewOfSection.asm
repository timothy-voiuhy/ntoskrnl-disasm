MmUnmapViewOfSection proc near          ; CODE XREF: sub_140582FB4+840↑p
                                        ; DATA XREF: .pdata:000000014010605C↑o
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                call    sub_14068EDD0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmUnmapViewOfSection endp
