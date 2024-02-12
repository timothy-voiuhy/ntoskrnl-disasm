SeGetLinkedToken proc near              ; DATA XREF: .pdata:0000000140122A6C↑o

var_50          = dword ptr -50h
var_48          = byte ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

                mov     [rsp-18h+arg_0], rbx
                mov     [rsp-18h+arg_8], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 70h
                xor     ebx, ebx
                lea     eax, [rcx-2]
                and     [r8], rbx
                xorps   xmm0, xmm0
                mov     [rbp+arg_10], rbx
                mov     r14, r8
                mov     rsi, rdx
                mov     edi, ecx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                cmp     eax, 1
                jbe     short loc_140923F97
                mov     eax, 0C000000Dh
                jmp     loc_140924053
; ---------------------------------------------------------------------------

loc_140923F97:                          ; CODE XREF: SeGetLinkedToken+3B↑j
                mov     rax, [rdx+0D8h]
                mov     ecx, [rax+20h]
                test    cl, 4
                jz      short loc_140923FBE
                cmp     edi, 2
                jnz     short loc_140923FBE
                call    sub_140206DA0
                test    al, al
                jz      short loc_140923FBE
                mov     edi, 0C000005Fh
                jmp     loc_140924051
; ---------------------------------------------------------------------------

loc_140923FBE:                          ; CODE XREF: SeGetLinkedToken+54↑j
                                        ; SeGetLinkedToken+59↑j ...
                mov     rdx, [rsi+0D8h]
                mov     eax, [rdx+20h]
                test    al, 4
                jz      short loc_140923FD1
                cmp     edi, 2
                jz      short loc_140923FDA

loc_140923FD1:                          ; CODE XREF: SeGetLinkedToken+7A↑j
                test    al, 2
                jz      short loc_140923FFC
                cmp     edi, 3
                jnz     short loc_140923FFC

loc_140923FDA:                          ; CODE XREF: SeGetLinkedToken+7F↑j
                lea     rcx, [rdx+10h]
                mov     rdx, [rdx+0A0h]
                lea     r8, [rbp+arg_10]
                call    sub_1406B772C
                mov     rbx, [rbp+arg_10]
                mov     edi, eax
                test    eax, eax
                js      short loc_140924044
                mov     rsi, [rbx+30h]

loc_140923FFC:                          ; CODE XREF: SeGetLinkedToken+83↑j
                                        ; SeGetLinkedToken+88↑j
                and     qword ptr [rbp+var_30+8], 0
                lea     rdx, [rbp+var_30]
                and     dword ptr [rbp+var_20+8], 0
                xorps   xmm0, xmm0
                and     qword ptr [rbp+var_20], 0
                mov     r9d, 1
                mov     [rsp+70h+var_38], r14
                xor     r8d, r8d
                mov     [rsp+70h+var_40], 0
                mov     rcx, rsi
                mov     [rsp+70h+var_48], 0
                and     [rsp+70h+var_50], 0
                mov     dword ptr [rbp+var_30], 30h ; '0'
                movdqu  [rbp+var_10], xmm0
                call    sub_14061E3A0
                mov     edi, eax

loc_140924044:                          ; CODE XREF: SeGetLinkedToken+A6↑j
                test    rbx, rbx
                jz      short loc_140924051
                mov     rcx, rbx
                call    sub_14020203C

loc_140924051:                          ; CODE XREF: SeGetLinkedToken+69↑j
                                        ; SeGetLinkedToken+F7↑j
                mov     eax, edi

loc_140924053:                          ; CODE XREF: SeGetLinkedToken+42↑j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeGetLinkedToken endp
