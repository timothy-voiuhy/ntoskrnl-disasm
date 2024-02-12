RtlMapGenericMask proc near             ; CODE XREF: sub_14024C690+106↑p
                                        ; sub_140622E10+1C6↑p ...
                mov     eax, [rcx]
                mov     r8, rcx
                test    eax, eax
                js      short loc_140655B95

loc_140655B79:                          ; CODE XREF: RtlMapGenericMask+29↓j
                bt      eax, 1Eh
                jb      short loc_140655BA0

loc_140655B7F:                          ; CODE XREF: RtlMapGenericMask+3A↓j
                bt      eax, 1Dh
                jb      short loc_140655BAC

loc_140655B85:                          ; CODE XREF: RtlMapGenericMask+46↓j
                bt      eax, 1Ch
                jb      short loc_140655B9B

loc_140655B8B:                          ; CODE XREF: RtlMapGenericMask+2E↓j
                and     eax, 0FFFFFFFh
                mov     [r8], eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140655B95:                          ; CODE XREF: RtlMapGenericMask+7↑j
                or      eax, [rdx]
                mov     [rcx], eax
                jmp     short loc_140655B79
; ---------------------------------------------------------------------------

loc_140655B9B:                          ; CODE XREF: RtlMapGenericMask+19↑j
                or      eax, [rdx+0Ch]
                jmp     short loc_140655B8B
; ---------------------------------------------------------------------------

loc_140655BA0:                          ; CODE XREF: RtlMapGenericMask+D↑j
                mov     ecx, [rdx+4]
                or      ecx, eax
                mov     eax, ecx
                mov     [r8], ecx
                jmp     short loc_140655B7F
; ---------------------------------------------------------------------------

loc_140655BAC:                          ; CODE XREF: RtlMapGenericMask+13↑j
                mov     ecx, [rdx+8]
                or      ecx, eax
                mov     eax, ecx
                mov     [r8], ecx
                jmp     short loc_140655B85
RtlMapGenericMask endp
