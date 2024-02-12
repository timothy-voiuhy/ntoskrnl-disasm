CcSetReadAheadGranularityEx proc near   ; DATA XREF: .pdata:00000001400F0EC4↑o
                mov     r8, [rcx+30h]
                test    rdx, rdx
                jz      short locret_1404EAB26
                mov     eax, [rdx+4]
                dec     eax
                mov     [r8+4], eax
                mov     eax, [rdx+8]
                test    eax, eax
                jz      short loc_1404EAB04
                bts     dword ptr [r8], 15h
                mov     [r8+58h], eax
                jmp     short loc_1404EAB08
; ---------------------------------------------------------------------------

loc_1404EAB04:                          ; CODE XREF: CcSetReadAheadGranularityEx+17↑j
                mov     eax, [r8+58h]

loc_1404EAB08:                          ; CODE XREF: CcSetReadAheadGranularityEx+22↑j
                mov     ecx, 800000h
                cmp     eax, ecx
                jbe     short loc_1404EAB15
                mov     [r8+58h], ecx

loc_1404EAB15:                          ; CODE XREF: CcSetReadAheadGranularityEx+2F↑j
                mov     ecx, [rdx+0Ch]
                mov     eax, 32h ; '2'
                test    ecx, ecx
                cmovnz  eax, ecx
                mov     [r8+5Ch], eax

locret_1404EAB26:                       ; CODE XREF: CcSetReadAheadGranularityEx+7↑j
                retn
CcSetReadAheadGranularityEx endp
