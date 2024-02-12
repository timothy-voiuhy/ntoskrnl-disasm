PoSetSystemWakeDevice proc near         ; DATA XREF: .pdata:00000001400F6150↑o
                push    rbx
                sub     rsp, 20h
                mov     edx, 72496F50h
                call    sub_140349A1C
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1405655FD
                mov     rcx, rax
                call    sub_14056F31C
                mov     edx, 72496F50h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag

loc_1405655FD:                          ; CODE XREF: PoSetSystemWakeDevice+16↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoSetSystemWakeDevice endp
