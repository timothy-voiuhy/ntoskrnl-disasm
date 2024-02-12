KeBugCheckEx    proc near               ; CODE XREF: SeSecurityAttributePresent+11A↑p
                                        ; sub_140208EE8+35D↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

                mov     [rsp+arg_0], rcx
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                pushfq
                sub     rsp, 30h
                cli
                mov     rcx, gs:20h
                mov     rcx, [rcx+85C0h]
                call    RtlCaptureContext
                mov     rcx, gs:20h
                add     rcx, 100h
                call    sub_1403FDA80
                mov     r10, gs:20h
                mov     r10, [r10+85C0h]
                mov     rax, [rsp+38h+arg_0]
                mov     [r10+80h], rax
                mov     rax, [rsp+38h+var_8]
                mov     [r10+44h], rax
                lea     rax, loc_1403FD719
                cmp     rax, [rsp+38h]
                jnz     short loc_1403FD7B5
                lea     r8, [rsp+38h+arg_28]
                lea     r9, KeBugCheck
                jmp     short loc_1403FD7C1
; ---------------------------------------------------------------------------

loc_1403FD7B5:                          ; CODE XREF: KeBugCheckEx+75↑j
                lea     r8, [rsp+38h]
                lea     r9, KeBugCheckEx

loc_1403FD7C1:                          ; CODE XREF: KeBugCheckEx+83↑j
                mov     [r10+98h], r8
                mov     [r10+0F8h], r9
                mov     rax, cr8
                mov     gs:8018h, al
                cmp     al, 2
                jge     short loc_1403FD7E8
                mov     ecx, 2
                mov     cr8, rcx

loc_1403FD7E8:                          ; CODE XREF: KeBugCheckEx+AD↑j
                mov     rax, [rsp+38h+var_8]
                and     rax, 200h
                jz      short loc_1403FD7F6
                sti

loc_1403FD7F6:                          ; CODE XREF: KeBugCheckEx+C3↑j
                lock inc cs:dword_140C313E4
                mov     rcx, [rsp+38h+arg_0]
                mov     [rsp+38h+var_10], 0
                lea     rax, loc_1403FD719
                cmp     rax, [rsp+38h]
                jz      short loc_1403FD838
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                mov     r9, [rsp+38h+arg_18]
                mov     r8, [rsp+38h+arg_10]
                mov     rdx, [rsp+38h+arg_8]
                call    sub_140516C30
                nop

loc_1403FD838:                          ; CODE XREF: KeBugCheckEx+E7↑j
                mov     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140516C30
                nop
                retn
KeBugCheckEx    endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_1403FD850:                         ; DATA XREF: .pdata:00000001400E331C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FD860   proc near               ; CODE XREF: sub_1402AA760+2E4↑p
                                        ; sub_140339370+1A1↑p ...

var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
arg_20          = qword ptr  28h

                push    rbx
                sub     rsp, 0D0h
                movaps  [rsp+0D8h+var_A8], xmm6
                movaps  [rsp+0D8h+var_98], xmm7
                movaps  [rsp+0D8h+var_88], xmm8
                movaps  [rsp+0D8h+var_78], xmm9
                movaps  [rsp+0D8h+var_68], xmm10
                movaps  [rsp+0D8h+var_58], xmm11
                movaps  [rsp+0D8h+var_48], xmm12
                movaps  [rsp+0D8h+var_38], xmm13
                movaps  [rsp+0D8h+var_28], xmm14
                movaps  [rsp+0D8h+var_18], xmm15
                mov     rax, cr8
                mov     [rsp+0D8h+var_B0], eax
                cmp     eax, 1
                jnb     short loc_1403FD8C8
                mov     eax, 1
                mov     cr8, rax

loc_1403FD8C8:                          ; CODE XREF: sub_1403FD860+5D↑j
                mov     rbx, r8
                mov     r10, [rsp+0D8h+arg_20]
                mov     [rsp+0D8h+var_B8], r10
                call    sub_1402D2F60
                test    al, al
                jz      short loc_1403FD8EB
                lea     rcx, [rbx+100h]
                fxrstor dword ptr [rcx]

loc_1403FD8EB:                          ; CODE XREF: sub_1403FD860+7F↑j
                cmp     [rsp+0D8h+var_B0], 1
                jnb     short loc_1403FD8FA
                mov     eax, [rsp+0D8h+var_B0]
                mov     cr8, rax

loc_1403FD8FA:                          ; CODE XREF: sub_1403FD860+90↑j
                movaps  xmm6, [rsp+0D8h+var_A8]
                movaps  xmm7, [rsp+0D8h+var_98]
                movaps  xmm8, [rsp+0D8h+var_88]
                movaps  xmm9, [rsp+0D8h+var_78]
                movaps  xmm10, [rsp+0D8h+var_68]
                movaps  xmm11, [rsp+0D8h+var_58]
                movaps  xmm12, [rsp+0D8h+var_48]
                movaps  xmm13, [rsp+0D8h+var_38]
                movaps  xmm14, [rsp+0D8h+var_28]
                movaps  xmm15, [rsp+0D8h+var_18]
                add     rsp, 0D0h
                pop     rbx
                retn
