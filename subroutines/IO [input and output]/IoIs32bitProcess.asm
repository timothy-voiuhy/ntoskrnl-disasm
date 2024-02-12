IoIs32bitProcess proc near              ; CODE XREF: IoIsInitiator32bitProcess+25↓p
                                        ; sub_1404F02C8+26↓p ...

; FUNCTION CHUNK AT 000000014046D690 SIZE 0000003A BYTES

                test    rcx, rcx
                jz      short loc_140310738
                cmp     byte ptr [rcx+40h], 1
                jnz     short loc_140310734
                test    dword ptr [rcx+10h], 2000h
                mov     rdx, [rcx+98h]
                jz      short loc_14031077C
                mov     rax, [rcx+58h]
                and     rax, 0FFFFFFFFFFFFFFF9h

loc_140310723:                          ; CODE XREF: IoIs32bitProcess+94↓j
                                        ; IoIs32bitProcess+15CF9F↓j
                test    rax, rax
                jz      short loc_140310734
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jnz     short loc_140310796

loc_140310734:                          ; CODE XREF: IoIs32bitProcess+9↑j
                                        ; IoIs32bitProcess+26↑j ...
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140310738:                          ; CODE XREF: IoIs32bitProcess+3↑j
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 1
                jnz     short loc_140310734
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+580h]
                test    rax, rax
                jz      short loc_140310734
                movzx   ecx, word ptr [rax+8]
                mov     eax, 14Ch
                cmp     cx, ax
                jnz     loc_14046D6B7

loc_140310778:                          ; CODE XREF: IoIs32bitProcess+A2↓j
                                        ; IoIs32bitProcess+15CFB2↓j ...
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14031077C:                          ; CODE XREF: IoIs32bitProcess+19↑j
                test    rdx, rdx
                jz      short loc_140310734
                movzx   eax, byte ptr [rcx+46h]
                test    al, al
                jnz     loc_14046D690
                mov     rax, [rdx+220h]
                jmp     short loc_140310723
; ---------------------------------------------------------------------------

loc_140310796:                          ; CODE XREF: IoIs32bitProcess+32↑j
                movzx   edx, word ptr [rcx+8]
                mov     eax, 14Ch
                cmp     dx, ax
                jz      short loc_140310778
                jmp     loc_14046D6A4
IoIs32bitProcess endp
