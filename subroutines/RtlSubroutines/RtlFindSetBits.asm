RtlFindSetBits  proc near               ; CODE XREF: sub_140600F3C+7E↓p
                                        ; sub_140600F3C+191↓p ...

var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140422A08 SIZE 00000013 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 28h
                mov     r15d, [rcx]
                mov     r13d, r8d
                cmp     r8d, r15d
                mov     edi, edx
                sbb     r10d, r10d
                and     r10d, r8d
                lea     r9d, [r15-1]
                test    edx, edx
                jz      loc_140422A08
                mov     r11, [rcx+8]
                mov     rcx, r11
                mov     [rsp+68h+var_50], r11
                and     ecx, 4
                mov     eax, ecx
                mov     [rsp+68h+var_58], rcx
                neg     rax
                sbb     r12d, r12d
                and     r12d, 20h
                or      ebx, 0FFFFFFFFh

loc_14020BB71:                          ; CODE XREF: RtlFindSetBits+153↓j
                and     dword ptr [rsp+68h+arg_8], 0
                lea     r8d, [r12+r9]
                mov     rax, rcx
                lea     edx, [r12+r10]
                neg     rax
                mov     r14, r11
                mov     eax, r8d
                sbb     rcx, rcx
                sub     eax, edx
                and     ecx, 4
                inc     eax
                sub     r14, rcx
                cmp     eax, edi
                jb      loc_14020BC50
                mov     ecx, edx
                mov     ebp, r8d
                sub     ebp, edi
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
                cmp     edi, 7Fh
                ja      loc_14020BD98
                mov     r11d, 40h ; '@'
                cmp     edi, r11d
                jnb     loc_14020BD01
                cmp     edi, 1
                ja      loc_14020BC78

loc_14020BBF5:                          ; CODE XREF: RtlFindSetBits+EA↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14020BC0C
                add     rdx, 8
                cmp     rdx, rsi
                ja      short loc_14020BC50
                mov     r9, [rdx]
                not     r9
                jmp     short loc_14020BBF5
; ---------------------------------------------------------------------------

loc_14020BC0C:                          ; CODE XREF: RtlFindSetBits+D9↑j
                sub     rdx, r14
                not     r9
                sar     rdx, 3
                bsf     rax, r9
                shl     edx, 6
                add     edx, eax
                mov     r8d, edx
                cmp     edx, ebp

loc_14020BC24:                          ; CODE XREF: RtlFindSetBits+1BF↓j
                ja      short loc_14020BC50

loc_14020BC26:                          ; CODE XREF: RtlFindSetBits+22E↓j
                                        ; RtlFindSetBits+24E↓j ...
                cmp     r8d, ebx
                jz      short loc_14020BC53

loc_14020BC2B:                          ; CODE XREF: RtlFindSetBits+136↓j
                mov     r10d, r8d
                sub     r10d, r12d
                cmp     r8d, ebx
                cmovz   r10d, r8d

loc_14020BC38:                          ; CODE XREF: RtlFindSetBits+216EEC↓j
                mov     eax, r10d
                add     rsp, 28h
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

loc_14020BC4D:                          ; CODE XREF: RtlFindSetBits+1CB↓j
                                        ; RtlFindSetBits+349↓j
                or      ebx, 0FFFFFFFFh

loc_14020BC50:                          ; CODE XREF: RtlFindSetBits+79↑j
                                        ; RtlFindSetBits+E2↑j ...
                mov     r8d, ebx

loc_14020BC53:                          ; CODE XREF: RtlFindSetBits+109↑j
                test    r10d, r10d
                jz      short loc_14020BC2B
                mov     rcx, [rsp+68h+var_58]
                lea     r9d, [rdi+r13]
                mov     r11, [rsp+68h+var_50]
                cmp     r9d, r15d
                cmova   r9d, r15d
                add     r9d, ebx
                xor     r10d, r10d
                jmp     loc_14020BB71
; ---------------------------------------------------------------------------

