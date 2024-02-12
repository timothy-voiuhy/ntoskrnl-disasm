_vsnprintf      proc near               ; CODE XREF: sub_14037166C+3A↑p
                                        ; sub_1403A8B28+2E↑p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    sub_1403D0DF0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_vsnprintf      endp

algn_1403D0DE7:                         ; DATA XREF: .pdata:00000001400E058C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403D0DF0   proc near               ; CODE XREF: _vsnprintf+C↑p
                                        ; DATA XREF: .pdata:00000001400E0598↑o

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = xmmword ptr -14h
var_4           = dword ptr -4
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_24], 0
                xorps   xmm0, xmm0
                and     [rbp+var_4], 0
                mov     r10, r9
                mov     rax, r8
                mov     rbx, rcx
                movdqu  [rbp+var_14], xmm0
                test    r8, r8
                jz      short loc_1403D0E7F
                test    rdx, rdx
                jz      short loc_1403D0E2A
                test    rcx, rcx
                jz      short loc_1403D0E7F

loc_1403D0E2A:                          ; CODE XREF: sub_1403D0DF0+33↑j
                mov     r9, [rbp+arg_20]
                mov     ecx, 7FFFFFFFh
                cmp     rdx, rcx
                mov     [rbp+var_18], 42h ; 'B'
                mov     r8, r10
                mov     [rbp+var_20], rbx
                cmova   edx, ecx
                mov     [rbp+var_30], rbx
                mov     [rbp+var_28], edx
                lea     rcx, [rbp+var_30]
                mov     rdx, rax
                call    sub_1403D500C
                mov     edi, eax
                test    rbx, rbx
                jz      short loc_1403D0E7B
                sub     [rbp+var_28], 1
                js      short loc_1403D0E70
                mov     rcx, [rbp+var_30]
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D0E7B
; ---------------------------------------------------------------------------

loc_1403D0E70:                          ; CODE XREF: sub_1403D0DF0+75↑j
                lea     rdx, [rbp+var_30]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D0E7B:                          ; CODE XREF: sub_1403D0DF0+6F↑j
                                        ; sub_1403D0DF0+7E↑j
                mov     eax, edi
                jmp     short loc_1403D0E97
; ---------------------------------------------------------------------------

loc_1403D0E7F:                          ; CODE XREF: sub_1403D0DF0+2E↑j
                                        ; sub_1403D0DF0+38↑j
                and     [rsp+60h+var_40], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D0E97:                          ; CODE XREF: sub_1403D0DF0+8D↑j
                mov     rbx, [rsp+60h+arg_0]
                mov     rdi, [rsp+60h+arg_8]
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D0DF0   endp

algn_1403D0EA8:                         ; DATA XREF: .pdata:00000001400E0598↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403D0EB0   proc near               ; CODE XREF: sub_1403D10E0+1E↓p
                                        ; sub_1403D1110+1E↓p ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
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
                mov     r12, rdx
                test    r8, r8
                jz      short loc_1403D0EDA
                mov     [r8], rdx

loc_1403D0EDA:                          ; CODE XREF: sub_1403D0EB0+25↑j
                test    r12, r12
                jz      loc_1403D10AD
                test    r14d, r14d
                jz      short loc_1403D0EF5
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D10AD

loc_1403D0EF5:                          ; CODE XREF: sub_1403D0EB0+36↑j
                movzx   ebp, byte ptr [rdx]
                lea     rbx, [rdx+1]
                xor     edi, edi
                call    sub_1403D5978
                test    byte ptr [rax+rbp*2], 8
                jz      short loc_1403D0F1B

loc_1403D0F09:                          ; CODE XREF: sub_1403D0EB0+69↓j
                movzx   ebp, byte ptr [rbx]
                inc     rbx
                call    sub_1403D5978
                mov     al, [rax+rbp*2]
                test    al, 8
                jnz     short loc_1403D0F09

loc_1403D0F1B:                          ; CODE XREF: sub_1403D0EB0+57↑j
                mov     esi, [rsp+68h+arg_20]
                cmp     bpl, 2Dh ; '-'
                jnz     short loc_1403D0F2D
                or      esi, 2
                jmp     short loc_1403D0F33
; ---------------------------------------------------------------------------

loc_1403D0F2D:                          ; CODE XREF: sub_1403D0EB0+76↑j
                cmp     bpl, 2Bh ; '+'
                jnz     short loc_1403D0F39

