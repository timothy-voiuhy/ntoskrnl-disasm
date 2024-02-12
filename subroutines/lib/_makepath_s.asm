_makepath_s     proc near               ; DATA XREF: .pdata:00000001400E0D6C↑o

var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_1403D6D01
                test    rdx, rdx
                jz      loc_1403D6D01
                xor     r11d, r11d
                mov     r10, rcx
                test    r8, r8
                jz      short loc_1403D6C29
                mov     al, [r8]
                test    al, al
                jz      short loc_1403D6C29
                mov     r11d, 2
                cmp     rdx, r11
                jbe     loc_1403D6CEF
                lea     r10, [rcx+1]
                mov     [rcx], al
                mov     byte ptr [r10], 3Ah ; ':'
                inc     r10

loc_1403D6C29:                          ; CODE XREF: _makepath_s+24↑j
                                        ; _makepath_s+2B↑j
                test    r9, r9
                jz      short loc_1403D6C71
                cmp     byte ptr [r9], 0
                jz      short loc_1403D6C71

loc_1403D6C34:                          ; CODE XREF: _makepath_s+70↓j
                inc     r11
                cmp     r11, rdx
                jnb     loc_1403D6CEF
                mov     al, [r9]
                inc     r9
                mov     [r10], al
                inc     r10
                cmp     byte ptr [r9], 0
                jnz     short loc_1403D6C34
                mov     al, [r9-1]
                cmp     al, 2Fh ; '/'
                jz      short loc_1403D6C71
                cmp     al, 5Ch ; '\'
                jz      short loc_1403D6C71
                inc     r11
                cmp     r11, rdx
                jnb     loc_1403D6CEF
                mov     byte ptr [r10], 5Ch ; '\'
                inc     r10

loc_1403D6C71:                          ; CODE XREF: _makepath_s+4C↑j
                                        ; _makepath_s+52↑j ...
                mov     rcx, [rsp+38h+arg_20]
                test    rcx, rcx
                jz      short loc_1403D6C9C
                cmp     byte ptr [rcx], 0
                jz      short loc_1403D6C9C
                sub     rcx, r10

loc_1403D6C83:                          ; CODE XREF: _makepath_s+BA↓j
                inc     r11
                cmp     r11, rdx
                jnb     short loc_1403D6CEF
                mov     al, [rcx+r10]
                mov     [r10], al
                inc     r10
                cmp     byte ptr [rcx+r10], 0
                jnz     short loc_1403D6C83

loc_1403D6C9C:                          ; CODE XREF: _makepath_s+99↑j
                                        ; _makepath_s+9E↑j
                mov     rcx, [rsp+38h+arg_28]
                test    rcx, rcx
                jz      short loc_1403D6CE6
                mov     al, [rcx]
                mov     r8b, al
                test    al, al
                jz      short loc_1403D6CC5
                cmp     al, 2Eh ; '.'
                jz      short loc_1403D6CC5
                inc     r11
                cmp     r11, rdx
                jnb     short loc_1403D6CEF
                mov     byte ptr [r10], 2Eh ; '.'
                inc     r10
                mov     r8b, [rcx]

loc_1403D6CC5:                          ; CODE XREF: _makepath_s+CD↑j
                                        ; _makepath_s+D1↑j
                test    r8b, r8b
                jz      short loc_1403D6CE6
                sub     rcx, r10

loc_1403D6CCD:                          ; CODE XREF: _makepath_s+104↓j
                inc     r11
                cmp     r11, rdx
                jnb     short loc_1403D6CEF
                mov     al, [rcx+r10]
                mov     [r10], al
                inc     r10
                cmp     byte ptr [rcx+r10], 0
                jnz     short loc_1403D6CCD

loc_1403D6CE6:                          ; CODE XREF: _makepath_s+C4↑j
                                        ; _makepath_s+E8↑j
                lea     rax, [r11+1]
                cmp     rax, rdx
                jbe     short loc_1403D6CF9

loc_1403D6CEF:                          ; CODE XREF: _makepath_s+36↑j
                                        ; _makepath_s+5A↑j ...
                mov     byte ptr [rbx], 0
                mov     ebx, 22h ; '"'
                jmp     short loc_1403D6D06
; ---------------------------------------------------------------------------

loc_1403D6CF9:                          ; CODE XREF: _makepath_s+10D↑j
                mov     byte ptr [r10], 0
                xor     eax, eax
                jmp     short loc_1403D6D1D
; ---------------------------------------------------------------------------

loc_1403D6D01:                          ; CODE XREF: _makepath_s+C↑j
                                        ; _makepath_s+15↑j
                mov     ebx, 16h

loc_1403D6D06:                          ; CODE XREF: _makepath_s+117↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx

loc_1403D6D1D:                          ; CODE XREF: _makepath_s+11F↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_makepath_s     endp

algn_1403D6D24:                         ; DATA XREF: .pdata:00000001400E0D6C↑o
                align 10h
; Exported entry 2968. _snprintf_s

; =============== S U B R O U T I N E =======================================


