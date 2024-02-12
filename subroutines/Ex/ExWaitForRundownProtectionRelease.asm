ExWaitForRundownProtectionRelease proc near
                                        ; CODE XREF: sub_1402F01C8+69↓p
                                        ; sub_140319F08+5D↓p ...
                sub     rsp, 28h
                mov     edx, 1
                xor     eax, eax
                lock cmpxchg [rcx], rdx
                cmp     rax, 2
                jnb     short loc_1402D226C

loc_1402D2266:                          ; CODE XREF: ExWaitForRundownProtectionRelease+24↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402D226C:                          ; CODE XREF: ExWaitForRundownProtectionRelease+14↑j
                mov     rdx, rax
                call    sub_1403389A0
                jmp     short loc_1402D2266
ExWaitForRundownProtectionRelease endp
