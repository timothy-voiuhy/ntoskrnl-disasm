strtok_s        proc near               ; DATA XREF: .pdata:00000001400E0E68↑o

var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_18          = qword ptr -18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                xor     edi, edi
                mov     r11, r8
                mov     r10, rdx
                mov     r9, rcx
                test    r8, r8
                jz      loc_1403D7D64
                test    rdx, rdx
                jz      loc_1403D7D64
                test    rcx, rcx
                jnz     short loc_1403D7C84
                cmp     [r8], rdi
                jz      loc_1403D7D64

loc_1403D7C84:                          ; CODE XREF: strtok_s+39↑j
                mov     rax, rdi
                cmp     rax, 20h ; ' '

loc_1403D7C8B:                          ; CODE XREF: strtok_s+5D↓j
                jnb     loc_1403D7D96
                mov     [rsp+rax+68h+var_38], dil
                inc     rax
                cmp     rax, 20h ; ' '
                jl      short loc_1403D7C8B

loc_1403D7C9F:                          ; CODE XREF: strtok_s+82↓j
                movzx   r8d, byte ptr [r10]
                inc     r10
                mov     edx, r8d
                mov     eax, r8d
                shr     rdx, 3
                and     eax, 7
                movzx   ecx, [rsp+rdx+68h+var_38]
                bts     ecx, eax
                mov     [rsp+rdx+68h+var_38], cl
                test    r8b, r8b
                jnz     short loc_1403D7C9F
                test    r9, r9
                jnz     short loc_1403D7CCC
                mov     r9, [r11]

loc_1403D7CCC:                          ; CODE XREF: strtok_s+87↑j
                movzx   r8d, byte ptr [r9]
                mov     edx, 1
                mov     eax, r8d
                mov     ecx, r8d
                and     ecx, 7
                shr     rax, 3
                shl     edx, cl
                test    [rsp+rax+68h+var_38], dl
                jz      short loc_1403D7D19
                mov     r10b, r8b

loc_1403D7CED:                          ; CODE XREF: strtok_s+D7↓j
                mov     r8b, r10b
                test    r10b, r10b
                jz      short loc_1403D7D19
                inc     r9
                mov     edx, 1
                movzx   r10d, byte ptr [r9]
                mov     eax, r10d
                mov     ecx, r10d
                and     ecx, 7
                shr     rax, 3
                shl     edx, cl
                mov     r8b, r10b
                test    [rsp+rax+68h+var_38], dl
                jnz     short loc_1403D7CED

loc_1403D7D19:                          ; CODE XREF: strtok_s+A8↑j
                                        ; strtok_s+B3↑j
                mov     r10, r9
                test    r8b, r8b
                jz      short loc_1403D7D55

loc_1403D7D21:                          ; CODE XREF: strtok_s+10B↓j
                movzx   eax, r8b
                lea     rbx, [r9+1]
                movzx   ecx, r8b
                mov     edx, 1
                and     ecx, 7
                shr     rax, 3
                shl     edx, cl
                test    [rsp+rax+68h+var_38], dl
                jnz     short loc_1403D7D4F
                mov     al, [rbx]
                mov     r9, rbx
                mov     r8b, al
                test    al, al
                jnz     short loc_1403D7D21
                jmp     short loc_1403D7D55
; ---------------------------------------------------------------------------

loc_1403D7D4F:                          ; CODE XREF: strtok_s+FF↑j
                mov     [r9], dil
                mov     r9, rbx

loc_1403D7D55:                          ; CODE XREF: strtok_s+DF↑j
                                        ; strtok_s+10D↑j
                cmp     r10, r9
                mov     [r11], r9
                cmovz   r10, rdi
                mov     rax, r10
                jmp     short loc_1403D7D7A
; ---------------------------------------------------------------------------

loc_1403D7D64:                          ; CODE XREF: strtok_s+27↑j
                                        ; strtok_s+30↑j ...
                xor     r9d, r9d
                mov     [rsp+68h+var_48], rdi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                xor     eax, eax

loc_1403D7D7A:                          ; CODE XREF: strtok_s+122↑j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_18]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403D7D96:                          ; CODE XREF: strtok_s:loc_1403D7C8B↑j
                call    sub_1404B63DC
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D7C40
strtok_s        endp

byte_1403D7D9C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0E68↑o
; Exported entry 3059. swscanf_s

; =============== S U B R O U T I N E =======================================


