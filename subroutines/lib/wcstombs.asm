wcstombs        proc near               ; DATA XREF: .pdata:00000001400E0AA8↑o

var_18          = dword ptr -18h
arg_0           = qword ptr  8

                push    rbx
                sub     rsp, 30h
                xor     ebx, ebx
                mov     r10, r8
                mov     [rsp+38h+arg_0], rbx
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1403D3E54:                          ; CODE XREF: wcstombs+1B↓j
                inc     rax
                cmp     [rdx+rax*2], bx
                jnz     short loc_1403D3E54
                test    rcx, rcx
                jz      short loc_1403D3E8B
                lea     eax, ds:2[rax*2]
                mov     r9, rdx
                mov     edx, r10d
                mov     [rsp+38h+var_18], eax
                lea     r8, [rsp+38h+arg_0]
                call    RtlUnicodeToMultiByteN

loc_1403D3E7D:                          ; CODE XREF: wcstombs+5D↓j
                test    eax, eax
                js      short loc_1403D3E9F
                mov     rax, [rsp+38h+arg_0]
                dec     rax
                jmp     short loc_1403D3EAD
; ---------------------------------------------------------------------------

loc_1403D3E8B:                          ; CODE XREF: wcstombs+20↑j
                lea     r8d, ds:2[rax*2]
                lea     rcx, [rsp+38h+arg_0]
                call    RtlUnicodeToMultiByteSize
                jmp     short loc_1403D3E7D
; ---------------------------------------------------------------------------

loc_1403D3E9F:                          ; CODE XREF: wcstombs+3F↑j
                mov     cs:dword_140C130C8, 2Ah ; '*'
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1403D3EAD:                          ; CODE XREF: wcstombs+49↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
wcstombs        endp

byte_1403D3EB4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0AA8↑o

; =============== S U B R O U T I N E =======================================


sub_1403D3EBC   proc near               ; CODE XREF: sub_1403D40D4+1E↓p
                                        ; sub_1403D4104+1E↓p ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14d, r9d
                mov     r15, r8
                test    r8, r8
                jz      short loc_1403D3EE3
                mov     [r8], rdx

loc_1403D3EE3:                          ; CODE XREF: sub_1403D3EBC+22↑j
                test    rdx, rdx
                jz      loc_1403D40A0
                test    r14d, r14d
                jz      short loc_1403D3EFE
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D40A0

loc_1403D3EFE:                          ; CODE XREF: sub_1403D3EBC+33↑j
                movzx   ebp, word ptr [rdx]
                lea     rbx, [rdx+2]
                xor     edi, edi
                lea     esi, [rdi+8]
                jmp     short loc_1403D3F13
; ---------------------------------------------------------------------------

loc_1403D3F0C:                          ; CODE XREF: sub_1403D3EBC+66↓j
                movzx   ebp, word ptr [rbx]
                add     rbx, 2

loc_1403D3F13:                          ; CODE XREF: sub_1403D3EBC+4E↑j
                xor     r8d, r8d
                mov     edx, esi
                movzx   ecx, bp
                call    _iswctype_l
                test    eax, eax
                jnz     short loc_1403D3F0C
                mov     esi, [rsp+68h+arg_20]
                cmp     bp, 2Dh ; '-'
                jnz     short loc_1403D3F36
                or      esi, 2
                jmp     short loc_1403D3F3C
; ---------------------------------------------------------------------------

loc_1403D3F36:                          ; CODE XREF: sub_1403D3EBC+73↑j
                cmp     bp, 2Bh ; '+'
                jnz     short loc_1403D3F43

loc_1403D3F3C:                          ; CODE XREF: sub_1403D3EBC+78↑j
                movzx   ebp, word ptr [rbx]
                add     rbx, 2

loc_1403D3F43:                          ; CODE XREF: sub_1403D3EBC+7E↑j
                mov     r13d, 0FFDFh
                test    r14d, r14d
                jnz     short loc_1403D3F7D
                movzx   ecx, bp
                call    sub_1403D5E04
                test    eax, eax
                jz      short loc_1403D3F62
                mov     r14d, 0Ah
                jmp     short loc_1403D3FA4
; ---------------------------------------------------------------------------

loc_1403D3F62:                          ; CODE XREF: sub_1403D3EBC+9C↑j
                movzx   eax, word ptr [rbx]
                sub     ax, 58h ; 'X'
                test    r13w, ax
                jz      short loc_1403D3F77
                mov     r14d, 8
                jmp     short loc_1403D3FA4
; ---------------------------------------------------------------------------

loc_1403D3F77:                          ; CODE XREF: sub_1403D3EBC+B1↑j
                mov     r14d, 10h

loc_1403D3F7D:                          ; CODE XREF: sub_1403D3EBC+90↑j
                cmp     r14d, 10h
                jnz     short loc_1403D3FA4
                movzx   ecx, bp
                call    sub_1403D5E04
                test    eax, eax
                jnz     short loc_1403D3FA4
                movzx   eax, word ptr [rbx]
                sub     ax, 58h ; 'X'
                test    r13w, ax
                jnz     short loc_1403D3FA4
                movzx   ebp, word ptr [rbx+2]
                add     rbx, 4

loc_1403D3FA4:                          ; CODE XREF: sub_1403D3EBC+A4↑j
                                        ; sub_1403D3EBC+B9↑j ...
                xor     edx, edx
                or      eax, 0FFFFFFFFh
                div     r14d
                mov     r13d, eax
                mov     r12d, edx