sub_1403FD860   endp

; ---------------------------------------------------------------------------
algn_1403FD94C:                         ; DATA XREF: .pdata:00000001400E3328↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FD960   proc near               ; CODE XREF: sub_14099D840+42D↓p
                                        ; DATA XREF: .pdata:00000001400E3334↑o
                mov     rax, cr0
                mov     [rcx], rax
                mov     rax, cr2
                mov     [rcx+8], rax
                mov     rax, cr3
                mov     [rcx+10h], rax
                mov     rax, cr4
                mov     [rcx+18h], rax
                mov     rax, cr8
                mov     [rcx+0A0h], rax
                sgdt    fword ptr [rcx+56h]
                sidt    fword ptr [rcx+66h]
                str     word ptr [rcx+70h]
                sldt    word ptr [rcx+72h]
                stmxcsr dword ptr [rcx+74h]
                retn
sub_1403FD960   endp

; ---------------------------------------------------------------------------
byte_1403FD99B  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E3334↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403FD9B0   proc near               ; CODE XREF: sub_140511B44+CE↓p
                                        ; sub_14051E050+227↓p ...
                mov     rax, [rcx]
                mov     cr0, rax
                mov     rax, [rcx+10h]
                mov     cr3, rax
                mov     rax, [rcx+18h]
                mov     cr4, rax
                mov     rax, [rcx+0A0h]
                mov     cr8, rax
                mov     al, cs:byte_140CFC408
                or      al, cs:byte_140CFC606
                test    al, al
                jnz     short loc_1403FD9FE
                lgdt    fword ptr [rcx+56h]
                lidt    fword ptr [rcx+66h]
                movzx   eax, word ptr [rcx+70h]
                add     rax, [rcx+58h]
                and     byte ptr [rax+5], 0FDh
                ltr     word ptr [rcx+70h]
                mov     ax, [rcx+72h]
                lldt    ax

loc_1403FD9FE:                          ; CODE XREF: sub_1403FD9B0+2D↑j
                ldmxcsr dword ptr [rcx+74h]
                xor     edx, edx
                mov     dr7, rdx
                mov     rax, [rcx+20h]
                mov     rdx, [rcx+28h]
                mov     dr0, rax
                mov     dr1, rdx
                mov     rax, [rcx+30h]
                mov     rdx, [rcx+38h]
                mov     dr2, rax
                mov     dr3, rdx
                mov     rdx, [rcx+48h]
                xor     eax, eax
                mov     dr6, rax
                mov     dr7, rdx
                test    byte ptr gs:8722h, 2
                jz      short locret_1403FDA73
                test    dx, 300h
                jz      short locret_1403FDA73
                test    cs:dword_140C31428, 2
                jnz     short locret_1403FDA73
                test    dx, 200h
                jz      short loc_1403FDA57
                or      eax, 2

loc_1403FDA57:                          ; CODE XREF: sub_1403FD9B0+A2↑j
                test    dx, 100h
                jz      short loc_1403FDA61
                or      eax, 1

loc_1403FDA61:                          ; CODE XREF: sub_1403FD9B0+AC↑j
                mov     r8d, eax
                mov     ecx, 1D9h
                rdmsr
                and     eax, 0FFFFFFFCh
                or      eax, r8d
                wrmsr

locret_1403FDA73:                       ; CODE XREF: sub_1403FD9B0+88↑j
                                        ; sub_1403FD9B0+8F↑j ...
                retn
sub_1403FD9B0   endp

; ---------------------------------------------------------------------------
algn_1403FDA74:                         ; DATA XREF: .pdata:00000001400E3340↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FDA80   proc near               ; CODE XREF: KeBugCheckEx+3F↑p
                                        ; KeSaveStateForHibernate+EA↓p ...
                mov     rax, cr0
                mov     [rcx], rax
                mov     rax, cr2
                mov     [rcx+8], rax
                mov     rax, cr3
                mov     [rcx+10h], rax
                mov     rax, cr4
                mov     [rcx+18h], rax
                mov     rax, cr8
                mov     [rcx+0A0h], rax
                xor     eax, eax
                mov     [rcx+72h], ax
                mov     al, cs:byte_140CFC408
                or      al, cs:byte_140CFC606
                test    al, al
                jnz     short loc_1403FDAC8
                sgdt    fword ptr [rcx+56h]
                sidt    fword ptr [rcx+66h]
                str     word ptr [rcx+70h]

loc_1403FDAC8:                          ; CODE XREF: sub_1403FDA80+3A↑j
                stmxcsr dword ptr [rcx+74h]
                mov     qword ptr [rcx+0D8h], 0
                test    qword ptr [rcx+18h], 40000h
                jz      short loc_1403FDAFA
                mov     r8, rcx
                xor     ecx, ecx
                xgetbv
                mov     [r8+0D8h], eax
                mov     [r8+0DCh], edx
                mov     rcx, r8

