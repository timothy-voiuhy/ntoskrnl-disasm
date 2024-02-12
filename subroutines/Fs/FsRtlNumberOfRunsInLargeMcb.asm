FsRtlNumberOfRunsInLargeMcb proc near   ; CODE XREF: FsRtlNumberOfRunsInMcb+4↓p
                                        ; DATA XREF: .pdata:00000001400F12B4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rcx, [rcx]
                call    ExAcquireFastMutex
                mov     rcx, [rdi]
                mov     ebx, [rdi+0Ch]
                call    KeReleaseGuardedMutex
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNumberOfRunsInLargeMcb endp
