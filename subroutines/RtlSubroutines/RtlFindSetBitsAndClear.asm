RtlFindSetBitsAndClear proc near        ; DATA XREF: .pdata:00000001400F7C38↑o

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
                jnz     short loc_140587A11
                and     ebx, 0FFFFFFF8h
                jmp     loc_140587D7A
; ---------------------------------------------------------------------------

loc_140587A11:                          ; CODE XREF: RtlFindSetBitsAndClear+37↑j
                mov     r10, [rcx+8]
                mov     r13, r10
                mov     [rsp+88h+var_50], r10
                and     r13d, 4
                mov     eax, r13d
                neg     rax
                sbb     r12d, r12d
                and     r12d, 20h

loc_140587A2E:                          ; CODE XREF: RtlFindSetBitsAndClear+1D9↓j
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
                jnb     short loc_140587A64
                mov     r8d, edi
                jmp     loc_140587B8C
; ---------------------------------------------------------------------------

loc_140587A64:                          ; CODE XREF: RtlFindSetBitsAndClear+8A↑j
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
                mov     rax, [rdx]
                not     rax
                or      r9, rax
                cmp     r11d, 7Fh
                jbe     loc_140587BAE
                test    bpl, 3Fh
                lea     r10, [rsi+8]
                cmovz   r10, rsi
                test    r9, r9
                jnz     short loc_140587AB9
                xor     ecx, ecx
                jmp     short loc_140587B16
; ---------------------------------------------------------------------------

loc_140587AB9:                          ; CODE XREF: RtlFindSetBitsAndClear+E3↑j
                add     rdx, 8
                mov     rax, [rdx]
                not     rax
                test    rax, rax
                jnz     short loc_140587AE5
                and     [rsp+88h+arg_18], eax
                bsr     rax, r9
                jnz     short loc_140587ADC

loc_140587AD5:                          ; CODE XREF: RtlFindSetBitsAndClear+13C↓j
                mov     ecx, 40h ; '@'
                jmp     short loc_140587B16
; ---------------------------------------------------------------------------

loc_140587ADC:                          ; CODE XREF: RtlFindSetBitsAndClear+103↑j
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax
                jmp     short loc_140587B16
; ---------------------------------------------------------------------------

loc_140587AE5:                          ; CODE XREF: RtlFindSetBitsAndClear+F6↑j
                                        ; RtlFindSetBitsAndClear+12B↓j ...
                cmp     rdx, r10
                ja      loc_140587D0E
                add     rdx, 8
                mov     rax, [rdx]
                not     rax
                test    rax, rax
                jnz     short loc_140587AE5
                and     [rsp+88h+var_68], eax
                mov     rax, [rdx-8]
                not     rax
                bsr     r8, rax
                jz      short loc_140587AD5
                mov     ecx, 3Fh ; '?'
                sub     ecx, r8d

loc_140587B16:                          ; CODE XREF: RtlFindSetBitsAndClear+E7↑j
                                        ; RtlFindSetBitsAndClear+10A↑j ...
                mov     r8, rdx
                sub     r8, r14
                sar     r8, 3
                shl     r8d, 6
                sub     r8d, ecx
                cmp     r8d, ebp
                ja      loc_140587D0E
                mov     eax, r11d
                sub     eax, ecx
                mov     r9d, eax
                shr     rax, 6
                lea     rcx, [rdx+rax*8]
                jmp     short loc_140587B4D
; ---------------------------------------------------------------------------

loc_140587B42:                          ; CODE XREF: RtlFindSetBitsAndClear+184↓j
                mov     rax, [rdx]
                not     rax
                test    rax, rax
                jnz     short loc_140587AE5

loc_140587B4D:                          ; CODE XREF: RtlFindSetBitsAndClear+170↑j
                add     rdx, 8
                cmp     rdx, rcx
                jnz     short loc_140587B42
                and     r9d, 3Fh
                jz      short loc_140587B7C
                and     [rsp+88h+var_64], 0
                mov     rax, [rdx]
                not     rax
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                cmp     ecx, r9d
                jb      loc_140587AE5