loc_1403FDAFA:                          ; CODE XREF: sub_1403FDA80+5F↑j
                mov     rax, dr0
                mov     rdx, dr1
                mov     [rcx+20h], rax
                mov     [rcx+28h], rdx
                mov     rax, dr2
                mov     rdx, dr3
                mov     [rcx+30h], rax
                mov     [rcx+38h], rdx
                mov     rax, dr6
                mov     rdx, dr7
                mov     [rcx+40h], rax
                mov     [rcx+48h], rdx
                xor     eax, eax
                mov     dr7, rax
                test    byte ptr gs:8722h, 2
                jz      locret_1403FDBF1
                test    dx, 300h
                jz      locret_1403FDBF1
                test    cs:dword_140C31428, 2
                jz      short loc_1403FDB70
                mov     [rcx+88h], rax
                mov     [rcx+80h], rax
                mov     [rcx+98h], rax
                mov     [rcx+90h], rax
                jmp     locret_1403FDBF1
; ---------------------------------------------------------------------------

loc_1403FDB70:                          ; CODE XREF: sub_1403FDA80+CD↑j
                mov     r9d, cs:dword_140CFC91C
                mov     r8, rcx
                or      r9d, r9d
                jz      short loc_1403FDB87
                mov     ecx, r9d
                rdmsr
                mov     r9d, eax

loc_1403FDB87:                          ; CODE XREF: sub_1403FDA80+FD↑j
                mov     ecx, cs:dword_140CFC61C
                add     ecx, r9d
                rdmsr
                mov     [r8+88h], eax
                mov     ecx, cs:dword_140CFC658
                mov     [r8+8Ch], edx
                add     ecx, r9d
                rdmsr
                mov     [r8+80h], eax
                mov     [r8+84h], edx
                mov     ecx, cs:dword_140CFC740
                rdmsr
                mov     [r8+98h], eax
                mov     [r8+9Ch], edx
                mov     ecx, cs:dword_140CFC73C
                rdmsr
                mov     [r8+90h], eax
                mov     [r8+94h], edx
                mov     ecx, 1D9h
                rdmsr
                and     eax, 0FFFFFFFCh
                wrmsr

locret_1403FDBF1:                       ; CODE XREF: sub_1403FDA80+B2↑j
                                        ; sub_1403FDA80+BD↑j ...
                retn
sub_1403FDA80   endp

; ---------------------------------------------------------------------------
algn_1403FDBF2:                         ; DATA XREF: .pdata:00000001400E334C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FDC00   proc near               ; CODE XREF: sub_1403FDE70+1C2↓p
                                        ; sub_1403FE270+1B7↓p ...
                xor     edx, edx
                mov     dr7, rdx
                mov     rax, [rbp+58h]
                mov     rdx, [rbp+60h]
                mov     dr0, rax
                mov     dr1, rdx
                mov     rax, [rbp+68h]
                mov     rdx, [rbp+70h]
                mov     dr2, rax
                mov     dr3, rdx
                mov     rdx, [rbp+80h]
                xor     eax, eax
                mov     dr6, rax
                mov     dr7, rdx
                test    byte ptr gs:8722h, 2
                jz      short locret_1403FDC74
                test    dx, 300h
                jz      short locret_1403FDC74
                test    cs:dword_140C31428, 2
                jnz     short locret_1403FDC74
                test    dx, 200h
                jz      short loc_1403FDC58
                or      eax, 2

loc_1403FDC58:                          ; CODE XREF: sub_1403FDC00+53↑j
                test    dx, 100h
                jz      short loc_1403FDC62
                or      eax, 1

loc_1403FDC62:                          ; CODE XREF: sub_1403FDC00+5D↑j
                mov     r8d, eax
                mov     ecx, 1D9h
                rdmsr
                and     eax, 0FFFFFFFCh
                or      eax, r8d
                wrmsr

locret_1403FDC74:                       ; CODE XREF: sub_1403FDC00+39↑j
                                        ; sub_1403FDC00+40↑j ...
                retn
sub_1403FDC00   endp

; ---------------------------------------------------------------------------
algn_1403FDC75:                         ; DATA XREF: .pdata:00000001400E3358↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FDC80   proc near               ; CODE XREF: sub_1404011F0+258↓p
                                        ; sub_140402520+25C↓p ...
                mov     r9, gs:18h
                mov     rax, dr0
                mov     rdx, dr1
                mov     [rbp+58h], rax
                mov     [rbp+60h], rdx
                mov     rax, dr2
                mov     rdx, dr3
                mov     [rbp+68h], rax
                mov     [rbp+70h], rdx
                mov     rax, dr6
                mov     rdx, dr7
                mov     [rbp+78h], rax
                mov     [rbp+80h], rdx
                xor     eax, eax
                mov     dr7, rax
                test    byte ptr gs:8722h, 2
                jz      loc_1403FDD75
                test    dx, 300h
                jz      loc_1403FDD75
                test    cs:dword_140C31428, 2
                jz      short loc_1403FDCFF
                mov     [rbp+98h], rax
                mov     [rbp+90h], rax
                mov     [rbp+0A8h], rax
                mov     [rbp+0A0h], rax
                jmp     short loc_1403FDD75
; ---------------------------------------------------------------------------

loc_1403FDCFF:                          ; CODE XREF: sub_1403FDC80+5F↑j
                mov     r8d, cs:dword_140CFC91C
                or      r8d, r8d
                jz      short loc_1403FDD13
                mov     ecx, r8d
                rdmsr
                mov     r8d, eax

