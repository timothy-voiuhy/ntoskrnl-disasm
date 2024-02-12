strcpy_s        proc near               ; CODE XREF: sub_140781364+CA590↓p
                                        ; sub_140783D88+C8D8E↓p ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                xor     r10d, r10d
                mov     r9, rcx
                test    rcx, rcx
                jz      short loc_1403D7A0F
                test    rdx, rdx
                jz      short loc_1403D7A0F
                test    r8, r8
                jnz     short loc_1403D79D1
                lea     ebx, [r10+16h]
                jmp     short loc_1403D79F0
; ---------------------------------------------------------------------------

loc_1403D79D1:                          ; CODE XREF: strcpy_s+19↑j
                sub     rcx, r8

loc_1403D79D4:                          ; CODE XREF: strcpy_s+36↓j
                mov     al, [r8]
                mov     [rcx+r8], al
                inc     r8
                test    al, al
                jz      short loc_1403D79E8
                sub     rdx, 1
                jnz     short loc_1403D79D4

loc_1403D79E8:                          ; CODE XREF: strcpy_s+30↑j
                test    rdx, rdx
                jnz     short loc_1403D7A0B
                lea     ebx, [rdx+22h]

loc_1403D79F0:                          ; CODE XREF: strcpy_s+1F↑j
                mov     [r9], r10b
                xor     r8d, r8d
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx
                jmp     short loc_1403D7A28
; ---------------------------------------------------------------------------

loc_1403D7A0B:                          ; CODE XREF: strcpy_s+3B↑j
                xor     eax, eax
                jmp     short loc_1403D7A28
; ---------------------------------------------------------------------------

loc_1403D7A0F:                          ; CODE XREF: strcpy_s+F↑j
                                        ; strcpy_s+14↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D7A28:                          ; CODE XREF: strcpy_s+59↑j
                                        ; strcpy_s+5D↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
strcpy_s        endp

algn_1403D7A2F:                         ; DATA XREF: .pdata:00000001400E0E44↑o
                align 20h
; Exported entry 3048. strncat_s

; =============== S U B R O U T I N E =======================================


