RtlFindClearBitsAndSet proc near        ; CODE XREF: sub_140397CD0+4A↓p
                                        ; sub_140397CD0+D4↓p ...

var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014041F502 SIZE 00000012 BYTES

                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     r15d, [rcx]
                mov     esi, r8d
                cmp     r8d, r15d
                mov     r11d, edx
                mov     r13, rcx
                sbb     ebx, ebx
                or      edi, 0FFFFFFFFh
                and     ebx, r8d
                lea     r9d, [r15-1]
                test    edx, edx
                jz      loc_14041F502
                mov     r10, [rcx+8]
                mov     r13, r10
                mov     [rsp+88h+var_50], r10
                and     r13d, 4
                mov     eax, r13d
                neg     rax
                sbb     r12d, r12d
                and     r12d, 20h

loc_140202FAA:                          ; CODE XREF: RtlFindClearBitsAndSet+172↓j
                and     [rsp+88h+arg_8], 0
                lea     r8d, [r12+r9]
                mov     rax, r13
                lea     edx, [r12+rbx]
                neg     rax
                mov     r14, r10
                mov     eax, r8d
                sbb     rcx, rcx
                sub     eax, edx
                and     ecx, 4
                inc     eax
                sub     r14, rcx
                cmp     eax, r11d
                jb      loc_1402032C7
                mov     ecx, edx
                mov     ebp, r8d
                sub     ebp, r11d
                and     cl, 3Fh
                inc     ebp
                mov     r9d, 1
                shl     r9, cl
                dec     r9
                mov     eax, ebp
                shr     rax, 6
                lea     rsi, [r14+rax*8]
                mov     eax, edx
                shr     rax, 6
                lea     rdx, [r14+rax*8]
                or      r9, [rdx]
                cmp     r11d, 7Fh
                ja      loc_140203149
                mov     r10d, 40h ; '@'
                cmp     r11d, r10d
                jnb     loc_1402030D3
                cmp     r11d, 1
                ja      loc_14020321A

loc_14020302F:                          ; CODE XREF: RtlFindClearBitsAndSet+F1↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140203043
                add     rdx, 8
                cmp     rdx, rsi
                ja      short loc_14020309F
                mov     r9, [rdx]
                jmp     short loc_14020302F
; ---------------------------------------------------------------------------

loc_140203043:                          ; CODE XREF: RtlFindClearBitsAndSet+E3↑j
                sub     rdx, r14
                not     r9
                sar     rdx, 3
                bsf     rax, r9
                shl     edx, 6
                add     edx, eax
                mov     r8d, edx
                cmp     edx, ebp

loc_14020305B:                          ; CODE XREF: RtlFindClearBitsAndSet+346↓j
                ja      short loc_14020309F

loc_14020305D:                          ; CODE XREF: RtlFindClearBitsAndSet+1B9↓j
                                        ; RtlFindClearBitsAndSet+1D6↓j ...
                cmp     r8d, edi
                jz      short loc_1402030A2

loc_140203062:                          ; CODE XREF: RtlFindClearBitsAndSet+15B↓j
                mov     r13, [rsp+88h+arg_0]
                mov     ebx, r8d
                sub     ebx, r12d
                cmp     r8d, edi
                cmovz   ebx, r8d

loc_140203077:                          ; CODE XREF: RtlFindClearBitsAndSet+21C5B5↓j
                cmp     ebx, edi
                jz      short loc_140203088
                mov     r8d, r11d
                mov     edx, ebx
                mov     rcx, r13
                call    RtlSetBits

loc_140203088:                          ; CODE XREF: RtlFindClearBitsAndSet+129↑j
                mov     eax, ebx
                add     rsp, 48h
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
                align 4

loc_14020309C:                          ; CODE XREF: RtlFindClearBitsAndSet+2E4↓j
                                        ; RtlFindClearBitsAndSet+34E↓j
                or      edi, 0FFFFFFFFh

loc_14020309F:                          ; CODE XREF: RtlFindClearBitsAndSet+EC↑j
                                        ; RtlFindClearBitsAndSet:loc_14020305B↑j ...
                mov     r8d, edi

