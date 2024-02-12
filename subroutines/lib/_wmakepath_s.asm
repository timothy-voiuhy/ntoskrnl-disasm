_wmakepath_s    proc near               ; DATA XREF: .pdata:00000001400E0DE4↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_1403D743D
                test    rdx, rdx
                jz      loc_1403D743D
                mov     r11d, edi
                mov     r10, rcx
                test    r8, r8
                jz      short loc_1403D7343
                movzx   eax, word ptr [r8]
                test    ax, ax
                jz      short loc_1403D7343
                lea     r11d, [rdi+2]
                cmp     rdx, r11
                jbe     loc_1403D742B
                mov     [rcx], ax
                lea     r10, [rcx+2]
                lea     eax, [rdi+3Ah]
                mov     [r10], ax
                add     r10, r11

loc_1403D7343:                          ; CODE XREF: _wmakepath_s+2A↑j
                                        ; _wmakepath_s+33↑j
                test    r9, r9
                jz      short loc_1403D7399
                cmp     [r9], di
                jz      short loc_1403D7399

loc_1403D734E:                          ; CODE XREF: _wmakepath_s+7E↓j
                inc     r11
                cmp     r11, rdx
                jnb     loc_1403D742B
                movzx   eax, word ptr [r9]
                add     r9, 2
                mov     [r10], ax
                add     r10, 2
                cmp     [r9], di
                jnz     short loc_1403D734E
                movzx   eax, word ptr [r9-2]
                cmp     ax, 2Fh ; '/'
                jz      short loc_1403D7399
                mov     ecx, 5Ch ; '\'
                cmp     ax, cx
                jz      short loc_1403D7399
                inc     r11
                cmp     r11, rdx
                jnb     loc_1403D742B
                mov     [r10], cx
                add     r10, 2

loc_1403D7399:                          ; CODE XREF: _wmakepath_s+56↑j
                                        ; _wmakepath_s+5C↑j ...
                mov     rcx, [rsp+38h+arg_20]
                test    rcx, rcx
                jz      short loc_1403D73C7
                cmp     [rcx], di
                jz      short loc_1403D73C7
                sub     rcx, r10

loc_1403D73AB:                          ; CODE XREF: _wmakepath_s+D5↓j
                inc     r11
                cmp     r11, rdx
                jnb     short loc_1403D742B
                movzx   eax, word ptr [rcx+r10]
                mov     [r10], ax
                add     r10, 2
                cmp     [rcx+r10], di
                jnz     short loc_1403D73AB

loc_1403D73C7:                          ; CODE XREF: _wmakepath_s+B1↑j
                                        ; _wmakepath_s+B6↑j
                mov     rcx, [rsp+38h+arg_28]
                test    rcx, rcx
                jz      short loc_1403D7422
                movzx   eax, word ptr [rcx]
                movzx   r8d, ax
                test    ax, ax
                jz      short loc_1403D73FD
                mov     r9d, 2Eh ; '.'
                cmp     ax, r9w
                jz      short loc_1403D73FD
                inc     r11
                cmp     r11, rdx
                jnb     short loc_1403D742B
                mov     [r10], r9w
                add     r10, 2
                movzx   r8d, word ptr [rcx]

loc_1403D73FD:                          ; CODE XREF: _wmakepath_s+EB↑j
                                        ; _wmakepath_s+F7↑j
                test    r8w, r8w
                jz      short loc_1403D7422
                sub     rcx, r10

loc_1403D7406:                          ; CODE XREF: _wmakepath_s+130↓j
                inc     r11
                cmp     r11, rdx
                jnb     short loc_1403D742B
                movzx   eax, word ptr [rcx+r10]
                mov     [r10], ax
                add     r10, 2
                cmp     [rcx+r10], di
                jnz     short loc_1403D7406

loc_1403D7422:                          ; CODE XREF: _wmakepath_s+DF↑j
                                        ; _wmakepath_s+111↑j
                lea     rax, [r11+1]
                cmp     rax, rdx
                jbe     short loc_1403D7435

loc_1403D742B:                          ; CODE XREF: _wmakepath_s+3C↑j
                                        ; _wmakepath_s+64↑j ...
                mov     [rbx], di
                mov     ebx, 22h ; '"'
                jmp     short loc_1403D7442
; ---------------------------------------------------------------------------

loc_1403D7435:                          ; CODE XREF: _wmakepath_s+139↑j
                mov     [r10], di
                xor     eax, eax
                jmp     short loc_1403D7458
; ---------------------------------------------------------------------------

loc_1403D743D:                          ; CODE XREF: _wmakepath_s+12↑j
                                        ; _wmakepath_s+1B↑j
                mov     ebx, 16h

loc_1403D7442:                          ; CODE XREF: _wmakepath_s+143↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx

loc_1403D7458:                          ; CODE XREF: _wmakepath_s+14B↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_wmakepath_s    endp

algn_1403D7464:                         ; DATA XREF: .pdata:00000001400E0DE4↑o
                align 10h
; Exported entry 3004. _wsplitpath_s

; =============== S U B R O U T I N E =======================================


