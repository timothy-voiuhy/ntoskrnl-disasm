ExReleaseCacheAwarePushLockExclusiveEx proc near
                                        ; DATA XREF: .pdata:00000001400E1B28↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     esi, edx
                mov     rbx, rcx
                test    edx, 0FFFFFFFCh
                jz      short loc_1403F8969
                and     qword ptr [rax-18h], 0
                mov     r8, rcx
                mov     ecx, 152h
                mov     edx, esi
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1403F8969:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusiveEx+1F↑j
                lea     rbp, [rcx+100h]
                mov     rdi, rbx
                cmp     rbx, rbp
                jnb     short loc_1403F8998

loc_1403F8978:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusiveEx+66↓j
                mov     rcx, [rdi]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rcx], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1403F898F
                call    ExfTryToWakePushLock

loc_1403F898F:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusiveEx+58↑j
                add     rdi, 8
                cmp     rdi, rbp
                jb      short loc_1403F8978

loc_1403F8998:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusiveEx+46↑j
                test    sil, 2
                jnz     short loc_1403F89A6
                mov     rcx, rbx
                call    sub_140243660

loc_1403F89A6:                          ; CODE XREF: ExReleaseCacheAwarePushLockExclusiveEx+6C↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseCacheAwarePushLockExclusiveEx endp
