RtlIpv4StringToAddressExA proc near     ; DATA XREF: .pdata:00000001400F7EA8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r13d, r13d
                mov     r12, r9
                mov     [rax+8], r13
                test    rcx, rcx
                jz      loc_14058C73C
                test    r8, r8
                jz      loc_14058C73C
                test    r9, r9
                jz      loc_14058C73C
                mov     r9, r8
                lea     r8, [rax+8]
                call    RtlIpv4StringToAddressA
                test    eax, eax
                js      loc_14058C73C
                mov     rdi, [rsp+48h+arg_0]
                mov     al, [rdi]
                cmp     al, 3Ah ; ':'
                jnz     loc_14058C75F
                inc     rdi
                lea     edx, [r13+10h]
                movzx   ebx, r13w
                lea     r14d, [r13+0Ah]
                cmp     byte ptr [rdi], 30h ; '0'
                jnz     short loc_14058C633
                lea     rcx, [rdi+1]
                mov     al, [rcx]
                lea     r14d, [r13+8]
                sub     al, 58h ; 'X'
                mov     rdi, rcx
                test    al, 0DFh
                jnz     short loc_14058C633
                movzx   r14d, dx
                lea     rdi, [rcx+1]

loc_14058C633:                          ; CODE XREF: RtlIpv4StringToAddressExA+76↑j
                                        ; RtlIpv4StringToAddressExA+89↑j
                mov     r15b, [rdi]
                mov     bpl, r15b
                test    r15b, r15b
                jz      loc_14058C73C

loc_14058C642:                          ; CODE XREF: RtlIpv4StringToAddressExA+191↓j
                movsx   esi, bpl
                inc     rdi
                mov     ecx, esi
                call    __isascii
                test    eax, eax
                jz      short loc_14058C69C
                mov     ecx, esi
                call    isdigit
                test    eax, eax
                jz      short loc_14058C69C
                movsx   edx, bpl
                lea     eax, [rdx-30h]
                cmp     ax, r14w
                jnb     short loc_14058C69C
                movzx   eax, bx
                movzx   ecx, r14w
                imul    ecx, eax
                lea     eax, [rsi-30h]
                add     eax, ecx
                cmp     eax, 0FFFFh
                ja      loc_14058C73C
                movzx   eax, bx
                movzx   ebx, r14w
                imul    ebx, eax
                sub     bx, 30h ; '0'
                add     bx, dx
                jmp     loc_14058C72B
; ---------------------------------------------------------------------------

loc_14058C69C:                          ; CODE XREF: RtlIpv4StringToAddressExA+B2↑j
                                        ; RtlIpv4StringToAddressExA+BD↑j ...
                mov     eax, 10h
                cmp     r14w, ax
                jnz     loc_14058C73C
                mov     ecx, esi
                call    __isascii
                test    eax, eax
                jz      loc_14058C73C
                mov     ecx, esi
                call    isxdigit
                test    eax, eax
                jz      short loc_14058C73C
                mov     ecx, esi
                call    __isascii
                test    eax, eax
                jz      short loc_14058C6E0
                mov     ecx, esi
                call    islower
                mov     ecx, 61h ; 'a'
                test    eax, eax
                jnz     short loc_14058C6E5

loc_14058C6E0:                          ; CODE XREF: RtlIpv4StringToAddressExA+12E↑j
                mov     ecx, 41h ; 'A'

loc_14058C6E5:                          ; CODE XREF: RtlIpv4StringToAddressExA+13E↑j
                movzx   eax, bx
                shl     eax, 4
                sub     eax, ecx
                add     eax, 0Ah
                add     eax, esi
                cmp     eax, 0FFFFh
                ja      short loc_14058C73C
                mov     ecx, esi
                shl     bx, 4
                call    __isascii
                test    eax, eax
                jz      short loc_14058C718
                mov     ecx, esi
                call    islower
                mov     ecx, 61h ; 'a'
                test    eax, eax
                jnz     short loc_14058C71D

loc_14058C718:                          ; CODE XREF: RtlIpv4StringToAddressExA+166↑j
                mov     ecx, 41h ; 'A'

loc_14058C71D:                          ; CODE XREF: RtlIpv4StringToAddressExA+176↑j
                movsx   eax, bpl
                sub     ax, cx
                add     ax, 0Ah
                add     bx, ax

loc_14058C72B:                          ; CODE XREF: RtlIpv4StringToAddressExA+F7↑j
                mov     bpl, [rdi]
                test    bpl, bpl
                jnz     loc_14058C642
                test    r15b, r15b
                jnz     short loc_14058C767

loc_14058C73C:                          ; CODE XREF: RtlIpv4StringToAddressExA+29↑j
                                        ; RtlIpv4StringToAddressExA+32↑j ...
                mov     eax, 0C000000Dh

loc_14058C741:                          ; CODE XREF: RtlIpv4StringToAddressExA+1D2↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058C75F:                          ; CODE XREF: RtlIpv4StringToAddressExA+5E↑j
                test    al, al
                jnz     short loc_14058C73C
                movzx   ebx, r13w

loc_14058C767:                          ; CODE XREF: RtlIpv4StringToAddressExA+19A↑j
                ror     bx, 8
                mov     [r12], bx
                xor     eax, eax
                jmp     short loc_14058C741
RtlIpv4StringToAddressExA endp