loc_1403D0F33:                          ; CODE XREF: sub_1403D0EB0+7B↑j
                mov     bpl, [rbx]
                inc     rbx

loc_1403D0F39:                          ; CODE XREF: sub_1403D0EB0+81↑j
                test    r14d, r14d
                jz      short loc_1403D0F5D
                lea     eax, [r14-2]
                cmp     eax, 22h ; '"'
                jbe     short loc_1403D0F58
                test    r15, r15
                jz      loc_1403D10C2
                mov     [r15], r12
                jmp     loc_1403D10C2
; ---------------------------------------------------------------------------

loc_1403D0F58:                          ; CODE XREF: sub_1403D0EB0+95↑j
                test    r14d, r14d
                jnz     short loc_1403D0F83

loc_1403D0F5D:                          ; CODE XREF: sub_1403D0EB0+8C↑j
                cmp     bpl, 30h ; '0'
                jz      short loc_1403D0F6B
                mov     r14d, 0Ah
                jmp     short loc_1403D0F9F
; ---------------------------------------------------------------------------

loc_1403D0F6B:                          ; CODE XREF: sub_1403D0EB0+B1↑j
                mov     al, [rbx]
                sub     al, 58h ; 'X'
                test    al, 0DFh
                jz      short loc_1403D0F7B
                mov     r14d, 8
                jmp     short loc_1403D0F9F
; ---------------------------------------------------------------------------

loc_1403D0F7B:                          ; CODE XREF: sub_1403D0EB0+C1↑j
                mov     r14d, 10h
                jmp     short loc_1403D0F8F
; ---------------------------------------------------------------------------

loc_1403D0F83:                          ; CODE XREF: sub_1403D0EB0+AB↑j
                cmp     r14d, 10h
                jnz     short loc_1403D0F9F
                cmp     bpl, 30h ; '0'
                jnz     short loc_1403D0F9F

loc_1403D0F8F:                          ; CODE XREF: sub_1403D0EB0+D1↑j
                mov     al, [rbx]
                sub     al, 58h ; 'X'
                test    al, 0DFh
                jnz     short loc_1403D0F9F
                mov     bpl, [rbx+1]
                add     rbx, 2

loc_1403D0F9F:                          ; CODE XREF: sub_1403D0EB0+B9↑j
                                        ; sub_1403D0EB0+C9↑j ...
                xor     edx, edx
                or      eax, 0FFFFFFFFh
                div     r14d
                mov     [rsp+68h+arg_10], edx
                mov     r12d, eax

loc_1403D0FB1:                          ; CODE XREF: sub_1403D0EB0+192↓j
                movzx   r13d, bpl
                call    sub_1403D5978
                test    byte ptr [rax+r13*2], 4
                jz      short loc_1403D0FCA
                movsx   ecx, bpl
                sub     ecx, 30h ; '0'
                jmp     short loc_1403D0FF3
; ---------------------------------------------------------------------------

loc_1403D0FCA:                          ; CODE XREF: sub_1403D0EB0+10F↑j
                call    sub_1403D5978
                movzx   ecx, word ptr [rax+r13*2]
                mov     eax, 103h
                test    ax, cx
                jz      short loc_1403D101D
                movsx   eax, bpl
                sub     bpl, 61h ; 'a'
                cmp     bpl, 19h
                lea     ecx, [rax-20h]
                cmova   ecx, eax
                sub     ecx, 37h ; '7'

loc_1403D0FF3:                          ; CODE XREF: sub_1403D0EB0+118↑j
                cmp     ecx, r14d
                jnb     short loc_1403D101D
                or      esi, 8
                cmp     [rsp+68h+arg_28], 0
                jnz     short loc_1403D1036
                cmp     edi, r12d
                jb      short loc_1403D1036
                jnz     short loc_1403D1015
                cmp     ecx, [rsp+68h+arg_10]
                jbe     short loc_1403D1036

loc_1403D1015:                          ; CODE XREF: sub_1403D0EB0+15A↑j
                or      esi, 4
                test    r15, r15
                jnz     short loc_1403D103C

loc_1403D101D:                          ; CODE XREF: sub_1403D0EB0+12C↑j
                                        ; sub_1403D0EB0+146↑j
                mov     r12, [rsp+68h+arg_8]
                dec     rbx
                test    sil, 8
                jnz     short loc_1403D1047
                test    r15, r15
                cmovnz  rbx, r12
                xor     edi, edi
                jmp     short loc_1403D1098
