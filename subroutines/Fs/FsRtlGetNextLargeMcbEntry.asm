FsRtlGetNextLargeMcbEntry proc near     ; CODE XREF: FsRtlGetNextMcbEntry+34↓p
                                        ; DATA XREF: .pdata:00000001400F123C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 30h
                mov     r14, rcx
                mov     rbx, r9
                mov     rcx, [rcx]
                mov     rdi, r8
                mov     esi, edx
                call    ExAcquireFastMutex
                mov     rax, [rsp+38h+arg_20]
                lea     rcx, [r14+8]
                mov     r9, rbx
                mov     [rsp+38h+var_18], rax
                mov     r8, rdi
                mov     edx, esi
                call    FsRtlGetNextBaseMcbEntry
                mov     rcx, [r14]
                mov     bl, al
                call    KeReleaseGuardedMutex
                mov     rsi, [rsp+38h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+38h+arg_0]
                mov     rdi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlGetNextLargeMcbEntry endp
