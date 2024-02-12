wcscpy_s        proc near               ; CODE XREF: HalGetEnvironmentVariableEx+F1FE6↓p
                                        ; HalSetEnvironmentVariableEx+B7↓p ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                xor     r10d, r10d
                mov     r9, rcx
                test    rcx, rcx
                jz      short loc_1403D7F14
                test    rdx, rdx
                jz      short loc_1403D7F14
                test    r8, r8
                jnz     short loc_1403D7ED1
                lea     ebx, [r10+16h]
                jmp     short loc_1403D7EF4
; ---------------------------------------------------------------------------

loc_1403D7ED1:                          ; CODE XREF: wcscpy_s+19↑j
                sub     rcx, r8

loc_1403D7ED4:                          ; CODE XREF: wcscpy_s+3A↓j
                movzx   eax, word ptr [r8]
                mov     [rcx+r8], ax
                lea     r8, [r8+2]
                test    ax, ax
                jz      short loc_1403D7EEC
                sub     rdx, 1
                jnz     short loc_1403D7ED4

loc_1403D7EEC:                          ; CODE XREF: wcscpy_s+34↑j
                test    rdx, rdx
                jnz     short loc_1403D7F10
                lea     ebx, [rdx+22h]

loc_1403D7EF4:                          ; CODE XREF: wcscpy_s+1F↑j
                mov     [r9], r10w
                xor     r8d, r8d
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx
                jmp     short loc_1403D7F2D
; ---------------------------------------------------------------------------

loc_1403D7F10:                          ; CODE XREF: wcscpy_s+3F↑j
                xor     eax, eax
                jmp     short loc_1403D7F2D
; ---------------------------------------------------------------------------

loc_1403D7F14:                          ; CODE XREF: wcscpy_s+F↑j
                                        ; wcscpy_s+14↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D7F2D:                          ; CODE XREF: wcscpy_s+5E↑j
                                        ; wcscpy_s+62↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
wcscpy_s        endp

algn_1403D7F34:                         ; DATA XREF: .pdata:00000001400E0E8C↑o
                align 20h
; Exported entry 3078. wcsncat_s

; =============== S U B R O U T I N E =======================================