loc_140587B7C:                          ; CODE XREF: RtlFindSetBitsAndClear+18A↑j
                                        ; RtlFindSetBitsAndClear+2C0↓j ...
                cmp     r8d, edi
                jnz     loc_140587D65

loc_140587B85:                          ; CODE XREF: RtlFindSetBitsAndClear+341↓j
                mov     esi, [rsp+88h+arg_10]

loc_140587B8C:                          ; CODE XREF: RtlFindSetBitsAndClear+8F↑j
                test    ebx, ebx
                jz      loc_140587D65
                mov     r10, [rsp+88h+var_50]
                lea     r9d, [r11+rsi]
                cmp     r9d, r15d
                cmova   r9d, r15d
                add     r9d, edi
                xor     ebx, ebx
                jmp     loc_140587A2E
; ---------------------------------------------------------------------------

loc_140587BAE:                          ; CODE XREF: RtlFindSetBitsAndClear+CE↑j
                mov     r10d, 40h ; '@'
                cmp     r11d, r10d
                jnb     loc_140587C4F
                cmp     r11d, 1
                jbe     loc_140587D45
                xor     ecx, ecx
                mov     eax, r8d
                shr     rax, 6
                lea     rdi, [r14+rax*8]

loc_140587BD4:                          ; CODE XREF: RtlFindSetBitsAndClear+336↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140587BF5

loc_140587BDA:                          ; CODE XREF: RtlFindSetBitsAndClear+221↓j
                add     rdx, 8
                cmp     rdx, rsi
                ja      loc_140587D0B
                mov     r9, [rdx]
                not     r9
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140587BDA
                xor     ecx, ecx

loc_140587BF5:                          ; CODE XREF: RtlFindSetBitsAndClear+208↑j
                and     [rsp+88h+var_58], 0
                bsf     rax, r9
                cmovz   eax, r10d
                add     eax, ecx
                cmp     eax, r11d
                jnb     loc_140587D16
                mov     r8, r9
                mov     r10d, r11d
                not     r8

loc_140587C16:                          ; CODE XREF: RtlFindSetBitsAndClear+261↓j
                mov     rax, r8
                mov     ecx, r10d
                shr     ecx, 1
                shr     rax, cl
                and     r8, rax
                jz      loc_140587CDA
                sub     r10d, ecx
                cmp     r10d, 1
                ja      short loc_140587C16
                bsf     r8, r8
                jmp     loc_140587D1B
; ---------------------------------------------------------------------------

loc_140587C3C:                          ; CODE XREF: RtlFindSetBitsAndClear+282↓j
                add     rdx, 8
                cmp     rdx, rsi
                ja      loc_140587D0E
                mov     r9, [rdx]
                not     r9

loc_140587C4F:                          ; CODE XREF: RtlFindSetBitsAndClear+1E7↑j
                                        ; RtlFindSetBitsAndClear+2DB↓j ...
                test    r9, r9
                js      short loc_140587C3C
                and     [rsp+88h+var_60], 0
                bsr     rax, r9
                jnz     short loc_140587C64
                mov     r9d, r10d
                jmp     short loc_140587C6D
; ---------------------------------------------------------------------------

loc_140587C64:                          ; CODE XREF: RtlFindSetBitsAndClear+28D↑j
                mov     r9d, 3Fh ; '?'
                sub     r9d, eax

loc_140587C6D:                          ; CODE XREF: RtlFindSetBitsAndClear+292↑j
                mov     rax, rdx
                sub     rax, r14
                sar     rax, 3
                inc     eax
                shl     eax, 6
                sub     eax, r9d
                mov     r8d, eax
                cmp     eax, ebp
                ja      loc_140587D0E
                mov     ecx, r11d
                sub     ecx, r9d
                jz      loc_140587B7C
                add     rdx, 8
                mov     rax, [rdx]
                not     rax
                mov     r9, rax
                cmp     ecx, r10d
                jb      short loc_140587CC0
                test    rax, rax
                jnz     short loc_140587C4F
                add     ecx, 0FFFFFFC0h
                jz      loc_140587B7C
                add     rdx, 8
                mov     r9, [rdx]
                not     r9

