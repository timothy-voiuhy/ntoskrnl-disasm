_itoa           proc near               ; DATA XREF: .pdata:00000001400E0664↑o
                push    rbx
                sub     rsp, 20h
                xor     r9d, r9d
                mov     rbx, rdx
                cmp     r8d, 0Ah
                jnz     short loc_1403D164A
                test    ecx, ecx
                jns     short loc_1403D164A
                lea     r9d, [r8-9]

loc_1403D164A:                          ; CODE XREF: _itoa+10↑j
                                        ; _itoa+14↑j
                call    sub_1403D1660
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_itoa           endp

algn_1403D1659:                         ; DATA XREF: .pdata:00000001400E0664↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403D1660   proc near               ; CODE XREF: _itoa:loc_1403D164A↑p
                                        ; DATA XREF: .pdata:00000001400E0670↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                mov     ebx, r8d
                mov     r10, rdx
                test    r9d, r9d
                jz      short loc_1403D167D
                inc     r10
                mov     byte ptr [rdx], 2Dh ; '-'
                neg     ecx

loc_1403D167D:                          ; CODE XREF: sub_1403D1660+13↑j
                mov     r8, r10

loc_1403D1680:                          ; CODE XREF: sub_1403D1660+47↓j
                xor     edx, edx
                lea     r11, [r10+1]
                mov     eax, ecx
                mov     r9, r10
                div     ebx
                mov     ecx, eax
                cmp     edx, 9
                mov     eax, 57h ; 'W'
                lea     edi, [rax-27h]
                cmovbe  eax, edi
                add     al, dl
                mov     [r10], al
                mov     r10, r11
                test    ecx, ecx
                jnz     short loc_1403D1680
                mov     [r11], cl

loc_1403D16AC:                          ; CODE XREF: sub_1403D1660+61↓j
                mov     al, [r8]
                mov     cl, [r9]
                mov     [r9], al
                dec     r9
                mov     [r8], cl
                inc     r8
                cmp     r8, r9
                jb      short loc_1403D16AC
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1660   endp

algn_1403D16CF:                         ; DATA XREF: .pdata:00000001400E0670↑o
                align 20h
; Exported entry 2958. _itow

; =============== S U B R O U T I N E =======================================


