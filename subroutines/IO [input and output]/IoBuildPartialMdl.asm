IoBuildPartialMdl proc near             ; CODE XREF: sub_1402108D4+1AD↑p
                                        ; sub_1403A0628+103264↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140472998 SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     eax, [rcx+2Ch]
                mov     r11, [rcx+20h]
                mov     ebx, r9d
                mov     r9, r8
                mov     r10d, r9d
                mov     r8, rdx
                sub     r10d, eax
                mov     rdx, rcx
                sub     r10d, r11d
                mov     edi, r9d
                test    ebx, ebx
                jz      loc_140323F84
                mov     esi, ebx

loc_140323EC8:                          ; CODE XREF: IoBuildPartialMdl+FA↓j
                cmp     r9, r11
                jb      loc_140472998
                mov     rcx, r9
                sub     rcx, rax
                mov     eax, [rdx+28h]
                sub     rcx, r11
                cmp     rcx, rax
                ja      loc_140472998
                mov     rax, [rdx+10h]
                and     r9, 0FFFFFFFFFFFFF000h
                mov     [r8+10h], rax
                mov     r11d, 48C5h
                mov     eax, edi
                mov     [r8+20h], r9
                sub     r9d, [rdx+20h]
                and     eax, 0FFFh
                and     word ptr [r8+0Ah], 8
                and     edi, 0FFFh
                mov     [r8+2Ch], eax
                add     rdi, 0FFFh
                mov     [r8+28h], esi
                movzx   ecx, word ptr [rdx+0Ah]
                and     cx, r11w
                shr     r9d, 0Ch
                or      cx, [r8+0Ah]
                or      cx, 10h
                mov     eax, r10d
                mov     [r8+0Ah], cx
                add     rax, [rdx+18h]
                add     rdx, 30h ; '0'
                mov     [r8+18h], rax
                lea     rax, [rdx+r9*8]
                mov     edx, esi
                add     rdx, rdi
                shr     rdx, 0Ch
                test    edx, edx
                jz      short loc_140323F73
                sub     r8, rax

loc_140323F62:                          ; CODE XREF: IoBuildPartialMdl+E1↓j
                mov     rcx, [rax]
                mov     [r8+rax+30h], rcx
                lea     rax, [rax+8]
                add     edx, 0FFFFFFFFh
                jnz     short loc_140323F62

loc_140323F73:                          ; CODE XREF: IoBuildPartialMdl+CD↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140323F84:                          ; CODE XREF: IoBuildPartialMdl+30↑j
                mov     esi, [rcx+28h]
                sub     esi, r10d
                jmp     loc_140323EC8
IoBuildPartialMdl endp
