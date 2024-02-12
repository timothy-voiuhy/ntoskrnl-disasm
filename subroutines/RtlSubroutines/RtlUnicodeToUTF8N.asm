RtlUnicodeToUTF8N proc near             ; CODE XREF: sub_1403AAC3C+1C0↑p
                                        ; sub_1403AAC3C+E5736↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014082D8E2 SIZE 00000196 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r13
                push    r15
                sub     rsp, 20h
                xor     edi, edi
                xor     r10d, r10d
                mov     r11, r8
                mov     rbx, rcx
                test    r9, r9
                jz      loc_14071A1F4
                test    rcx, rcx
                jz      loc_14071A1C2
                lea     r15d, [rdi+1]
                test    byte ptr [rsp+38h+arg_20], r15b
                jnz     loc_14082D8EC
                mov     eax, [rsp+38h+arg_20]
                mov     r13d, 7FFh
                shr     rax, 1
                mov     ebp, edx
                add     rbp, rcx
                lea     rsi, [r9+rax*2]

loc_14071A08A:                          ; CODE XREF: RtlUnicodeToUTF8N+83↓j
                                        ; RtlUnicodeToUTF8N+18D↓j
                cmp     r9, rsi
                jnb     loc_14082D8F6
                movzx   edx, word ptr [r9]
                test    r10d, r10d
                jnz     loc_14082D904
                mov     r10d, edx
                add     r9, 2

loc_14071A0A7:                          ; CODE XREF: RtlUnicodeToUTF8N+F0↓j
                lea     eax, [r10-0D800h]
                cmp     eax, 3FFh
                jbe     short loc_14071A08A

loc_14071A0B5:                          ; CODE XREF: RtlUnicodeToUTF8N+1138CF↓j
                                        ; RtlUnicodeToUTF8N+1138DF↓j ...
                lea     eax, [r10-0D800h]
                cmp     eax, r13d
                jbe     loc_14082D92C

loc_14071A0C5:                          ; CODE XREF: RtlUnicodeToUTF8N+113907↓j
                mov     rdx, r15
                cmp     r10d, 7Fh
                ja      loc_14082D93C

loc_14071A0D2:                          ; CODE XREF: RtlUnicodeToUTF8N+113928↓j
                mov     rax, rbp
                sub     rax, rdx
                cmp     rcx, rax
                ja      loc_14082DA6E
                cmp     r10d, 7Fh
                ja      loc_14082D95D

loc_14071A0EB:                          ; CODE XREF: RtlUnicodeToUTF8N+11397C↓j
                mov     rax, rsi
                mov     [rcx], r10b
                sub     rax, r9
                add     rcx, r15
                mov     rdx, rbp
                sar     rax, 1
                sub     rdx, rcx
                cmp     rax, 0Dh
                ja      short loc_14071A14B
                cmp     rdx, rax
                jb      loc_14071A1BA

loc_14071A10F:                          ; CODE XREF: RtlUnicodeToUTF8N+F8↓j
                cmp     r9, rsi
                jnb     short loc_14071A12A
                movzx   r10d, word ptr [r9]
                add     r9, 2
                cmp     r10d, 7Fh
                ja      short loc_14071A0A7
                mov     [rcx], r10b
                add     rcx, r15
                jmp     short loc_14071A10F
; ---------------------------------------------------------------------------

loc_14071A12A:                          ; CODE XREF: RtlUnicodeToUTF8N+E2↑j
                                        ; RtlUnicodeToUTF8N+1138C9↓j ...
                sub     ecx, ebx
                mov     eax, edi
                mov     [r11], ecx

loc_14071A131:                          ; CODE XREF: RtlUnicodeToUTF8N+1A7↓j
                                        ; RtlUnicodeToUTF8N+1C9↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r13
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071A14B:                          ; CODE XREF: RtlUnicodeToUTF8N+D4↑j
                cmp     rdx, rax
                cmovb   rax, rdx
                lea     r10, [rax-5]
                lea     r10, [r9+r10*2]
                jmp     short loc_14071A1B5
; ---------------------------------------------------------------------------

loc_14071A15C:                          ; CODE XREF: RtlUnicodeToUTF8N+188↓j
                movzx   edx, word ptr [r9]
                add     r9, 2
                cmp     edx, 7Fh
                ja      loc_14082D9C7
                mov     [rcx], dl
                inc     rcx
                test    r9b, 2
                jnz     short loc_14071A1DC

loc_14071A178:                          ; CODE XREF: RtlUnicodeToUTF8N+1C2↓j
                cmp     r9, r10
                jnb     short loc_14071A1BA

loc_14071A17D:                          ; CODE XREF: RtlUnicodeToUTF8N+183↓j
                mov     r8d, [r9+4]
                mov     eax, r8d
                mov     edx, [r9]
                or      eax, edx
                test    eax, 0FF80FF80h
                jnz     loc_14082D9B1
                mov     [rcx], dl
                add     r9, 8
                mov     [rcx+2], r8b
                shr     edx, 10h
                shr     r8d, 10h
                mov     [rcx+1], dl
                mov     [rcx+3], r8b
                add     rcx, 4
                cmp     r9, r10
                jb      short loc_14071A17D

loc_14071A1B5:                          ; CODE XREF: RtlUnicodeToUTF8N+12A↑j
                                        ; RtlUnicodeToUTF8N+113992↓j ...
                cmp     r9, r10
                jb      short loc_14071A15C

loc_14071A1BA:                          ; CODE XREF: RtlUnicodeToUTF8N+D9↑j
                                        ; RtlUnicodeToUTF8N+14B↑j ...
                xor     r10d, r10d
                jmp     loc_14071A08A
; ---------------------------------------------------------------------------

loc_14071A1C2:                          ; CODE XREF: RtlUnicodeToUTF8N+2F↑j
                test    r11, r11
                jz      loc_14082D8E2
                mov     edx, [rsp+38h+arg_20]
                mov     rcx, r9
                call    sub_14035D774
                jmp     loc_14071A131
; ---------------------------------------------------------------------------

loc_14071A1DC:                          ; CODE XREF: RtlUnicodeToUTF8N+146↑j
                movzx   edx, word ptr [r9]
                add     r9, 2
                cmp     edx, 7Fh
                ja      loc_14082D9C7
                mov     [rcx], dl
                inc     rcx
                jmp     short loc_14071A178
; ---------------------------------------------------------------------------

loc_14071A1F4:                          ; CODE XREF: RtlUnicodeToUTF8N+26↑j
                mov     eax, 0C00000F2h
                jmp     loc_14071A131
RtlUnicodeToUTF8N endp
