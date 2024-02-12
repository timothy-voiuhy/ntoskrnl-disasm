IoQueueWorkItemToNode proc near         ; DATA XREF: .pdata:00000001400F2898↑o

arg_0           = qword ptr  8
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, r8d
                mov     rdi, rcx
                mov     r8, r9
                call    sub_1402F1894
                mov     r8d, [rsp+28h+arg_20]
                mov     edx, ebx
                mov     rcx, rax
                call    sub_1405B7208
                mov     bl, al
                test    al, al
                jnz     short loc_1405072CB
                mov     rcx, [rdi+28h]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag

loc_1405072CB:                          ; CODE XREF: IoQueueWorkItemToNode+2B↑j
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoQueueWorkItemToNode endp
