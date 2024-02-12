RtlIpv6StringToAddressExA proc near     ; DATA XREF: .pdata:00000001400F7EC0↑o

var_38          = qword ptr -38h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     edi, edi
                mov     r12, r9
                mov     [r11-38h], rdi
                mov     r13, r8
                mov     rax, rcx
                test    rcx, rcx
                jz      loc_14058CE29
                test    rdx, rdx
                jz      loc_14058CE29
                test    r8, r8
                jz      loc_14058CE29
                test    r9, r9
                jz      loc_14058CE29
                mov     r14b, [rcx]
                mov     r8, rdx
                cmp     r14b, 5Bh ; '['
                lea     rcx, [rcx+1]
                lea     rdx, [r11-38h]
                movzx   esi, di
                cmovnz  rcx, rax
                mov     r15d, edi
                setz    [rsp+58h+arg_0]
                call    RtlIpv6StringToAddressA
                test    eax, eax
                js      loc_14058CE29
                mov     rbx, [rsp+58h+var_38]
                cmp     byte ptr [rbx], 25h ; '%'
                jnz     loc_14058CCB6
                inc     rbx
                movsx   edi, byte ptr [rbx]
                mov     ecx, edi
                call    __isascii
                test    eax, eax
                jz      loc_14058CE29
                mov     ecx, edi
                call    isdigit
                test    eax, eax
                jz      loc_14058CE29

loc_14058CC4F:                          ; CODE XREF: RtlIpv6StringToAddressExA+112↓j
                test    dil, dil
                jz      short loc_14058CCB4
                cmp     dil, 5Dh ; ']'
                jz      short loc_14058CCB4
                movsx   ebp, dil
                mov     ecx, ebp
                call    __isascii
                test    eax, eax
                jz      loc_14058CE29
                mov     ecx, ebp
                call    isdigit
                test    eax, eax
                jz      loc_14058CE29
                mov     eax, r15d
                lea     rdx, [rax+rax*4]
                movsx   rax, dil
                lea     rdx, [rdx-18h]
                lea     rdx, [rax+rdx*2]
                mov     eax, 0FFFFFFFFh
                cmp     rdx, rax
                ja      loc_14058CE29
                lea     eax, [r15+r15*4]
                lea     r15d, ds:0FFFFFFFFFFFFFFD0h[rax*2]
                add     r15d, ebp
                inc     rbx
                mov     dil, [rbx]
                jmp     short loc_14058CC4F
; ---------------------------------------------------------------------------

loc_14058CCB4:                          ; CODE XREF: RtlIpv6StringToAddressExA+B2↑j
                                        ; RtlIpv6StringToAddressExA+B8↑j
                xor     edi, edi

loc_14058CCB6:                          ; CODE XREF: RtlIpv6StringToAddressExA+85↑j
                cmp     byte ptr [rbx], 5Dh ; ']'
                jnz     loc_14058CE0B
                cmp     r14b, 5Bh ; '['
                jnz     loc_14058CE29
                inc     rbx
                mov     dl, dil
                mov     [rsp+58h+arg_0], dl
                cmp     byte ptr [rbx], 3Ah ; ':'
                jnz     loc_14058CE0F
                inc     rbx
                mov     r14d, 0Ah
                cmp     byte ptr [rbx], 30h ; '0'
                lea     r8d, [r14+6]
                jnz     short loc_14058CD09
                lea     rcx, [rbx+1]
                mov     al, [rcx]
                lea     r14d, [r8-8]
                sub     al, 58h ; 'X'
                mov     rbx, rcx
                test    al, 0DFh
                jnz     short loc_14058CD09
                movzx   r14d, r8w
                lea     rbx, [rcx+1]

loc_14058CD09:                          ; CODE XREF: RtlIpv6StringToAddressExA+14C↑j
                                        ; RtlIpv6StringToAddressExA+15F↑j
                mov     bpl, [rbx]
                test    bpl, bpl
                jz      loc_14058CE0F