loc_1403FDD13:                          ; CODE XREF: sub_1403FDC80+89↑j
                mov     ecx, cs:dword_140CFC61C
                add     ecx, r8d
                rdmsr
                mov     [rbp+98h], eax
                mov     ecx, cs:dword_140CFC658
                mov     [rbp+9Ch], edx
                add     ecx, r8d
                rdmsr
                mov     [rbp+90h], eax
                mov     [rbp+94h], edx
                mov     ecx, cs:dword_140CFC740
                rdmsr
                mov     [rbp+0A8h], eax
                mov     [rbp+0ACh], edx
                mov     ecx, cs:dword_140CFC73C
                rdmsr
                mov     [rbp+0A0h], eax
                mov     [rbp+0A4h], edx
                mov     ecx, 1D9h
                rdmsr
                and     eax, 0FFFFFFFCh
                wrmsr

loc_1403FDD75:                          ; CODE XREF: sub_1403FDC80+44↑j
                                        ; sub_1403FDC80+4F↑j ...
                test    word ptr [r9+2C8h], 355h
                jz      short locret_1403FDDFC
                mov     rax, [r9+2A0h]
                mov     rdx, [r9+2A8h]
                mov     dr0, rax
                mov     dr1, rdx
                mov     rax, [r9+2B0h]
                mov     rdx, [r9+2B8h]
                mov     dr2, rax
                mov     dr3, rdx
                mov     rdx, [r9+2C8h]
                xor     eax, eax
                mov     dr6, rax
                mov     dr7, rdx
                test    byte ptr gs:8722h, 2
                jz      short locret_1403FDDFC
                test    dx, 300h
                jz      short locret_1403FDDFC
                test    cs:dword_140C31428, 2
                jnz     short locret_1403FDDFC
                test    dx, 200h
                jz      short loc_1403FDDE0
                or      eax, 2

loc_1403FDDE0:                          ; CODE XREF: sub_1403FDC80+15B↑j
                test    dx, 100h
                jz      short loc_1403FDDEA
                or      eax, 1

loc_1403FDDEA:                          ; CODE XREF: sub_1403FDC80+165↑j
                mov     r8d, eax
                mov     ecx, 1D9h
                rdmsr
                and     eax, 0FFFFFFFCh
                or      eax, r8d
                wrmsr

locret_1403FDDFC:                       ; CODE XREF: sub_1403FDC80+FF↑j
                                        ; sub_1403FDC80+141↑j ...
                retn
sub_1403FDC80   endp

; ---------------------------------------------------------------------------
byte_1403FDDFD  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E3364↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403FDE10   proc near               ; CODE XREF: sub_14024AED0+10↑p
                                        ; sub_14027C800+4C↑p ...

arg_0           = byte ptr  8

                lea     rax, [rsp+arg_0]
                retn
sub_1403FDE10   endp

; ---------------------------------------------------------------------------
algn_1403FDE16:                         ; DATA XREF: .pdata:00000001400E3370↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FDE20   proc near               ; CODE XREF: sub_140526110:loc_14052661C↓p
                                        ; sub_1408BF000:loc_1408BF33B↓p
                                        ; DATA XREF: ...
                fninit
                retn
sub_1403FDE20   endp

; ---------------------------------------------------------------------------
algn_1403FDE23:                         ; DATA XREF: .pdata:00000001400E337C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403FDE30   proc near               ; CODE XREF: sub_1408BF000+151↓p
                                        ; sub_1408C0230+248↓p
                                        ; DATA XREF: ...
                fnclex
                fstcw   word ptr [rcx]
                retn
sub_1403FDE30   endp

; ---------------------------------------------------------------------------
algn_1403FDE36:                         ; DATA XREF: .pdata:00000001400E3388↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FDE40   proc near               ; CODE XREF: sub_140526110+515↓p
                                        ; DATA XREF: .pdata:00000001400E3394↑o
                fldcw   word ptr [rcx]
                retn
sub_1403FDE40   endp

; ---------------------------------------------------------------------------
algn_1403FDE43:                         ; DATA XREF: .pdata:00000001400E3394↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FDE60   proc near               ; DATA XREF: .pdata:00000001400E33A0↑o
                                        ; PAGE:000000014098A608↓o
                movzx   edx, dl
                jmp     short sub_1403FDE70
sub_1403FDE60   endp

; ---------------------------------------------------------------------------
algn_1403FDE65:                         ; DATA XREF: .pdata:00000001400E33A0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403FDE70   proc near               ; CODE XREF: sub_1403FDE60+3↑j
                                        ; sub_14058FC58+4↓p ...

