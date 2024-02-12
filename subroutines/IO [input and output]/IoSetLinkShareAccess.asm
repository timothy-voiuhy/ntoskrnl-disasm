IoSetLinkShareAccess proc near          ; CODE XREF: IoSetShareAccess+F↑p
                                        ; sub_140698744+B4↑p ...

arg_0           = qword ptr  8
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     r10d, ecx
                mov     ebx, ecx
                and     r10d, 21h
                mov     r11d, edx
                setnz   al
                and     ebx, 6
                mov     [r8+4Ah], al
                setnz   al
                and     ecx, 10000h
                mov     [r8+4Bh], al
                setnz   al
                mov     [r8+4Ch], al
                mov     rax, [r8+0D0h]
                test    rax, rax
                jnz     loc_140698BB3

loc_140698AEF:                          ; CODE XREF: IoSetLinkShareAccess+107↓j
                xor     dl, dl

loc_140698AF1:                          ; CODE XREF: IoSetLinkShareAccess+10F↓j
                test    r10d, r10d
                jnz     short loc_140698B16
                test    ebx, ebx
                jnz     short loc_140698B16
                test    ecx, ecx
                jnz     short loc_140698B16
                xor     eax, eax
                mov     [r9], rax
                mov     [r9+8], rax
                mov     [r9+10h], rax
                mov     [r9+18h], eax
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140698B16:                          ; CODE XREF: IoSetLinkShareAccess+44↑j
                                        ; IoSetLinkShareAccess+48↑j ...
                mov     r10d, [rsp+arg_28]
                mov     eax, r11d
                movzx   ecx, r11b
                shr     eax, 1
                shr     r11d, 2
                and     al, 1
                and     cl, 1
                mov     [r8+4Eh], al
                and     r11b, 1
                mov     [r8+4Dh], cl
                mov     [r8+4Fh], r11b
                test    r10d, r10d
                js      loc_140698BD3

loc_140698B46:                          ; CODE XREF: IoSetLinkShareAccess+125↓j
                                        ; IoSetLinkShareAccess+130↓j
                test    dl, dl
                jnz     short loc_140698BC4
                mov     dword ptr [r9], 1
                movzx   eax, byte ptr [r8+4Ah]
                mov     [r9+4], eax
                movzx   eax, byte ptr [r8+4Bh]
                mov     [r9+8], eax
                movzx   eax, byte ptr [r8+4Ch]
                mov     [r9+0Ch], eax
                movzx   eax, byte ptr [r8+4Dh]
                mov     [r9+10h], eax
                movzx   eax, byte ptr [r8+4Eh]
                mov     [r9+14h], eax
                movzx   eax, byte ptr [r8+4Fh]

loc_140698B83:                          ; CODE XREF: IoSetLinkShareAccess+121↓j
                mov     rcx, [rsp+arg_20]
                mov     [r9+18h], eax
                test    rcx, rcx
                jz      short loc_140698BAC
                test    dl, dl
                jnz     short loc_140698BAC
                inc     dword ptr [rcx]
                test    r10b, r10b
                js      short loc_140698BA4
                movzx   eax, byte ptr [r8+4Ch]
                add     [rcx+4], eax

loc_140698BA4:                          ; CODE XREF: IoSetLinkShareAccess+EA↑j
                movzx   eax, byte ptr [r8+4Fh]
                add     [rcx+8], eax

loc_140698BAC:                          ; CODE XREF: IoSetLinkShareAccess+DF↑j
                                        ; IoSetLinkShareAccess+E3↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140698BB3:                          ; CODE XREF: IoSetLinkShareAccess+39↑j
                mov     eax, [rax]
                test    al, 1
                jz      loc_140698AEF
                mov     dl, 1
                jmp     loc_140698AF1
; ---------------------------------------------------------------------------

loc_140698BC4:                          ; CODE XREF: IoSetLinkShareAccess+98↑j
                xor     eax, eax
                mov     [r9], rax
                mov     [r9+8], rax
                mov     [r9+10h], rax
                jmp     short loc_140698B83
; ---------------------------------------------------------------------------

loc_140698BD3:                          ; CODE XREF: IoSetLinkShareAccess+90↑j
                test    cl, cl
                jnz     loc_140698B46
                mov     byte ptr [r8+4Dh], 1
                jmp     loc_140698B46
IoSetLinkShareAccess endp
