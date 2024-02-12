_splitpath_s    proc near               ; DATA XREF: .pdata:00000001400E0DC0↑o

var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, [rsp+68h+arg_38]
                mov     rdi, rcx
                mov     r15, [rsp+68h+arg_28]
                xor     ecx, ecx
                mov     [rsp+68h+arg_0], ecx
                mov     r13, r9
                mov     rsi, r8
                mov     r12, rdx
                mov     r9d, ecx
                test    rdi, rdi
                jz      short loc_1403D6FAD
                test    rdx, rdx
                jnz     short loc_1403D6FB8
                test    r8, r8
                jz      short loc_1403D6FBD

loc_1403D6FAD:                          ; CODE XREF: _splitpath_s+41↑j
                                        ; _splitpath_s+5B↓j ...
                mov     r9d, 1
                jmp     loc_1403D7169
; ---------------------------------------------------------------------------

loc_1403D6FB8:                          ; CODE XREF: _splitpath_s+46↑j
                test    rsi, rsi
                jz      short loc_1403D6FAD

loc_1403D6FBD:                          ; CODE XREF: _splitpath_s+4B↑j
                test    r13, r13
                jnz     short loc_1403D6FCE
                cmp     [rsp+68h+arg_20], rcx
                jnz     short loc_1403D6FAD
                jmp     short loc_1403D6FD8
; ---------------------------------------------------------------------------

loc_1403D6FCE:                          ; CODE XREF: _splitpath_s+60↑j
                cmp     [rsp+68h+arg_20], rcx
                jz      short loc_1403D6FAD

loc_1403D6FD8:                          ; CODE XREF: _splitpath_s+6C↑j
                test    r15, r15
                jnz     short loc_1403D6FE9
                cmp     [rsp+68h+arg_30], rcx
                jnz     short loc_1403D6FAD
                jmp     short loc_1403D6FF3
; ---------------------------------------------------------------------------

loc_1403D6FE9:                          ; CODE XREF: _splitpath_s+7B↑j
                cmp     [rsp+68h+arg_30], rcx
                jz      short loc_1403D6FAD

loc_1403D6FF3:                          ; CODE XREF: _splitpath_s+87↑j
                test    r14, r14
                jnz     short loc_1403D7004
                cmp     [rsp+68h+arg_40], rcx
                jnz     short loc_1403D6FAD
                jmp     short loc_1403D700E
; ---------------------------------------------------------------------------

loc_1403D7004:                          ; CODE XREF: _splitpath_s+96↑j
                cmp     [rsp+68h+arg_40], rcx
                jz      short loc_1403D6FAD

loc_1403D700E:                          ; CODE XREF: _splitpath_s+A2↑j
                mov     eax, 1
                mov     rbx, rdi

loc_1403D7016:                          ; CODE XREF: _splitpath_s+C1↓j
                cmp     [rbx], cl
                jz      short loc_1403D7023
                inc     rbx
                sub     rax, 1
                jnz     short loc_1403D7016

loc_1403D7023:                          ; CODE XREF: _splitpath_s+B8↑j
                cmp     byte ptr [rbx], 3Ah ; ':'
                jnz     short loc_1403D7053
                test    r12, r12
                jz      short loc_1403D704D
                cmp     rsi, 3
                jb      loc_1403D7169
                mov     r9d, 2
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r12
                call    strncpy_s
                xor     ecx, ecx

loc_1403D704D:                          ; CODE XREF: _splitpath_s+CB↑j
                lea     rdi, [rbx+1]
                jmp     short loc_1403D705A
; ---------------------------------------------------------------------------

loc_1403D7053:                          ; CODE XREF: _splitpath_s+C6↑j
                test    r12, r12
                jz      short loc_1403D705A
                mov     [rdx], cl

loc_1403D705A:                          ; CODE XREF: _splitpath_s+F1↑j
                                        ; _splitpath_s+F6↑j
                mov     al, [rdi]
                mov     rbp, rcx
                mov     rsi, rcx
                mov     rbx, rdi
                test    al, al
                jz      short loc_1403D70BF

loc_1403D7069:                          ; CODE XREF: _splitpath_s+125↓j
                cmp     al, 2Fh ; '/'
                jz      short loc_1403D707A
                cmp     al, 5Ch ; '\'
                jz      short loc_1403D707A
                cmp     al, 2Eh ; '.'
                jnz     short loc_1403D707E
                mov     rsi, rbx
                jmp     short loc_1403D707E
; ---------------------------------------------------------------------------

loc_1403D707A:                          ; CODE XREF: _splitpath_s+10B↑j
                                        ; _splitpath_s+10F↑j
                lea     rbp, [rbx+1]

loc_1403D707E:                          ; CODE XREF: _splitpath_s+113↑j
                                        ; _splitpath_s+118↑j
                inc     rbx
                mov     al, [rbx]
                test    al, al
                jnz     short loc_1403D7069
                test    rbp, rbp
                jz      short loc_1403D70BF
                test    r13, r13
                jz      short loc_1403D70BA
                mov     r9, rbp
                sub     r9, rdi
                cmp     [rsp+68h+arg_20], r9
                jbe     loc_1403D715C
                mov     rdx, [rsp+68h+arg_20]
                mov     r8, rdi
                mov     rcx, r13
                call    strncpy_s
                xor     ecx, ecx