loc_14020BC78:                          ; CODE XREF: RtlFindSetBits+CF↑j
                xor     ecx, ecx
                mov     eax, r8d
                shr     rax, 6
                lea     rbx, [r14+rax*8]

loc_14020BC85:                          ; CODE XREF: RtlFindSetBits+370↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14020BCE4

loc_14020BC8B:                          ; CODE XREF: RtlFindSetBits+1DF↓j
                and     [rsp+68h+var_60], 0
                bsf     rax, r9
                cmovz   eax, r11d
                add     eax, ecx
                cmp     eax, edi
                jnb     loc_14020BEC1
                mov     r8, r9
                mov     r11d, edi
                not     r8

loc_14020BCAB:                          ; CODE XREF: RtlFindSetBits+1A6↓j
                mov     rax, r8
                mov     ecx, r11d
                shr     ecx, 1
                shr     rax, cl
                and     r8, rax
                jz      loc_14020BE66
                sub     r11d, ecx
                cmp     r11d, 1
                ja      short loc_14020BCAB
                bsf     r8, r8

loc_14020BCCC:                          ; CODE XREF: RtlFindSetBits+3A6↓j
                sub     rdx, r14
                or      ebx, 0FFFFFFFFh
                sar     rdx, 3
                shl     edx, 6
                add     r8d, edx
                cmp     r8d, ebp
                jmp     loc_14020BC24
; ---------------------------------------------------------------------------

loc_14020BCE4:                          ; CODE XREF: RtlFindSetBits+169↑j
                                        ; RtlFindSetBits+1DB↓j
                add     rdx, 8
                cmp     rdx, rsi
                ja      loc_14020BC4D
                mov     r9, [rdx]
                not     r9
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14020BCE4
                xor     ecx, ecx
                jmp     short loc_14020BC8B
; ---------------------------------------------------------------------------

loc_14020BD01:                          ; CODE XREF: RtlFindSetBits+C6↑j
                                        ; RtlFindSetBits+1F9↓j ...
                test    r9, r9
                jns     short loc_14020BD1B
                add     rdx, 8
                cmp     rdx, rsi
                ja      loc_14020BC50
                mov     r9, [rdx]
                not     r9
                jmp     short loc_14020BD01
; ---------------------------------------------------------------------------

loc_14020BD1B:                          ; CODE XREF: RtlFindSetBits+1E4↑j
                and     [rsp+68h+var_68], 0
                bsr     rax, r9
                jnz     loc_14020BEB3
                mov     r9d, r11d

loc_14020BD2C:                          ; CODE XREF: RtlFindSetBits+39C↓j
                mov     rax, rdx
                sub     rax, r14
                sar     rax, 3
                inc     eax
                shl     eax, 6
                sub     eax, r9d
                mov     r8d, eax
                cmp     eax, ebp
                ja      loc_14020BC50
                mov     ecx, edi
                sub     ecx, r9d
                jz      loc_14020BC26
                add     rdx, 8
                mov     rax, [rdx]
                not     rax
                mov     r9, rax
                cmp     ecx, r11d
                jb      short loc_14020BD7E
                test    rax, rax
                jnz     short loc_14020BD01
                add     ecx, 0FFFFFFC0h
                jz      loc_14020BC26
                add     rdx, 8
                mov     r9, [rdx]
                not     r9

loc_14020BD7E:                          ; CODE XREF: RtlFindSetBits+244↑j
                and     [rsp+68h+var_64], 0
                bsf     rax, r9
                cmovz   eax, r11d
                cmp     eax, ecx
                jb      loc_14020BD01
                jmp     loc_14020BC26
; ---------------------------------------------------------------------------

loc_14020BD98:                          ; CODE XREF: RtlFindSetBits+B7↑j
                test    bpl, 3Fh
                lea     r11, [rsi+8]
                cmovz   r11, rsi
                test    r9, r9
                jnz     short loc_14020BDEA
                xor     ecx, ecx

