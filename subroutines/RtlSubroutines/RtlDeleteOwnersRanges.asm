RtlDeleteOwnersRanges proc near         ; CODE XREF: sub_14075FE50+8↑p
                                        ; sub_140868A30+1CD↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014084237E SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     rbx, rcx
                xor     r8d, r8d

loc_14075FF38:                          ; CODE XREF: RtlDeleteOwnersRanges+D3↓j
                mov     rax, [rbx]
                mov     rdi, [rax]
                lea     rdx, [rax-28h]

loc_14075FF42:                          ; CODE XREF: RtlDeleteOwnersRanges+42↓j
                sub     rdi, 28h ; '('
                lea     rcx, [rdx+28h]
                cmp     rbx, rcx
                jz      short loc_14075FFCA
                test    byte ptr [rdx+22h], 1
                jnz     short loc_14075FF98
                cmp     [rdx+18h], rsi
                jz      short loc_14075FF64

loc_14075FF5B:                          ; CODE XREF: RtlDeleteOwnersRanges+76↓j
                                        ; RtlDeleteOwnersRanges+8E↓j
                mov     rdx, rdi
                mov     rdi, [rdi+28h]
                jmp     short loc_14075FF42
; ---------------------------------------------------------------------------

loc_14075FF64:                          ; CODE XREF: RtlDeleteOwnersRanges+39↑j
                mov     r8, [rcx]
                cmp     [r8+8], rcx
                jnz     FatalListEntryError_104
                mov     rax, [rcx+8]
                cmp     [rax], rcx
                jnz     FatalListEntryError_104
                mov     [rax], r8
                mov     rcx, rdx
                mov     [r8+8], rax
                call    sub_1407600D8
                dec     dword ptr [rbx+14h]
                inc     dword ptr [rbx+18h]
                xor     r8d, r8d
                jmp     short loc_14075FF5B
; ---------------------------------------------------------------------------

loc_14075FF98:                          ; CODE XREF: RtlDeleteOwnersRanges+33↑j
                mov     rax, [rdx+10h]
                mov     rcx, [rax]
                lea     r9, [rax-28h]
                sub     rcx, 28h ; '('
                lea     rax, [r9+18h]

loc_14075FFAB:                          ; CODE XREF: RtlDeleteOwnersRanges+A8↓j
                cmp     rdx, rax
                jz      short loc_14075FF5B
                cmp     [r9+18h], rsi
                jz      short loc_14075FFDE
                mov     rax, rcx
                mov     r9, rcx
                mov     rcx, [rcx+28h]
                sub     rcx, 28h ; '('
                add     rax, 18h
                jmp     short loc_14075FFAB
; ---------------------------------------------------------------------------

loc_14075FFCA:                          ; CODE XREF: RtlDeleteOwnersRanges+2D↑j
                                        ; RtlDeleteOwnersRanges+CB↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, r8d
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14075FFDE:                          ; CODE XREF: RtlDeleteOwnersRanges+94↑j
                mov     rcx, r9
                call    sub_1407C49D4
                mov     r8d, eax
                test    eax, eax
                js      short loc_14075FFCA
                dec     dword ptr [rbx+14h]
                inc     dword ptr [rbx+18h]
                jmp     loc_14075FF38
RtlDeleteOwnersRanges endp
