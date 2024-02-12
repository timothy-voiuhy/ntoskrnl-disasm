IoCheckDesiredAccess proc near          ; DATA XREF: .pdata:000000014011C964↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     rbx, rcx
                mov     rdx, cs:IoFileObjectType
                add     rdx, 4Ch ; 'L'
                call    RtlMapGenericMask
                not     edi
                and     edi, [rbx]
                mov     rbx, [rsp+28h+arg_0]
                neg     edi
                sbb     eax, eax
                and     eax, 0C0000022h
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCheckDesiredAccess endp
