strncpy_s       proc near               ; CODE XREF: _splitpath_s+E6↑p
                                        ; _splitpath_s+153↑p ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                test    r9, r9
                jnz     short loc_1403D7B86
                test    rcx, rcx
                jnz     short loc_1403D7B8B
                test    rdx, rdx
                jz      short loc_1403D7B98

loc_1403D7B65:                          ; CODE XREF: strncpy_s+39↓j
                                        ; strncpy_s+3E↓j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D7B7F:                          ; CODE XREF: strncpy_s+4A↓j
                                        ; strncpy_s+B5↓j ...
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403D7B86:                          ; CODE XREF: strncpy_s+9↑j
                test    rcx, rcx
                jz      short loc_1403D7B65

loc_1403D7B8B:                          ; CODE XREF: strncpy_s+E↑j
                test    rdx, rdx
                jz      short loc_1403D7B65
                test    r9, r9
                jnz     short loc_1403D7B9C
                mov     [rcx], r9b

loc_1403D7B98:                          ; CODE XREF: strncpy_s+13↑j
                                        ; strncpy_s+A4↓j
                xor     eax, eax
                jmp     short loc_1403D7B7F
; ---------------------------------------------------------------------------

loc_1403D7B9C:                          ; CODE XREF: strncpy_s+43↑j
                test    r8, r8
                jnz     short loc_1403D7BA7
                lea     ebx, [r8+16h]
                jmp     short loc_1403D7C0F
; ---------------------------------------------------------------------------

loc_1403D7BA7:                          ; CODE XREF: strncpy_s+4F↑j
                mov     r11, rcx
                mov     r10, rdx
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D7BCC
                sub     r11, r8

loc_1403D7BB6:                          ; CODE XREF: strncpy_s+78↓j
                mov     al, [r8]
                mov     [r11+r8], al
                inc     r8
                test    al, al
                jz      short loc_1403D7BF1
                sub     r10, 1
                jnz     short loc_1403D7BB6
                jmp     short loc_1403D7BF1
; ---------------------------------------------------------------------------

loc_1403D7BCC:                          ; CODE XREF: strncpy_s+61↑j
                sub     r8, rcx

loc_1403D7BCF:                          ; CODE XREF: strncpy_s+97↓j
                mov     al, [r8+r11]
                mov     [r11], al
                inc     r11
                test    al, al
                jz      short loc_1403D7BE9
                sub     r10, 1
                jz      short loc_1403D7BE9
                sub     r9, 1
                jnz     short loc_1403D7BCF

loc_1403D7BE9:                          ; CODE XREF: strncpy_s+8B↑j
                                        ; strncpy_s+91↑j
                test    r9, r9
                jnz     short loc_1403D7BF1
                mov     [r11], r9b

loc_1403D7BF1:                          ; CODE XREF: strncpy_s+72↑j
                                        ; strncpy_s+7A↑j ...
                test    r10, r10
                jnz     short loc_1403D7B98
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D7C0A
                mov     [rcx+rdx-1], r10b
                lea     eax, [r10+50h]
                jmp     loc_1403D7B7F
; ---------------------------------------------------------------------------

loc_1403D7C0A:                          ; CODE XREF: strncpy_s+AA↑j
                mov     ebx, 22h ; '"'

loc_1403D7C0F:                          ; CODE XREF: strncpy_s+55↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     byte ptr [rcx], 0
                xor     r8d, r8d
                xor     ecx, ecx
                xor     edx, edx
                call    __misaligned_access
                mov     eax, ebx
                jmp     loc_1403D7B7F
strncpy_s       endp

; ---------------------------------------------------------------------------
algn_1403D7C2E:                         ; DATA XREF: .pdata:00000001400E0E5C↑o
                align 20h
; Exported entry 3056. strtok_s

; =============== S U B R O U T I N E =======================================


