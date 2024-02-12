ExAcquireCacheAwarePushLockExclusiveEx proc near
                                        ; DATA XREF: .pdata:00000001400E1B1C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                test    dl, 2
                jnz     short loc_1403F8901
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     rbx, rax
                jmp     short loc_1403F8903
; ---------------------------------------------------------------------------

loc_1403F8901:                          ; CODE XREF: ExAcquireCacheAwarePushLockExclusiveEx+10↑j
                xor     ebx, ebx

loc_1403F8903:                          ; CODE XREF: ExAcquireCacheAwarePushLockExclusiveEx+1F↑j
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402F5DB0
                test    rbx, rbx
                jz      short loc_1403F891A
                or      byte ptr [rbx+1Ah], 1

loc_1403F891A:                          ; CODE XREF: ExAcquireCacheAwarePushLockExclusiveEx+34↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAcquireCacheAwarePushLockExclusiveEx endp