loc_14020BDAB:                          ; CODE XREF: RtlFindSetBits+312↓j
                                        ; RtlFindSetBits+38E↓j ...
                mov     r8, rdx
                sub     r8, r14
                sar     r8, 3
                shl     r8d, 6
                sub     r8d, ecx
                cmp     r8d, ebp
                ja      loc_14020BC50
                mov     eax, edi
                sub     eax, ecx
                mov     r9d, eax
                shr     rax, 6
                lea     rcx, [rdx+rax*8]

loc_14020BDD4:                          ; CODE XREF: RtlFindSetBits+2C6↓j
                add     rdx, 8
                cmp     rdx, rcx
                jz      short loc_14020BE37
                mov     rax, [rdx]
                not     rax
                test    rax, rax
                jz      short loc_14020BDD4
                jmp     short loc_14020BDFD
; ---------------------------------------------------------------------------

loc_14020BDEA:                          ; CODE XREF: RtlFindSetBits+287↑j
                add     rdx, 8
                mov     rax, [rdx]
                not     rax
                test    rax, rax
                jz      loc_14020BE95

loc_14020BDFD:                          ; CODE XREF: RtlFindSetBits+2C8↑j
                                        ; RtlFindSetBits+2F3↓j ...
                cmp     rdx, r11
                ja      loc_14020BC50
                add     rdx, 8
                mov     rax, [rdx]
                not     rax
                test    rax, rax
                jnz     short loc_14020BDFD
                and     [rsp+68h+arg_0], eax
                mov     rax, [rdx-8]
                not     rax
                bsr     r8, rax
                jz      loc_140422A11
                mov     ecx, 3Fh ; '?'
                sub     ecx, r8d
                jmp     loc_14020BDAB
; ---------------------------------------------------------------------------

loc_14020BE37:                          ; CODE XREF: RtlFindSetBits+2BB↑j
                and     r9d, 3Fh
                jz      loc_14020BC26
                and     [rsp+68h+arg_18], 0
                mov     rax, [rdx]
                not     rax
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                cmp     ecx, r9d
                jnb     loc_14020BC26
                jmp     short loc_14020BDFD
; ---------------------------------------------------------------------------

loc_14020BE66:                          ; CODE XREF: RtlFindSetBits+199↑j
                cmp     rdx, rbx
                jz      loc_14020BC4D
                and     [rsp+68h+var_5C], 0
                mov     r11d, 40h ; '@'
                bsr     rax, r9
                jz      short loc_14020BECB
                lea     ecx, [r11-1]
                sub     ecx, eax

loc_14020BE86:                          ; CODE XREF: RtlFindSetBits+3AE↓j
                add     rdx, 8
                mov     r9, [rdx]
                not     r9
                jmp     loc_14020BC85
; ---------------------------------------------------------------------------

loc_14020BE95:                          ; CODE XREF: RtlFindSetBits+2D7↑j
                and     dword ptr [rsp+68h+arg_10], 0
                bsr     rax, r9
                jz      loc_140422A11
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax
                jmp     loc_14020BDAB
; ---------------------------------------------------------------------------

loc_14020BEB3:                          ; CODE XREF: RtlFindSetBits+203↑j
                mov     r9d, 3Fh ; '?'
                sub     r9d, eax
                jmp     loc_14020BD2C
; ---------------------------------------------------------------------------

loc_14020BEC1:                          ; CODE XREF: RtlFindSetBits+17C↑j
                neg     ecx
                mov     r8d, ecx
                jmp     loc_14020BCCC
; ---------------------------------------------------------------------------

loc_14020BECB:                          ; CODE XREF: RtlFindSetBits+35E↑j
                mov     ecx, r11d
                jmp     short loc_14020BE86
RtlFindSetBits  endp

; ---------------------------------------------------------------------------
algn_14020BED0:                         ; DATA XREF: .rdata:000000014004905C↑o
                                        ; .pdata:00000001400C9B40↑o
                align 20h
; Exported entry 2114. RtlFindClearBits

; =============== S U B R O U T I N E =======================================


