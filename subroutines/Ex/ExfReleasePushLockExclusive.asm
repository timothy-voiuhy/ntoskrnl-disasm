ExfReleasePushLockExclusive proc near   ; CODE XREF: ExfReleasePushLock:loc_1402F3F8F↑p
                                        ; sub_140356664+34↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     edx, edx
                lea     eax, [rdx+1]
                lock cmpxchg [rcx], rdx
                jnz     short loc_1402F4066

loc_1402F4060:                          ; CODE XREF: ExfReleasePushLockExclusive+3C↓j
                                        ; ExfReleasePushLockExclusive+43↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402F4066:                          ; CODE XREF: ExfReleasePushLockExclusive+E↑j
                                        ; ExfReleasePushLockExclusive+36↓j
                or      r9, 0FFFFFFFFFFFFFFFFh
                mov     r8, rax
                and     r8d, 6
                mov     edx, 3
                cmp     r8, 2
                cmovnz  rdx, r9
                add     rdx, rax
                lock cmpxchg [rcx], rdx
                jnz     short loc_1402F4066
                cmp     r8, 2
                jnz     short loc_1402F4060
                call    sub_1402F40D0
                jmp     short loc_1402F4060
ExfReleasePushLockExclusive endp
