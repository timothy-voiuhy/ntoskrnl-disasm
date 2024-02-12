RtlLookupFunctionEntry proc near        ; CODE XREF: sub_1402AAF70+18A↑p
                                        ; sub_1402AAF70+363↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044DA4A SIZE 00000015 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 40h
                mov     rdi, r8
                mov     r14, rdx
                mov     rbx, rcx
                test    r8, r8
                jz      loc_1402AE64F
                cmp     byte ptr [r8+7], 0
                lea     r11, dword_140E01940
                jnz     loc_1402AE759

loc_1402AE4C4:                          ; CODE XREF: RtlLookupFunctionEntry+2E0↓j
                                        ; RtlLookupFunctionEntry+2F3↓j ...
                cmp     byte ptr [r8+6], 0
                jz      loc_1402AE64F
                cmp     rbx, cs:qword_140E01950
                jnb     short loc_1402AE53E
                cmp     rbx, cs:qword_140E01948
                jb      short loc_1402AE53E
                movzx   edx, byte ptr [r8+5]
                mov     r8d, cs:dword_140E01940
                mov     ecx, edx
                cmp     edx, r8d
                jnb     short loc_1402AE53E

loc_1402AE4F4:                          ; CODE XREF: RtlLookupFunctionEntry+AC↓j
                mov     eax, ecx
                add     rax, rax
                mov     r10, [r11+rax*8+20h]
                mov     r9, [r11+rax*8+18h]
                mov     eax, [r10]
                add     rax, r9
                cmp     rbx, rax
                jb      short loc_1402AE537
                mov     eax, [r10+4]
                add     rax, r9
                cmp     rbx, rax
                jnb     short loc_1402AE537
                inc     dl
                mov     rax, r10
                mov     [rdi+5], dl
                mov     [r14], r9
                mov     rbx, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402AE537:                          ; CODE XREF: RtlLookupFunctionEntry+7C↑j
                                        ; RtlLookupFunctionEntry+88↑j
                inc     ecx
                cmp     ecx, r8d
                jb      short loc_1402AE4F4

loc_1402AE53E:                          ; CODE XREF: RtlLookupFunctionEntry+46↑j
                                        ; RtlLookupFunctionEntry+4F↑j ...
                cmp     rbx, [rdi+8]
                jb      loc_1402AE64F
                cmp     rbx, [rdi+10h]
                jnb     loc_1402AE64F
                movzx   edx, byte ptr [rdi+4]
                mov     r10d, [rdi]
                mov     r9d, edx
                cmp     edx, r10d
                jnb     loc_1402AE64F

loc_1402AE565:                          ; CODE XREF: RtlLookupFunctionEntry+323↓j
                mov     ecx, r9d
                mov     eax, r9d
                add     rax, rax
                mov     r8, [rdi+rax*8+18h]
                lea     rax, [rcx+2]
                add     rax, rax
                mov     rcx, [rdi+rax*8]
                mov     eax, [rcx]
                add     rax, r8
                cmp     rbx, rax
                jb      loc_1402AE7AD
                mov     eax, [rcx+4]
                add     rax, r8
                cmp     rbx, rax
                jnb     loc_1402AE7AD
                inc     dl
                mov     [rdi+4], dl
                mov     rdx, r8
                mov     [r14], r8
                call    sub_1402AE7D0
                mov     rbx, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402AE5BD:                          ; CODE XREF: RtlLookupFunctionEntry+25E↓j
                                        ; RtlLookupFunctionEntry+26E↓j ...
                mov     eax, r11d
                cmp     rbx, rax
                jb      short loc_1402AE5D1
                mov     eax, [r10+4]
                cmp     rbx, rax
                jnb     short loc_1402AE5D1
                mov     rbp, r10

loc_1402AE5D1:                          ; CODE XREF: RtlLookupFunctionEntry+133↑j
                                        ; RtlLookupFunctionEntry+13C↑j ...
                test    rbp, rbp
                jz      short loc_1402AE628
                test    rdi, rdi
                jz      short loc_1402AE628
                cmp     byte ptr [rdi+6], 0
                jnz     short loc_1402AE628
                mov     ecx, [rdi]
                cmp     ecx, 0Ch
                jnb     short loc_1402AE628
                lea     eax, [rcx+1]
                mov     edx, ecx
                mov     [rdi], eax
                add     rcx, rcx
                mov     rax, [r14]
                mov     [rdi+rcx*8+18h], rax
                lea     rax, [rdx+2]
                add     rax, rax
                mov     [rdi+rax*8], rbp
                mov     rax, [r14]
                mov     edx, [rbp+0]
                mov     ecx, [rbp+4]
                add     rdx, rax
                add     rcx, rax
                cmp     rdx, [rdi+8]
                jb      loc_1402AE750

loc_1402AE61E:                          ; CODE XREF: RtlLookupFunctionEntry+2C4↓j
                cmp     rcx, [rdi+10h]
                jbe     short loc_1402AE628
                mov     [rdi+10h], rcx

