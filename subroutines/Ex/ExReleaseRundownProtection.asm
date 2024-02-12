ExReleaseRundownProtection proc near    ; CODE XREF: sub_14024C380:loc_14024C39F↑p
                                        ; DATA XREF: .pdata:00000001400D5DB0↑o
                sub     rsp, 28h
                prefetchw byte ptr [rcx]
                mov     r8, [rcx]
                test    r8b, 1
                jnz     short loc_140328277

loc_140328260:                          ; CODE XREF: ExReleaseRundownProtection+58↓j
                lea     rdx, [r8-2]
                mov     rax, r8
                lock cmpxchg [rcx], rdx
                mov     r8, rax
                jnz     short loc_1403282A6

loc_140328271:                          ; CODE XREF: ExReleaseRundownProtection+3B↓j
                                        ; ExReleaseRundownProtection+44↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328277:                          ; CODE XREF: ExReleaseRundownProtection+E↑j
                                        ; ExReleaseRundownProtection+5A↓j
                and     r8, 0FFFFFFFFFFFFFFFEh
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [r8], rax
                cmp     rax, 1
                jnz     short loc_140328271
                lock btr dword ptr [r8+20h], 0
                jb      short loc_140328271
                lea     rcx, [r8+8]
                xor     edx, edx
                xor     r8d, r8d
                call    KeSetEvent
                jmp     short loc_140328271
; ---------------------------------------------------------------------------

loc_1403282A6:                          ; CODE XREF: ExReleaseRundownProtection+1F↑j
                test    al, 1
                jz      short loc_140328260
                jmp     short loc_140328277
ExReleaseRundownProtection endp
