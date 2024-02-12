ExfReleasePushLockShared proc near      ; CODE XREF: sub_140200540+83↑p
                                        ; sub_140208D10+67↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

                sub     rsp, 48h
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                mov     r9, rcx
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]

loc_1402F3FBC:                          ; CODE XREF: ExfReleasePushLockShared+3B↓j
                test    al, 2
                jnz     short loc_1402F3FE3
                xor     r8d, r8d
                lea     rcx, [rax-10h]
                mov     rdx, rax
                and     rdx, 0FFFFFFFFFFFFFFF0h
                cmp     rdx, 10h
                cmovnz  r8, rcx
                lock cmpxchg [r9], r8
                jnz     short loc_1402F3FBC

loc_1402F3FDD:                          ; CODE XREF: ExfReleasePushLockShared+6B↓j
                                        ; ExfReleasePushLockShared+75↓j ...
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F3FE3:                          ; CODE XREF: ExfReleasePushLockShared+1E↑j
                test    al, 8
                jnz     short loc_1402F4017
                or      r8, 0FFFFFFFFFFFFFFFFh

loc_1402F3FEB:                          ; CODE XREF: ExfReleasePushLockShared+65↓j
                                        ; ExfReleasePushLockShared+A7↓j
                mov     rcx, rax
                lea     rdx, [r8+4]
                and     ecx, 6
                cmp     rcx, 2
                cmovnz  rdx, r8
                add     rdx, rax
                lock cmpxchg [r9], rdx
                jnz     short loc_1402F3FEB
                cmp     rcx, 2
                jnz     short loc_1402F3FDD
                mov     rcx, r9
                call    sub_1402F40D0
                jmp     short loc_1402F3FDD
; ---------------------------------------------------------------------------

loc_1402F4017:                          ; CODE XREF: ExfReleasePushLockShared+45↑j
                mov     rcx, rax
                and     rcx, 0FFFFFFFFFFFFFFF0h
                jmp     short loc_1402F4024
; ---------------------------------------------------------------------------

loc_1402F4020:                          ; CODE XREF: ExfReleasePushLockShared+8B↓j
                mov     rcx, [rcx+18h]

loc_1402F4024:                          ; CODE XREF: ExfReleasePushLockShared+7E↑j
                mov     rdx, [rcx+20h]
                test    rdx, rdx
                jz      short loc_1402F4020
                or      r8, 0FFFFFFFFFFFFFFFFh
                mov     ecx, r8d
                lock xadd [rdx+30h], ecx
                add     ecx, r8d
                test    ecx, ecx
                jg      short loc_1402F3FDD
                mov     r8, 0FFFFFFFFFFFFFFF7h
                jmp     short loc_1402F3FEB
ExfReleasePushLockShared endp
