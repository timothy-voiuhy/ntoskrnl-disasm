_vsnwprintf_s   proc near               ; CODE XREF: _snwprintf_s+13↑p
                                        ; DATA XREF: .pdata:00000001400E0DA8↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                xor     esi, esi
                mov     rax, r9
                mov     rdi, r8
                mov     rbx, rcx
                test    r9, r9
                jz      short loc_1403D6ED3
                test    r8, r8
                jnz     short loc_1403D6EA2
                test    rcx, rcx
                jnz     short loc_1403D6EA7
                test    rdx, rdx
                jnz     short loc_1403D6ED3
                xor     eax, eax
                jmp     short loc_1403D6EEA
; ---------------------------------------------------------------------------

loc_1403D6EA2:                          ; CODE XREF: _vsnwprintf_s+22↑j
                test    rbx, rbx
                jz      short loc_1403D6ED3

loc_1403D6EA7:                          ; CODE XREF: _vsnwprintf_s+27↑j
                test    rdx, rdx
                jz      short loc_1403D6ED3
                mov     r9, [rsp+38h+arg_20]
                cmp     rdx, rdi
                jbe     short loc_1403D6EFB
                lea     rdx, [r8+1]
                mov     r8, rax
                call    sub_1403D8CE4
                cmp     eax, 0FFFFFFFEh
                jz      short loc_1403D6EE7

loc_1403D6EC7:                          ; CODE XREF: _vsnwprintf_s+96↓j
                test    eax, eax
                jns     short loc_1403D6EEA

loc_1403D6ECB:                          ; CODE XREF: _vsnwprintf_s+9C↓j
                mov     [rbx], si
                cmp     eax, 0FFFFFFFEh
                jnz     short loc_1403D6EE7

loc_1403D6ED3:                          ; CODE XREF: _vsnwprintf_s+1D↑j
                                        ; _vsnwprintf_s+2C↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rsi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D6EE7:                          ; CODE XREF: _vsnwprintf_s+55↑j
                                        ; _vsnwprintf_s+61↑j ...
                or      eax, 0FFFFFFFFh

loc_1403D6EEA:                          ; CODE XREF: _vsnwprintf_s+30↑j
                                        ; _vsnwprintf_s+59↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D6EFB:                          ; CODE XREF: _vsnwprintf_s+44↑j
                mov     r8, rax
                call    sub_1403D8CE4
                cmp     eax, 0FFFFFFFEh
                jnz     short loc_1403D6EC7
                cmp     rdi, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D6ECB
                jmp     short loc_1403D6EE7
_vsnwprintf_s   endp

; ---------------------------------------------------------------------------
algn_1403D6F10:                         ; DATA XREF: .pdata:00000001400E0DA8↑o
                align 20h
; Exported entry 2972. _snwscanf_s

; =============== S U B R O U T I N E =======================================