loc_1403D3FB2:                          ; CODE XREF: sub_1403D3EBC+17A↓j
                movzx   ecx, bp
                call    sub_1403D5E04
                or      edx, 0FFFFFFFFh
                mov     ecx, eax
                cmp     eax, edx
                jnz     short loc_1403D3FE9
                lea     eax, [rbp-41h]
                cmp     ax, 19h
                jbe     short loc_1403D3FD5
                lea     eax, [rbp-61h]
                cmp     ax, 19h
                ja      short loc_1403D400F

loc_1403D3FD5:                          ; CODE XREF: sub_1403D3EBC+10E↑j
                movzx   eax, bp
                sub     bp, 61h ; 'a'
                cmp     bp, 19h
                lea     ecx, [rax-20h]
                cmova   ecx, eax
                sub     ecx, 37h ; '7'

loc_1403D3FE9:                          ; CODE XREF: sub_1403D3EBC+105↑j
                cmp     ecx, r14d
                jnb     short loc_1403D400F
                or      esi, 8
                cmp     [rsp+68h+arg_28], 0
                jnz     short loc_1403D4029
                cmp     edi, r13d
                jb      short loc_1403D4029
                jnz     short loc_1403D4007
                cmp     ecx, r12d
                jbe     short loc_1403D4029

loc_1403D4007:                          ; CODE XREF: sub_1403D3EBC+144↑j
                or      esi, 4
                test    r15, r15
                jnz     short loc_1403D402F

loc_1403D400F:                          ; CODE XREF: sub_1403D3EBC+117↑j
                                        ; sub_1403D3EBC+130↑j
                mov     r12, [rsp+68h+arg_8]
                sub     rbx, 2
                test    sil, 8
                jnz     short loc_1403D403B
                test    r15, r15
                cmovnz  rbx, r12
                xor     edi, edi
                jmp     short loc_1403D408B
; ---------------------------------------------------------------------------

loc_1403D4029:                          ; CODE XREF: sub_1403D3EBC+13D↑j
                                        ; sub_1403D3EBC+142↑j ...
                imul    edi, r14d
                add     edi, ecx

loc_1403D402F:                          ; CODE XREF: sub_1403D3EBC+151↑j
                movzx   ebp, word ptr [rbx]
                add     rbx, 2
                jmp     loc_1403D3FB2
; ---------------------------------------------------------------------------

loc_1403D403B:                          ; CODE XREF: sub_1403D3EBC+160↑j
                mov     ecx, 7FFFFFFFh
                test    sil, 4
                jnz     short loc_1403D4060
                test    sil, 1
                jnz     short loc_1403D408B
                test    sil, 2
                jz      short loc_1403D405C
                cmp     edi, 80000000h
                ja      short loc_1403D4060
                jmp     short loc_1403D408B
; ---------------------------------------------------------------------------

loc_1403D405C:                          ; CODE XREF: sub_1403D3EBC+194↑j
                cmp     edi, ecx
                jbe     short loc_1403D408B

loc_1403D4060:                          ; CODE XREF: sub_1403D3EBC+188↑j
                                        ; sub_1403D3EBC+19C↑j
                cmp     [rsp+68h+arg_28], 0
                jnz     short loc_1403D408B
                mov     cs:dword_140C130C8, 22h ; '"'
                test    sil, 1
                jz      short loc_1403D407E
                mov     edi, edx
                jmp     short loc_1403D408B
; ---------------------------------------------------------------------------

loc_1403D407E:                          ; CODE XREF: sub_1403D3EBC+1BC↑j
                mov     al, sil
                and     al, 2
                neg     al
                sbb     edi, edi
                neg     edi
                add     edi, ecx

loc_1403D408B:                          ; CODE XREF: sub_1403D3EBC+16B↑j
                                        ; sub_1403D3EBC+18E↑j ...
                test    r15, r15
                jz      short loc_1403D4093
                mov     [r15], rbx

loc_1403D4093:                          ; CODE XREF: sub_1403D3EBC+1D2↑j
                mov     eax, edi
                neg     eax
                and     sil, 2
                cmovz   eax, edi
                jmp     short loc_1403D40B7
; ---------------------------------------------------------------------------

loc_1403D40A0:                          ; CODE XREF: sub_1403D3EBC+2A↑j
                                        ; sub_1403D3EBC+3C↑j
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                xor     eax, eax

loc_1403D40B7:                          ; CODE XREF: sub_1403D3EBC+1E2↑j
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D3EBC   endp

byte_1403D40CD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0AB4↑o

; =============== S U B R O U T I N E =======================================


sub_1403D40D4   proc near               ; CODE XREF: RtlIpv6StringToAddressW+1300F6↓p
                                        ; RtlIpv6StringToAddressW+13019C↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                and     [rsp+38h+var_10], 0
                mov     r9d, r8d
                and     [rsp+38h+var_18], 0
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D3EBC
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D40D4   endp

byte_1403D40FD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0AC0↑o

; =============== S U B R O U T I N E =======================================


sub_1403D4104   proc near               ; CODE XREF: _wtol+17↑p
                                        ; DATA XREF: .pdata:00000001400E0ACC↑o

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], r9d
                mov     r9d, r8d
                and     [rsp+38h+var_18], 0
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D3EBC
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D4104   endp

algn_1403D412D:                         ; DATA XREF: .pdata:00000001400E0ACC↑o
                align 20h
; Exported entry 3087. wcstoul

; =============== S U B R O U T I N E =======================================