loc_140587CC0:                          ; CODE XREF: RtlFindSetBitsAndClear+2D6↑j
                and     [rsp+88h+var_5C], 0
                bsf     rax, r9
                cmovz   eax, r10d
                cmp     eax, ecx
                jb      loc_140587C4F
                jmp     loc_140587B7C
; ---------------------------------------------------------------------------

loc_140587CDA:                          ; CODE XREF: RtlFindSetBitsAndClear+254↑j
                cmp     rdx, rdi
                jz      short loc_140587D0B
                and     [rsp+88h+var_54], 0
                mov     r10d, 40h ; '@'
                bsr     rax, r9
                jnz     short loc_140587CF5
                mov     ecx, r10d
                jmp     short loc_140587CFC
; ---------------------------------------------------------------------------

loc_140587CF5:                          ; CODE XREF: RtlFindSetBitsAndClear+31E↑j
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax

loc_140587CFC:                          ; CODE XREF: RtlFindSetBitsAndClear+323↑j
                add     rdx, 8
                mov     r9, [rdx]
                not     r9
                jmp     loc_140587BD4
; ---------------------------------------------------------------------------

loc_140587D0B:                          ; CODE XREF: RtlFindSetBitsAndClear+211↑j
                                        ; RtlFindSetBitsAndClear+30D↑j
                or      edi, 0FFFFFFFFh

loc_140587D0E:                          ; CODE XREF: RtlFindSetBitsAndClear+118↑j
                                        ; RtlFindSetBitsAndClear+15A↑j ...
                mov     r8d, edi
                jmp     loc_140587B85
; ---------------------------------------------------------------------------

loc_140587D16:                          ; CODE XREF: RtlFindSetBitsAndClear+237↑j
                neg     ecx
                mov     r8d, ecx

loc_140587D1B:                          ; CODE XREF: RtlFindSetBitsAndClear+267↑j
                sub     rdx, r14
                or      edi, 0FFFFFFFFh
                sar     rdx, 3
                shl     edx, 6
                add     r8d, edx
                cmp     r8d, ebp

loc_140587D2E:                          ; CODE XREF: RtlFindSetBitsAndClear+393↓j
                jbe     loc_140587B7C
                jmp     short loc_140587D0E
; ---------------------------------------------------------------------------

loc_140587D36:                          ; CODE XREF: RtlFindSetBitsAndClear+379↓j
                add     rdx, 8
                cmp     rdx, rsi
                ja      short loc_140587D0E
                mov     r9, [rdx]
                not     r9

loc_140587D45:                          ; CODE XREF: RtlFindSetBitsAndClear+1F1↑j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140587D36
                sub     rdx, r14
                not     r9
                sar     rdx, 3
                bsf     rax, r9
                shl     edx, 6
                add     edx, eax
                mov     r8d, edx
                cmp     edx, ebp
                jmp     short loc_140587D2E
; ---------------------------------------------------------------------------

loc_140587D65:                          ; CODE XREF: RtlFindSetBitsAndClear+1AF↑j
                                        ; RtlFindSetBitsAndClear+1BE↑j
                mov     r13, [rsp+88h+arg_0]
                mov     ebx, r8d
                sub     ebx, r12d
                cmp     r8d, edi
                cmovz   ebx, r8d

loc_140587D7A:                          ; CODE XREF: RtlFindSetBitsAndClear+3C↑j
                cmp     ebx, edi
                jz      short loc_140587D8B
                mov     r8d, r11d
                mov     edx, ebx
                mov     rcx, r13
                call    RtlClearBits

loc_140587D8B:                          ; CODE XREF: RtlFindSetBitsAndClear+3AC↑j
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
                db 0CCh
RtlFindSetBitsAndClear endp
