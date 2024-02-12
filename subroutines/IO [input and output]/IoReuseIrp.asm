IoReuseIrp      proc near               ; CODE XREF: sub_1403703D0+197↓p
                                        ; sub_1407BFF84+24↓p ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_38], rax
                mov     eax, cs:dword_140C2A6E0
                xor     bpl, bpl
                xorps   xmm0, xmm0
                mov     r13d, edx
                mov     rdi, rcx
                movups  [rsp+98h+var_58], xmm0
                test    al, 10h
                jz      short loc_1402F154E
                mov     rdx, [rsp+98h]
                mov     r8b, 1
                call    sub_1409D3414
                mov     rcx, rdi
                call    sub_1409C7988

loc_1402F154E:                          ; CODE XREF: IoReuseIrp+44↑j
                movzx   r14d, byte ptr [rdi+47h]
                movsx   r15, byte ptr [rdi+42h]
                and     r14b, 6Dh
                movzx   r12d, word ptr [rdi+2]
                mov     rax, [rdi+0C8h]
                movzx   ecx, byte ptr [rdi+47h]
                test    cl, cl
                js      short loc_1402F1590
                test    rax, rax
                jz      short loc_1402F1590
                movzx   eax, byte ptr [rax+2]
                test    al, 1
                jz      short loc_1402F1590
                mov     rax, [rdi+0C8h]
                mov     bpl, 1
                movups  xmm0, xmmword ptr [rax+18h]
                movups  [rsp+98h+var_58], xmm0

loc_1402F1590:                          ; CODE XREF: IoReuseIrp+7E↑j
                                        ; IoReuseIrp+83↑j ...
                mov     eax, cs:dword_140C0F1DC
                xor     esi, esi
                cmp     eax, 1
                jnz     short loc_1402F159F
                jmp     short loc_1402F15B3
; ---------------------------------------------------------------------------

loc_1402F159F:                          ; CODE XREF: IoReuseIrp+AB↑j
                test    eax, eax
                jnz     short loc_1402F15A7
                mov     eax, esi
                jmp     short loc_1402F15B3
; ---------------------------------------------------------------------------

loc_1402F15A7:                          ; CODE XREF: IoReuseIrp+B1↑j
                call    sub_1405CD304
                movzx   ecx, byte ptr [rdi+47h]
                movzx   eax, al

loc_1402F15B3:                          ; CODE XREF: IoReuseIrp+AD↑j
                                        ; IoReuseIrp+B5↑j
                mov     rbx, [rdi+0C8h]
                test    eax, eax
                jz      short loc_1402F160D
                test    cl, cl
                jns     short loc_1402F15D1
                and     cl, 7Fh
                mov     [rdi+0C8h], rsi
                mov     [rdi+47h], cl
                jmp     short loc_1402F163E
; ---------------------------------------------------------------------------

loc_1402F15D1:                          ; CODE XREF: IoReuseIrp+D0↑j
                test    rbx, rbx
                jz      short loc_1402F163E
                mov     edx, 5
                mov     rcx, rdi
                call    sub_1402F17B0
                test    al, al
                jz      short loc_1402F15EB
                mov     [rbx+28h], rsi

loc_1402F15EB:                          ; CODE XREF: IoReuseIrp+F5↑j
                mov     edx, 9
                call    sub_1402F17B0
                test    al, al
                jz      short loc_1402F163A
                test    dword ptr [rdi+10h], 200h
                jz      short loc_1402F163A
                call    sub_1403F1DBC
                mov     byte ptr [rdi+41h], 1
                jmp     short loc_1402F163A
; ---------------------------------------------------------------------------

loc_1402F160D:                          ; CODE XREF: IoReuseIrp+CC↑j
                test    cl, cl
                jns     short loc_1402F1620
                and     cl, 7Fh
                mov     [rdi+0C8h], rsi
                mov     [rdi+47h], cl
                jmp     short loc_1402F163E
; ---------------------------------------------------------------------------

loc_1402F1620:                          ; CODE XREF: IoReuseIrp+11F↑j
                test    rbx, rbx
                jz      short loc_1402F163E
                mov     edx, 5
                mov     rcx, rdi
                call    sub_1402F17B0
                test    al, al
                jz      short loc_1402F163A
                mov     [rbx+28h], rsi

loc_1402F163A:                          ; CODE XREF: IoReuseIrp+107↑j
                                        ; IoReuseIrp+110↑j ...
                mov     [rbx+2], si

