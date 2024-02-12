RtlFindSetBitsEx proc near              ; CODE XREF: sub_1403F4750+65↓p
                                        ; sub_1408C64A0+7D↓p ...

var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404381FE SIZE 00000024 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 10h
                mov     r15, [rcx]
                mov     r12, r8
                mov     r14, [rcx+8]
                cmp     r8, r15
                mov     rbx, rdx
                sbb     r11, r11
                and     r11, r8
                lea     r10, [r15-1]
                test    rdx, rdx
                jz      loc_1404381FE
                or      rsi, 0FFFFFFFFFFFFFFFFh

loc_140259A16:                          ; CODE XREF: RtlFindSetBitsEx+10E↓j
                and     [rsp+48h+arg_0], 0
                mov     rax, r10
                sub     rax, r11
                mov     edx, 40h ; '@'
                inc     rax
                cmp     rax, rbx
                jb      loc_140259AD5
                mov     rbp, r10
                lea     r9d, [rdx-3Fh]
                sub     rbp, rbx
                mov     cl, r11b
                inc     rbp
                and     cl, 3Fh
                shl     r9, cl
                mov     rax, rbp
                shr     rax, 6
                dec     r9
                lea     rdi, [r14+rax*8]
                mov     rax, r11
                shr     rax, 6
                lea     r8, [r14+rax*8]
                mov     rax, [r8]
                not     rax
                or      r9, rax
                cmp     rbx, 7Fh
                ja      loc_140259BB4
                cmp     rbx, rdx
                jnb     loc_140259CC4
                cmp     rbx, 1
                ja      short loc_140259AF3

loc_140259A83:                          ; CODE XREF: RtlFindSetBitsEx+B7↓j
                cmp     r9, rsi
                jnz     short loc_140259A99
                add     r8, 8
                cmp     r8, rdi
                ja      short loc_140259AD5
                mov     r9, [r8]
                not     r9
                jmp     short loc_140259A83
; ---------------------------------------------------------------------------

loc_140259A99:                          ; CODE XREF: RtlFindSetBitsEx+A6↑j
                not     r9
                mov     rdx, r8
                sub     rdx, r14
                sar     rdx, 3
                bsf     rax, r9
                shl     rdx, 6
                add     rdx, rax

loc_140259AB1:                          ; CODE XREF: RtlFindSetBitsEx+17C↓j
                cmp     rdx, rbp
                ja      short loc_140259AD5

loc_140259AB6:                          ; CODE XREF: RtlFindSetBitsEx+219↓j
                                        ; RtlFindSetBitsEx+239↓j ...
                cmp     rdx, rsi
                jz      short loc_140259AD8

loc_140259ABB:                          ; CODE XREF: RtlFindSetBitsEx+FB↓j
                mov     r11, rdx

loc_140259ABE:                          ; CODE XREF: RtlFindSetBitsEx+1DE822↓j
                mov     rax, r11
                add     rsp, 10h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140259AD1:                          ; CODE XREF: RtlFindSetBitsEx+184↓j
                                        ; RtlFindSetBitsEx+1B6↓j
                or      rsi, 0FFFFFFFFFFFFFFFFh

loc_140259AD5:                          ; CODE XREF: RtlFindSetBitsEx+4C↑j
                                        ; RtlFindSetBitsEx+AF↑j ...
                mov     rdx, rsi

loc_140259AD8:                          ; CODE XREF: RtlFindSetBitsEx+D9↑j
                test    r11, r11
                jz      short loc_140259ABB
                lea     r10, [rbx+r12]
                cmp     r10, r15
                cmova   r10, r15
                dec     r10
                xor     r11d, r11d
                jmp     loc_140259A16
; ---------------------------------------------------------------------------

loc_140259AF3:                          ; CODE XREF: RtlFindSetBitsEx+A1↑j
                xor     edx, edx
                shr     r10, 6
                lea     rsi, [r14+r10*8]

loc_140259AFD:                          ; CODE XREF: RtlFindSetBitsEx+1AA↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      loc_140259B8F

loc_140259B07:                          ; CODE XREF: RtlFindSetBitsEx+1CA↓j
                and     [rsp+48h+var_40], 0
                mov     ecx, 40h ; '@'
                bsf     rax, r9
                cmovz   eax, ecx
                lea     ecx, [rdx+rax]
                cmp     rcx, rbx
                jnb     loc_140259BAF
                mov     rdx, r9
                mov     r10d, ebx
                not     rdx

loc_140259B2D:                          ; CODE XREF: RtlFindSetBitsEx+164↓j
                mov     rax, rdx
                mov     ecx, r10d
                shr     ecx, 1
                shr     rax, cl
                and     rdx, rax
                jz      short loc_140259B61
                sub     r10d, ecx
                cmp     r10d, 1
                ja      short loc_140259B2D
                bsf     rdx, rdx

loc_140259B4A:                          ; CODE XREF: RtlFindSetBitsEx+1D2↓j
                sub     r8, r14
                sar     r8, 3
                shl     r8, 6
                add     rdx, r8
                or      rsi, 0FFFFFFFFFFFFFFFFh
                jmp     loc_140259AB1
; ---------------------------------------------------------------------------

loc_140259B61:                          ; CODE XREF: RtlFindSetBitsEx+15B↑j
                cmp     r8, rsi
                jz      loc_140259AD1
                and     [rsp+48h+var_3C], 0
                bsr     rax, r9
                jz      loc_140438218
                mov     edx, 3Fh ; '?'
                sub     edx, eax

