_wsplitpath_s   proc near               ; DATA XREF: .pdata:00000001400E0DF0↑o

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
                jz      short loc_1403D74BD
                test    rdx, rdx
                jnz     short loc_1403D74C8
                test    r8, r8
                jz      short loc_1403D74CD

loc_1403D74BD:                          ; CODE XREF: _wsplitpath_s+41↑j
                                        ; _wsplitpath_s+5B↓j ...
                mov     r9d, 1
                jmp     loc_1403D7696
; ---------------------------------------------------------------------------

loc_1403D74C8:                          ; CODE XREF: _wsplitpath_s+46↑j
                test    rsi, rsi
                jz      short loc_1403D74BD

loc_1403D74CD:                          ; CODE XREF: _wsplitpath_s+4B↑j
                test    r13, r13
                jnz     short loc_1403D74DE
                cmp     [rsp+68h+arg_20], rcx
                jnz     short loc_1403D74BD
                jmp     short loc_1403D74E8
; ---------------------------------------------------------------------------

loc_1403D74DE:                          ; CODE XREF: _wsplitpath_s+60↑j
                cmp     [rsp+68h+arg_20], rcx
                jz      short loc_1403D74BD

loc_1403D74E8:                          ; CODE XREF: _wsplitpath_s+6C↑j
                test    r15, r15
                jnz     short loc_1403D74F9
                cmp     [rsp+68h+arg_30], rcx
                jnz     short loc_1403D74BD
                jmp     short loc_1403D7503
; ---------------------------------------------------------------------------

loc_1403D74F9:                          ; CODE XREF: _wsplitpath_s+7B↑j
                cmp     [rsp+68h+arg_30], rcx
                jz      short loc_1403D74BD

loc_1403D7503:                          ; CODE XREF: _wsplitpath_s+87↑j
                test    r14, r14
                jnz     short loc_1403D7514
                cmp     [rsp+68h+arg_40], rcx
                jnz     short loc_1403D74BD
                jmp     short loc_1403D751E
; ---------------------------------------------------------------------------

loc_1403D7514:                          ; CODE XREF: _wsplitpath_s+96↑j
                cmp     [rsp+68h+arg_40], rcx
                jz      short loc_1403D74BD

loc_1403D751E:                          ; CODE XREF: _wsplitpath_s+A2↑j
                mov     eax, 1
                mov     rbx, rdi

loc_1403D7526:                          ; CODE XREF: _wsplitpath_s+C3↓j
                cmp     [rbx], cx
                jz      short loc_1403D7535
                add     rbx, 2
                sub     rax, 1
                jnz     short loc_1403D7526

loc_1403D7535:                          ; CODE XREF: _wsplitpath_s+B9↑j
                cmp     word ptr [rbx], 3Ah ; ':'
                jnz     short loc_1403D7566
                test    r12, r12
                jz      short loc_1403D7560
                cmp     rsi, 3
                jb      loc_1403D7696
                mov     r9d, 2
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r12
                call    wcsncpy_s
                xor     ecx, ecx

loc_1403D7560:                          ; CODE XREF: _wsplitpath_s+CE↑j
                lea     rdi, [rbx+2]
                jmp     short loc_1403D756E
; ---------------------------------------------------------------------------

loc_1403D7566:                          ; CODE XREF: _wsplitpath_s+C9↑j
                test    r12, r12
                jz      short loc_1403D756E
                mov     [rdx], cx

loc_1403D756E:                          ; CODE XREF: _wsplitpath_s+F4↑j
                                        ; _wsplitpath_s+F9↑j
                movzx   eax, word ptr [rdi]
                mov     rbp, rcx
                mov     rsi, rcx
                mov     rbx, rdi
                test    ax, ax
                jz      short loc_1403D75E1

loc_1403D757F:                          ; CODE XREF: _wsplitpath_s+134↓j
                cmp     ax, 2Fh ; '/'
                jz      short loc_1403D7596
                cmp     ax, 5Ch ; '\'
                jz      short loc_1403D7596
                cmp     ax, 2Eh ; '.'
                jnz     short loc_1403D759A
                mov     rsi, rbx
                jmp     short loc_1403D759A
; ---------------------------------------------------------------------------

loc_1403D7596:                          ; CODE XREF: _wsplitpath_s+113↑j
                                        ; _wsplitpath_s+119↑j
                lea     rbp, [rbx+2]

loc_1403D759A:                          ; CODE XREF: _wsplitpath_s+11F↑j
                                        ; _wsplitpath_s+124↑j
                add     rbx, 2
                movzx   eax, word ptr [rbx]
                test    ax, ax
                jnz     short loc_1403D757F
                test    rbp, rbp
                jz      short loc_1403D75E1
                test    r13, r13
                jz      short loc_1403D75DC
                mov     r9, rbp
                sub     r9, rdi
                sar     r9, 1
                cmp     [rsp+68h+arg_20], r9
                jbe     loc_1403D7689
                mov     rdx, [rsp+68h+arg_20]
                mov     r8, rdi
                mov     rcx, r13
                call    wcsncpy_s
                xor     ecx, ecx

