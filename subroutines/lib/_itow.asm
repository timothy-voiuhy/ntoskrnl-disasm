_itow           proc near               ; DATA XREF: .pdata:00000001400E067C↑o
                push    rbx
                sub     rsp, 20h
                xor     r9d, r9d
                mov     rbx, rdx
                cmp     r8d, 0Ah
                jnz     short loc_1403D16FA
                test    ecx, ecx
                jns     short loc_1403D16FA
                lea     r9d, [r8-9]

loc_1403D16FA:                          ; CODE XREF: _itow+10↑j
                                        ; _itow+14↑j
                call    sub_1403D1734
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_itow           endp

algn_1403D1709:                         ; DATA XREF: .pdata:00000001400E067C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403D1710   proc near               ; CODE XREF: sub_14096F72C+7C↓p
                                        ; DATA XREF: .pdata:00000001400E0688↑o
                push    rbx
                sub     rsp, 20h
                xor     r9d, r9d
                mov     rbx, rdx
                call    sub_1403D1734
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1710   endp

byte_1403D172B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0688↑o

; =============== S U B R O U T I N E =======================================


sub_1403D1734   proc near               ; CODE XREF: _itow:loc_1403D16FA↑p
                                        ; sub_1403D1710+C↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                xor     esi, esi
                mov     ebx, r8d
                mov     r10, rdx
                test    r9d, r9d
                jz      short loc_1403D175C
                lea     eax, [rsi+2Dh]
                add     r10, 2
                mov     [rdx], ax
                neg     ecx

loc_1403D175C:                          ; CODE XREF: sub_1403D1734+1A↑j
                mov     r8, r10

loc_1403D175F:                          ; CODE XREF: sub_1403D1734+55↓j
                xor     edx, edx
                lea     r11, [r10+2]
                mov     eax, ecx
                mov     r9, r10
                div     ebx
                mov     ecx, eax
                cmp     edx, 9
                mov     eax, 57h ; 'W'
                lea     edi, [rax-27h]
                cmovbe  ax, di
                add     ax, dx
                mov     [r10], ax
                mov     r10, r11
                test    ecx, ecx
                jnz     short loc_1403D175F
                mov     [r11], si

loc_1403D178F:                          ; CODE XREF: sub_1403D1734+76↓j
                movzx   eax, word ptr [r8]
                movzx   ecx, word ptr [r9]
                mov     [r9], ax
                sub     r9, 2
                mov     [r8], cx
                add     r8, 2
                cmp     r8, r9
                jb      short loc_1403D178F
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1734   endp

byte_1403D17BD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0694↑o
; Exported entry 2960. _local_unwind

; =============== S U B R O U T I N E =======================================