loc_140259B80:                          ; CODE XREF: RtlFindSetBitsEx+1DE83D↓j
                add     r8, 8
                mov     r9, [r8]
                not     r9
                jmp     loc_140259AFD
; ---------------------------------------------------------------------------

loc_140259B8F:                          ; CODE XREF: RtlFindSetBitsEx+121↑j
                                        ; RtlFindSetBitsEx+1C6↓j
                add     r8, 8
                cmp     r8, rdi
                ja      loc_140259AD1
                mov     r9, [r8]
                not     r9
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140259B8F
                xor     edx, edx
                jmp     loc_140259B07
; ---------------------------------------------------------------------------

loc_140259BAF:                          ; CODE XREF: RtlFindSetBitsEx+13E↑j
                neg     rdx
                jmp     short loc_140259B4A
; ---------------------------------------------------------------------------

loc_140259BB4:                          ; CODE XREF: RtlFindSetBitsEx+8E↑j
                test    bpl, 3Fh
                lea     r10, [rdi+8]
                cmovz   r10, rdi
                test    r9, r9
                jz      loc_140259D45
                add     r8, 8
                mov     rax, [r8]
                not     rax
                test    rax, rax
                jnz     short loc_140259C1F
                and     [rsp+48h+arg_8], eax
                bsr     rax, r9
                jz      loc_140438207
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax
                jmp     short loc_140259C53
; ---------------------------------------------------------------------------

loc_140259BEF:                          ; CODE XREF: RtlFindSetBitsEx+2A5↓j
                mov     r9d, ebx
                sub     r9d, ecx
                and     r9d, 3Fh
                jz      loc_140259AB6
                and     [rsp+48h+arg_18], 0
                mov     rax, [r8]
                not     rax
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                cmp     ecx, r9d
                jnb     loc_140259AB6

loc_140259C1F:                          ; CODE XREF: RtlFindSetBitsEx+1F6↑j
                                        ; RtlFindSetBitsEx+255↓j ...
                cmp     r8, r10
                ja      loc_140259AD5
                add     r8, 8
                mov     rax, [r8]
                not     rax
                test    rax, rax
                jnz     short loc_140259C1F
                and     [rsp+48h+arg_10], eax
                mov     rax, [r8-8]
                not     rax
                bsr     rdx, rax
                jz      loc_14043820E
                mov     ecx, 3Fh ; '?'
                sub     ecx, edx

loc_140259C53:                          ; CODE XREF: RtlFindSetBitsEx+20D↑j
                                        ; RtlFindSetBitsEx+367↓j ...
                mov     rdx, r8
                mov     r9d, ecx
                sub     rdx, r14
                sar     rdx, 3
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, rbp
                ja      loc_140259AD5
                mov     rax, rbx
                sub     rax, r9
                shr     rax, 6
                lea     r9, [r8+rax*8]

loc_140259C7E:                          ; CODE XREF: RtlFindSetBitsEx+2B4↓j
                add     r8, 8
                cmp     r8, r9
                jz      loc_140259BEF
                mov     rax, [r8]
                not     rax
                test    rax, rax
                jz      short loc_140259C7E
                jmp     short loc_140259C1F
; ---------------------------------------------------------------------------

loc_140259C98:                          ; CODE XREF: RtlFindSetBitsEx+35C↓j
                sub     rcx, r10
                jz      loc_140259AB6
                add     r8, 8
                mov     r9, [r8]
                not     r9

loc_140259CAB:                          ; CODE XREF: RtlFindSetBitsEx+351↓j
                and     [rsp+48h+var_44], 0
                bsf     rax, r9
                cmovz   eax, r10d
                cmp     rax, rcx
                jnb     loc_140259AB6

loc_140259CC1:                          ; CODE XREF: RtlFindSetBitsEx+35A↓j
                mov     rdx, r10

loc_140259CC4:                          ; CODE XREF: RtlFindSetBitsEx+97↑j
                                        ; RtlFindSetBitsEx+2FC↓j
                test    r9, r9
                jns     short loc_140259CDE
                add     r8, 8
                cmp     r8, rdi
                ja      loc_140259AD5
                mov     r9, [r8]
                not     r9
                jmp     short loc_140259CC4
; ---------------------------------------------------------------------------

loc_140259CDE:                          ; CODE XREF: RtlFindSetBitsEx+2E7↑j
                and     [rsp+48h+var_48], 0
                bsr     rcx, r9
                jz      short loc_140259D41
                mov     eax, 3Fh ; '?'
                sub     eax, ecx

loc_140259CEF:                          ; CODE XREF: RtlFindSetBitsEx+363↓j
                mov     rdx, r8
                mov     r9d, eax
                sub     rdx, r14
                sar     rdx, 3
                inc     rdx
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, rbp
                ja      loc_140259AD5
                mov     rcx, rbx
                sub     rcx, r9
                jz      loc_140259AB6
                add     r8, 8
                mov     r10d, 40h ; '@'
                mov     rax, [r8]
                not     rax
                mov     r9, rax
                cmp     rcx, r10
                jb      loc_140259CAB
                test    rax, rax
                jnz     short loc_140259CC1
                jmp     loc_140259C98
; ---------------------------------------------------------------------------

loc_140259D41:                          ; CODE XREF: RtlFindSetBitsEx+306↑j
                mov     eax, edx
                jmp     short loc_140259CEF
; ---------------------------------------------------------------------------

loc_140259D45:                          ; CODE XREF: RtlFindSetBitsEx+1E3↑j
                xor     ecx, ecx
                jmp     loc_140259C53
RtlFindSetBitsEx endp
