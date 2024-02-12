RtlCompareAltitudes proc near           ; CODE XREF: sub_1407022CC+6E↓p
                                        ; sub_1407C94F4+972B4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140482BEE SIZE 000000A2 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                movzx   r10d, word ptr [rcx]
                movzx   r9d, word ptr [rdx]
                mov     rsi, [rcx+8]
                xor     ecx, ecx
                mov     r14, [rdx+8]
                movzx   edx, cx
                shr     r10w, 1
                shr     r9w, 1
                lea     r11d, [rcx+1]
                cmp     cx, r10w
                jnb     short loc_14034DDE4

loc_14034DDD0:                          ; CODE XREF: RtlCompareAltitudes+52↓j
                movzx   eax, dx
                cmp     word ptr [rsi+rax*2], 2Eh ; '.'
                jz      short loc_14034DDE4
                add     dx, r11w
                cmp     dx, r10w
                jb      short loc_14034DDD0

loc_14034DDE4:                          ; CODE XREF: RtlCompareAltitudes+3E↑j
                                        ; RtlCompareAltitudes+48↑j
                movzx   r8d, cx
                cmp     cx, r9w
                jnb     short loc_14034DE04

loc_14034DDEE:                          ; CODE XREF: RtlCompareAltitudes+72↓j
                movzx   eax, r8w
                cmp     word ptr [r14+rax*2], 2Eh ; '.'
                jz      short loc_14034DE04
                add     r8w, r11w
                cmp     r8w, r9w
                jb      short loc_14034DDEE

loc_14034DE04:                          ; CODE XREF: RtlCompareAltitudes+5C↑j
                                        ; RtlCompareAltitudes+68↑j
                movzx   ebx, dx
                movzx   eax, cx
                mov     r12d, 0FFFFh
                cmp     cx, dx
                jnb     short loc_14034DE1F

loc_14034DE15:                          ; CODE XREF: RtlCompareAltitudes+134E71↓j
                cmp     word ptr [rsi], 30h ; '0'
                jz      loc_140482BEE

loc_14034DE1F:                          ; CODE XREF: RtlCompareAltitudes+83↑j
                                        ; RtlCompareAltitudes+134E77↓j
                movzx   ebx, r8w
                movzx   eax, cx
                cmp     cx, r8w
                jnb     short loc_14034DE37

loc_14034DE2C:                          ; CODE XREF: RtlCompareAltitudes+194↓j
                cmp     word ptr [r14], 30h ; '0'
                jz      loc_14034DF0B

loc_14034DE37:                          ; CODE XREF: RtlCompareAltitudes+9A↑j
                                        ; RtlCompareAltitudes+18E↓j
                cmp     dx, r8w
                jz      short loc_14034DE64
                cmp     r8w, dx

loc_14034DE41:                          ; CODE XREF: RtlCompareAltitudes+EB↓j
                sbb     eax, eax
                and     eax, 2
                dec     eax

loc_14034DE48:                          ; CODE XREF: RtlCompareAltitudes+176↓j
                                        ; RtlCompareAltitudes+134EEF↓j ...
                mov     rbx, [rsp+18h+arg_0]
                mov     rbp, [rsp+18h+arg_8]
                mov     rsi, [rsp+18h+arg_10]
                mov     rdi, [rsp+18h+arg_18]
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14034DE64:                          ; CODE XREF: RtlCompareAltitudes+AB↑j
                movzx   ebx, cx
                cmp     cx, dx
                jnb     short loc_14034DE86

loc_14034DE6C:                          ; CODE XREF: RtlCompareAltitudes+F4↓j
                movzx   eax, bx
                movzx   edi, word ptr [rsi+rax*2]
                movzx   eax, word ptr [r14+rax*2]
                cmp     ax, di
                jnz     short loc_14034DE41
                add     bx, r11w
                cmp     bx, dx
                jb      short loc_14034DE6C

loc_14034DE86:                          ; CODE XREF: RtlCompareAltitudes+DA↑j
                movzx   eax, r10w
                mov     r15d, ecx
                sub     ax, dx
                mov     ebp, ecx
                sub     ax, r11w
                cmovns  r15w, ax
                movzx   eax, r9w
                sub     ax, r8w
                movzx   edi, r15w
                sub     ax, r11w
                cmovns  bp, ax
                or      ebx, 0FFFFFFFFh
                test    r10w, r10w
                jz      short loc_14034DEC6
                sub     r10w, r11w

loc_14034DEBC:                          ; CODE XREF: RtlCompareAltitudes+134E92↓j
                cmp     r10w, dx
                ja      loc_140482C0C

loc_14034DEC6:                          ; CODE XREF: RtlCompareAltitudes+126↑j
                                        ; RtlCompareAltitudes+134E85↓j
                movzx   r10d, bp
                test    r9w, r9w
                jz      short loc_14034DEDE
                sub     r9w, r11w

loc_14034DED4:                          ; CODE XREF: RtlCompareAltitudes+134EAF↓j
                cmp     r9w, r8w
                ja      loc_140482C27

loc_14034DEDE:                          ; CODE XREF: RtlCompareAltitudes+13E↑j
                                        ; RtlCompareAltitudes+134EA1↓j
                movzx   eax, dx
                movsx   r9d, di
                lea     r15, [rsi+rax*2]
                movzx   eax, r8w
                lea     r14, [r14+rax*2]
                test    r9d, r9d
                jg      loc_140482C44

loc_14034DEFA:                          ; CODE XREF: RtlCompareAltitudes+134EBC↓j
                                        ; RtlCompareAltitudes+134EE3↓j
                cmp     di, r10w
                jnz     loc_140482C84
                xor     eax, eax
                jmp     loc_14034DE48
; ---------------------------------------------------------------------------

loc_14034DF0B:                          ; CODE XREF: RtlCompareAltitudes+A1↑j
                add     ax, r11w
                add     r14, 2
                add     r8w, r12w
                add     r9w, r12w
                cmp     ax, bx
                jnb     loc_14034DE37
                jmp     loc_14034DE2C
RtlCompareAltitudes endp
