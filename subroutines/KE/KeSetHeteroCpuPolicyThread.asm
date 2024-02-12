KeSetHeteroCpuPolicyThread proc near    ; DATA XREF: .pdata:00000001400F336C↑o
                sub     rsp, 28h
                mov     r9d, r8d
                xor     r8d, r8d
                call    sub_140520554
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSetHeteroCpuPolicyThread endp
