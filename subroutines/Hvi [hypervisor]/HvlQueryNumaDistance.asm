HvlQueryNumaDistance proc near          ; CODE XREF: sub_140A4F5CC+32287↓p
                                        ; DATA XREF: .pdata:00000001400F168C↑o

var_48          = byte ptr -48h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_10          = qword ptr -10h
var_8           = byte ptr -8

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 60h
                xorps   xmm0, xmm0
                movzx   esi, dx
                xorps   xmm1, xmm1
                movzx   ebx, cx
                mov     r9d, 8
                lea     rcx, [rax-28h]
                mov     r15, r8
                xor     r8d, r8d
                movups  xmmword ptr [rax-28h], xmm0
                lea     edx, [r9-7]
                movups  xmmword ptr [rax-18h], xmm0
                movups  xmmword ptr [rax-48h], xmm1
                movups  xmmword ptr [rax-38h], xmm1
                call    sub_1404F2930
                mov     r9d, 8
                lea     rcx, [rsp+68h+var_48]
                xor     r8d, r8d
                mov     rdi, rax
                lea     edx, [r9-6]
                call    sub_1404F2930
                lea     r8, qword_140D23380
                mov     r14, rax
                mov     rcx, [r8+rbx*8]
                movzx   ecx, word ptr [rcx+94h]
                mov     rcx, [r8+rcx*8]
                mov     edx, [rcx+0A8h]
                mov     rcx, [r8+rsi*8]
                mov     [rdi], edx
                mov     rdx, [rsp+68h+var_10]
                movzx   eax, word ptr [rcx+94h]
                mov     rax, [r8+rax*8]
                mov     r8, [rsp+68h+var_30]
                mov     ecx, [rax+0A8h]
                mov     [rdi+4], ecx
                mov     ecx, 78h ; 'x'
                call    HvlInvokeHypercall
                test    ax, ax
                jz      short loc_1404F2490
                or      rcx, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1404F2493
; ---------------------------------------------------------------------------

loc_1404F2490:                          ; CODE XREF: HvlQueryNumaDistance+B8↑j
                mov     rcx, [r14]

loc_1404F2493:                          ; CODE XREF: HvlQueryNumaDistance+BE↑j
                neg     ax
                mov     [r15], rcx
                lea     rcx, [rsp+68h+var_48]
                sbb     ebx, ebx
                and     ebx, 0C0000001h
                call    sub_1404F3520
                lea     rcx, [rsp+68h+var_28]
                call    sub_1404F3520
                lea     r11, [rsp+68h+var_8]
                mov     eax, ebx
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlQueryNumaDistance endp
