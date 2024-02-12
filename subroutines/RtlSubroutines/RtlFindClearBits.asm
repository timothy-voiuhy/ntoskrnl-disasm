RtlFindClearBits proc near              ; DATA XREF: .rdata:0000000140049090↑o
                                        ; .rdata:00000001400490A4↑o ...

var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140422A1C SIZE 0000002C BYTES

                push    rbp
                push    rsi
                sub     rsp, 58h
                mov     esi, [rcx]
                mov     ebp, r8d
                xor     r8d, r8d
                mov     r11d, ebp
                cmp     ebp, esi
                mov     r10d, edx
                cmovnb  r11d, r8d
                lea     r9d, [rsi-1]
                test    edx, edx
                jz      loc_140422A1C

loc_14020BF07:                          ; DATA XREF: .rdata:0000000140049090↑o
                                        ; .rdata:00000001400490A4↑o ...
                mov     [rsp+68h+var_18], rbx
                mov     [rsp+68h+var_20], rdi
                mov     [rsp+68h+var_28], r12
                mov     [rsp+68h+var_30], r13
                mov     r13, [rcx+8]
                mov     rdi, r13
                mov     [rsp+68h+var_38], r14
                and     edi, 4
                mov     [rsp+68h+var_40], r15
                mov     eax, edi
                mov     [rsp+68h+arg_10], 40h ; '@'
                neg     rax
                sbb     ebx, ebx
                and     ebx, 20h

loc_14020BF44:                          ; CODE XREF: RtlFindClearBits+13A↓j
                mov     rax, rdi
                mov     [rsp+68h+arg_8], r8d
                neg     rax
                lea     r15d, [rbx+r9]
                lea     edx, [rbx+r11]
                mov     eax, r15d
                sbb     rcx, rcx
                mov     r14, r13
                and     ecx, 4
                sub     eax, edx
                sub     r14, rcx
                inc     eax
                cmp     eax, r10d
                jb      loc_14020C29A
                mov     r12d, r15d
                mov     ecx, edx
                sub     r12d, r10d
                and     cl, 3Fh
                inc     r12d
                mov     r8d, 1
                shl     r8, cl
                dec     r8
                mov     eax, r12d
                shr     rax, 6
                lea     r9, [r14+rax*8]
                mov     eax, edx
                shr     rax, 6
                or      r8, [r14+rax*8]
                lea     rax, [r14+rax*8]
                cmp     r10d, 7Fh
                ja      loc_14020C12A
                cmp     r10d, 40h ; '@'
                jnb     loc_14020C220
                cmp     r10d, 1
                ja      loc_14020C070
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14020BFE0

loc_14020BFCA:                          ; CODE XREF: RtlFindClearBits+FE↓j
                add     rax, 8
                cmp     rax, r9
                ja      loc_14020C069
                mov     r8, [rax]
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14020BFCA

loc_14020BFE0:                          ; CODE XREF: RtlFindClearBits+E8↑j
                sub     rax, r14
                not     r8
                sar     rax, 3
                bsf     rcx, r8
                shl     eax, 6
                add     eax, ecx
                mov     edx, eax
                cmp     eax, r12d
                jbe     short loc_14020C034
                mov     edx, 0FFFFFFFFh

loc_14020BFFF:                          ; CODE XREF: RtlFindClearBits+157↓j
                                        ; RtlFindClearBits+18E↓j
                xor     r8d, r8d

loc_14020C002:                          ; CODE XREF: RtlFindClearBits+3BF↓j
                test    r11d, r11d
                jz      short loc_14020C039
                lea     r9d, [r10+rbp]
                cmp     r9d, esi
                ja      loc_14020C2D5

loc_14020C014:                          ; CODE XREF: RtlFindClearBits+3F8↓j
                dec     r9d
                mov     r11d, r8d
                jmp     loc_14020BF44
; ---------------------------------------------------------------------------

loc_14020C01F:                          ; CODE XREF: RtlFindClearBits+1F7↓j
                bsf     rdx, r15

loc_14020C023:                          ; CODE XREF: RtlFindClearBits+334↓j
                sub     rax, r14
                sar     rax, 3
                shl     eax, 6
                add     edx, eax
                cmp     edx, r12d
                ja      short loc_14020C069

loc_14020C034:                          ; CODE XREF: RtlFindClearBits+118↑j
                                        ; RtlFindClearBits+2D3↓j ...
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14020BFFF