var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_38          = byte ptr -38h

                mov     rbx, [rbp+0C0h]
                mov     rdi, [rbp+0C8h]
                mov     rsi, [rbp+0D0h]
                xor     eax, eax
                mov     [rbp-50h], rax
                sub     rsp, 138h
                lea     rax, [rsp+138h+var_38]
                movaps  [rsp+138h+var_108], xmm6
                movaps  [rsp+138h+var_F8], xmm7
                movaps  [rsp+138h+var_E8], xmm8
                movaps  [rsp+138h+var_D8], xmm9
                movaps  [rsp+138h+var_C8], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                mov     r8, rsp
                lea     r9, [rbp-80h]
                call    sub_1402AA420
                test    eax, eax
                jle     loc_1403FE258
                mov     rcx, gs:188h
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_1403FDF27
                mov     rdx, [rbp+0B8h]
                mov     [rcx+90h], rdx
                mov     dl, [rbp-58h]
                mov     [rcx+232h], dl

loc_1403FDF27:                          ; CODE XREF: sub_1403FDE70+9E↑j
                lea     rcx, [rsp+138h+var_38]
                movaps  xmm6, [rsp+138h+var_108]
                movaps  xmm7, [rsp+138h+var_F8]
                movaps  xmm8, [rsp+138h+var_E8]
                movaps  xmm9, [rsp+138h+var_D8]
                movaps  xmm10, [rsp+138h+var_C8]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                cli
                test    byte ptr [rbp+0F0h], 1
                jz      loc_1403FE20D
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_1403FDF99
                stac

loc_1403FDF99:                          ; CODE XREF: sub_1403FDE70+124↑j
                                        ; sub_1403FDE70+154↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_1403FDFC6
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_1403FDF99
; ---------------------------------------------------------------------------

loc_1403FDFC6:                          ; CODE XREF: sub_1403FDE70+139↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_1403FDFD8
                xor     ecx, ecx
                call    sub_1402ADF00

loc_1403FDFD8:                          ; CODE XREF: sub_1403FDE70+15F↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_1403FDFEE
                call    sub_1403FE910

loc_1403FDFEE:                          ; CODE XREF: sub_1403FDE70+177↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_1403FE024
                test    byte ptr [rcx+2], 1
                jz      short loc_1403FE013
                call    sub_14051C050
                mov     rcx, gs:188h

loc_1403FE013:                          ; CODE XREF: sub_1403FDE70+193↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_1403FE024
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_1403FE024:                          ; CODE XREF: sub_1403FDE70+18D↑j
                                        ; sub_1403FDE70+1A7↑j
                ldmxcsr dword ptr [rbp-54h]
                cmp     word ptr [rbp+80h], 0
                jz      short loc_1403FE037
                call    sub_1403FDC00

loc_1403FE037:                          ; CODE XREF: sub_1403FDE70+1C0↑j
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_1403FE08C
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1403FE08C:                          ; CODE XREF: sub_1403FDE70+209↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_1403FE0A7
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_1403FE0A7:                          ; CODE XREF: sub_1403FDE70+227↑j
                btr     word ptr gs:278h, 5
                jnb     loc_1403FE1DD
                call    loc_1403FE1CB

loc_1403FE0BD:                          ; CODE XREF: sub_1403FDE70+25A↓p
                add     rsp, 8
                call    loc_1403FE1D4

loc_1403FE0C6:                          ; CODE XREF: sub_1403FDE70+263↓p
                add     rsp, 8
                call    loc_1403FE0BD

loc_1403FE0CF:                          ; CODE XREF: sub_1403FDE70+26C↓p
                add     rsp, 8
                call    loc_1403FE0C6

loc_1403FE0D8:                          ; CODE XREF: sub_1403FDE70+275↓p
                add     rsp, 8
                call    loc_1403FE0CF

loc_1403FE0E1:                          ; CODE XREF: sub_1403FDE70+27E↓p
                add     rsp, 8
                call    loc_1403FE0D8

loc_1403FE0EA:                          ; CODE XREF: sub_1403FDE70+287↓p
                add     rsp, 8
                call    loc_1403FE0E1

loc_1403FE0F3:                          ; CODE XREF: sub_1403FDE70+290↓p
                add     rsp, 8
                call    loc_1403FE0EA

loc_1403FE0FC:                          ; CODE XREF: sub_1403FDE70+299↓p
                add     rsp, 8
                call    loc_1403FE0F3

loc_1403FE105:                          ; CODE XREF: sub_1403FDE70+2A2↓p
                add     rsp, 8
                call    loc_1403FE0FC

loc_1403FE10E:                          ; CODE XREF: sub_1403FDE70+2AB↓p
                add     rsp, 8
                call    loc_1403FE105

loc_1403FE117:                          ; CODE XREF: sub_1403FDE70+2B4↓p
                add     rsp, 8
                call    loc_1403FE10E

loc_1403FE120:                          ; CODE XREF: sub_1403FDE70+2BD↓p
                add     rsp, 8
                call    loc_1403FE117

loc_1403FE129:                          ; CODE XREF: sub_1403FDE70+2C6↓p
                add     rsp, 8
                call    loc_1403FE120

loc_1403FE132:                          ; CODE XREF: sub_1403FDE70+2CF↓p
                add     rsp, 8
                call    loc_1403FE129

loc_1403FE13B:                          ; CODE XREF: sub_1403FDE70+2D8↓p
                add     rsp, 8
                call    loc_1403FE132

loc_1403FE144:                          ; CODE XREF: sub_1403FDE70+2E1↓p
                add     rsp, 8
                call    loc_1403FE13B

