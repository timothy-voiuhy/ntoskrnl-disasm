SeQuerySessionIdToken proc near         ; CODE XREF: NtQueryInformationToken+197↑p
                                        ; SeQueryInformationToken+175↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, rdx
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     eax, [rdi+78h]
                mov     [rbx], eax
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeQuerySessionIdToken endp
