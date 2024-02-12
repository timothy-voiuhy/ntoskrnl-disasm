PoFxUnregisterDevice proc near          ; DATA XREF: .pdata:000000014010F3EC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, [rcx+30h]
                mov     rbx, rcx
                test    rdi, rdi
                jz      short loc_1407D3A95
                mov     rcx, rdi
                call    sub_14074AEE4

loc_1407D3A7E:                          ; CODE XREF: PoFxUnregisterDevice+3A↓j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403CD268
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407D3A95:                          ; CODE XREF: PoFxUnregisterDevice+14↑j
                call    sub_1407B3DCC
                jmp     short loc_1407D3A7E
PoFxUnregisterDevice endp