loc_14058CD15:                          ; CODE XREF: RtlIpv6StringToAddressExA+265↓j
                movsx   edi, bpl
                mov     ecx, edi
                call    __isascii
                test    eax, eax
                jz      short loc_14058CD67
                mov     ecx, edi
                call    isdigit
                test    eax, eax
                jz      short loc_14058CD67
                movzx   ecx, r14w
                lea     eax, [rdi-30h]
                cmp     eax, ecx
                jge     short loc_14058CD67
                movzx   eax, si
                imul    eax, ecx
                add     eax, 0FFFFFFD0h
                add     eax, edi
                cmp     eax, 0FFFFh
                ja      loc_14058CE29
                movzx   eax, si
                movzx   esi, r14w
                imul    esi, eax
                movsx   eax, bpl
                sub     si, 30h ; '0'
                jmp     loc_14058CDF7
; ---------------------------------------------------------------------------

loc_14058CD67:                          ; CODE XREF: RtlIpv6StringToAddressExA+182↑j
                                        ; RtlIpv6StringToAddressExA+18D↑j ...
                mov     eax, 10h
                cmp     r14w, ax
                jnz     loc_14058CE29
                mov     ecx, edi
                call    __isascii
                test    eax, eax
                jz      loc_14058CE29
                mov     ecx, edi
                call    isxdigit
                test    eax, eax
                jz      loc_14058CE29
                mov     ecx, edi
                call    __isascii
                test    eax, eax
                jz      short loc_14058CDAF
                mov     ecx, edi
                call    islower
                mov     ecx, 61h ; 'a'
                test    eax, eax
                jnz     short loc_14058CDB4

loc_14058CDAF:                          ; CODE XREF: RtlIpv6StringToAddressExA+1FD↑j
                mov     ecx, 41h ; 'A'

loc_14058CDB4:                          ; CODE XREF: RtlIpv6StringToAddressExA+20D↑j
                movzx   eax, si
                shl     eax, 4
                sub     eax, ecx
                add     eax, 0Ah
                add     eax, edi
                cmp     eax, 0FFFFh
                ja      short loc_14058CE29
                mov     ecx, edi
                shl     si, 4
                call    __isascii
                test    eax, eax
                jz      short loc_14058CDE7
                mov     ecx, edi
                call    islower
                mov     ecx, 61h ; 'a'
                test    eax, eax
                jnz     short loc_14058CDEC

loc_14058CDE7:                          ; CODE XREF: RtlIpv6StringToAddressExA+235↑j
                mov     ecx, 41h ; 'A'

loc_14058CDEC:                          ; CODE XREF: RtlIpv6StringToAddressExA+245↑j
                movsx   eax, bpl
                sub     ax, cx
                add     ax, 0Ah

loc_14058CDF7:                          ; CODE XREF: RtlIpv6StringToAddressExA+1C2↑j
                inc     rbx
                add     si, ax
                xor     edi, edi
                mov     bpl, [rbx]
                test    bpl, bpl
                jnz     loc_14058CD15

loc_14058CE0B:                          ; CODE XREF: RtlIpv6StringToAddressExA+119↑j
                mov     dl, [rsp+58h+arg_0]

loc_14058CE0F:                          ; CODE XREF: RtlIpv6StringToAddressExA+136↑j
                                        ; RtlIpv6StringToAddressExA+16F↑j
                cmp     [rbx], dil
                jnz     short loc_14058CE29
                test    dl, dl
                jnz     short loc_14058CE29
                ror     si, 8
                mov     [r12], si
                xor     eax, eax
                mov     [r13+0], r15d
                jmp     short loc_14058CE2E
; ---------------------------------------------------------------------------

loc_14058CE29:                          ; CODE XREF: RtlIpv6StringToAddressExA+2E↑j
                                        ; RtlIpv6StringToAddressExA+37↑j ...
                mov     eax, 0C000000Dh

loc_14058CE2E:                          ; CODE XREF: RtlIpv6StringToAddressExA+287↑j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIpv6StringToAddressExA endp
