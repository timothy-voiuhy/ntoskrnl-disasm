IoQueueWorkItem proc near               ; DATA XREF: .pdata:00000001400D3074↑o
                push    rbx
                sub     rsp, 20h
                and     dword ptr [rcx+40h], 0
                mov     ebx, r8d
                mov     r8, r9
                call    sub_1402F1894
                mov     edx, ebx
                mov     rcx, rax
                call    sub_1402F1838
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoQueueWorkItem endp
