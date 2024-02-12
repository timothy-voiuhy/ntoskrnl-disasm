RtlFindClearBitsAndSetEx proc near      ; CODE XREF: sub_1402EBF54+17C↓p
                                        ; sub_140362780+58↓p ...

var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014045C2AE SIZE 00000024 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 38h
                mov     r15, [rcx]
                mov     r13, r8
                mov     r14, [rcx+8]
                cmp     r8, r15
                mov     r11, rdx
                mov     r12, rcx
                sbb     rbx, rbx
                or      rdi, 0FFFFFFFFFFFFFFFFh
                and     rbx, r8
                lea     r10, [r15-1]
                test    rdx, rdx
                jz      loc_14045C2AE

loc_1402D336B:                          ; CODE XREF: RtlFindClearBitsAndSetEx+19E↓j
                and     [rsp+78h+arg_0], 0
                mov     rax, r10
                sub     rax, rbx
                mov     edx, 40h ; '@'
                inc     rax
                cmp     rax, r11
                jb      loc_1402D34B2
                mov     rbp, r10
                lea     r9d, [rdx-3Fh]
                sub     rbp, r11
                mov     cl, bl
                inc     rbp
                and     cl, 3Fh
                shl     r9, cl
                mov     rax, rbp
                shr     rax, 6
                dec     r9
                lea     rsi, [r14+rax*8]
                mov     rax, rbx
                shr     rax, 6
                lea     r8, [r14+rax*8]
                or      r9, [r8]
                cmp     r11, 7Fh
                ja      loc_1402D351B
                cmp     r11, rdx
                jnb     loc_1402D360E
                cmp     r11, 1
                ja      short loc_1402D3440

loc_1402D33D4:                          ; CODE XREF: RtlFindClearBitsAndSetEx+B9↓j
                cmp     r9, rdi
                jnz     short loc_1402D33EB
                add     r8, 8
                cmp     r8, rsi
                ja      loc_1402D34B2
                mov     r9, [r8]
                jmp     short loc_1402D33D4
; ---------------------------------------------------------------------------

loc_1402D33EB:                          ; CODE XREF: RtlFindClearBitsAndSetEx+A7↑j
                not     r9
                mov     rdx, r8
                sub     rdx, r14
                sar     rdx, 3
                bsf     rax, r9
                shl     rdx, 6
                add     rdx, rax

loc_1402D3403:                          ; CODE XREF: RtlFindClearBitsAndSetEx+179↓j
                cmp     rdx, rbp
                ja      loc_1402D34B2

loc_1402D340C:                          ; CODE XREF: RtlFindClearBitsAndSetEx+22F↓j
                                        ; RtlFindClearBitsAndSetEx+24F↓j ...
                cmp     rdx, rdi
                jz      loc_1402D34B5

loc_1402D3415:                          ; CODE XREF: RtlFindClearBitsAndSetEx+188↓j
                mov     rbx, rdx

loc_1402D3418:                          ; CODE XREF: RtlFindClearBitsAndSetEx+188F82↓j
                cmp     rbx, rdi
                jz      short loc_1402D342B
                mov     r8, r11
                mov     rdx, rbx
                mov     rcx, r12
                call    RtlSetBitsEx

loc_1402D342B:                          ; CODE XREF: RtlFindClearBitsAndSetEx+EB↑j
                mov     rax, rbx
                add     rsp, 38h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402D3440:                          ; CODE XREF: RtlFindClearBitsAndSetEx+A2↑j
                xor     edx, edx
                shr     r10, 6
                lea     rdi, [r14+r10*8]

loc_1402D344A:                          ; CODE XREF: RtlFindClearBitsAndSetEx+1C5↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      loc_1402D34FA

