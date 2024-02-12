IoConnectInterruptEx proc near          ; CODE XREF: sub_1404BB668+1C9↑p
                                        ; DATA XREF: .rdata:0000000140092238↑o ...

var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = byte ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_80          = xmmword ptr -80h
var_70          = dword ptr -70h
var_6C          = byte ptr -6Ch
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140842670 SIZE 000000EE BYTES

                mov     [rsp-8+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                lea     rbp, [rsp-47h]
                sub     rsp, 0D0h
                and     [rbp+57h+arg_8], 0
                mov     rbx, rcx
                and     [rbp+57h+arg_10], 0
                mov     rax, cr8
                test    al, al
                jnz     loc_140842670
                mov     ecx, [rcx]
                mov     eax, ecx
                sub     eax, 1
                jz      short loc_140760573
                sub     eax, 1
                jz      loc_140760733
                sub     eax, 1
                jnz     short loc_14076056A

loc_140760524:                          ; CODE XREF: IoConnectInterruptEx+E21B3↓j
                mov     al, [rbx+30h]
                mov     r9, [rbx+18h]
                mov     r8, [rbx+10h]
                mov     rdx, [rbx+8]
                mov     byte ptr [rsp+0E0h+var_B0], al
                mov     rax, [rbx+28h]
                mov     [rsp+0E0h+var_B8], rax
                mov     rax, [rbx+20h]
                mov     [rsp+0E0h+var_C0], rax
                call    sub_140760764
                test    eax, eax
                js      loc_1407606F9

loc_140760556:                          ; CODE XREF: IoConnectInterruptEx+202↓j
                                        ; IoConnectInterruptEx+E21DF↓j ...
                mov     rbx, [rsp+0E0h+arg_0]
                add     rsp, 0D0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076056A:                          ; CODE XREF: IoConnectInterruptEx+42↑j
                sub     eax, 1
                jnz     loc_140842690

loc_140760573:                          ; CODE XREF: IoConnectInterruptEx+34↑j
                mov     r8, [rbx+8]
                test    r8, r8
                jz      loc_1408426BA
                cmp     qword ptr [rbx+18h], 0
                jz      loc_1408426BA
                mov     al, [rbx+30h]
                mov     dl, [rbx+38h]
                cmp     al, dl
                jb      loc_1408426BA
                test    al, al
                jz      loc_1408426A4

loc_1407605A1:                          ; CODE XREF: IoConnectInterruptEx+E21C6↓j
                xor     dil, dil

loc_1407605A4:                          ; CODE XREF: IoConnectInterruptEx+E21D4↓j
                cmp     ecx, 4
                jnz     loc_1407606E7
                movzx   esi, word ptr [rbx+48h]

loc_1407605B1:                          ; CODE XREF: IoConnectInterruptEx+209↓j
                lea     rdx, [rbp+57h+arg_8]
                mov     rcx, r8
                call    sub_14076120C
                test    eax, eax
                js      loc_1408426C4
                xor     edx, edx
                lea     rcx, [rbp+57h+var_6C]
                lea     r8d, [rdx+5Ch]
                call    memset
                mov     rdi, [rbp+57h+arg_8]
                xor     edx, edx
                and     [rbp+57h+var_70], 0
                mov     r8d, [rdi]
                test    r8d, r8d
                jz      loc_14084272C
                mov     r10d, [rbx+34h]

loc_1407605EE:                          ; CODE XREF: IoConnectInterruptEx+E226D↓j
                mov     r9d, edx
                imul    rcx, r9, 58h ; 'X'
                cmp     [rcx+rdi+0Ch], r10d
                jnz     loc_140842748
                mov     al, [rbx+38h]
                cmp     [rcx+rdi+10h], al
                jnz     loc_140842740

loc_14076060D:                          ; CODE XREF: IoConnectInterruptEx+E2262↓j
                mov     eax, [rbx+3Ch]
                cmp     [rcx+rdi+18h], eax
                jnz     loc_140842748
                cmp     [rcx+rdi+28h], si
                jnz     loc_140842748
                mov     rax, [rbx+40h]
                cmp     [rcx+rdi+20h], rax
                jnz     loc_140842748
                imul    rax, r9, 58h ; 'X'
                mov     [rbp+57h+var_70], 1
                movups  xmm0, xmmword ptr [rax+rdi+18h]
                movups  xmm1, xmmword ptr [rax+rdi+28h]
                movups  xmm2, xmmword ptr [rax+rdi+8]
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rax+rdi+38h]
                movups  [rbp+57h+var_48], xmm1
                movups  xmm1, xmmword ptr [rax+rdi+48h]
                movups  [rbp+57h+var_38], xmm0
                movsd   xmm0, qword ptr [rax+rdi+58h]
                movd    eax, xmm2
                movups  [rbp+57h+var_68], xmm2
                movsd   [rbp+57h+var_18], xmm0
                movups  [rbp+57h+var_28], xmm1
                test    eax, eax
                jz      short loc_1407606EE

