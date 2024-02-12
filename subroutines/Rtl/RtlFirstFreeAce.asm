RtlFirstFreeAce proc near               ; CODE XREF: RtlDeleteAce+2E↑p
                                        ; sub_140621DE0+C5↑p ...
                xor     r9d, r9d
                lea     r8, [rcx+8]
                mov     [rdx], r9
                movzx   r10d, word ptr [rcx+4]
                test    r10d, r10d
                jnz     short loc_140621F67

loc_140621F54:                          ; CODE XREF: RtlFirstFreeAce+44↓j
                movzx   eax, word ptr [rcx+2]
                add     rax, rcx
                cmp     r8, rax
                ja      short loc_140621F63
                mov     [rdx], r8

loc_140621F63:                          ; CODE XREF: RtlFirstFreeAce+1E↑j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140621F67:                          ; CODE XREF: RtlFirstFreeAce+12↑j
                movzx   r11d, word ptr [rcx+2]
                add     r11, rcx

loc_140621F6F:                          ; CODE XREF: RtlFirstFreeAce+42↓j
                cmp     r8, r11
                jnb     short loc_140621F86
                movzx   eax, word ptr [r8+2]
                inc     r9d
                add     r8, rax
                cmp     r9d, r10d
                jb      short loc_140621F6F
                jmp     short loc_140621F54
; ---------------------------------------------------------------------------

loc_140621F86:                          ; CODE XREF: RtlFirstFreeAce+32↑j
                xor     al, al
                retn
RtlFirstFreeAce endp
