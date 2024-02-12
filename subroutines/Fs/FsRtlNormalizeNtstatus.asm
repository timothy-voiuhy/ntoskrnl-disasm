FsRtlNormalizeNtstatus proc near        ; DATA XREF: .pdata:00000001400DA3C4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, edx
                mov     edi, ecx
                call    FsRtlIsNtstatusExpected
                test    al, al
                cmovz   edi, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNormalizeNtstatus endp