loc_1402030A2:                          ; CODE XREF: RtlFindClearBitsAndSet+110↑j
                mov     esi, [rsp+88h+arg_10]

loc_1402030A9:                          ; CODE XREF: RtlFindClearBitsAndSet+37A↓j
                test    ebx, ebx
                jz      short loc_140203062
                mov     r10, [rsp+88h+var_50]
                lea     r9d, [r11+rsi]
                cmp     r9d, r15d
                cmova   r9d, r15d
                add     r9d, edi
                xor     ebx, ebx
                jmp     loc_140202FAA
; ---------------------------------------------------------------------------

loc_1402030C7:                          ; CODE XREF: RtlFindClearBitsAndSet+186↓j
                add     rdx, 8
                cmp     rdx, rsi
                ja      short loc_14020309F
                mov     r9, [rdx]

loc_1402030D3:                          ; CODE XREF: RtlFindClearBitsAndSet+CF↑j
                                        ; RtlFindClearBitsAndSet+1D1↓j ...
                test    r9, r9
                js      short loc_1402030C7
                and     [rsp+88h+var_60], 0
                bsr     rax, r9
                jnz     loc_1402032CF
                mov     r9d, r10d

loc_1402030EA:                          ; CODE XREF: RtlFindClearBitsAndSet+388↓j
                mov     rax, rdx
                sub     rax, r14
                sar     rax, 3
                inc     eax
                shl     eax, 6
                sub     eax, r9d
                mov     r8d, eax
                cmp     eax, ebp
                ja      short loc_14020309F
                mov     ecx, r11d
                sub     ecx, r9d
                jz      loc_14020305D
                add     rdx, 8
                mov     rax, [rdx]
                mov     r9, rax
                cmp     ecx, r10d
                jb      short loc_140203133
                test    rax, rax
                jnz     short loc_1402030D3
                add     ecx, 0FFFFFFC0h
                jz      loc_14020305D
                add     rdx, 8
                mov     r9, [rdx]

loc_140203133:                          ; CODE XREF: RtlFindClearBitsAndSet+1CC↑j
                and     [rsp+88h+var_5C], 0
                bsf     rax, r9
                cmovz   eax, r10d
                cmp     eax, ecx
                jb      short loc_1402030D3
                jmp     loc_14020305D
; ---------------------------------------------------------------------------

loc_140203149:                          ; CODE XREF: RtlFindClearBitsAndSet+C0↑j
                test    bpl, 3Fh
                lea     r10, [rsi+8]
                cmovz   r10, rsi
                test    r9, r9
                jnz     loc_1402031F2
                xor     ecx, ecx

loc_140203160:                          ; CODE XREF: RtlFindClearBitsAndSet+277↓j
                                        ; RtlFindClearBitsAndSet+2C5↓j ...
                mov     r8, rdx
                sub     r8, r14
                sar     r8, 3
                shl     r8d, 6
                sub     r8d, ecx
                cmp     r8d, ebp
                ja      loc_14020309F
                mov     eax, r11d
                sub     eax, ecx
                mov     r9d, eax
                shr     rax, 6
                lea     rcx, [rdx+rax*8]

loc_14020318A:                          ; CODE XREF: RtlFindClearBitsAndSet+247↓j
                add     rdx, 8
                cmp     rdx, rcx
                jz      short loc_1402031C9
                cmp     qword ptr [rdx], 0
                jz      short loc_14020318A

loc_140203199:                          ; CODE XREF: RtlFindClearBitsAndSet+25A↓j
                                        ; RtlFindClearBitsAndSet+2A0↓j ...
                cmp     rdx, r10
                ja      loc_14020309F
                add     rdx, 8
                cmp     qword ptr [rdx], 0
                jnz     short loc_140203199
                and     [rsp+88h+var_68], 0
                mov     rax, [rdx-8]
                bsr     r8, rax
                jz      loc_14041F50A
                mov     ecx, 3Fh ; '?'
                sub     ecx, r8d
                jmp     short loc_140203160
