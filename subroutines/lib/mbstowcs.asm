mbstowcs        proc near               ; DATA XREF: .pdata:00000001400E0868↑o

var_18          = dword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebp, ebp
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_1403D24E0
                test    r8, r8
                jnz     short loc_1403D24E0
                xor     eax, eax
                jmp     loc_1403D2567
; ---------------------------------------------------------------------------

loc_1403D24E0:                          ; CODE XREF: mbstowcs+22↑j
                                        ; mbstowcs+27↑j
                cmp     rdi, 7FFFFFFFh
                jbe     short loc_1403D24EF
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1403D2567
; ---------------------------------------------------------------------------

loc_1403D24EF:                          ; CODE XREF: mbstowcs+37↑j
                test    rbx, rbx
                jz      short loc_1403D2557
                mov     rcx, rsi
                call    _mbstrlen
                lea     edx, [rdi+rdi]
                mov     [rsp+38h+arg_0], eax
                mov     r9, rsi
                lea     r8, [rsp+38h+arg_0]
                lea     ecx, [rax+1]
                mov     [rsp+38h+var_18], ecx
                mov     rcx, rbx
                call    RtlMultiByteToUnicodeN
                test    eax, eax
                jns     short loc_1403D2531
                mov     cs:dword_140C130C8, 2Ah ; '*'
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     [rbx], bp
                jmp     short loc_1403D2552
; ---------------------------------------------------------------------------

loc_1403D2531:                          ; CODE XREF: mbstowcs+6C↑j
                movsxd  r8, [rsp+38h+arg_0]
                shr     r8, 1
                mov     [rsp+38h+arg_0], r8d
                mov     edx, r8d
                lea     eax, [r8-1]
                movsxd  rcx, eax
                cmp     [rbx+rcx*2], bp
                jnz     short loc_1403D2552
                lea     edx, [r8-1]

loc_1403D2552:                          ; CODE XREF: mbstowcs+7F↑j
                                        ; mbstowcs+9C↑j
                movsxd  rax, edx
                jmp     short loc_1403D2567
; ---------------------------------------------------------------------------

loc_1403D2557:                          ; CODE XREF: mbstowcs+42↑j
                or      rdx, 0FFFFFFFFFFFFFFFFh

loc_1403D255B:                          ; CODE XREF: mbstowcs+B2↓j
                inc     rdx
                cmp     [rsi+rdx], bpl
                jnz     short loc_1403D255B
                mov     rax, rdx

loc_1403D2567:                          ; CODE XREF: mbstowcs+2B↑j
                                        ; mbstowcs+3D↑j ...
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
mbstowcs        endp

byte_1403D257D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0868↑o
; Exported entry 3022. mbtowc

; =============== S U B R O U T I N E =======================================