loc_14076067F:                          ; CODE XREF: IoConnectInterruptEx+212↓j
                                        ; IoConnectInterruptEx+E2279↓j
                mov     r8, [rbx+18h]
                lea     rax, [rbp+57h+var_70]
                mov     rdx, [rbx+8]
                lea     rcx, [rbp+57h+arg_10]
                mov     [rsp+0E0h+var_90], rax
                xor     r9d, r9d
                mov     al, [rbx+32h]
                mov     byte ptr [rsp+0E0h+var_A0], al
                mov     al, [rbx+30h]
                mov     [rsp+0E0h+var_A8], al
                mov     rax, [rbx+28h]
                mov     [rsp+0E0h+var_B0], rax
                mov     rax, [rbx+20h]
                and     dword ptr [rsp+0E0h+var_B8], 0
                mov     [rsp+0E0h+var_C0], rax
                call    sub_140760ADC
                mov     esi, eax
                test    eax, eax
                js      short loc_1407606D6
                mov     rax, [rbx+10h]
                mov     rdx, [rbp+57h+arg_10]
                add     rdx, 70h ; 'p'
                mov     [rax], rdx

loc_1407606D6:                          ; CODE XREF: IoConnectInterruptEx+1E5↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1407606E0:                          ; CODE XREF: IoConnectInterruptEx+251↓j
                                        ; IoConnectInterruptEx+27A↓j
                mov     eax, esi
                jmp     loc_140760556
; ---------------------------------------------------------------------------

loc_1407606E7:                          ; CODE XREF: IoConnectInterruptEx+C7↑j
                xor     esi, esi
                jmp     loc_1407605B1
; ---------------------------------------------------------------------------

loc_1407606EE:                          ; CODE XREF: IoConnectInterruptEx+19D↑j
                test    byte ptr [rbp+57h+var_38+0Ch], 1
                jz      short loc_14076067F
                jmp     loc_140842755
; ---------------------------------------------------------------------------

loc_1407606F9:                          ; CODE XREF: IoConnectInterruptEx+70↑j
                cmp     qword ptr [rbx+38h], 0
                jz      loc_140842736
                mov     al, [rbx+30h]
                mov     r9, [rbx+20h]
                mov     r8, [rbx+38h]
                mov     rdx, [rbx+10h]
                mov     rcx, [rbx+8]
                mov     byte ptr [rsp+0E0h+var_B8], al
                mov     rax, [rbx+28h]
                mov     [rsp+0E0h+var_C0], rax
                call    sub_1407C83E4
                mov     esi, eax
                mov     dword ptr [rbx], 2
                jmp     short loc_1407606E0
; ---------------------------------------------------------------------------

loc_140760733:                          ; CODE XREF: IoConnectInterruptEx+39↑j
                mov     al, [rbx+30h]
                mov     r9, [rbx+20h]
                mov     r8, [rbx+18h]
                mov     rdx, [rbx+10h]
                mov     rcx, [rbx+8]
                mov     byte ptr [rsp+0E0h+var_B8], al
                mov     rax, [rbx+28h]
                mov     [rsp+0E0h+var_C0], rax
                call    sub_1407C83E4

loc_140760758:                          ; CODE XREF: IoConnectInterruptEx+E2247↓j
                mov     esi, eax
                jmp     short loc_1407606E0
IoConnectInterruptEx endp
