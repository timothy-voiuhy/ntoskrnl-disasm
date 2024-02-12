ExEnterPriorityRegionAndAcquireResourceExclusive proc near
                                        ; DATA XREF: .pdata:00000001400F9F54↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, gs:188h
                mov     rbx, rcx
                mov     rcx, rdi
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140248280
                dec     word ptr [rdi+1E4h]
                mov     dl, 1
                mov     rcx, rbx
                call    ExAcquireResourceExclusiveLite
                mov     rax, [rdi+1C8h]
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExEnterPriorityRegionAndAcquireResourceExclusive endp
