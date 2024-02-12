RtlGetFirstRange proc near              ; CODE XREF: RtlIsRangeAvailable+2F↑p
                                        ; sub_1407B8C34+A4↓p ...
                mov     [rdx], rcx
                xor     r9d, r9d
                mov     eax, [rcx+18h]
                mov     r11d, r9d
                mov     [rdx+18h], eax
                mov     r10, [rcx]
                cmp     r10, rcx
                jz      short loc_14075F1B2
                test    byte ptr [r10-6], 1
                jnz     short loc_14075F1BE
                mov     [rdx+8], r9

loc_14075F1A2:                          ; CODE XREF: RtlGetFirstRange+49↓j
                lea     r9, [r10-28h]

loc_14075F1A6:                          ; CODE XREF: RtlGetFirstRange+3C↓j
                mov     [rdx+10h], r9
                mov     eax, r11d
                mov     [r8], r9
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14075F1B2:                          ; CODE XREF: RtlGetFirstRange+15↑j
                mov     [rdx+8], r9
                mov     r11d, 8000001Ah
                jmp     short loc_14075F1A6
; ---------------------------------------------------------------------------

loc_14075F1BE:                          ; CODE XREF: RtlGetFirstRange+1C↑j
                lea     rax, [r10-18h]
                mov     [rdx+8], rax
                mov     r10, [rax]
                jmp     short loc_14075F1A2
RtlGetFirstRange endp
