ExTryAcquireCacheAwarePushLockExclusiveEx proc near
                                        ; DATA XREF: .pdata:00000001400F9EA0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                test    edx, 0FFFFFFFCh
                jz      short loc_1405B41A7
                and     qword ptr [rax-18h], 0
                mov     r8, rcx
                mov     ecx, 152h
                mov     edx, edx
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B41A7:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+1D↑j
                lea     rbp, [rcx+100h]
                mov     rsi, rbx
                test    dl, 2
                jnz     short loc_1405B41C6
                xor     edx, edx
                lea     r8d, [rdx+1]
                call    sub_140244C10
                mov     rdi, rax
                jmp     short loc_1405B41C8
; ---------------------------------------------------------------------------

loc_1405B41C6:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+44↑j
                xor     edi, edi

loc_1405B41C8:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+54↑j
                cmp     rbx, rbp
                jnb     short loc_1405B41E1

loc_1405B41CD:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+6F↓j
                mov     rax, [rsi]
                lock bts qword ptr [rax], 0
                jb      short loc_1405B421D
                add     rsi, 8
                cmp     rsi, rbp
                jb      short loc_1405B41CD

loc_1405B41E1:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+5B↑j
                test    rdi, rdi
                jz      short loc_1405B41EA
                or      byte ptr [rdi+1Ah], 1

loc_1405B41EA:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+74↑j
                mov     al, 1

loc_1405B41EC:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+C4↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405B4202:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+B0↓j
                sub     rsi, 8
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     rcx, [rsi]
                lock xadd [rcx], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405B421D
                call    ExfTryToWakePushLock

loc_1405B421D:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+66↑j
                                        ; ExTryAcquireCacheAwarePushLockExclusiveEx+A6↑j
                cmp     rsi, rbx
                jnz     short loc_1405B4202
                test    rdi, rdi
                jz      short loc_1405B4232
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14031D1B0

loc_1405B4232:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockExclusiveEx+B5↑j
                xor     al, al
                jmp     short loc_1405B41EC
ExTryAcquireCacheAwarePushLockExclusiveEx endp