loc_1402F163E:                          ; CODE XREF: IoReuseIrp+DF↑j
                                        ; IoReuseIrp+E4↑j ...
                mov     rsi, [rdi+0C8h]
                mov     r8, r12
                movzx   ebx, word ptr [rdi+4]
                xor     edx, edx
                mov     rcx, rdi
                call    memset
                mov     [rdi+2], r12w
                mov     eax, 6
                mov     [rdi], ax
                lea     eax, [r15+1]
                mov     [rdi+43h], al
                mov     [rdi+42h], r15b
                mov     rax, gs:188h
                movzx   ecx, byte ptr [rax+24Ah]
                lea     rax, [rdi+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, ds:1Ah[r15*8]
                add     rax, r15
                mov     [rdi+46h], cl
                mov     [rdi+4], bx
                mov     [rdi+47h], r14b
                mov     [rdi+30h], r13d
                lea     rax, [rdi+rax*8]
                mov     [rdi+0B8h], rax
                test    rsi, rsi
                jz      loc_1402F1776
                mov     [rdi+0C8h], rsi
                cmp     bpl, 1
                jnz     short loc_1402F16D1
                lea     rdx, [rsp+98h+var_58]
                mov     rcx, rdi
                call    IoSetActivityIdIrp

loc_1402F16D1:                          ; CODE XREF: IoReuseIrp+1D2↑j
                mov     eax, cs:dword_140CF49EC
                test    al, 4
                jz      loc_1402F1776
                mov     eax, cs:dword_140CF49E0
                test    al, 1
                jz      loc_1402F1776
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402F17B0
                test    al, al
                jz      short loc_1402F170B
                lea     rcx, qword_14002FBC0
                call    sub_140399378
                test    al, al
                jz      short loc_1402F1776

loc_1402F170B:                          ; CODE XREF: IoReuseIrp+209↑j
                xorps   xmm0, xmm0
                lea     rdx, [rsp+98h+var_48]
                mov     ecx, 3
                movups  [rsp+98h+var_48], xmm0
                call    EtwActivityIdControl
                lea     rcx, qword_14002FBC0
                call    sub_140399378
                test    al, al
                jz      short loc_1402F1769
                xor     ecx, ecx
                lea     rax, [rsi+18h]
                mov     [rsp+98h+var_60], rcx
                lea     rdx, qword_14002FBC0
                mov     [rsp+98h+var_68], ecx
                xor     r9d, r9d
                lea     rcx, [rsp+98h+var_48]
                xor     r8d, r8d
                mov     [rsp+98h+var_70], rcx
                mov     rcx, cs:qword_140C45F00
                mov     [rsp+98h+var_78], rax
                call    EtwWriteEx

loc_1402F1769:                          ; CODE XREF: IoReuseIrp+240↑j
                lea     rdx, [rsp+98h+var_48]
                mov     rcx, rdi
                call    IoSetActivityIdIrp

loc_1402F1776:                          ; CODE XREF: IoReuseIrp+1C1↑j
                                        ; IoReuseIrp+1E9↑j ...
                mov     rcx, [rsp+98h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402F14F0
IoReuseIrp      endp

algn_1402F17A2:                         ; DATA XREF: .pdata:00000001400D305C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402F17B0   proc near               ; CODE XREF: sub_1402F0FC8+81↑p
                                        ; sub_1402F0FC8+9F↑p ...
                mov     rax, [rcx+0C8h]
                cmp     byte ptr [rcx+47h], 0
                jl      short loc_1402F17D3
                test    rax, rax
                jz      short loc_1402F17CB
                movzx   eax, word ptr [rax+2]
                bt      eax, edx
                jb      short loc_1402F17CF

loc_1402F17CB:                          ; CODE XREF: sub_1402F17B0+10↑j
                                        ; sub_1402F17B0+26↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F17CF:                          ; CODE XREF: sub_1402F17B0+19↑j
                                        ; sub_1402F17B0+28↓j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F17D3:                          ; CODE XREF: sub_1402F17B0+B↑j
                cmp     edx, 2
                jnz     short loc_1402F17CB
                jmp     short loc_1402F17CF
sub_1402F17B0   endp

; ---------------------------------------------------------------------------
algn_1402F17DA:                         ; DATA XREF: .pdata:00000001400D3068↑o
                align 20h
; Exported entry 923. IoQueueWorkItem

; =============== S U B R O U T I N E =======================================


