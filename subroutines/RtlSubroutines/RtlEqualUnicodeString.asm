RtlEqualUnicodeString proc near         ; CODE XREF: sub_140204E50+F↑p
                                        ; sub_140205E90+4D↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407F4FE8 SIZE 00000090 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                movzx   r9d, word ptr [rcx]
                movzx   eax, word ptr [rdx]
                cmp     r9d, eax
                jz      short loc_1405E92BE

loc_1405E92AB:                          ; CODE XREF: RtlEqualUnicodeString+9C↓j
                                        ; RtlEqualUnicodeString+D7↓j
                xor     al, al
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E92BE:                          ; CODE XREF: RtlEqualUnicodeString+19↑j
                mov     rax, [rcx+8]
                mov     r10, [rdx+8]
                lea     rbx, [rax+r9]
                cmp     r9d, 8
                jb      short loc_1405E92EC

loc_1405E92D0:                          ; CODE XREF: RtlEqualUnicodeString+5A↓j
                mov     rcx, [r10]
                cmp     [rax], rcx
                jnz     short loc_1405E92EC
                add     r9d, 0FFFFFFF8h
                jz      short loc_1405E933B
                add     rax, 8
                add     r10, 8
                cmp     r9d, 8
                jnb     short loc_1405E92D0

loc_1405E92EC:                          ; CODE XREF: RtlEqualUnicodeString+3E↑j
                                        ; RtlEqualUnicodeString+46↑j
                cmp     rax, rbx
                jnb     short loc_1405E933B
                test    r8b, r8b
                jz      short loc_1405E9360
                sub     r10, rax
                mov     esi, 0C0h

loc_1405E92FE:                          ; CODE XREF: RtlEqualUnicodeString+A9↓j
                movzx   r9d, word ptr [rax]
                movzx   r11d, word ptr [r10+rax]
                cmp     r9w, r11w
                jz      short loc_1405E9332
                cmp     r9d, 61h ; 'a'
                jb      short loc_1405E9322
                cmp     r9d, 7Ah ; 'z'
                ja      loc_1407F4FE8
                sub     r9w, 20h ; ' '

loc_1405E9322:                          ; CODE XREF: RtlEqualUnicodeString+81↑j
                                        ; RtlEqualUnicodeString+20BD62↓j ...
                cmp     r11d, 61h ; 'a'
                jnb     short loc_1405E934E

loc_1405E9328:                          ; CODE XREF: RtlEqualUnicodeString+CD↓j
                                        ; RtlEqualUnicodeString+20BDAA↓j ...
                cmp     r9w, r11w
                jnz     loc_1405E92AB

loc_1405E9332:                          ; CODE XREF: RtlEqualUnicodeString+7B↑j
                add     rax, 2
                cmp     rax, rbx
                jb      short loc_1405E92FE

loc_1405E933B:                          ; CODE XREF: RtlEqualUnicodeString+4C↑j
                                        ; RtlEqualUnicodeString+5F↑j ...
                mov     rbx, [rsp+arg_0]
                mov     al, 1
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E934E:                          ; CODE XREF: RtlEqualUnicodeString+96↑j
                cmp     r11d, 7Ah ; 'z'
                ja      loc_1407F5030
                sub     r11w, 20h ; ' '
                jmp     short loc_1405E9328
; ---------------------------------------------------------------------------
                align 20h

loc_1405E9360:                          ; CODE XREF: RtlEqualUnicodeString+64↑j
                                        ; RtlEqualUnicodeString+EA↓j
                movzx   ecx, word ptr [r10]
                cmp     [rax], cx
                jnz     loc_1405E92AB
                add     rax, 2
                add     r10, 2
                cmp     rax, rbx
                jnb     short loc_1405E933B
                jmp     short loc_1405E9360
RtlEqualUnicodeString endp
