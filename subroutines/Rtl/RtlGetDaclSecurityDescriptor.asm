RtlGetDaclSecurityDescriptor proc near  ; CODE XREF: sub_1405C2D54+47E↓p
                                        ; sub_1405F0AD8+25↓p ...
                cmp     byte ptr [rcx], 1
                mov     r10, rcx
                jnz     short loc_140206D70
                movzx   ecx, word ptr [rcx+2]
                and     cx, 4
                setnz   al
                mov     [rdx], al
                xor     eax, eax
                test    cx, cx
                jz      short loc_140206D66
                movzx   ecx, word ptr [r10+2]
                test    cl, 4
                jz      short loc_140206D57
                test    cx, cx
                jns     short loc_140206D6A
                mov     ecx, [r10+10h]
                test    ecx, ecx
                jz      short loc_140206D57
                lea     rax, [r10+rcx]

loc_140206D57:                          ; CODE XREF: RtlGetDaclSecurityDescriptor+24↑j
                                        ; RtlGetDaclSecurityDescriptor+31↑j ...
                mov     [r8], rax
                mov     al, [r10+2]
                shr     al, 3
                and     al, 1
                mov     [r9], al

loc_140206D66:                          ; CODE XREF: RtlGetDaclSecurityDescriptor+1A↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140206D6A:                          ; CODE XREF: RtlGetDaclSecurityDescriptor+29↑j
                mov     rax, [r10+20h]
                jmp     short loc_140206D57
; ---------------------------------------------------------------------------

loc_140206D70:                          ; CODE XREF: RtlGetDaclSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
RtlGetDaclSecurityDescriptor endp
