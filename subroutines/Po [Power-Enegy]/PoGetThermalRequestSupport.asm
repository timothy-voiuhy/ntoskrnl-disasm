PoGetThermalRequestSupport proc near    ; CODE XREF: PoSetThermalActiveCooling+24↑p
                                        ; PoSetThermalPassiveCooling+21↓p
                                        ; DATA XREF: ...
                mov     r8, [rcx+20h]
                xor     eax, eax
                test    edx, edx
                jz      short loc_1407C6D3B
                cmp     edx, 1
                jnz     short locret_1407C6D39
                cmp     [r8+80h], rax

loc_1407C6D36:                          ; CODE XREF: PoGetThermalRequestSupport+22↓j
                setnz   al

locret_1407C6D39:                       ; CODE XREF: PoGetThermalRequestSupport+D↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407C6D3B:                          ; CODE XREF: PoGetThermalRequestSupport+8↑j
                cmp     [r8+88h], rax
                jmp     short loc_1407C6D36
PoGetThermalRequestSupport endp
