KeInitializeMutex proc near             ; CODE XREF: sub_1406DCBDC+19A↓p
                                        ; KeAllocateCalloutStackEx+B9↓p ...
                sub     rsp, 28h
                xor     r9d, r9d
                mov     r8b, 1
                xor     edx, edx
                call    sub_140311B2C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeMutex endp
