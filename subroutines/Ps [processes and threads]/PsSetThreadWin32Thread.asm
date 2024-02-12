PsSetThreadWin32Thread proc near        ; DATA XREF: .pdata:00000001401064A0↑o
                xor     r9d, r9d
                test    rdx, rdx
                jz      short loc_140713321
                xchg    rdx, [rcx+1C8h]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140713321:                          ; CODE XREF: PsSetThreadWin32Thread+6↑j
                mov     rax, r8
                lock cmpxchg [rcx+1C8h], r9
                retn
PsSetThreadWin32Thread endp
