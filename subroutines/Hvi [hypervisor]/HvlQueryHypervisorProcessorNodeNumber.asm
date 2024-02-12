HvlQueryHypervisorProcessorNodeNumber proc near
                                        ; DATA XREF: .pdata:00000001400F1680↑o
                sub     rsp, 28h
                mov     eax, cs:dword_140CFC40C
                mov     r10, rdx
                test    al, 2
                jz      short loc_1404F23BF
                cmp     ecx, 400h
                jnb     short loc_1404F23BF
                call    sub_140390C78
                test    rax, rax
                jz      short loc_1404F23BF
                movzx   eax, word ptr [rax+0Eh]
                mov     [r10], ax
                xor     eax, eax
                jmp     short loc_1404F23C4
; ---------------------------------------------------------------------------

loc_1404F23BF:                          ; CODE XREF: HvlQueryHypervisorProcessorNodeNumber+F↑j
                                        ; HvlQueryHypervisorProcessorNodeNumber+17↑j ...
                mov     eax, 0C0000001h

loc_1404F23C4:                          ; CODE XREF: HvlQueryHypervisorProcessorNodeNumber+2D↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlQueryHypervisorProcessorNodeNumber endp
