wcsncat_s       proc near               ; CODE XREF: sub_1407B3980+2AD↓p
                                        ; sub_1408AEE9C+1C6↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     r11, rdx
                mov     r10, rcx
                test    r9, r9
                jnz     short loc_1403D7F6C
                test    rcx, rcx
                jnz     short loc_1403D7F75
                test    rdx, rdx
                jnz     loc_1403D802E

loc_1403D7F65:                          ; CODE XREF: wcsncat_s+B6↓j
                xor     eax, eax
                jmp     loc_1403D8047
; ---------------------------------------------------------------------------

loc_1403D7F6C:                          ; CODE XREF: wcsncat_s+15↑j
                test    r10, r10
                jz      loc_1403D802E

loc_1403D7F75:                          ; CODE XREF: wcsncat_s+1A↑j
                test    r11, r11
                jz      loc_1403D802E
                test    r9, r9
                jz      short loc_1403D7F88
                test    r8, r8
                jz      short loc_1403D7F9C

loc_1403D7F88:                          ; CODE XREF: wcsncat_s+41↑j
                                        ; wcsncat_s+55↓j
                cmp     [rcx], di
                jz      short loc_1403D7F97
                add     rcx, 2
                sub     rdx, 1
                jnz     short loc_1403D7F88

loc_1403D7F97:                          ; CODE XREF: wcsncat_s+4B↑j
                test    rdx, rdx
                jnz     short loc_1403D7FA3

loc_1403D7F9C:                          ; CODE XREF: wcsncat_s+46↑j
                mov     ebx, 16h
                jmp     short loc_1403D8012
; ---------------------------------------------------------------------------

loc_1403D7FA3:                          ; CODE XREF: wcsncat_s+5A↑j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D7FC6
                sub     rcx, r8

loc_1403D7FAC:                          ; CODE XREF: wcsncat_s+82↓j
                movzx   eax, word ptr [r8]
                mov     [rcx+r8], ax
                lea     r8, [r8+2]
                test    ax, ax
                jz      short loc_1403D7FF3
                sub     rdx, 1
                jnz     short loc_1403D7FAC
                jmp     short loc_1403D7FF3
; ---------------------------------------------------------------------------

loc_1403D7FC6:                          ; CODE XREF: wcsncat_s+67↑j
                test    r9, r9
                jz      short loc_1403D7FF0
                sub     r8, rcx

loc_1403D7FCE:                          ; CODE XREF: wcsncat_s+A9↓j
                movzx   eax, word ptr [r8+rcx]
                mov     [rcx], ax
                add     rcx, 2
                test    ax, ax
                jz      short loc_1403D7FEB
                sub     rdx, 1
                jz      short loc_1403D7FEB
                sub     r9, 1
                jnz     short loc_1403D7FCE

loc_1403D7FEB:                          ; CODE XREF: wcsncat_s+9D↑j
                                        ; wcsncat_s+A3↑j
                test    r9, r9
                jnz     short loc_1403D7FF3

loc_1403D7FF0:                          ; CODE XREF: wcsncat_s+89↑j
                mov     [rcx], di

loc_1403D7FF3:                          ; CODE XREF: wcsncat_s+7C↑j
                                        ; wcsncat_s+84↑j ...
                test    rdx, rdx
                jnz     loc_1403D7F65
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D800D
                mov     [r10+r11*2-2], di
                lea     eax, [rdx+50h]
                jmp     short loc_1403D8047
; ---------------------------------------------------------------------------

loc_1403D800D:                          ; CODE XREF: wcsncat_s+C0↑j
                mov     ebx, 22h ; '"'

loc_1403D8012:                          ; CODE XREF: wcsncat_s+61↑j
                xor     r9d, r9d
                mov     [r10], di
                xor     r8d, r8d
                mov     [rsp+38h+var_18], rdi
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx
                jmp     short loc_1403D8047
; ---------------------------------------------------------------------------

loc_1403D802E:                          ; CODE XREF: wcsncat_s+1F↑j
                                        ; wcsncat_s+2F↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D8047:                          ; CODE XREF: wcsncat_s+27↑j
                                        ; wcsncat_s+CB↑j ...
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
wcsncat_s       endp

algn_1403D8053:                         ; DATA XREF: .pdata:00000001400E0E98↑o
                align 20h
; Exported entry 3081. wcsncpy_s

; =============== S U B R O U T I N E =======================================


