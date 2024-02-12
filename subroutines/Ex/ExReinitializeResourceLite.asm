ExReinitializeResourceLite proc near    ; DATA XREF: .rdata:000000014006F310↑o
                                        ; .rdata:000000014006F320↑o ...

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046636A SIZE 00000139 BYTES

                push    rbx
                push    rdi
                sub     rsp, 48h
                xor     edi, edi
                mov     rbx, rcx
                test    byte ptr [rcx+1Ah], 1
                jnz     loc_14046636A

loc_1402FABB6:                          ; DATA XREF: .rdata:000000014006F310↑o
                                        ; .rdata:000000014006F320↑o ...
                mov     [rsp+58h+arg_0], rbp
                mov     [rsp+58h+arg_8], rsi
                mov     rsi, [rcx+10h]
                mov     [rsp+58h+arg_10], r12
                mov     [rsp+58h+var_18], r13
                mov     [rsp+58h+var_20], r14
                mov     r14d, edi
                mov     [rsp+58h+var_28], r15
                test    rsi, rsi
                jnz     loc_1402FAC9D
                mov     ebp, edi

loc_1402FABE6:                          ; CODE XREF: ExReinitializeResourceLite+146↓j
                mov     rsi, [rbx+30h]
                test    rsi, rsi
                jz      short loc_1402FABFA
                inc     ebp
                test    sil, 3
                jnz     short loc_1402FABFA
                inc     r14d

loc_1402FABFA:                          ; CODE XREF: ExReinitializeResourceLite+4D↑j
                                        ; ExReinitializeResourceLite+55↑j
                mov     ecx, [rbx+38h]
                mov     edx, ecx
                and     edx, 2
                jnz     loc_140466419
                test    sil, 3
                jnz     short loc_1402FAC44

loc_1402FAC0E:                          ; CODE XREF: ExReinitializeResourceLite+16B87D↓j
                test    rsi, rsi
                jz      short loc_1402FAC44
                test    byte ptr [rbx+1Ah], 1
                jnz     loc_140466422
                cmp     cs:dword_140C16948, edi
                jnz     loc_140466422

loc_1402FAC29:                          ; CODE XREF: ExReinitializeResourceLite+16B884↓j
                                        ; ExReinitializeResourceLite+16B896↓j
                test    cl, 1
                jnz     loc_14046645F

loc_1402FAC32:                          ; CODE XREF: ExReinitializeResourceLite+16B8D2↓j
                test    cl, 4
                jnz     loc_1402FACEB

loc_1402FAC3B:                          ; CODE XREF: ExReinitializeResourceLite+15B↓j
                test    cl, 2
                jnz     loc_140466477

loc_1402FAC44:                          ; CODE XREF: ExReinitializeResourceLite+6C↑j
                                        ; ExReinitializeResourceLite+71↑j ...
                mov     [rbx+18h], edi
                xorps   xmm0, xmm0
                mov     [rbx+40h], rdi
                xorps   xmm1, xmm1
                movups  xmmword ptr [rbx+20h], xmm0
                movups  xmmword ptr [rbx+30h], xmm1
                mov     [rbx+48h], rdi
                inc     dword ptr gs:865Ch
                test    dword ptr cs:xmmword_140CFC480+4, 20000h
                jnz     loc_14046648A

loc_1402FAC75:                          ; CODE XREF: ExReinitializeResourceLite+16B8FE↓j
                mov     r14, [rsp+58h+var_20]
                xor     eax, eax
                mov     r13, [rsp+58h+var_18]
                mov     r12, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_0]
                mov     r15, [rsp+58h+var_28]
                add     rsp, 48h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_1402FAC9C  db 0CCh                 ; DATA XREF: .pdata:00000001400D3740↑o
                                        ; .pdata:00000001400D374C↑o
; ---------------------------------------------------------------------------

loc_1402FAC9D:                          ; CODE XREF: ExReinitializeResourceLite+3E↑j
                                        ; DATA XREF: .pdata:00000001400D374C↑o ...
                mov     ebp, [rsi+8]
                mov     r15d, 1
                mov     r13, rsi
                mov     eax, ebp
                cmp     ebp, r15d
                jbe     short loc_1402FACD3

loc_1402FACB0:                          ; CODE XREF: ExReinitializeResourceLite+12E↓j
                add     r13, 10h
                mov     rcx, r13
                call    sub_1402FAD08
                mov     r12, rax
                test    rax, rax
                jnz     loc_140466384

loc_1402FACC8:                          ; CODE XREF: ExReinitializeResourceLite+16B860↓j
                                        ; ExReinitializeResourceLite+16B874↓j
                inc     r15d
                cmp     r15d, ebp
                jb      short loc_1402FACB0
                mov     eax, [rsi+8]

loc_1402FACD3:                          ; CODE XREF: ExReinitializeResourceLite+10E↑j
                lea     r8d, [rax-1]
                xor     edx, edx
                shl     r8, 4
                lea     rcx, [rsi+10h]
                call    memset
                jmp     loc_1402FABE6
; ---------------------------------------------------------------------------

loc_1402FACEB:                          ; CODE XREF: ExReinitializeResourceLite+95↑j
                mov     edx, 1
                mov     rcx, rsi
                call    sub_14030E6B4
                mov     ecx, [rbx+38h]
                jmp     loc_1402FAC3B
ExReinitializeResourceLite endp
