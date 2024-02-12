KeShouldYieldProcessor proc near        ; CODE XREF: sub_1402260D0+519↑p
                                        ; sub_140229EE0+3C3↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404734E2 SIZE 00000056 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rcx, gs:20h
                xor     edi, edi
                mov     edx, [rcx+312Ch]
                mov     ebx, [rcx+7BECh]
                mov     ebp, [rcx+7E9Ch]
                test    dl, 1
                jnz     loc_1404734E2
                mov     esi, edi
                test    dl, 1Eh
                jnz     short loc_140326111
                movzx   eax, byte ptr [rcx+3129h]
                test    al, al
                jnz     short loc_1403260F2
                mov     rax, [rcx+10h]
                test    rax, rax
                jnz     short loc_140326118

loc_1403260D5:                          ; CODE XREF: KeShouldYieldProcessor+9C↓j
                                        ; KeShouldYieldProcessor+14D46A↓j
                cmp     ebx, 7
                ja      short loc_140326125
                xor     eax, eax

loc_1403260DC:                          ; CODE XREF: KeShouldYieldProcessor+8F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403260F2:                          ; CODE XREF: KeShouldYieldProcessor+4A↑j
                mov     esi, 3

loc_1403260F7:                          ; CODE XREF: KeShouldYieldProcessor+96↓j
                                        ; KeShouldYieldProcessor+A3↓j ...
                test    dword ptr cs:xmmword_140CFC480+4, 4000000h
                jnz     loc_140473526

loc_140326107:                          ; CODE XREF: KeShouldYieldProcessor+14D4B3↓j
                test    esi, esi
                setnz   dil
                mov     eax, edi
                jmp     short loc_1403260DC
; ---------------------------------------------------------------------------

loc_140326111:                          ; CODE XREF: KeShouldYieldProcessor+3F↑j
                mov     esi, 2
                jmp     short loc_1403260F7
; ---------------------------------------------------------------------------

loc_140326118:                          ; CODE XREF: KeShouldYieldProcessor+53↑j
                cmp     rax, [rcx+8]
                jz      short loc_1403260D5
                mov     esi, 4
                jmp     short loc_1403260F7
; ---------------------------------------------------------------------------

loc_140326125:                          ; CODE XREF: KeShouldYieldProcessor+58↑j
                test    esi, esi
                jnz     loc_1404734FF

loc_14032612D:                          ; CODE XREF: KeShouldYieldProcessor+14D496↓j
                cli
                mov     [rcx+7BECh], edi
                mov     [rcx+7E9Ch], edi
                call    sub_140326178
                sti
                mov     esi, edi
                jmp     short loc_1403260F7
KeShouldYieldProcessor endp
