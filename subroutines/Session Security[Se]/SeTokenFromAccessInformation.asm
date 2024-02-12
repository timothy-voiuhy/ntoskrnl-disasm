SeTokenFromAccessInformation proc near  ; DATA XREF: .pdata:00000001400D9218↑o
                sub     rsp, 28h
                mov     eax, 498h
                cmp     r8d, eax
                jb      short loc_1403602EB
                call    sub_14021CE64
                xor     eax, eax

loc_1403602E5:                          ; CODE XREF: SeTokenFromAccessInformation+23↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403602EB:                          ; CODE XREF: SeTokenFromAccessInformation+C↑j
                mov     [r9], eax
                mov     eax, 0C0000023h
                jmp     short loc_1403602E5
SeTokenFromAccessInformation endp
