RtlLookupEntryHashTable proc near       ; CODE XREF: sub_1405980F4+C4↓p
                                        ; sub_1406D7DB8+3C↓p ...

var_28          = byte ptr -28h
arg_0           = dword ptr  8

                sub     rsp, 28h
                mov     r11, rcx
                lea     r10, [rsp+28h+var_28]
                mov     ecx, [rcx+4]
                mov     eax, edx
                test    r8, r8
                mov     r9, rdx
                cmovnz  r10, r8
                shr     eax, cl
                imul    ecx, eax, 41C64E6Dh
                imul    eax, 10DCDh
                add     ecx, 3039h
                inc     eax
                shr     ecx, 10h
                and     eax, 0FFFF0000h
                or      ecx, eax
                mov     eax, [r11+10h]
                mov     edx, eax
                and     edx, ecx
                cmp     edx, [r11+0Ch]
                jb      loc_14031148E

loc_14031140C:                          ; CODE XREF: RtlLookupEntryHashTable+D6↓j
                cmp     dword ptr [r11+8], 80h
                mov     r8, [r11+20h]
                ja      short loc_14031146B

loc_14031141A:                          ; CODE XREF: RtlLookupEntryHashTable+CC↓j
                mov     ecx, edx
                shl     rcx, 4
                add     rcx, r8
                mov     r8, rcx
                mov     rdx, [rcx]
                cmp     rdx, rcx
                jz      short loc_14031143C

loc_14031142E:                          ; CODE XREF: RtlLookupEntryHashTable+A7↓j
                mov     rax, [rdx+10h]
                test    rax, rax
                jz      short loc_14031145B
                cmp     rax, r9
                jb      short loc_14031145B

loc_14031143C:                          ; CODE XREF: RtlLookupEntryHashTable+6C↑j
                                        ; RtlLookupEntryHashTable+A9↓j
                mov     [r10], rcx
                mov     [r10+8], r8
                mov     [r10+10h], r9
                mov     rax, [r8]
                cmp     rcx, rax
                jz      short loc_14031149B
                cmp     [rax+10h], r9
                jnz     short loc_14031149B

loc_140311455:                          ; CODE XREF: RtlLookupEntryHashTable+DD↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031145B:                          ; CODE XREF: RtlLookupEntryHashTable+75↑j
                                        ; RtlLookupEntryHashTable+7A↑j
                mov     rax, [rdx]
                mov     r8, rdx
                mov     rdx, rax
                cmp     rax, rcx
                jnz     short loc_14031142E
                jmp     short loc_14031143C
; ---------------------------------------------------------------------------

loc_14031146B:                          ; CODE XREF: RtlLookupEntryHashTable+58↑j
                lea     eax, [rdx+80h]
                mov     [rsp+28h+arg_0], 0
                bsr     ecx, eax
                mov     edx, 1
                shl     edx, cl
                xor     edx, eax
                lea     eax, [rcx-7]
                mov     r8, [r8+rax*8]
                jmp     short loc_14031141A
; ---------------------------------------------------------------------------

loc_14031148E:                          ; CODE XREF: RtlLookupEntryHashTable+46↑j
                lea     edx, [rax+rax]
                or      edx, 1
                and     edx, ecx
                jmp     loc_14031140C
; ---------------------------------------------------------------------------

loc_14031149B:                          ; CODE XREF: RtlLookupEntryHashTable+8D↑j
                                        ; RtlLookupEntryHashTable+93↑j
                xor     eax, eax
                jmp     short loc_140311455
RtlLookupEntryHashTable endp
