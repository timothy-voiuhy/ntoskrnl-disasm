__C_specific_handler proc near          ; CODE XREF: __GSHandlerCheck_SEH+65↓p
                                        ; DATA XREF: .rdata:00000001400423DC↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r12, rdx
                mov     r13, rcx
                mov     rdx, [r8+98h]
                mov     r14, r9
                mov     rcx, [r8+0F8h]
                mov     rsi, r8
                call    sub_140345260
                mov     r15, [r14+8]
                mov     rbp, [r14]
                mov     eax, [r13+4]
                sub     rbp, r15
                mov     rbx, [r14+38h]
                mov     edi, [r14+48h]
                test    al, 66h
                jnz     loc_1403D01C8
                mov     [rsp+68h+var_38], r13
                mov     [rsp+68h+var_30], rsi

loc_1403D0133:                          ; CODE XREF: __C_specific_handler+EC↓j
                cmp     edi, [rbx]
                jnb     loc_1403D0286
                mov     esi, edi
                add     rsi, rsi
                mov     eax, [rbx+rsi*8+4]
                cmp     rbp, rax
                jb      short loc_1403D01BA
                mov     eax, [rbx+rsi*8+8]
                cmp     rbp, rax
                jnb     short loc_1403D01BA
                cmp     dword ptr [rbx+rsi*8+10h], 0
                jz      short loc_1403D01BA
                mov     eax, [rbx+rsi*8+0Ch]
                cmp     eax, 1
                jz      short loc_1403D0178
                add     rax, r15
                lea     rcx, [rsp+68h+var_38]
                mov     rdx, r12
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                js      short loc_1403D01C1
                jle     short loc_1403D01BA

loc_1403D0178:                          ; CODE XREF: __C_specific_handler+90↑j
                mov     ecx, [rbx+rsi*8+10h]
                mov     r8d, 1
                add     rcx, r15
                mov     rdx, r12
                call    _NLG_Notify
                mov     rax, [r14+40h]
                mov     r8, r13
                mov     edx, [rbx+rsi*8+10h]
                mov     rcx, r12
                movsxd  r9, dword ptr [r13+0]
                add     rdx, r15
                mov     [rsp+68h+var_40], rax
                mov     rax, [r14+28h]
                mov     [rsp+68h+var_48], rax
                call    RtlUnwindEx
                call    __NLG_Return2

loc_1403D01BA:                          ; CODE XREF: __C_specific_handler+77↑j
                                        ; __C_specific_handler+80↑j ...
                inc     edi
                jmp     loc_1403D0133
; ---------------------------------------------------------------------------

loc_1403D01C1:                          ; CODE XREF: __C_specific_handler+A4↑j
                xor     eax, eax
                jmp     loc_1403D028B
; ---------------------------------------------------------------------------

loc_1403D01C8:                          ; CODE XREF: __C_specific_handler+53↑j
                mov     rsi, [r14+20h]
                mov     r10d, [rbx]
                sub     rsi, r15
                cmp     edi, r10d
                jnb     loc_1403D0286
                mov     edx, r10d

loc_1403D01DE:                          ; CODE XREF: __C_specific_handler+1B0↓j
                mov     r8d, edi
                mov     ecx, edx
                add     r8, r8
                mov     eax, [rbx+r8*8+4]
                cmp     rbp, rax
                jb      loc_1403D027A
                mov     eax, [rbx+r8*8+8]
                cmp     rbp, rax
                jnb     short loc_1403D027A
                mov     eax, [r13+4]
                test    al, 20h
                jz      short loc_1403D024B
                xor     r9d, r9d
                test    edx, edx
                jz      short loc_1403D0243

loc_1403D020D:                          ; CODE XREF: __C_specific_handler+171↓j
                mov     ecx, r9d
                add     rcx, rcx
                mov     eax, [rbx+rcx*8+4]
                cmp     rsi, rax
                jb      short loc_1403D023B
                mov     eax, [rbx+rcx*8+8]
                cmp     rsi, rax
                jnb     short loc_1403D023B
                mov     eax, [rbx+r8*8+10h]
                cmp     [rbx+rcx*8+10h], eax
                jnz     short loc_1403D023B
                mov     eax, [rbx+r8*8+0Ch]
                cmp     [rbx+rcx*8+0Ch], eax
                jz      short loc_1403D0243

loc_1403D023B:                          ; CODE XREF: __C_specific_handler+14A↑j
                                        ; __C_specific_handler+153↑j ...
                inc     r9d
                cmp     r9d, edx
                jb      short loc_1403D020D

loc_1403D0243:                          ; CODE XREF: __C_specific_handler+13B↑j
                                        ; __C_specific_handler+169↑j
                mov     ecx, r10d
                cmp     r9d, r10d
                jnz     short loc_1403D0286

loc_1403D024B:                          ; CODE XREF: __C_specific_handler+134↑j
                mov     eax, [rbx+r8*8+10h]
                test    eax, eax
                jz      short loc_1403D025B
                cmp     rsi, rax
                jz      short loc_1403D0286
                jmp     short loc_1403D027A
; ---------------------------------------------------------------------------

loc_1403D025B:                          ; CODE XREF: __C_specific_handler+182↑j
                lea     eax, [rdi+1]
                mov     rdx, r12
                mov     [r14+48h], eax
                mov     cl, 1
                mov     eax, [rbx+r8*8+0Ch]
                add     rax, r15
                call    rax
                nop     dword ptr [rax]
                mov     r10d, [rbx]
                mov     ecx, r10d

loc_1403D027A:                          ; CODE XREF: __C_specific_handler+11E↑j
                                        ; __C_specific_handler+12C↑j ...
                inc     edi
                mov     edx, ecx
                cmp     edi, ecx
                jb      loc_1403D01DE

loc_1403D0286:                          ; CODE XREF: __C_specific_handler+65↑j
                                        ; __C_specific_handler+105↑j ...
                mov     eax, 1

loc_1403D028B:                          ; CODE XREF: __C_specific_handler+F3↑j
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
__C_specific_handler endp
