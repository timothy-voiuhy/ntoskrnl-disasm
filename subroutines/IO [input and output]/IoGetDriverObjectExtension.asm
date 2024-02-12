IoGetDriverObjectExtension proc near    ; DATA XREF: .pdata:00000001400D9224↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdi, rdx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rcx, [rbx+30h]
                mov     rbx, [rcx+28h]

loc_140360322:                          ; CODE XREF: IoGetDriverObjectExtension+55↓j
                test    rbx, rbx
                jz      short loc_14036032D
                cmp     [rbx+8], rdi
                jnz     short loc_140360352

loc_14036032D:                          ; CODE XREF: IoGetDriverObjectExtension+25↑j
                mov     dl, al
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                test    rbx, rbx
                jz      short loc_14036034E
                lea     rax, [rbx+10h]

loc_140360342:                          ; CODE XREF: IoGetDriverObjectExtension+50↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036034E:                          ; CODE XREF: IoGetDriverObjectExtension+3C↑j
                xor     eax, eax
                jmp     short loc_140360342
; ---------------------------------------------------------------------------

loc_140360352:                          ; CODE XREF: IoGetDriverObjectExtension+2B↑j
                mov     rbx, [rbx]
                jmp     short loc_140360322
IoGetDriverObjectExtension endp