; ---------------------------------------------------------------------------

loc_1402031C9:                          ; CODE XREF: RtlFindClearBitsAndSet+241↑j
                and     r9d, 3Fh
                jz      loc_14020305D
                and     [rsp+88h+var_64], 0
                mov     rax, [rdx]
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                cmp     ecx, r9d
                jnb     loc_14020305D
                jmp     short loc_140203199
; ---------------------------------------------------------------------------

loc_1402031F2:                          ; CODE XREF: RtlFindClearBitsAndSet+208↑j
                add     rdx, 8
                cmp     qword ptr [rdx], 0
                jnz     short loc_140203199
                and     [rsp+88h+arg_18], 0
                bsr     rax, r9
                jz      loc_14041F50A
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax
                jmp     loc_140203160
; ---------------------------------------------------------------------------

loc_14020321A:                          ; CODE XREF: RtlFindClearBitsAndSet+D9↑j
                xor     ecx, ecx
                mov     eax, r8d
                shr     rax, 6
                lea     rdi, [r14+rax*8]

loc_140203227:                          ; CODE XREF: RtlFindClearBitsAndSet+372↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140203245

loc_14020322D:                          ; CODE XREF: RtlFindClearBitsAndSet+2F1↓j
                add     rdx, 8
                cmp     rdx, rsi
                ja      loc_14020309C
                mov     r9, [rdx]
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14020322D
                xor     ecx, ecx

loc_140203245:                          ; CODE XREF: RtlFindClearBitsAndSet+2DB↑j
                and     [rsp+88h+var_58], 0
                bsf     rax, r9
                cmovz   eax, r10d
                add     eax, ecx
                cmp     eax, r11d
                jnb     loc_1402032DD
                mov     r8, r9
                mov     r10d, r11d
                not     r8

loc_140203266:                          ; CODE XREF: RtlFindClearBitsAndSet+32D↓j
                mov     rax, r8
                mov     ecx, r10d
                shr     ecx, 1
                shr     rax, cl
                and     r8, rax
                jz      short loc_14020329B
                sub     r10d, ecx
                cmp     r10d, 1
                ja      short loc_140203266
                bsf     r8, r8

loc_140203283:                          ; CODE XREF: RtlFindClearBitsAndSet+392↓j
                sub     rdx, r14
                or      edi, 0FFFFFFFFh
                sar     rdx, 3
                shl     edx, 6
                add     r8d, edx
                cmp     r8d, ebp
                jmp     loc_14020305B
; ---------------------------------------------------------------------------

loc_14020329B:                          ; CODE XREF: RtlFindClearBitsAndSet+324↑j
                cmp     rdx, rdi
                jz      loc_14020309C
                and     [rsp+88h+var_54], 0
                mov     r10d, 40h ; '@'
                bsr     rax, r9
                jz      short loc_1402032E4
                lea     ecx, [r10-1]
                sub     ecx, eax

loc_1402032BB:                          ; CODE XREF: RtlFindClearBitsAndSet+397↓j
                add     rdx, 8
                mov     r9, [rdx]
                jmp     loc_140203227
; ---------------------------------------------------------------------------

loc_1402032C7:                          ; CODE XREF: RtlFindClearBitsAndSet+86↑j
                mov     r8d, edi
                jmp     loc_1402030A9
; ---------------------------------------------------------------------------

loc_1402032CF:                          ; CODE XREF: RtlFindClearBitsAndSet+191↑j
                mov     r9d, 3Fh ; '?'
                sub     r9d, eax
                jmp     loc_1402030EA
; ---------------------------------------------------------------------------

loc_1402032DD:                          ; CODE XREF: RtlFindClearBitsAndSet+307↑j
                neg     ecx
                mov     r8d, ecx
                jmp     short loc_140203283
; ---------------------------------------------------------------------------

loc_1402032E4:                          ; CODE XREF: RtlFindClearBitsAndSet+363↑j
                mov     ecx, r10d
                jmp     short loc_1402032BB
RtlFindClearBitsAndSet endp
