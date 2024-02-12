ExTryAcquireCacheAwarePushLockSharedEx proc near
                                        ; DATA XREF: .pdata:00000001400F9EAC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jz      short loc_1405B4277
                and     qword ptr [rax-18h], 0
                mov     r8, rcx
                mov     ecx, 152h
                mov     edx, edx
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4277:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+1D↑j
                mov     eax, gs:1A4h
                and     eax, 1Fh
                mov     rbp, [rcx+rax*8]
                test    dl, 2
                jnz     short loc_1405B429B
                xor     edx, edx
                lea     r8d, [rdx+1]
                call    sub_140244C10
                mov     rdi, rax
                jmp     short loc_1405B429D
; ---------------------------------------------------------------------------

loc_1405B429B:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+49↑j
                xor     edi, edi

loc_1405B429D:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+59↑j
                mov     ecx, 11h
                xor     eax, eax
                lock cmpxchg [rbp+0], rcx
                jz      short loc_1405B42BC
                mov     rcx, rbp
                call    ExfTryAcquirePushLockShared
                test    al, al
                jnz     short loc_1405B42BC
                xor     bl, bl
                jmp     short loc_1405B42BE
; ---------------------------------------------------------------------------

loc_1405B42BC:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+6A↑j
                                        ; ExTryAcquireCacheAwarePushLockSharedEx+76↑j
                mov     bl, 1

loc_1405B42BE:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+7A↑j
                test    rdi, rdi
                jz      short loc_1405B42D8
                test    bl, bl
                jz      short loc_1405B42CD
                or      byte ptr [rdi+1Ah], 1
                jmp     short loc_1405B42D8
; ---------------------------------------------------------------------------

loc_1405B42CD:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+85↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14031D1B0

loc_1405B42D8:                          ; CODE XREF: ExTryAcquireCacheAwarePushLockSharedEx+81↑j
                                        ; ExTryAcquireCacheAwarePushLockSharedEx+8B↑j
                mov     rsi, [rsp+38h+arg_10]
                neg     bl
                mov     rbx, [rsp+38h+arg_0]
                sbb     rax, rax
                and     rax, rbp
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExTryAcquireCacheAwarePushLockSharedEx endp
