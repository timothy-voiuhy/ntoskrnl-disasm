PoFxIdleComponent proc near             ; CODE XREF: sub_14036D8E4+DB↓p
                                        ; PoFxReportDevicePoweredOn+D0↓p ...

var_48          = byte ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 60h
                mov     edi, edx
                mov     ebx, r8d
                xor     edx, edx
                mov     rsi, rcx
                lea     rcx, [rsp+68h+var_48]
                lea     r8d, [rdx+40h]
                call    memset
                lea     r9, [rsp+68h+var_48]
                mov     r8d, ebx
                mov     edx, edi
                mov     rcx, rsi
                call    sub_1402BDBE0
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxIdleComponent endp