; ---------------------------------------------------------------------------

loc_1403D1036:                          ; CODE XREF: sub_1403D0EB0+153↑j
                                        ; sub_1403D0EB0+158↑j ...
                imul    edi, r14d
                add     edi, ecx

loc_1403D103C:                          ; CODE XREF: sub_1403D0EB0+16B↑j
                mov     bpl, [rbx]
                inc     rbx
                jmp     loc_1403D0FB1
; ---------------------------------------------------------------------------

loc_1403D1047:                          ; CODE XREF: sub_1403D0EB0+179↑j
                mov     ecx, 7FFFFFFFh
                test    sil, 4
                jnz     short loc_1403D106C
                test    sil, 1
                jnz     short loc_1403D1098
                test    sil, 2
                jz      short loc_1403D1068
                cmp     edi, 80000000h
                ja      short loc_1403D106C
                jmp     short loc_1403D1098
; ---------------------------------------------------------------------------

loc_1403D1068:                          ; CODE XREF: sub_1403D0EB0+1AC↑j
                cmp     edi, ecx
                jbe     short loc_1403D1098

loc_1403D106C:                          ; CODE XREF: sub_1403D0EB0+1A0↑j
                                        ; sub_1403D0EB0+1B4↑j
                cmp     [rsp+68h+arg_28], 0
                jnz     short loc_1403D1098
                mov     cs:dword_140C130C8, 22h ; '"'
                test    sil, 1
                jz      short loc_1403D108B
                or      edi, 0FFFFFFFFh
                jmp     short loc_1403D1098
; ---------------------------------------------------------------------------

loc_1403D108B:                          ; CODE XREF: sub_1403D0EB0+1D4↑j
                mov     al, sil
                and     al, 2
                neg     al
                sbb     edi, edi
                neg     edi
                add     edi, ecx

loc_1403D1098:                          ; CODE XREF: sub_1403D0EB0+184↑j
                                        ; sub_1403D0EB0+1A6↑j ...
                test    r15, r15
                jz      short loc_1403D10A0
                mov     [r15], rbx

loc_1403D10A0:                          ; CODE XREF: sub_1403D0EB0+1EB↑j
                mov     eax, edi
                neg     eax
                and     sil, 2
                cmovz   eax, edi
                jmp     short loc_1403D10C4
; ---------------------------------------------------------------------------

loc_1403D10AD:                          ; CODE XREF: sub_1403D0EB0+2D↑j
                                        ; sub_1403D0EB0+3F↑j
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D10C2:                          ; CODE XREF: sub_1403D0EB0+9A↑j
                                        ; sub_1403D0EB0+A3↑j
                xor     eax, eax

loc_1403D10C4:                          ; CODE XREF: sub_1403D0EB0+1FB↑j
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
sub_1403D0EB0   endp

algn_1403D10DA:                         ; DATA XREF: .pdata:00000001400E05A4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403D10E0   proc near               ; CODE XREF: RtlIpv6StringToAddressA+263↓p
                                        ; RtlIpv6StringToAddressA+2A3↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                and     [rsp+38h+var_10], 0
                mov     r9d, r8d
                and     [rsp+38h+var_18], 0
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D0EB0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D10E0   endp

algn_1403D1109:                         ; DATA XREF: .pdata:00000001400E05B0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403D1110   proc near               ; CODE XREF: atol+17↓p
                                        ; DATA XREF: .pdata:00000001400E05BC↑o

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], r9d
                mov     r9d, r8d
                and     [rsp+38h+var_18], 0
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D0EB0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1110   endp

algn_1403D1139:                         ; DATA XREF: .pdata:00000001400E05BC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403D1140   proc near               ; CODE XREF: sub_140A3CC14+1F4↓p
                                        ; sub_140A47E34+116↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                and     [rsp+38h+var_10], 0
                mov     r9d, r8d
                mov     r8, rdx
                mov     [rsp+38h+var_18], 1
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D0EB0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1140   endp

algn_1403D116C:                         ; DATA XREF: .pdata:00000001400E05C8↑o
                align 20h
; Exported entry 3049. strncmp

; =============== S U B R O U T I N E =======================================


