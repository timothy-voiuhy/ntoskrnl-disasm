IoGetIoAttributionHandle proc near      ; DATA XREF: .pdata:00000001400D5ED0↑o
                mov     rax, [rcx+0C8h]
                cmp     byte ptr [rcx+47h], 0
                jl      short loc_1403293F2
                test    rax, rax
                jnz     short loc_1403293F9

loc_1403293F2:                          ; CODE XREF: IoGetIoAttributionHandle+B↑j
                                        ; IoGetIoAttributionHandle+1D↓j
                mov     eax, 0C0000225h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403293F9:                          ; CODE XREF: IoGetIoAttributionHandle+10↑j
                test    byte ptr [rax+2], 40h
                jz      short loc_1403293F2
                mov     rax, [rcx+0C8h]
                mov     rcx, [rax+10h]
                xor     eax, eax
                mov     [rdx], rcx
                retn
IoGetIoAttributionHandle endp
