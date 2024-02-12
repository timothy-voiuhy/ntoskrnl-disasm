RtlIpv6StringToAddressA proc near       ; CODE XREF: RtlIpv6StringToAddressExA+70↓p
                                        ; DATA XREF: .pdata:00000001400F7EB4↑o

var_58          = qword ptr -58h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 38h
                mov     r13, rcx
                mov     rbp, r8
                xor     ecx, ecx
                mov     r15d, ecx
                mov     [rsp+78h+var_58], rcx
                mov     eax, ecx
                mov     [rsp+78h+arg_0], cl
                mov     esi, ecx
                mov     [rsp+78h+arg_18], ecx
                mov     edi, ecx
                mov     r12d, ecx
                mov     r14d, ecx
                mov     edx, ecx
                jmp     loc_14058CA65
; ---------------------------------------------------------------------------

loc_14058C7CB:                          ; CODE XREF: RtlIpv6StringToAddressA+2EB↓j
                mov     ecx, r15d
                test    r15d, r15d
                jz      loc_14058C8EC
                sub     ecx, 1
                jz      short loc_14058C7EF
                cmp     ecx, 1
                jz      loc_14058C8EC
                mov     rax, [rsp+78h+var_58]
                jmp     loc_14058C9B9
; ---------------------------------------------------------------------------

loc_14058C7EF:                          ; CODE XREF: RtlIpv6StringToAddressA+5A↑j
                movsx   ebp, bl
                mov     ecx, ebp
                call    __isascii
                test    eax, eax
                jz      short loc_14058C81F
                mov     ecx, ebp
                call    isdigit
                test    eax, eax
                jz      short loc_14058C81F
                mov     rbp, [rsp+78h+arg_10]
                inc     r12d

loc_14058C813:                          ; CODE XREF: RtlIpv6StringToAddressA+2CE↓j
                mov     edx, [rsp+78h+arg_18]
                jmp     loc_14058CA09
; ---------------------------------------------------------------------------

loc_14058C81F:                          ; CODE XREF: RtlIpv6StringToAddressA+7B↑j
                                        ; RtlIpv6StringToAddressA+86↑j
                mov     ecx, ebp
                call    __isascii
                xor     edx, edx
                test    eax, eax
                jz      short loc_14058C865
                mov     ecx, ebp
                call    isxdigit
                xor     edx, edx
                test    eax, eax
                jz      short loc_14058C865
                mov     rbp, [rsp+78h+arg_10]
                inc     r12d
                mov     edx, [rsp+78h+arg_18]
                mov     rax, [rsp+78h+var_58]
                test    edi, edi
                jnz     loc_14058CA87
                mov     [rsp+78h+arg_0], 1
                jmp     loc_14058CA62
; ---------------------------------------------------------------------------

loc_14058C865:                          ; CODE XREF: RtlIpv6StringToAddressA+AA↑j
                                        ; RtlIpv6StringToAddressA+B7↑j
                cmp     bl, 3Ah ; ':'
                jnz     short loc_14058C8B5
                test    edi, edi
                jnz     loc_14058CA73
                cmp     esi, 6
                ja      loc_14058CA73
                cmp     [r13+1], bl
                jnz     short loc_14058C899
                test    r14d, r14d
                jnz     loc_14058CA73
                lea     eax, [rdi+2]
                inc     r13
                mov     r15d, eax
                lea     r14d, [rsi+1]
                jmp     short loc_14058C8A1
; ---------------------------------------------------------------------------

loc_14058C899:                          ; CODE XREF: RtlIpv6StringToAddressA+FF↑j
                mov     r15d, edx
                mov     eax, 1

loc_14058C8A1:                          ; CODE XREF: RtlIpv6StringToAddressA+117↑j
                mov     rbp, [rsp+78h+arg_10]
                add     esi, eax
                mov     rax, [rsp+78h+var_58]
                jmp     loc_14058C9B2
; ---------------------------------------------------------------------------

loc_14058C8B5:                          ; CODE XREF: RtlIpv6StringToAddressA+E8↑j
                cmp     bl, 2Eh ; '.'
                jnz     loc_14058CA73
                cmp     [rsp+78h+arg_0], dl
                jnz     loc_14058CA73
                cmp     edi, 2
                ja      loc_14058CA73
                mov     rax, [rsp+78h+var_58]
                cmp     esi, 6
                ja      loc_14058CAE6
                inc     edi
                mov     r15d, edx
                jmp     loc_14058C9C3
; ---------------------------------------------------------------------------

