PoDeleteThermalRequest proc near        ; DATA XREF: .pdata:000000014011F748↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1408E4288
                mov     rcx, [rbx+18h]
                call    sub_1402B25B4
                mov     edx, 6C6F4350h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoDeleteThermalRequest endp