loc_14020C039:                          ; CODE XREF: RtlFindClearBits+125↑j
                mov     r15, [rsp+68h+var_40]
                mov     eax, edx
                mov     r14, [rsp+68h+var_38]
                sub     eax, ebx
                mov     r13, [rsp+68h+var_30]
                cmp     edx, 0FFFFFFFFh
                mov     r12, [rsp+68h+var_28]
                mov     rdi, [rsp+68h+var_20]
                cmovz   eax, edx
                mov     rbx, [rsp+68h+var_18]

loc_14020C061:                          ; CODE XREF: RtlFindClearBits+216B43↓j
                                        ; DATA XREF: .pdata:00000001400C9B58↑o ...
                add     rsp, 58h
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14020C069:                          ; CODE XREF: RtlFindClearBits+F1↑j
                                        ; RtlFindClearBits+152↑j ...
                mov     edx, 0FFFFFFFFh
                jmp     short loc_14020BFFF
; ---------------------------------------------------------------------------

loc_14020C070:                          ; CODE XREF: RtlFindClearBits+DE↑j
                xor     edx, edx
                mov     ecx, r15d
                shr     rcx, 6
                lea     rcx, [r14+rcx*8]
                mov     [rsp+68h+arg_18], rcx

loc_14020C085:                          ; CODE XREF: RtlFindClearBits+245↓j
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14020C0E0

loc_14020C08B:                          ; CODE XREF: RtlFindClearBits+214↓j
                bsf     rcx, r8
                mov     [rsp+68h+var_5C], 0
                jz      loc_14020C2A4

loc_14020C09D:                          ; CODE XREF: RtlFindClearBits+3C9↓j
                add     ecx, edx
                cmp     ecx, r10d
                jnb     loc_14020C212
                mov     r15, r8
                mov     ecx, r10d
                not     r15
                mov     [rsp+68h+arg_8], ecx

loc_14020C0B5:                          ; CODE XREF: RtlFindClearBits+1F5↓j
                shr     ecx, 1
                mov     rdx, r15
                shr     rdx, cl
                mov     [rsp+68h+arg_0], ecx
                and     r15, rdx
                jz      short loc_14020C0F6
                mov     ecx, [rsp+68h+arg_8]
                sub     ecx, [rsp+68h+arg_0]
                mov     [rsp+68h+arg_8], ecx
                cmp     ecx, 1
                ja      short loc_14020C0B5
                jmp     loc_14020C01F
; ---------------------------------------------------------------------------
                align 20h

loc_14020C0E0:                          ; CODE XREF: RtlFindClearBits+1A9↑j
                                        ; RtlFindClearBits+210↓j
                add     rax, 8
                cmp     rax, r9
                ja      short loc_14020C069
                mov     r8, [rax]
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14020C0E0
                xor     edx, edx
                jmp     short loc_14020C08B
; ---------------------------------------------------------------------------

loc_14020C0F6:                          ; CODE XREF: RtlFindClearBits+1E4↑j
                cmp     rax, [rsp+68h+arg_18]
                jz      loc_14020C069
                bsr     rcx, r8
                mov     [rsp+68h+var_58], 0
                jz      loc_140422A3E
                mov     edx, 3Fh ; '?'
                sub     edx, ecx

loc_14020C11D:                          ; CODE XREF: RtlFindClearBits+216B63↓j
                mov     r8, [rax+8]
                add     rax, 8
                jmp     loc_14020C085
; ---------------------------------------------------------------------------

loc_14020C12A:                          ; CODE XREF: RtlFindClearBits+CA↑j
                test    r12b, 3Fh
                lea     r15, [r9+8]
                cmovz   r15, r9
                test    r8, r8
                jz      loc_14020C2DD
                add     rax, 8
                cmp     qword ptr [rax], 0
                jnz     loc_14020C1D8
                bsr     rcx, r8
                mov     [rsp+68h+arg_0], 0
                jz      loc_140422A28
                mov     r8d, 3Fh ; '?'
                sub     r8d, ecx

loc_14020C168:                          ; CODE XREF: RtlFindClearBits+32D↓j
                                        ; RtlFindClearBits:loc_14020C2DD↓j ...
                mov     rdx, rax
                sub     rdx, r14
                sar     rdx, 3
                shl     edx, 6
                sub     edx, r8d
                cmp     edx, r12d
                ja      loc_14020C069
                mov     ecx, r10d
                sub     ecx, r8d
                mov     r9d, ecx
                shr     rcx, 6
                lea     r8, [rax+rcx*8]
                add     rax, 8
                cmp     rax, r8
                jz      short loc_14020C1AF
                nop     dword ptr [rax+rax+00h]

loc_14020C1A0:                          ; CODE XREF: RtlFindClearBits+2CD↓j
                cmp     qword ptr [rax], 0
                jnz     short loc_14020C1D8
                add     rax, 8
                cmp     rax, r8
                jnz     short loc_14020C1A0

