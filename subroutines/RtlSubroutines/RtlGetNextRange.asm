RtlGetNextRange proc near               ; CODE XREF: sub_14075EFEC+60↑p
                                        ; sub_1407B8C34+CF↓p ...

; FUNCTION CHUNK AT 000000014084211A SIZE 00000006 BYTES

                mov     r11, [rcx]
                mov     r10b, r8b
                mov     eax, [rcx+18h]
                mov     r9, rcx
                cmp     [r11+18h], eax
                jnz     loc_14084211A
                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short loc_14075F124
                test    r8b, r8b
                jz      short loc_14075F12F
                mov     r8, [rax+28h]

loc_14075F0F8:                          ; CODE XREF: RtlGetNextRange+63↓j
                mov     rax, [r9+8]
                lea     rcx, [r8-28h]
                test    rax, rax
                jnz     short loc_14075F135

loc_14075F105:                          ; CODE XREF: RtlGetNextRange+7C↓j
                lea     rax, [rcx+28h]
                cmp     rax, r11
                jz      short loc_14075F11F
                test    byte ptr [rcx+22h], 1
                jnz     short loc_14075F14E

loc_14075F114:                          ; CODE XREF: RtlGetNextRange+68↓j
                                        ; RtlGetNextRange+92↓j
                mov     [r9+10h], rcx
                xor     eax, eax
                mov     [rdx], rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075F11F:                          ; CODE XREF: RtlGetNextRange+3C↑j
                and     qword ptr [r9+10h], 0

loc_14075F124:                          ; CODE XREF: RtlGetNextRange+1D↑j
                and     qword ptr [rdx], 0
                mov     eax, 8000001Ah
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075F12F:                          ; CODE XREF: RtlGetNextRange+22↑j
                mov     r8, [rax+30h]
                jmp     short loc_14075F0F8
; ---------------------------------------------------------------------------

loc_14075F135:                          ; CODE XREF: RtlGetNextRange+33↑j
                cmp     r8, rax
                jnz     short loc_14075F114
                test    r10b, r10b
                jnz     short loc_14075F164
                mov     rcx, [rax+20h]

loc_14075F143:                          ; CODE XREF: RtlGetNextRange+98↓j
                and     qword ptr [r9+8], 0
                add     rcx, 0FFFFFFFFFFFFFFD8h
                jmp     short loc_14075F105
; ---------------------------------------------------------------------------

loc_14075F14E:                          ; CODE XREF: RtlGetNextRange+42↑j
                lea     rax, [rcx+10h]
                mov     [r9+8], rax
                test    r10b, r10b
                jz      short loc_14075F16A
                mov     rcx, [rax]

loc_14075F15E:                          ; CODE XREF: RtlGetNextRange+9E↓j
                add     rcx, 0FFFFFFFFFFFFFFD8h
                jmp     short loc_14075F114
; ---------------------------------------------------------------------------

loc_14075F164:                          ; CODE XREF: RtlGetNextRange+6D↑j
                mov     rcx, [rax+18h]
                jmp     short loc_14075F143
; ---------------------------------------------------------------------------

loc_14075F16A:                          ; CODE XREF: RtlGetNextRange+89↑j
                mov     rcx, [rcx+18h]
                jmp     short loc_14075F15E
RtlGetNextRange endp