loc_1403D70BA:                          ; CODE XREF: _splitpath_s+12F↑j
                mov     rdi, rbp
                jmp     short loc_1403D70C8
; ---------------------------------------------------------------------------

loc_1403D70BF:                          ; CODE XREF: _splitpath_s+107↑j
                                        ; _splitpath_s+12A↑j
                test    r13, r13
                jz      short loc_1403D70C8
                mov     [r13+0], cl

loc_1403D70C8:                          ; CODE XREF: _splitpath_s+15D↑j
                                        ; _splitpath_s+162↑j
                test    rsi, rsi
                jz      short loc_1403D7126
                cmp     rsi, rdi
                jb      short loc_1403D7126
                test    r15, r15
                jz      short loc_1403D70FC
                mov     r9, rsi
                sub     r9, rdi
                cmp     [rsp+68h+arg_30], r9
                jbe     short loc_1403D715C
                mov     rdx, [rsp+68h+arg_30]
                mov     r8, rdi
                mov     rcx, r15
                call    strncpy_s
                xor     ecx, ecx

loc_1403D70FC:                          ; CODE XREF: _splitpath_s+175↑j
                test    r14, r14
                jz      short loc_1403D7158
                sub     rbx, rsi
                cmp     [rsp+68h+arg_40], rbx
                jbe     short loc_1403D715C
                mov     rdx, [rsp+68h+arg_40]
                mov     r9, rbx
                mov     r8, rsi
                mov     rcx, r14
                call    strncpy_s
                jmp     short loc_1403D7158
; ---------------------------------------------------------------------------

loc_1403D7126:                          ; CODE XREF: _splitpath_s+16B↑j
                                        ; _splitpath_s+170↑j
                test    r15, r15
                jz      short loc_1403D7150
                sub     rbx, rdi
                cmp     [rsp+68h+arg_30], rbx
                jbe     short loc_1403D715C
                mov     rdx, [rsp+68h+arg_30]
                mov     r9, rbx
                mov     r8, rdi
                mov     rcx, r15
                call    strncpy_s
                xor     ecx, ecx

loc_1403D7150:                          ; CODE XREF: _splitpath_s+1C9↑j
                test    r14, r14
                jz      short loc_1403D7158
                mov     [r14], cl

loc_1403D7158:                          ; CODE XREF: _splitpath_s+19F↑j
                                        ; _splitpath_s+1C4↑j ...
                xor     eax, eax
                jmp     short loc_1403D71D7
; ---------------------------------------------------------------------------

loc_1403D715C:                          ; CODE XREF: _splitpath_s+13F↑j
                                        ; _splitpath_s+185↑j ...
                mov     r9d, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_10]

loc_1403D7169:                          ; CODE XREF: _splitpath_s+53↑j
                                        ; _splitpath_s+D1↑j
                test    r12, r12
                jz      short loc_1403D7177
                test    rsi, rsi
                jz      short loc_1403D7177
                mov     [r12], cl

loc_1403D7177:                          ; CODE XREF: _splitpath_s+20C↑j
                                        ; _splitpath_s+211↑j
                test    r13, r13
                jz      short loc_1403D718A
                cmp     [rsp+68h+arg_20], rcx
                jbe     short loc_1403D718A
                mov     [r13+0], cl

loc_1403D718A:                          ; CODE XREF: _splitpath_s+21A↑j
                                        ; _splitpath_s+224↑j
                test    r15, r15
                jz      short loc_1403D719C
                cmp     [rsp+68h+arg_30], rcx
                jbe     short loc_1403D719C
                mov     [r15], cl

loc_1403D719C:                          ; CODE XREF: _splitpath_s+22D↑j
                                        ; _splitpath_s+237↑j
                test    r14, r14
                jz      short loc_1403D71AE
                cmp     [rsp+68h+arg_40], rcx
                jbe     short loc_1403D71AE
                mov     [r14], cl

loc_1403D71AE:                          ; CODE XREF: _splitpath_s+23F↑j
                                        ; _splitpath_s+249↑j
                test    rdi, rdi
                jz      short loc_1403D71BE
                test    r9d, r9d
                jnz     short loc_1403D71BE
                lea     eax, [r9+22h]
                jmp     short loc_1403D71D7
; ---------------------------------------------------------------------------

loc_1403D71BE:                          ; CODE XREF: _splitpath_s+251↑j
                                        ; _splitpath_s+256↑j
                mov     [rsp+68h+var_48], rcx
                xor     r9d, r9d
                xor     ecx, ecx
                xor     r8d, r8d
                xor     edx, edx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D71D7:                          ; CODE XREF: _splitpath_s+1FA↑j
                                        ; _splitpath_s+25C↑j
                mov     rbx, [rsp+68h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_splitpath_s    endp

algn_1403D71ED:                         ; DATA XREF: .pdata:00000001400E0DC0↑o
                align 20h
; Exported entry 2978. _strnset_s

; =============== S U B R O U T I N E =======================================


