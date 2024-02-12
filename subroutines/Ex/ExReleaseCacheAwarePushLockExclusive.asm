ExReleaseCacheAwarePushLockExclusive proc near
                                        ; DATA XREF: .pdata:00000001400D3320↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+100h]
                mov     rsi, rcx
                mov     rbx, rcx
                cmp     rcx, rdi
                jnb     short loc_1402F3F44

loc_1402F3F21:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusive+42↓j
                mov     rcx, [rbx]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rcx], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1402F3F3B
                call    ExfTryToWakePushLock

loc_1402F3F3B:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusive+34↑j
                add     rbx, 8
                cmp     rbx, rdi
                jb      short loc_1402F3F21

loc_1402F3F44:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusive+1F↑j
                mov     rcx, rsi
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseCacheAwarePushLockExclusive endp
