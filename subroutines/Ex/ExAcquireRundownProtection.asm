ExAcquireRundownProtection proc near    ; CODE XREF: sub_14024C840:loc_14024C861↑p
                                        ; ExAcquireRundownProtectionCacheAware:loc_140322F4A↑p
                                        ; DATA XREF: ...
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                test    al, 1
                jnz     short loc_140322F79

loc_140322F6A:                          ; CODE XREF: ExAcquireRundownProtection+1F↓j
                lea     rdx, [rax+2]
                lock cmpxchg [rcx], rdx
                jnz     short loc_140322F7D
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140322F79:                          ; CODE XREF: ExAcquireRundownProtection+8↑j
                                        ; ExAcquireRundownProtection+21↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140322F7D:                          ; CODE XREF: ExAcquireRundownProtection+13↑j
                test    al, 1
                jz      short loc_140322F6A
                jmp     short loc_140322F79
ExAcquireRundownProtection endp