loc_14058C8EC:                          ; CODE XREF: RtlIpv6StringToAddressA+51↑j
                                        ; RtlIpv6StringToAddressA+5F↑j
                cmp     bl, 3Ah ; ':'
                jnz     short loc_14058C936
                test    edi, edi
                jnz     loc_14058CA82
                test    esi, esi
                jnz     loc_14058CA82
                cmp     [r13+1], bl
                jnz     loc_14058CA82
                mov     eax, edx
                lea     esi, [rdi+2]
                xor     r8d, r8d
                lea     r14d, [rdi+1]
                inc     edx
                mov     r15d, esi
                mov     [rsp+78h+arg_18], edx
                inc     r13
                mov     [rbp+rax*2+0], r8w
                mov     rax, [rsp+78h+var_58]
                jmp     loc_14058C9C3
; ---------------------------------------------------------------------------

loc_14058C936:                          ; CODE XREF: RtlIpv6StringToAddressA+16F↑j
                cmp     esi, 7
                ja      loc_14058CA82
                movsx   ebx, bl
                mov     ecx, ebx
                call    __isascii
                test    eax, eax
                jz      short loc_14058C975
                mov     ecx, ebx
                call    isdigit
                xor     edx, edx
                test    eax, eax
                jz      short loc_14058C975
                mov     rax, r13
                mov     [rsp+78h+arg_0], dl
                lea     r15d, [rdx+1]
                mov     [rsp+78h+var_58], rax
                mov     r12d, r15d
                jmp     loc_14058CA5B
; ---------------------------------------------------------------------------

loc_14058C975:                          ; CODE XREF: RtlIpv6StringToAddressA+1CB↑j
                                        ; RtlIpv6StringToAddressA+1D8↑j
                mov     ecx, ebx
                call    __isascii
                test    eax, eax
                jz      loc_14058CA7B
                mov     ecx, ebx
                call    isxdigit
                test    eax, eax
                jz      loc_14058CA7B
                test    edi, edi
                jnz     loc_14058CA7B
                mov     rax, r13
                mov     [rsp+78h+arg_0], 1
                lea     r15d, [rdi+1]
                mov     [rsp+78h+var_58], rax
                mov     r12d, r15d

loc_14058C9B2:                          ; CODE XREF: RtlIpv6StringToAddressA+130↑j
                mov     edx, [rsp+78h+arg_18]

loc_14058C9B9:                          ; CODE XREF: RtlIpv6StringToAddressA+6A↑j
                cmp     r15d, 1
                jz      loc_14058CA62

loc_14058C9C3:                          ; CODE XREF: RtlIpv6StringToAddressA+167↑j
                                        ; RtlIpv6StringToAddressA+1B1↑j
                test    rax, rax
                jz      loc_14058CA53
                test    edi, edi
                jnz     short loc_14058CA10
                cmp     r12d, 4
                ja      loc_14058CB83
                xor     edx, edx
                lea     r8d, [rdi+10h]
                mov     rcx, rax
                call    sub_1403D10E0
                mov     edx, [rsp+78h+arg_18]
                mov     rbp, [rsp+78h+arg_10]
                ror     ax, 8
                mov     [rbp+rdx*2+0], ax
                inc     edx
                mov     [rsp+78h+arg_18], edx

loc_14058CA09:                          ; CODE XREF: RtlIpv6StringToAddressA+9A↑j
                mov     rax, [rsp+78h+var_58]
                jmp     short loc_14058CA62
; ---------------------------------------------------------------------------

loc_14058CA10:                          ; CODE XREF: RtlIpv6StringToAddressA+24E↑j
                cmp     r12d, 3
                ja      loc_14058CB83
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+0Ah]
                call    sub_1403D10E0
                cmp     eax, 0FFh
                ja      loc_14058CB83
                mov     ecx, [rsp+78h+arg_18]
                mov     rbp, [rsp+78h+arg_10]
                lea     ecx, ds:0FFFFFFFFFFFFFFFFh[rcx*2]
                add     ecx, edi
                mov     [rcx+rbp], al
                jmp     loc_14058C813
; ---------------------------------------------------------------------------

loc_14058CA53:                          ; CODE XREF: RtlIpv6StringToAddressA+246↑j
                mov     rbp, [rsp+78h+arg_10]

loc_14058CA5B:                          ; CODE XREF: RtlIpv6StringToAddressA+1F0↑j
                mov     edx, [rsp+78h+arg_18]

loc_14058CA62:                          ; CODE XREF: RtlIpv6StringToAddressA+E0↑j
                                        ; RtlIpv6StringToAddressA+23D↑j ...
                inc     r13

