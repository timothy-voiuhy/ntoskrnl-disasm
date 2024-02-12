RtlIsPartialPlaceholderFileInfo proc near
                                        ; DATA XREF: .pdata:0000000140122250↑o
                cmp     edx, 2
                jl      short loc_140918D31
                cmp     edx, 3
                jle     short loc_140918D1D
                cmp     edx, 23h ; '#'
                jz      short loc_140918D21
                cmp     edx, 24h ; '$'
                jle     short loc_140918D31
                cmp     edx, 26h ; '&'
                jle     short loc_140918D1D
                cmp     edx, 3Ch ; '<'
                jz      short loc_140918D1D
                cmp     edx, 3Fh ; '?'
                jz      short loc_140918D1D
                cmp     edx, 44h ; 'D'
                jz      short loc_140918D1D
                cmp     edx, 46h ; 'F'
                jnz     short loc_140918D31

loc_140918D1D:                          ; CODE XREF: RtlIsPartialPlaceholderFileInfo+8↑j
                                        ; RtlIsPartialPlaceholderFileInfo+17↑j ...
                add     rcx, 38h ; '8'

loc_140918D21:                          ; CODE XREF: RtlIsPartialPlaceholderFileInfo+D↑j
                test    dword ptr [rcx], 440000h
                setnz   al
                mov     [r8], al
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140918D31:                          ; CODE XREF: RtlIsPartialPlaceholderFileInfo+3↑j
                                        ; RtlIsPartialPlaceholderFileInfo+12↑j ...
                cmp     edx, 4Ch ; 'L'
                mov     eax, 0C0000003h
                mov     ecx, 0C00000BBh
                cmovl   eax, ecx
                retn
RtlIsPartialPlaceholderFileInfo endp
