strncat_s       proc near               ; DATA XREF: .pdata:00000001400E0E50↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     r11, rdx
                mov     r10, rcx
                test    r9, r9
                jnz     short loc_1403D7A66
                test    rcx, rcx
                jnz     short loc_1403D7A6F
                test    rdx, rdx
                jnz     loc_1403D7B1F

loc_1403D7A5F:                          ; CODE XREF: strncat_s+A7↓j
                xor     eax, eax
                jmp     loc_1403D7B39
; ---------------------------------------------------------------------------

loc_1403D7A66:                          ; CODE XREF: strncat_s+F↑j
                test    r10, r10
                jz      loc_1403D7B1F

loc_1403D7A6F:                          ; CODE XREF: strncat_s+14↑j
                test    r11, r11
                jz      loc_1403D7B1F
                test    r9, r9
                jz      short loc_1403D7A82
                test    r8, r8
                jz      short loc_1403D7A95

loc_1403D7A82:                          ; CODE XREF: strncat_s+3B↑j
                                        ; strncat_s+4E↓j
                cmp     byte ptr [rcx], 0
                jz      short loc_1403D7A90
                inc     rcx
                sub     rdx, 1
                jnz     short loc_1403D7A82

loc_1403D7A90:                          ; CODE XREF: strncat_s+45↑j
                test    rdx, rdx
                jnz     short loc_1403D7A9C

loc_1403D7A95:                          ; CODE XREF: strncat_s+40↑j
                mov     ebx, 16h
                jmp     short loc_1403D7B02
; ---------------------------------------------------------------------------

loc_1403D7A9C:                          ; CODE XREF: strncat_s+53↑j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D7ABB
                sub     rcx, r8

loc_1403D7AA5:                          ; CODE XREF: strncat_s+77↓j
                mov     al, [r8]
                mov     [rcx+r8], al
                inc     r8
                test    al, al
                jz      short loc_1403D7AE4
                sub     rdx, 1
                jnz     short loc_1403D7AA5
                jmp     short loc_1403D7AE4
; ---------------------------------------------------------------------------

loc_1403D7ABB:                          ; CODE XREF: strncat_s+60↑j
                test    r9, r9
                jz      short loc_1403D7AE1
                sub     r8, rcx

loc_1403D7AC3:                          ; CODE XREF: strncat_s+9A↓j
                mov     al, [r8+rcx]
                mov     [rcx], al
                inc     rcx
                test    al, al
                jz      short loc_1403D7ADC
                sub     rdx, 1
                jz      short loc_1403D7ADC
                sub     r9, 1
                jnz     short loc_1403D7AC3

loc_1403D7ADC:                          ; CODE XREF: strncat_s+8E↑j
                                        ; strncat_s+94↑j
                test    r9, r9
                jnz     short loc_1403D7AE4

loc_1403D7AE1:                          ; CODE XREF: strncat_s+7E↑j
                mov     byte ptr [rcx], 0

loc_1403D7AE4:                          ; CODE XREF: strncat_s+71↑j
                                        ; strncat_s+79↑j ...
                test    rdx, rdx
                jnz     loc_1403D7A5F
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D7AFD
                mov     [r10+r11-1], dl
                lea     eax, [rdx+50h]
                jmp     short loc_1403D7B39
; ---------------------------------------------------------------------------

loc_1403D7AFD:                          ; CODE XREF: strncat_s+B1↑j
                mov     ebx, 22h ; '"'

loc_1403D7B02:                          ; CODE XREF: strncat_s+5A↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     byte ptr [r10], 0
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx
                jmp     short loc_1403D7B39
; ---------------------------------------------------------------------------

loc_1403D7B1F:                          ; CODE XREF: strncat_s+19↑j
                                        ; strncat_s+29↑j ...
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D7B39:                          ; CODE XREF: strncat_s+21↑j
                                        ; strncat_s+BB↑j ...
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
strncat_s       endp

byte_1403D7B40  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0E50↑o
; Exported entry 3051. strncpy_s

; =============== S U B R O U T I N E =======================================