loc_1402D3454:                          ; CODE XREF: RtlFindClearBitsAndSetEx+1DE↓j
                and     [rsp+78h+var_50], 0
                mov     ecx, 40h ; '@'
                bsf     rax, r9
                cmovz   eax, ecx
                lea     ecx, [rdx+rax]
                cmp     rcx, r11
                jnb     loc_1402D3513
                mov     rdx, r9
                mov     r10d, r11d
                not     rdx

loc_1402D347A:                          ; CODE XREF: RtlFindClearBitsAndSetEx+161↓j
                mov     rax, rdx
                mov     ecx, r10d
                shr     ecx, 1
                shr     rax, cl
                and     rdx, rax
                jz      short loc_1402D34D3
                sub     r10d, ecx
                cmp     r10d, 1
                ja      short loc_1402D347A
                bsf     rdx, rdx

loc_1402D3497:                          ; CODE XREF: RtlFindClearBitsAndSetEx+1E6↓j
                sub     r8, r14
                sar     r8, 3
                shl     r8, 6
                add     rdx, r8
                or      rdi, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1402D3403
; ---------------------------------------------------------------------------

loc_1402D34AE:                          ; CODE XREF: RtlFindClearBitsAndSetEx+1A6↓j
                                        ; RtlFindClearBitsAndSetEx+1D1↓j
                or      rdi, 0FFFFFFFFFFFFFFFFh

loc_1402D34B2:                          ; CODE XREF: RtlFindClearBitsAndSetEx+54↑j
                                        ; RtlFindClearBitsAndSetEx+B0↑j ...
                mov     rdx, rdi

loc_1402D34B5:                          ; CODE XREF: RtlFindClearBitsAndSetEx+DF↑j
                test    rbx, rbx
                jz      loc_1402D3415
                lea     r10, [r11+r13]
                cmp     r10, r15
                cmova   r10, r15
                dec     r10
                xor     ebx, ebx
                jmp     loc_1402D336B
; ---------------------------------------------------------------------------

loc_1402D34D3:                          ; CODE XREF: RtlFindClearBitsAndSetEx+158↑j
                cmp     r8, rdi
                jz      short loc_1402D34AE
                and     [rsp+78h+var_4C], 0
                bsr     rax, r9
                jz      loc_14045C2C8
                mov     edx, 3Fh ; '?'
                sub     edx, eax

loc_1402D34EE:                          ; CODE XREF: RtlFindClearBitsAndSetEx+188F9D↓j
                add     r8, 8
                mov     r9, [r8]
                jmp     loc_1402D344A
; ---------------------------------------------------------------------------

loc_1402D34FA:                          ; CODE XREF: RtlFindClearBitsAndSetEx+11E↑j
                                        ; RtlFindClearBitsAndSetEx+1DA↓j
                add     r8, 8
                cmp     r8, rsi
                ja      short loc_1402D34AE
                mov     r9, [r8]
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1402D34FA
                xor     edx, edx
                jmp     loc_1402D3454
; ---------------------------------------------------------------------------

loc_1402D3513:                          ; CODE XREF: RtlFindClearBitsAndSetEx+13B↑j
                neg     rdx
                jmp     loc_1402D3497
; ---------------------------------------------------------------------------

loc_1402D351B:                          ; CODE XREF: RtlFindClearBitsAndSetEx+8F↑j
                test    bpl, 3Fh
                lea     r10, [rsi+8]
                cmovz   r10, rsi
                test    r9, r9
                jz      loc_1402D3696
                add     r8, 8
                cmp     qword ptr [r8], 0
                jnz     short loc_1402D3585
                and     [rsp+78h+arg_8], 0
                bsr     rax, r9
                jz      loc_14045C2B7
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax
                jmp     short loc_1402D35B5
; ---------------------------------------------------------------------------

loc_1402D3555:                          ; CODE XREF: RtlFindClearBitsAndSetEx+2B7↓j
                mov     r9d, r11d
                sub     r9d, ecx
                and     r9d, 3Fh
                jz      loc_1402D340C
                and     [rsp+78h+arg_18], 0
                mov     rax, [r8]
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                cmp     ecx, r9d
                jnb     loc_1402D340C

