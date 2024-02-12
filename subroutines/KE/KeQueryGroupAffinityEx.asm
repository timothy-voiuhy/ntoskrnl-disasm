KeQueryGroupAffinityEx proc near        ; DATA XREF: .pdata:00000001400F33F0↑o
                cmp     dx, [rcx]
                jnb     short loc_14051382F
                movzx   eax, dx
                mov     rax, [rcx+rax*8+8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14051382F:                          ; CODE XREF: KeQueryGroupAffinityEx+3↑j
                xor     eax, eax
                retn
KeQueryGroupAffinityEx endp
