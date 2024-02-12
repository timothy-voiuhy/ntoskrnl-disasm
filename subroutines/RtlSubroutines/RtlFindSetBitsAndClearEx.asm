RtlFindSetBitsAndClearEx proc near      ; CODE XREF: sub_140292240+248↑p
                                        ; DATA XREF: .rdata:000000014006BFD8↑o ...

var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140460D7C SIZE 00000042 BYTES

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
                jz      loc_140460D7C

loc_1402E98AB:                          ; CODE XREF: RtlFindSetBitsAndClearEx+177549↓j
                and     [rsp+78h+arg_0], 0
                mov     rax, r10
                sub     rax, rbx
                mov     edx, 40h ; '@'
                inc     rax
                cmp     rax, r11
                jb      loc_1402E9985
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
                mov     rax, [r8]
                not     rax
                or      r9, rax
                cmp     r11, 7Fh
                ja      loc_1402E9AEA
                cmp     r11, rdx
                jnb     loc_1402E9A48
                cmp     r11, 1
                ja      short loc_1402E998D

loc_1402E991A:                          ; CODE XREF: RtlFindSetBitsAndClearEx+BE↓j
                cmp     r9, rdi
                jnz     short loc_1402E9930
                add     r8, 8
                cmp     r8, rsi
                ja      short loc_1402E9985
                mov     r9, [r8]
                not     r9
                jmp     short loc_1402E991A
; ---------------------------------------------------------------------------

loc_1402E9930:                          ; CODE XREF: RtlFindSetBitsAndClearEx+AD↑j
                not     r9
                mov     rdx, r8
                sub     rdx, r14
                sar     rdx, 3
                bsf     rax, r9
                shl     rdx, 6
                add     rdx, rax

loc_1402E9948:                          ; CODE XREF: RtlFindSetBitsAndClearEx+186↓j
                cmp     rdx, rbp
                ja      short loc_1402E9985

loc_1402E994D:                          ; CODE XREF: RtlFindSetBitsAndClearEx+229↓j
                                        ; RtlFindSetBitsAndClearEx+24F↓j ...
                cmp     rdx, rdi
                jz      loc_140460DA0

loc_1402E9956:                          ; CODE XREF: RtlFindSetBitsAndClearEx+177533↓j
                mov     rbx, rdx

loc_1402E9959:                          ; CODE XREF: RtlFindSetBitsAndClearEx+177510↓j
                cmp     rbx, rdi
                jz      short loc_1402E996C
                mov     r8, r11
                mov     rdx, rbx
                mov     rcx, r12
                call    RtlClearBitsEx

loc_1402E996C:                          ; CODE XREF: RtlFindSetBitsAndClearEx+EC↑j
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402E9981:                          ; CODE XREF: RtlFindSetBitsAndClearEx+18E↓j
                                        ; RtlFindSetBitsAndClearEx+1BC↓j
                or      rdi, 0FFFFFFFFFFFFFFFFh

loc_1402E9985:                          ; CODE XREF: RtlFindSetBitsAndClearEx+54↑j
                                        ; RtlFindSetBitsAndClearEx+B6↑j ...
                mov     rdx, rdi
                jmp     loc_140460DA0
; ---------------------------------------------------------------------------

loc_1402E998D:                          ; CODE XREF: RtlFindSetBitsAndClearEx+A8↑j
                xor     edx, edx
                shr     r10, 6
                lea     rdi, [r14+r10*8]

loc_1402E9997:                          ; CODE XREF: RtlFindSetBitsAndClearEx+1B0↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      loc_1402E9A25

loc_1402E99A1:                          ; CODE XREF: RtlFindSetBitsAndClearEx+1D0↓j
                and     [rsp+78h+var_50], 0
                mov     ecx, 40h ; '@'
                bsf     rax, r9
                cmovz   eax, ecx
                lea     ecx, [rdx+rax]
                cmp     rcx, r11
                jnb     loc_1402E9BE6
                mov     rdx, r9
                mov     r10d, r11d
                not     rdx

loc_1402E99C7:                          ; CODE XREF: RtlFindSetBitsAndClearEx+16E↓j
                mov     rax, rdx
                mov     ecx, r10d
                shr     ecx, 1
                shr     rax, cl
                and     rdx, rax
                jz      short loc_1402E99FB
                sub     r10d, ecx
                cmp     r10d, 1
                ja      short loc_1402E99C7
                bsf     rdx, rdx

loc_1402E99E4:                          ; CODE XREF: RtlFindSetBitsAndClearEx+379↓j
                sub     r8, r14
                sar     r8, 3
                shl     r8, 6
                add     rdx, r8
                or      rdi, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1402E9948
; ---------------------------------------------------------------------------

loc_1402E99FB:                          ; CODE XREF: RtlFindSetBitsAndClearEx+165↑j
                cmp     r8, rdi
                jz      short loc_1402E9981
                and     [rsp+78h+var_4C], 0
                bsr     rax, r9
                jz      loc_140460D96
                mov     edx, 3Fh ; '?'
                sub     edx, eax

loc_1402E9A16:                          ; CODE XREF: RtlFindSetBitsAndClearEx+17752B↓j
                add     r8, 8
                mov     r9, [r8]
                not     r9
                jmp     loc_1402E9997
; ---------------------------------------------------------------------------