loc_1402AE628:                          ; CODE XREF: RtlLookupFunctionEntry+144↑j
                                        ; RtlLookupFunctionEntry+149↑j ...
                mov     rdx, [r14]
                mov     rcx, rbp
                call    sub_1402AE7D0
                mov     rsi, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_0]
                mov     rbx, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
byte_1402AE64E  db 0CCh                 ; DATA XREF: .rdata:0000000140062B8C↑o
                                        ; .rdata:0000000140062BA0↑o ...
; ---------------------------------------------------------------------------

loc_1402AE64F:                          ; CODE XREF: RtlLookupFunctionEntry+1C↑j
                                        ; RtlLookupFunctionEntry+39↑j ...
                mov     rcx, qword ptr cs:xmmword_140E00020+8
                xor     eax, eax

loc_1402AE658:                          ; DATA XREF: .rdata:0000000140062B8C↑o
                                        ; .rdata:0000000140062BA0↑o ...
                mov     [rsp+48h+arg_0], rbp
                xorps   xmm0, xmm0
                mov     [rsp+48h+arg_8], rsi
                mov     [rsp+48h+var_18], rax
                movups  [rsp+48h+var_28], xmm0
                cmp     rbx, rcx
                jb      loc_14044DA4A
                mov     eax, dword ptr cs:qword_140E00030
                add     rax, rcx
                cmp     rbx, rax
                jnb     loc_14044DA4A
                movaps  xmm1, cs:xmmword_140E00020
                movsd   xmm0, cs:qword_140E00030
                movq    rsi, xmm1
                movups  [rsp+48h+var_28], xmm1
                movsd   [rsp+48h+var_18], xmm0

loc_1402AE6A9:                          ; CODE XREF: RtlLookupFunctionEntry+19F5CA↓j
                xor     ebp, ebp
                test    rsi, rsi
                jz      loc_1402AE628
                mov     ecx, dword ptr [rsp+48h+var_18+4]
                mov     rax, 0AAAAAAAAAAAAAAABh
                mov     r8, qword ptr [rsp+48h+var_28+8]
                mul     rcx
                mov     [r14], r8
                shr     rdx, 3
                test    edx, edx
                jz      loc_1402AE5D1
                lea     eax, [rdx-1]
                sub     rbx, r8
                lea     rax, [rax+rax*2]
                mov     r11d, [rsi+rax*4]
                lea     r10, [rsi+rax*4]
                cmp     rbx, r11
                jnb     loc_1402AE5BD
                lea     r8d, [rdx-2]
                mov     r9d, ebp
                test    r8d, r8d
                js      loc_1402AE5BD
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_1402AE710:                          ; CODE XREF: RtlLookupFunctionEntry+2B3↓j
                lea     eax, [r9+r8]
                sar     eax, 1
                movsxd  rcx, eax
                lea     rdx, [rcx+rcx*2]
                lea     r10, [rsi+rdx*4]
                mov     edx, [rsi+rdx*4]
                cmp     rbx, rdx
                jb      short loc_1402AE74A
                mov     ecx, [r10+0Ch]
                mov     r11d, edx
                cmp     rbx, rcx
                jb      loc_1402AE5BD
                lea     r9d, [rax+1]

loc_1402AE73D:                          ; CODE XREF: RtlLookupFunctionEntry+2BE↓j
                mov     r11d, edx
                cmp     r8d, r9d
                jge     short loc_1402AE710
                jmp     loc_1402AE5BD
; ---------------------------------------------------------------------------

loc_1402AE74A:                          ; CODE XREF: RtlLookupFunctionEntry+297↑j
                lea     r8d, [rax-1]
                jmp     short loc_1402AE73D
; ---------------------------------------------------------------------------

loc_1402AE750:                          ; CODE XREF: RtlLookupFunctionEntry+188↑j
                mov     [rdi+8], rdx
                jmp     loc_1402AE61E
; ---------------------------------------------------------------------------

loc_1402AE759:                          ; CODE XREF: RtlLookupFunctionEntry+2E↑j
                                        ; DATA XREF: .pdata:00000001400D01D0↑o ...
                mov     byte ptr [r8+7], 0
                movzx   ecx, cs:byte_140E01945
                add     rcx, rcx
                mov     rax, [r11+rcx*8+20h]
                test    rax, rax
                jz      loc_1402AE4C4
                mov     rdx, [r11+rcx*8+18h]
                mov     ecx, [rax]
                add     rcx, rdx
                cmp     rbx, rcx
                jb      loc_1402AE4C4
                mov     ecx, [rax+4]
                add     rcx, rdx
                cmp     rbx, rcx
                jnb     loc_1402AE4C4
                mov     rbx, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                mov     [r14], rdx
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402AE7AD:                          ; CODE XREF: RtlLookupFunctionEntry+F6↑j
                                        ; RtlLookupFunctionEntry+105↑j
                inc     r9d
                cmp     r9d, r10d
                jb      loc_1402AE565
                jmp     loc_1402AE64F
RtlLookupFunctionEntry endp