loc_14020C1AF:                          ; CODE XREF: RtlFindClearBits+2B9↑j
                and     r9d, 3Fh
                jz      loc_14020C034
                mov     rcx, [rax]
                bsf     r8, rcx
                mov     [rsp+68h+var_68], 0
                jnz     short loc_14020C1CF
                mov     r8d, 40h ; '@'

loc_14020C1CF:                          ; CODE XREF: RtlFindClearBits+2E7↑j
                cmp     r8d, r9d
                jnb     loc_14020C034

loc_14020C1D8:                          ; CODE XREF: RtlFindClearBits+267↑j
                                        ; RtlFindClearBits+2C4↑j ...
                cmp     rax, r15
                ja      loc_14020C069
                add     rax, 8
                cmp     qword ptr [rax], 0
                jnz     short loc_14020C1D8
                mov     rcx, [rax-8]
                bsr     rdx, rcx
                mov     dword ptr [rsp+68h+arg_18], 0
                jz      loc_140422A33
                mov     r8d, 3Fh ; '?'
                sub     r8d, edx
                jmp     loc_14020C168
; ---------------------------------------------------------------------------

loc_14020C212:                          ; CODE XREF: RtlFindClearBits+1C2↑j
                neg     edx
                jmp     loc_14020C023
; ---------------------------------------------------------------------------
                align 20h

loc_14020C220:                          ; CODE XREF: RtlFindClearBits+D4↑j
                                        ; RtlFindClearBits+3B8↓j
                test    r8, r8

loc_14020C223:                          ; CODE XREF: RtlFindClearBits+405↓j
                js      loc_14020C2B0

loc_14020C229:                          ; CODE XREF: RtlFindClearBits+3E5↓j
                bsr     rcx, r8
                mov     [rsp+68h+var_64], 0
                jz      loc_14020C2CA
                mov     r8d, 3Fh ; '?'
                sub     r8d, ecx

loc_14020C244:                          ; CODE XREF: RtlFindClearBits+3F0↓j
                mov     rcx, rax
                sub     rcx, r14
                sar     rcx, 3
                inc     ecx
                shl     ecx, 6
                sub     ecx, r8d
                mov     edx, ecx
                cmp     ecx, r12d
                ja      loc_14020C069
                mov     r15d, r10d
                sub     r15d, r8d
                jz      loc_14020C034
                mov     r8, [rax+8]
                add     rax, 8
                cmp     r15d, 40h ; '@'
                jnb     short loc_14020C2E2

loc_14020C27B:                          ; CODE XREF: RtlFindClearBits+41D↓j
                bsf     rcx, r8
                mov     [rsp+68h+var_60], 0
                cmovz   ecx, [rsp+68h+arg_10]
                cmp     ecx, r15d
                jnb     loc_14020C034
                jmp     short loc_14020C220
; ---------------------------------------------------------------------------

loc_14020C29A:                          ; CODE XREF: RtlFindClearBits+8D↑j
                mov     edx, 0FFFFFFFFh
                jmp     loc_14020C002
; ---------------------------------------------------------------------------

loc_14020C2A4:                          ; CODE XREF: RtlFindClearBits+1B7↑j
                mov     ecx, 40h ; '@'
                jmp     loc_14020C09D
; ---------------------------------------------------------------------------
                align 10h

loc_14020C2B0:                          ; CODE XREF: RtlFindClearBits:loc_14020C223↑j
                                        ; RtlFindClearBits+3E3↓j
                add     rax, 8
                cmp     rax, r9
                ja      loc_14020C069
                mov     r8, [rax]
                test    r8, r8
                js      short loc_14020C2B0
                jmp     loc_14020C229
; ---------------------------------------------------------------------------

loc_14020C2CA:                          ; CODE XREF: RtlFindClearBits+355↑j
                mov     r8d, 40h ; '@'
                jmp     loc_14020C244
; ---------------------------------------------------------------------------

loc_14020C2D5:                          ; CODE XREF: RtlFindClearBits+12E↑j
                mov     r9d, esi
                jmp     loc_14020C014
; ---------------------------------------------------------------------------

loc_14020C2DD:                          ; CODE XREF: RtlFindClearBits+259↑j
                jmp     loc_14020C168
; ---------------------------------------------------------------------------

loc_14020C2E2:                          ; CODE XREF: RtlFindClearBits+399↑j
                test    r8, r8
                jnz     loc_14020C223
                add     r15d, 0FFFFFFC0h
                jz      loc_14020C034
                mov     r8, [rax+8]
                add     rax, 8
                jmp     loc_14020C27B
RtlFindClearBits endp