loc_1403D75DC:                          ; CODE XREF: _wsplitpath_s+13E↑j
                mov     rdi, rbp
                jmp     short loc_1403D75EB
; ---------------------------------------------------------------------------

loc_1403D75E1:                          ; CODE XREF: _wsplitpath_s+10D↑j
                                        ; _wsplitpath_s+139↑j
                test    r13, r13
                jz      short loc_1403D75EB
                mov     [r13+0], cx

loc_1403D75EB:                          ; CODE XREF: _wsplitpath_s+16F↑j
                                        ; _wsplitpath_s+174↑j
                test    rsi, rsi
                jz      short loc_1403D764F
                cmp     rsi, rdi
                jb      short loc_1403D764F
                test    r15, r15
                jz      short loc_1403D7622
                mov     r9, rsi
                sub     r9, rdi
                sar     r9, 1
                cmp     [rsp+68h+arg_30], r9
                jbe     short loc_1403D7689
                mov     rdx, [rsp+68h+arg_30]
                mov     r8, rdi
                mov     rcx, r15
                call    wcsncpy_s
                xor     ecx, ecx

loc_1403D7622:                          ; CODE XREF: _wsplitpath_s+188↑j
                test    r14, r14
                jz      short loc_1403D7685
                sub     rbx, rsi
                sar     rbx, 1
                cmp     [rsp+68h+arg_40], rbx
                jbe     short loc_1403D7689
                mov     rdx, [rsp+68h+arg_40]
                mov     r9, rbx
                mov     r8, rsi
                mov     rcx, r14
                call    wcsncpy_s
                jmp     short loc_1403D7685
; ---------------------------------------------------------------------------

loc_1403D764F:                          ; CODE XREF: _wsplitpath_s+17E↑j
                                        ; _wsplitpath_s+183↑j
                test    r15, r15
                jz      short loc_1403D767C
                sub     rbx, rdi
                sar     rbx, 1
                cmp     [rsp+68h+arg_30], rbx
                jbe     short loc_1403D7689
                mov     rdx, [rsp+68h+arg_30]
                mov     r9, rbx
                mov     r8, rdi
                mov     rcx, r15
                call    wcsncpy_s
                xor     ecx, ecx

loc_1403D767C:                          ; CODE XREF: _wsplitpath_s+1E2↑j
                test    r14, r14
                jz      short loc_1403D7685
                mov     [r14], cx

loc_1403D7685:                          ; CODE XREF: _wsplitpath_s+1B5↑j
                                        ; _wsplitpath_s+1DD↑j ...
                xor     eax, eax
                jmp     short loc_1403D7708
; ---------------------------------------------------------------------------

loc_1403D7689:                          ; CODE XREF: _wsplitpath_s+151↑j
                                        ; _wsplitpath_s+19B↑j ...
                mov     r9d, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_10]

loc_1403D7696:                          ; CODE XREF: _wsplitpath_s+53↑j
                                        ; _wsplitpath_s+D4↑j
                test    r12, r12
                jz      short loc_1403D76A5
                test    rsi, rsi
                jz      short loc_1403D76A5
                mov     [r12], cx

loc_1403D76A5:                          ; CODE XREF: _wsplitpath_s+229↑j
                                        ; _wsplitpath_s+22E↑j
                test    r13, r13
                jz      short loc_1403D76B9
                cmp     [rsp+68h+arg_20], rcx
                jbe     short loc_1403D76B9
                mov     [r13+0], cx

loc_1403D76B9:                          ; CODE XREF: _wsplitpath_s+238↑j
                                        ; _wsplitpath_s+242↑j
                test    r15, r15
                jz      short loc_1403D76CC
                cmp     [rsp+68h+arg_30], rcx
                jbe     short loc_1403D76CC
                mov     [r15], cx

loc_1403D76CC:                          ; CODE XREF: _wsplitpath_s+24C↑j
                                        ; _wsplitpath_s+256↑j
                test    r14, r14
                jz      short loc_1403D76DF
                cmp     [rsp+68h+arg_40], rcx
                jbe     short loc_1403D76DF
                mov     [r14], cx

loc_1403D76DF:                          ; CODE XREF: _wsplitpath_s+25F↑j
                                        ; _wsplitpath_s+269↑j
                test    rdi, rdi
                jz      short loc_1403D76EF
                test    r9d, r9d
                jnz     short loc_1403D76EF
                lea     eax, [r9+22h]
                jmp     short loc_1403D7708
; ---------------------------------------------------------------------------

loc_1403D76EF:                          ; CODE XREF: _wsplitpath_s+272↑j
                                        ; _wsplitpath_s+277↑j
                mov     [rsp+68h+var_48], rcx
                xor     r9d, r9d
                xor     ecx, ecx
                xor     r8d, r8d
                xor     edx, edx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D7708:                          ; CODE XREF: _wsplitpath_s+217↑j
                                        ; _wsplitpath_s+27D↑j
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
_wsplitpath_s   endp

byte_1403D771E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0DF0↑o
; Exported entry 3026. memcpy_s

; =============== S U B R O U T I N E =======================================