loc_1403FE14D:                          ; CODE XREF: sub_1403FDE70+2EA↓p
                add     rsp, 8
                call    loc_1403FE144

loc_1403FE156:                          ; CODE XREF: sub_1403FDE70+2F3↓p
                add     rsp, 8
                call    loc_1403FE14D

loc_1403FE15F:                          ; CODE XREF: sub_1403FDE70+2FC↓p
                add     rsp, 8
                call    loc_1403FE156

loc_1403FE168:                          ; CODE XREF: sub_1403FDE70+305↓p
                add     rsp, 8
                call    loc_1403FE15F

loc_1403FE171:                          ; CODE XREF: sub_1403FDE70+30E↓p
                add     rsp, 8
                call    loc_1403FE168

loc_1403FE17A:                          ; CODE XREF: sub_1403FDE70+317↓p
                add     rsp, 8
                call    loc_1403FE171

loc_1403FE183:                          ; CODE XREF: sub_1403FDE70+320↓p
                add     rsp, 8
                call    loc_1403FE17A

loc_1403FE18C:                          ; CODE XREF: sub_1403FDE70+329↓p
                add     rsp, 8
                call    loc_1403FE183

loc_1403FE195:                          ; CODE XREF: sub_1403FDE70+332↓p
                add     rsp, 8
                call    loc_1403FE18C

loc_1403FE19E:                          ; CODE XREF: sub_1403FDE70+33B↓p
                add     rsp, 8
                call    loc_1403FE195

loc_1403FE1A7:                          ; CODE XREF: sub_1403FDE70+344↓p
                add     rsp, 8
                call    loc_1403FE19E

loc_1403FE1B0:                          ; CODE XREF: sub_1403FDE70+34D↓p
                add     rsp, 8
                call    loc_1403FE1A7

loc_1403FE1B9:                          ; CODE XREF: sub_1403FDE70+356↓p
                add     rsp, 8
                call    loc_1403FE1B0

loc_1403FE1C2:                          ; CODE XREF: sub_1403FDE70+35F↓p
                add     rsp, 8
                call    loc_1403FE1B9

loc_1403FE1CB:                          ; CODE XREF: sub_1403FDE70+248↑p
                add     rsp, 8
                call    loc_1403FE1C2

loc_1403FE1D4:                          ; CODE XREF: sub_1403FDE70+251↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_1403FE1DD:                          ; CODE XREF: sub_1403FDE70+242↑j
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_1403FE208
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_1403FE208:                          ; CODE XREF: sub_1403FDE70+391↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_1403FE20D:                          ; CODE XREF: sub_1403FDE70+117↑j
                ldmxcsr dword ptr [rbp-54h]
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                iretq
; ---------------------------------------------------------------------------

loc_1403FE258:                          ; CODE XREF: sub_1403FDE70+88↑j
                add     rsp, 138h
                retn
sub_1403FDE70   endp

; ---------------------------------------------------------------------------
byte_1403FE260  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E33AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403FE270   proc near               ; DATA XREF: .pdata:00000001400E33B8↑o
                                        ; PAGE:000000014098A568↓o

var_118         = byte ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_38          = byte ptr -38h

                sub     rsp, 138h
                lea     rax, [rsp+138h+var_38]
                movaps  [rsp+138h+var_108], xmm6
                movaps  [rsp+138h+var_F8], xmm7
                movaps  [rsp+138h+var_E8], xmm8
                movaps  [rsp+138h+var_D8], xmm9
                movaps  [rsp+138h+var_C8], xmm10
                movaps  xmmword ptr [rax-80h], xmm11
                movaps  xmmword ptr [rax-70h], xmm12
                movaps  xmmword ptr [rax-60h], xmm13
                movaps  xmmword ptr [rax-50h], xmm14
                movaps  xmmword ptr [rax-40h], xmm15
                mov     [rax], rbx
                mov     [rax+8], rdi
                mov     [rax+10h], rsi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                mov     [rax+28h], r14
                mov     [rax+30h], r15
                mov     rax, [rbp+0E8h]
                mov     [rbp+50h], rax
                mov     [rsp+138h+var_118], r8b
                mov     r8, rsp
                lea     r9, [rbp-80h]
                call    sub_140522080
                test    eax, eax
                jnz     loc_1403FE64D
                test    byte ptr [rbp+0F0h], 1
                jnz     short loc_1403FE31C
                mov     rbx, gs:188h
                mov     rdx, [rbp+0B8h]
                mov     [rbx+90h], rdx
                mov     dl, [rbp-58h]
                mov     [rbx+232h], dl

loc_1403FE31C:                          ; CODE XREF: sub_1403FE270+8A↑j
                lea     rcx, [rsp+138h+var_38]
                movaps  xmm6, [rsp+138h+var_108]
                movaps  xmm7, [rsp+138h+var_F8]
                movaps  xmm8, [rsp+138h+var_E8]
                movaps  xmm9, [rsp+138h+var_D8]
                movaps  xmm10, [rsp+138h+var_C8]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                cli
                test    byte ptr [rbp+0F0h], 1
                jz      loc_1403FE602
                test    byte ptr cs:dword_140CFC554, 0FFh
                jz      short loc_1403FE38E
                stac

