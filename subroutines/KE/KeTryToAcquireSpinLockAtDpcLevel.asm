KeTryToAcquireSpinLockAtDpcLevel proc near
                                        ; DATA XREF: .pdata:00000001400D93BC↑o
                sub     rsp, 28h
                call    sub_140361758
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeTryToAcquireSpinLockAtDpcLevel endp
