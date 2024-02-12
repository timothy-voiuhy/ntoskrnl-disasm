NtShutdownSystem proc near              ; DATA XREF: .pdata:00000001400F9D80↑o
                                        ; PAGE:000000014098B808↓o
                sub     rsp, 28h
                mov     edx, 4
                test    ecx, ecx
                jz      short loc_1405B2BF9
                sub     ecx, 1
                jz      short loc_1405B2BF2
                sub     ecx, 1
                jz      short loc_1405B2BEB
                cmp     ecx, 1
                jz      short loc_1405B2BB3
                mov     eax, 0C000000Dh
                jmp     short loc_1405B2C06
; ---------------------------------------------------------------------------

loc_1405B2BB3:                          ; CODE XREF: NtShutdownSystem+1A↑j
                mov     rax, gs:188h
                mov     dl, [rax+232h]
                test    dl, dl
                jz      short loc_1405B2BDD
                mov     rcx, cs:qword_140D2E750
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_1405B2BDD
                mov     eax, 0C0000061h
                jmp     short loc_1405B2C06
; ---------------------------------------------------------------------------

loc_1405B2BDD:                          ; CODE XREF: NtShutdownSystem+34↑j
                                        ; NtShutdownSystem+44↑j
                xor     ecx, ecx
                call    sub_1405B28E4
                mov     eax, 0C0000001h
                jmp     short loc_1405B2C06
; ---------------------------------------------------------------------------

loc_1405B2BEB:                          ; CODE XREF: NtShutdownSystem+15↑j
                mov     ecx, 6
                jmp     short loc_1405B2BFB
; ---------------------------------------------------------------------------

loc_1405B2BF2:                          ; CODE XREF: NtShutdownSystem+10↑j
                mov     ecx, 5
                jmp     short loc_1405B2BFB
; ---------------------------------------------------------------------------

loc_1405B2BF9:                          ; CODE XREF: NtShutdownSystem+B↑j
                mov     ecx, edx

loc_1405B2BFB:                          ; CODE XREF: NtShutdownSystem+60↑j
                                        ; NtShutdownSystem+67↑j
                mov     r8d, 0C0000004h
                call    sub_14099AF40

loc_1405B2C06:                          ; CODE XREF: NtShutdownSystem+21↑j
                                        ; NtShutdownSystem+4B↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtShutdownSystem endp