loc_1403FE38E:                          ; CODE XREF: sub_1403FE270+119↑j
                                        ; sub_1403FE270+149↓j
                mov     rcx, gs:188h
                test    byte ptr [rcx+0C2h], 3
                jz      short loc_1403FE3BB
                mov     ecx, 1
                mov     cr8, rcx
                sti
                call    sub_140402B10
                cli
                mov     ecx, 0
                mov     cr8, rcx
                jmp     short loc_1403FE38E
; ---------------------------------------------------------------------------

loc_1403FE3BB:                          ; CODE XREF: sub_1403FE270+12E↑j
                test    byte ptr gs:27Eh, 2
                jz      short loc_1403FE3CD
                xor     ecx, ecx
                call    sub_1402ADF00

loc_1403FE3CD:                          ; CODE XREF: sub_1403FE270+154↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 8000000h
                jz      short loc_1403FE3E3
                call    sub_1403FE910

loc_1403FE3E3:                          ; CODE XREF: sub_1403FE270+16C↑j
                mov     rcx, gs:188h
                test    dword ptr [rcx], 40010000h
                jz      short loc_1403FE419
                test    byte ptr [rcx+2], 1
                jz      short loc_1403FE408
                call    sub_14051C050
                mov     rcx, gs:188h

loc_1403FE408:                          ; CODE XREF: sub_1403FE270+188↑j
                test    byte ptr [rcx+3], 40h
                jz      short loc_1403FE419
                lea     rsp, [rbp-80h]
                mov     cl, 1
                call    sub_1404128C0

loc_1403FE419:                          ; CODE XREF: sub_1403FE270+182↑j
                                        ; sub_1403FE270+19C↑j
                ldmxcsr dword ptr [rbp-54h]
                cmp     word ptr [rbp+80h], 0
                jz      short loc_1403FE42C
                call    sub_1403FDC00

loc_1403FE42C:                          ; CODE XREF: sub_1403FE270+1B5↑j
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     byte ptr gs:853h, 0
                movzx   eax, byte ptr gs:27Dh
                cmp     gs:27Ah, al
                jz      short loc_1403FE481
                mov     gs:27Ah, al
                mov     ecx, 48h ; 'H'
                xor     edx, edx
                wrmsr

loc_1403FE481:                          ; CODE XREF: sub_1403FE270+1FE↑j
                btr     word ptr gs:278h, 2
                jnb     short loc_1403FE49C
                mov     eax, 1
                xor     edx, edx
                mov     ecx, 49h ; 'I'
                wrmsr

loc_1403FE49C:                          ; CODE XREF: sub_1403FE270+21C↑j
                btr     word ptr gs:278h, 5
                jnb     loc_1403FE5D2
                call    loc_1403FE5C0

loc_1403FE4B2:                          ; CODE XREF: sub_1403FE270+24F↓p
                add     rsp, 8
                call    loc_1403FE5C9

loc_1403FE4BB:                          ; CODE XREF: sub_1403FE270+258↓p
                add     rsp, 8
                call    loc_1403FE4B2

loc_1403FE4C4:                          ; CODE XREF: sub_1403FE270+261↓p
                add     rsp, 8
                call    loc_1403FE4BB

loc_1403FE4CD:                          ; CODE XREF: sub_1403FE270+26A↓p
                add     rsp, 8
                call    loc_1403FE4C4

loc_1403FE4D6:                          ; CODE XREF: sub_1403FE270+273↓p
                add     rsp, 8
                call    loc_1403FE4CD

loc_1403FE4DF:                          ; CODE XREF: sub_1403FE270+27C↓p
                add     rsp, 8
                call    loc_1403FE4D6

loc_1403FE4E8:                          ; CODE XREF: sub_1403FE270+285↓p
                add     rsp, 8
                call    loc_1403FE4DF

loc_1403FE4F1:                          ; CODE XREF: sub_1403FE270+28E↓p
                add     rsp, 8
                call    loc_1403FE4E8

loc_1403FE4FA:                          ; CODE XREF: sub_1403FE270+297↓p
                add     rsp, 8
                call    loc_1403FE4F1

loc_1403FE503:                          ; CODE XREF: sub_1403FE270+2A0↓p
                add     rsp, 8
                call    loc_1403FE4FA

loc_1403FE50C:                          ; CODE XREF: sub_1403FE270+2A9↓p
                add     rsp, 8
                call    loc_1403FE503

loc_1403FE515:                          ; CODE XREF: sub_1403FE270+2B2↓p
                add     rsp, 8
                call    loc_1403FE50C

loc_1403FE51E:                          ; CODE XREF: sub_1403FE270+2BB↓p
                add     rsp, 8
                call    loc_1403FE515

loc_1403FE527:                          ; CODE XREF: sub_1403FE270+2C4↓p
                add     rsp, 8
                call    loc_1403FE51E

loc_1403FE530:                          ; CODE XREF: sub_1403FE270+2CD↓p
                add     rsp, 8
                call    loc_1403FE527

