ExAcquireCacheAwarePushLockExclusive proc near
                                        ; DATA XREF: .pdata:00000001400D3470↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     r8d, r8d
                xor     edx, edx
                mov     rbx, rcx
                call    sub_140244C10
                mov     r8, rbx
                mov     rdx, rax
                mov     rcx, rbx
                mov     rdi, rax
                call    sub_1402F5DB0
                test    rdi, rdi
                jz      short loc_1402F5D91
                or      byte ptr [rdi+1Ah], 1

loc_1402F5D91:                          ; CODE XREF: ExAcquireCacheAwarePushLockExclusive+2B↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAcquireCacheAwarePushLockExclusive endp
