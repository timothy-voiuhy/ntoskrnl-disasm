PoFxSetComponentResidency proc near     ; DATA XREF: .pdata:00000001400F654C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rcx
                mov     rbx, r8
                mov     rcx, [rcx+30h]
                mov     edi, edx
                call    sub_140571FEC
                mov     rcx, [rsi+38h]
                mov     r8, rbx
                mov     edx, edi
                call    sub_140574648
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxSetComponentResidency endp
