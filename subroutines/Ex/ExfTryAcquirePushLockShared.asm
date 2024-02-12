ExfTryAcquirePushLockShared proc near   ; CODE XREF: sub_140208488+136↑p
                                        ; ExAcquireCacheAwarePushLockSharedEx+164↑p ...
                mov     r10, rcx
                xor     r9d, r9d
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]

loc_14031A25C:                          ; CODE XREF: ExfTryAcquirePushLockShared+3E↓j
                mov     r8, rax
                shr     r8, 1
                and     r8d, 1
                test    al, 1
                jz      short loc_14031A277
                test    r8, r8
                jnz     short loc_14031A293
                test    rax, 0FFFFFFFFFFFFFFF0h
                jbe     short loc_14031A293

loc_14031A277:                          ; CODE XREF: ExfTryAcquirePushLockShared+18↑j
                mov     rdx, rax
                or      rdx, 1
                test    r8, r8
                lea     rcx, [rdx+10h]
                cmovnz  rcx, rdx
                lock cmpxchg [r10], rcx
                jnz     short loc_14031A25C
                mov     r9b, 1

loc_14031A293:                          ; CODE XREF: ExfTryAcquirePushLockShared+1D↑j
                                        ; ExfTryAcquirePushLockShared+25↑j
                mov     al, r9b
                retn
ExfTryAcquirePushLockShared endp
