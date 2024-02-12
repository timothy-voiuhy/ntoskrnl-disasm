strstr          proc near               ; CODE XREF: sub_1403B0B90+45↑p
                                        ; HalInitializeBios+3C↑p ...
                xor     r11d, r11d
                mov     r10, rdx
                mov     r8, rcx
                cmp     [rdx], r11b
                jnz     short loc_1403D14D3
                mov     rax, rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D14D3:                          ; CODE XREF: strstr+C↑j
                mov     al, [rcx]
                test    al, al
                jz      short loc_1403D150D
                mov     r9, rcx
                sub     r9, r10

loc_1403D14DF:                          ; CODE XREF: strstr+4B↓j
                mov     rdx, r10
                test    al, al
                jz      short loc_1403D14FB

loc_1403D14E6:                          ; CODE XREF: strstr+39↓j
                mov     al, [rdx]
                test    al, al
                jz      short loc_1403D1511
                cmp     [r9+rdx], al
                jnz     short loc_1403D14FB
                inc     rdx
                cmp     [r9+rdx], r11b
                jnz     short loc_1403D14E6

loc_1403D14FB:                          ; CODE XREF: strstr+24↑j
                                        ; strstr+30↑j
                cmp     [rdx], r11b
                jz      short loc_1403D1511
                inc     r8
                inc     r9
                mov     al, [r8]
                test    al, al
                jnz     short loc_1403D14DF

loc_1403D150D:                          ; CODE XREF: strstr+17↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D1511:                          ; CODE XREF: strstr+2A↑j
                                        ; strstr+3E↑j
                mov     rax, r8
                retn
strstr          endp

; ---------------------------------------------------------------------------
                align 2
byte_1403D1516  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0604↑o

; =============== S U B R O U T I N E =======================================


sub_1403D151C   proc near               ; CODE XREF: sub_1409A31F4+5BD9↓p
                                        ; sub_140A97468+17D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_1403D1529
                xor     eax, eax
                jmp     short loc_1403D1534
; ---------------------------------------------------------------------------

loc_1403D1529:                          ; CODE XREF: sub_1403D151C+7↑j
                xor     edx, edx
                lea     r8d, [rdx+0Ah]
                call    sub_1403D1460

loc_1403D1534:                          ; CODE XREF: sub_1403D151C+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D151C   endp

algn_1403D153A:                         ; DATA XREF: .pdata:00000001400E0610↑o
                align 20h
; Exported entry 3007. atoi

; =============== S U B R O U T I N E =======================================