loc_1402D3585:                          ; CODE XREF: RtlFindClearBitsAndSetEx+208↑j
                                        ; RtlFindClearBitsAndSetEx+266↓j ...
                cmp     r8, r10
                ja      loc_1402D34B2
                add     r8, 8
                cmp     qword ptr [r8], 0
                jnz     short loc_1402D3585
                and     [rsp+78h+arg_10], 0
                mov     rax, [r8-8]
                bsr     rdx, rax
                jz      loc_14045C2BE
                mov     ecx, 3Fh ; '?'
                sub     ecx, edx

loc_1402D35B5:                          ; CODE XREF: RtlFindClearBitsAndSetEx+223↑j
                                        ; RtlFindClearBitsAndSetEx+368↓j ...
                mov     rdx, r8
                mov     r9d, ecx
                sub     rdx, r14
                sar     rdx, 3
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, rbp
                ja      loc_1402D34B2
                mov     rax, r11
                sub     rax, r9
                shr     rax, 6
                lea     r9, [r8+rax*8]

loc_1402D35E0:                          ; CODE XREF: RtlFindClearBitsAndSetEx+2C1↓j
                add     r8, 8
                cmp     r8, r9
                jz      loc_1402D3555
                cmp     qword ptr [r8], 0
                jz      short loc_1402D35E0
                jmp     short loc_1402D3585
; ---------------------------------------------------------------------------

loc_1402D35F5:                          ; CODE XREF: RtlFindClearBitsAndSetEx+346↓j
                                        ; RtlFindClearBitsAndSetEx+361↓j
                and     [rsp+78h+var_54], 0
                bsf     rax, r9
                cmovz   eax, r10d
                cmp     rax, rcx
                jnb     loc_1402D340C

loc_1402D360B:                          ; CODE XREF: RtlFindClearBitsAndSetEx+34F↓j
                mov     rdx, r10

loc_1402D360E:                          ; CODE XREF: RtlFindClearBitsAndSetEx+98↑j
                                        ; RtlFindClearBitsAndSetEx+2F3↓j
                test    r9, r9
                jns     short loc_1402D3625
                add     r8, 8
                cmp     r8, rsi
                ja      loc_1402D34B2
                mov     r9, [r8]
                jmp     short loc_1402D360E
; ---------------------------------------------------------------------------

loc_1402D3625:                          ; CODE XREF: RtlFindClearBitsAndSetEx+2E1↑j
                and     [rsp+78h+var_58], 0
                bsr     rcx, r9
                jz      short loc_1402D369D
                mov     eax, 3Fh ; '?'
                sub     eax, ecx

loc_1402D3637:                          ; CODE XREF: RtlFindClearBitsAndSetEx+36F↓j
                mov     rdx, r8
                mov     r9d, eax
                sub     rdx, r14
                sar     rdx, 3
                inc     rdx
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, rbp
                ja      loc_1402D34B2
                mov     rcx, r11
                sub     rcx, r9
                jz      loc_1402D340C
                add     r8, 8
                mov     r10d, 40h ; '@'
                mov     rax, [r8]
                mov     r9, rax
                cmp     rcx, r10
                jb      loc_1402D35F5
                test    rax, rax
                jnz     short loc_1402D360B
                sub     rcx, r10
                jz      loc_1402D340C
                add     r8, 8
                mov     r9, [r8]
                jmp     loc_1402D35F5
; ---------------------------------------------------------------------------

loc_1402D3696:                          ; CODE XREF: RtlFindClearBitsAndSetEx+1FA↑j
                xor     ecx, ecx
                jmp     loc_1402D35B5
; ---------------------------------------------------------------------------

loc_1402D369D:                          ; CODE XREF: RtlFindClearBitsAndSetEx+2FE↑j
                mov     eax, edx
                jmp     short loc_1402D3637
RtlFindClearBitsAndSetEx endp
