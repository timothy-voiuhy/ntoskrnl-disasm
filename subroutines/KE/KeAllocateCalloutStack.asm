KeAllocateCalloutStack proc near        ; DATA XREF: .pdata:000000014010E54C↑o

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                lea     r9, [rsp+28h+arg_8]
                test    cl, cl
                mov     [rsp+28h+arg_8], rbx
                mov     eax, ebx
                mov     dl, 1
                setnz   al
                xor     r8d, r8d
                mov     ecx, eax
                call    KeAllocateCalloutStackEx
                mov     rcx, [rsp+28h+arg_8]
                test    eax, eax
                cmovs   rcx, rbx
                mov     rax, rcx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAllocateCalloutStack endp