loc_14058CA65:                          ; CODE XREF: RtlIpv6StringToAddressA+46↑j
                mov     bl, [r13+0]
                test    bl, bl
                jnz     loc_14058C7CB
                jmp     short loc_14058CA87
; ---------------------------------------------------------------------------

loc_14058CA73:                          ; CODE XREF: RtlIpv6StringToAddressA+EC↑j
                                        ; RtlIpv6StringToAddressA+F5↑j ...
                mov     rbp, [rsp+78h+arg_10]

loc_14058CA7B:                          ; CODE XREF: RtlIpv6StringToAddressA+1FE↑j
                                        ; RtlIpv6StringToAddressA+20D↑j ...
                mov     edx, [rsp+78h+arg_18]

loc_14058CA82:                          ; CODE XREF: RtlIpv6StringToAddressA+173↑j
                                        ; RtlIpv6StringToAddressA+17B↑j ...
                mov     rax, [rsp+78h+var_58]

loc_14058CA87:                          ; CODE XREF: RtlIpv6StringToAddressA+D2↑j
                                        ; RtlIpv6StringToAddressA+2F1↑j ...
                mov     rcx, [rsp+78h+arg_8]
                mov     [rcx], r13
                xor     r13d, r13d
                test    edi, edi
                jz      short loc_14058CAA4
                cmp     edi, 3
                jnz     loc_14058CB83
                inc     esi

loc_14058CAA4:                          ; CODE XREF: RtlIpv6StringToAddressA+317↑j
                test    r14d, r14d
                jnz     short loc_14058CAB2
                cmp     esi, 7
                jnz     loc_14058CB83

loc_14058CAB2:                          ; CODE XREF: RtlIpv6StringToAddressA+327↑j
                cmp     r15d, 1
                jnz     short loc_14058CB25
                test    edi, edi
                jnz     short loc_14058CAF7
                cmp     r12d, 4
                ja      loc_14058CB83
                xor     edx, edx
                lea     r8d, [r15+0Fh]
                mov     rcx, rax
                call    sub_1403D10E0
                mov     ecx, [rsp+78h+arg_18]
                ror     ax, 8
                mov     [rbp+rcx*2+0], ax
                jmp     short loc_14058CB33
; ---------------------------------------------------------------------------

loc_14058CAE6:                          ; CODE XREF: RtlIpv6StringToAddressA+15C↑j
                mov     rbp, [rsp+78h+arg_10]
                mov     edx, [rsp+78h+arg_18]
                jmp     short loc_14058CA87
; ---------------------------------------------------------------------------

loc_14058CAF7:                          ; CODE XREF: RtlIpv6StringToAddressA+33A↑j
                cmp     r12d, 3
                ja      loc_14058CB83
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+0Ah]
                call    sub_1403D10E0
                cmp     eax, 0FFh
                ja      short loc_14058CB83
                mov     ecx, [rsp+78h+arg_18]
                lea     ecx, [rdi+rcx*2]
                mov     [rcx+rbp], al
                jmp     short loc_14058CB33
; ---------------------------------------------------------------------------

loc_14058CB25:                          ; CODE XREF: RtlIpv6StringToAddressA+336↑j
                cmp     r15d, 2
                jnz     short loc_14058CB83
                mov     eax, edx
                mov     [rbp+rax*2+0], r13w

loc_14058CB33:                          ; CODE XREF: RtlIpv6StringToAddressA+364↑j
                                        ; RtlIpv6StringToAddressA+3A3↑j
                test    r14d, r14d
                jz      short loc_14058CB7F
                mov     eax, r14d
                mov     r8d, esi
                sub     r8d, r14d
                mov     ebx, 8
                sub     r14d, esi
                add     r8, r8
                add     r14d, ebx
                lea     rdi, ds:0[rax*2]
                add     rdi, rbp
                mov     rdx, rdi
                lea     rcx, ds:0[r14*2]
                add     rcx, rbp
                call    memmove
                sub     ebx, esi
                xor     edx, edx
                mov     r8d, ebx
                mov     rcx, rdi
                add     r8, r8
                call    memset

loc_14058CB7F:                          ; CODE XREF: RtlIpv6StringToAddressA+3B6↑j
                xor     eax, eax
                jmp     short loc_14058CB88
; ---------------------------------------------------------------------------

loc_14058CB83:                          ; CODE XREF: RtlIpv6StringToAddressA+254↑j
                                        ; RtlIpv6StringToAddressA+294↑j ...
                mov     eax, 0C000000Dh

loc_14058CB88:                          ; CODE XREF: RtlIpv6StringToAddressA+401↑j
                add     rsp, 38h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIpv6StringToAddressA endp
