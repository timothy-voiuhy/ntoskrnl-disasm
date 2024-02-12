bsearch         proc near               ; CODE XREF: sub_14033D1DC+5D↑p
                                        ; sub_1403A8208+40↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                lea     rdi, [r8-1]
                xor     r14d, r14d
                imul    rdi, r9
                mov     r15, r9
                mov     rsi, r8
                add     rdi, rdx
                mov     rbx, rdx
                mov     r13, rcx
                test    rdx, rdx
                jnz     short loc_1403D2105
                test    r8, r8
                jnz     loc_1403D2193

loc_1403D2105:                          ; CODE XREF: bsearch+3A↑j
                test    r15, r15
                jz      loc_1403D2193
                cmp     [rsp+48h+arg_20], r14
                jz      short loc_1403D2193
                mov     rcx, [rsp+48h+arg_20]
                call    sub_140407980
                jmp     short loc_1403D2164
; ---------------------------------------------------------------------------

loc_1403D2121:                          ; CODE XREF: bsearch+A7↓j
                mov     rbp, rsi
                shr     rbp, 1
                jz      short loc_1403D2170
                mov     rax, [rsp+48h+arg_20]
                test    sil, 1
                lea     rsi, [rbp-1]
                mov     rcx, r13
                cmovnz  rsi, rbp
                mov     r14, rsi
                imul    r14, r15
                add     r14, rbx
                mov     rdx, r14
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jz      short loc_1403D216B
                jns     short loc_1403D215D
                mov     rdi, r14
                sub     rdi, r15
                jmp     short loc_1403D2164
; ---------------------------------------------------------------------------

loc_1403D215D:                          ; CODE XREF: bsearch+93↑j
                lea     rbx, [r14+r15]
                mov     rsi, rbp

loc_1403D2164:                          ; CODE XREF: bsearch+5F↑j
                                        ; bsearch+9B↑j
                cmp     rbx, rdi
                jbe     short loc_1403D2121
                jmp     short loc_1403D21A7
; ---------------------------------------------------------------------------

loc_1403D216B:                          ; CODE XREF: bsearch+91↑j
                mov     rax, r14
                jmp     short loc_1403D21A9
; ---------------------------------------------------------------------------

loc_1403D2170:                          ; CODE XREF: bsearch+67↑j
                xor     r14d, r14d
                test    rsi, rsi
                jz      short loc_1403D21A7
                mov     rax, [rsp+48h+arg_20]
                mov     rdx, rbx
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                cmovnz  rbx, r14
                mov     rax, rbx
                jmp     short loc_1403D21A9
; ---------------------------------------------------------------------------

loc_1403D2193:                          ; CODE XREF: bsearch+3F↑j
                                        ; bsearch+48↑j ...
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r14
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D21A7:                          ; CODE XREF: bsearch+A9↑j
                                        ; bsearch+B6↑j
                xor     eax, eax

loc_1403D21A9:                          ; CODE XREF: bsearch+AE↑j
                                        ; bsearch+D1↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
bsearch         endp

algn_1403D21C9:                         ; DATA XREF: .pdata:00000001400E07CC↑o
                align 10h
; Exported entry 3010. bsearch_s

; =============== S U B R O U T I N E =======================================