loc_1403FE539:                          ; CODE XREF: sub_1403FE270+2D6↓p
                add     rsp, 8
                call    loc_1403FE530

loc_1403FE542:                          ; CODE XREF: sub_1403FE270+2DF↓p
                add     rsp, 8
                call    loc_1403FE539

loc_1403FE54B:                          ; CODE XREF: sub_1403FE270+2E8↓p
                add     rsp, 8
                call    loc_1403FE542

loc_1403FE554:                          ; CODE XREF: sub_1403FE270+2F1↓p
                add     rsp, 8
                call    loc_1403FE54B

loc_1403FE55D:                          ; CODE XREF: sub_1403FE270+2FA↓p
                add     rsp, 8
                call    loc_1403FE554

loc_1403FE566:                          ; CODE XREF: sub_1403FE270+303↓p
                add     rsp, 8
                call    loc_1403FE55D

loc_1403FE56F:                          ; CODE XREF: sub_1403FE270+30C↓p
                add     rsp, 8
                call    loc_1403FE566

loc_1403FE578:                          ; CODE XREF: sub_1403FE270+315↓p
                add     rsp, 8
                call    loc_1403FE56F

loc_1403FE581:                          ; CODE XREF: sub_1403FE270+31E↓p
                add     rsp, 8
                call    loc_1403FE578

loc_1403FE58A:                          ; CODE XREF: sub_1403FE270+327↓p
                add     rsp, 8
                call    loc_1403FE581

loc_1403FE593:                          ; CODE XREF: sub_1403FE270+330↓p
                add     rsp, 8
                call    loc_1403FE58A

loc_1403FE59C:                          ; CODE XREF: sub_1403FE270+339↓p
                add     rsp, 8
                call    loc_1403FE593

loc_1403FE5A5:                          ; CODE XREF: sub_1403FE270+342↓p
                add     rsp, 8
                call    loc_1403FE59C

loc_1403FE5AE:                          ; CODE XREF: sub_1403FE270+34B↓p
                add     rsp, 8
                call    loc_1403FE5A5

loc_1403FE5B7:                          ; CODE XREF: sub_1403FE270+354↓p
                add     rsp, 8
                call    loc_1403FE5AE

loc_1403FE5C0:                          ; CODE XREF: sub_1403FE270+23D↑p
                add     rsp, 8
                call    loc_1403FE5B7

loc_1403FE5C9:                          ; CODE XREF: sub_1403FE270+246↑p
                add     rsp, 8
                mov     eax, 0DADAh

loc_1403FE5D2:                          ; CODE XREF: sub_1403FE270+237↑j
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                test    cs:byte_140E01840, 1
                jz      short loc_1403FE5FD
                jmp     sub_140A17B80
; ---------------------------------------------------------------------------

loc_1403FE5FD:                          ; CODE XREF: sub_1403FE270+386↑j
                swapgs
                iretq
; ---------------------------------------------------------------------------

loc_1403FE602:                          ; CODE XREF: sub_1403FE270+10C↑j
                ldmxcsr dword ptr [rbp-54h]
                movaps  xmm0, xmmword ptr [rbp-10h]
                movaps  xmm1, xmmword ptr [rbp+0]
                movaps  xmm2, xmmword ptr [rbp+10h]
                movaps  xmm3, xmmword ptr [rbp+20h]
                movaps  xmm4, xmmword ptr [rbp+30h]
                movaps  xmm5, xmmword ptr [rbp+40h]
                mov     r11, [rbp-20h]
                mov     r10, [rbp-28h]
                mov     r9, [rbp-30h]
                mov     r8, [rbp-38h]
                mov     rdx, [rbp-40h]
                mov     rcx, [rbp-48h]
                mov     rax, [rbp-50h]
                mov     rsp, rbp
                mov     rbp, [rbp+0D8h]
                add     rsp, 0E8h
                iretq
; ---------------------------------------------------------------------------

loc_1403FE64D:                          ; CODE XREF: sub_1403FE270+7D↑j
                lea     rcx, [rsp+138h+var_38]
                movaps  xmm6, [rsp+138h+var_108]
                movaps  xmm7, [rsp+138h+var_F8]
                movaps  xmm8, [rsp+138h+var_E8]
                movaps  xmm9, [rsp+138h+var_D8]
                movaps  xmm10, [rsp+138h+var_C8]
                movaps  xmm11, xmmword ptr [rcx-80h]
                movaps  xmm12, xmmword ptr [rcx-70h]
                movaps  xmm13, xmmword ptr [rcx-60h]
                movaps  xmm14, xmmword ptr [rcx-50h]
                movaps  xmm15, xmmword ptr [rcx-40h]
                mov     rbx, [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rcx+10h]
                mov     r12, [rcx+18h]
                mov     r13, [rcx+20h]
                mov     r14, [rcx+28h]
                mov     r15, [rcx+30h]
                add     rsp, 138h
                retn
sub_1403FE270   endp

; ---------------------------------------------------------------------------
algn_1403FE6AD:                         ; DATA XREF: .pdata:00000001400E33B8↑o
                align 20h
; Exported entry 1310. KeSaveStateForHibernate

; =============== S U B R O U T I N E =======================================


