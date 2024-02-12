FsRtlTruncateLargeMcb proc near         ; CODE XREF: FsRtlTruncateMcb+6↓p
                                        ; DATA XREF: .pdata:00000001400D6278↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rbx, rdx
                mov     rcx, [rcx]
                call    ExAcquireFastMutex
                lea     rcx, [rdi+8]
                mov     rdx, rbx
                call    FsRtlTruncateBaseMcb
                mov     rcx, [rdi]
                call    KeReleaseGuardedMutex
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlTruncateLargeMcb endp
