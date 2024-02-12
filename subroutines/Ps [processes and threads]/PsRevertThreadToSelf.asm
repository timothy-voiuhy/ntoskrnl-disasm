PsRevertThreadToSelf proc near          ; DATA XREF: .pdata:00000001401216D4↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 2
                xor     r8d, r8d
                xor     edx, edx
                call    PsImpersonateClient
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsRevertThreadToSelf endp
