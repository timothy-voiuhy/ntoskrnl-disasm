FsRtlOplockGetAnyBreakOwnerProcess proc near
                                        ; DATA XREF: .pdata:00000001400F13F8↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                test    rcx, rcx
                jz      short loc_1404F059F
                mov     rdi, [rcx]
                test    rdi, rdi
                jz      short loc_1404F059F
                mov     rcx, [rdi+98h]
                call    ExAcquireFastMutexUnsafe
                mov     rbx, [rdi+10h]
                test    rbx, rbx
                jnz     short loc_1404F0581
                lea     rax, [rdi+48h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_1404F058E
                mov     rbx, [rcx+20h]
                test    rbx, rbx
                jz      short loc_1404F058E

loc_1404F0581:                          ; CODE XREF: FsRtlOplockGetAnyBreakOwnerProcess+2A↑j
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag

loc_1404F058E:                          ; CODE XREF: FsRtlOplockGetAnyBreakOwnerProcess+36↑j
                                        ; FsRtlOplockGetAnyBreakOwnerProcess+3F↑j
                mov     rcx, [rdi+98h]
                call    ExReleaseFastMutexUnsafe
                mov     rax, rbx
                jmp     short loc_1404F05A1
; ---------------------------------------------------------------------------

loc_1404F059F:                          ; CODE XREF: FsRtlOplockGetAnyBreakOwnerProcess+D↑j
                                        ; FsRtlOplockGetAnyBreakOwnerProcess+15↑j
                xor     eax, eax

loc_1404F05A1:                          ; CODE XREF: FsRtlOplockGetAnyBreakOwnerProcess+5D↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlOplockGetAnyBreakOwnerProcess endp