loc_1402E9A25:                          ; CODE XREF: RtlFindSetBitsAndClearEx+12B↑j
                                        ; RtlFindSetBitsAndClearEx+1CC↓j
                add     r8, 8
                cmp     r8, rsi
                ja      loc_1402E9981
                mov     r9, [r8]
                not     r9
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1402E9A25
                xor     edx, edx
                jmp     loc_1402E99A1
; ---------------------------------------------------------------------------

loc_1402E9A45:                          ; CODE XREF: RtlFindSetBitsAndClearEx+24A↓j
                                        ; RtlFindSetBitsAndClearEx+275↓j
                mov     rdx, r10

loc_1402E9A48:                          ; CODE XREF: RtlFindSetBitsAndClearEx+9E↑j
                                        ; RtlFindSetBitsAndClearEx+1F0↓j
                test    r9, r9
                jns     short loc_1402E9A62
                add     r8, 8
                cmp     r8, rsi
                ja      loc_1402E9985
                mov     r9, [r8]
                not     r9
                jmp     short loc_1402E9A48
; ---------------------------------------------------------------------------

loc_1402E9A62:                          ; CODE XREF: RtlFindSetBitsAndClearEx+1DB↑j
                and     [rsp+78h+var_58], 0
                bsr     rcx, r9
                jnz     loc_1402E9BDA
                mov     eax, edx

loc_1402E9A73:                          ; CODE XREF: RtlFindSetBitsAndClearEx+371↓j
                mov     rdx, r8
                mov     r9d, eax
                sub     rdx, r14
                sar     rdx, 3
                inc     rdx
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, rbp
                ja      loc_1402E9985
                mov     rcx, r11
                sub     rcx, r9
                jz      loc_1402E994D
                add     r8, 8
                mov     r10d, 40h ; '@'
                mov     rax, [r8]
                not     rax
                mov     r9, rax
                cmp     rcx, r10
                jb      short loc_1402E9ACF
                test    rax, rax
                jnz     short loc_1402E9A45
                sub     rcx, r10
                jz      loc_1402E994D
                add     r8, 8
                mov     r9, [r8]
                not     r9

loc_1402E9ACF:                          ; CODE XREF: RtlFindSetBitsAndClearEx+245↑j
                and     [rsp+78h+var_54], 0
                bsf     rax, r9
                cmovz   eax, r10d
                cmp     rax, rcx
                jnb     loc_1402E994D
                jmp     loc_1402E9A45
; ---------------------------------------------------------------------------

loc_1402E9AEA:                          ; CODE XREF: RtlFindSetBitsAndClearEx+95↑j
                test    bpl, 3Fh
                lea     r10, [rsi+8]
                cmovz   r10, rsi
                test    r9, r9
                jz      loc_1402E9BD6
                add     r8, 8
                mov     rax, [r8]
                not     rax
                test    rax, rax
                jnz     short loc_1402E9B33
                and     [rsp+78h+arg_8], eax
                bsr     rax, r9
                jz      loc_140460D85
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax
                jmp     short loc_1402E9B6A
; ---------------------------------------------------------------------------

loc_1402E9B28:                          ; CODE XREF: RtlFindSetBitsAndClearEx+32C↓j
                mov     rax, [r8]
                not     rax
                test    rax, rax
                jz      short loc_1402E9B95

loc_1402E9B33:                          ; CODE XREF: RtlFindSetBitsAndClearEx+29C↑j
                                        ; RtlFindSetBitsAndClearEx+2D9↓j ...
                cmp     r8, r10
                ja      loc_1402E9985
                add     r8, 8
                mov     rax, [r8]
                not     rax
                test    rax, rax
                jnz     short loc_1402E9B33
                and     [rsp+78h+arg_10], eax
                mov     rax, [r8-8]
                not     rax
                bsr     rdx, rax
                jz      loc_140460D8C
                mov     ecx, 3Fh ; '?'
                sub     ecx, edx

loc_1402E9B6A:                          ; CODE XREF: RtlFindSetBitsAndClearEx+2B6↑j
                                        ; RtlFindSetBitsAndClearEx+368↓j ...
                mov     rdx, r8
                mov     r9d, ecx
                sub     rdx, r14
                sar     rdx, 3
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, rbp
                ja      loc_1402E9985
                mov     rax, r11
                sub     rax, r9
                shr     rax, 6
                lea     r9, [r8+rax*8]

loc_1402E9B95:                          ; CODE XREF: RtlFindSetBitsAndClearEx+2C1↑j
                add     r8, 8
                cmp     r8, r9
                jnz     short loc_1402E9B28
                mov     r9d, r11d
                sub     r9d, ecx
                and     r9d, 3Fh
                jz      loc_1402E994D
                and     [rsp+78h+arg_18], 0
                mov     rax, [r8]
                not     rax
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                cmp     ecx, r9d
                jb      loc_1402E9B33
                jmp     loc_1402E994D
; ---------------------------------------------------------------------------

loc_1402E9BD6:                          ; CODE XREF: RtlFindSetBitsAndClearEx+289↑j
                xor     ecx, ecx
                jmp     short loc_1402E9B6A
; ---------------------------------------------------------------------------

loc_1402E9BDA:                          ; CODE XREF: RtlFindSetBitsAndClearEx+1FB↑j
                mov     eax, 3Fh ; '?'
                sub     eax, ecx
                jmp     loc_1402E9A73
; ---------------------------------------------------------------------------

loc_1402E9BE6:                          ; CODE XREF: RtlFindSetBitsAndClearEx+148↑j
                neg     rdx
                jmp     loc_1402E99E4
RtlFindSetBitsAndClearEx endp
