SeGetLogonSessionToken proc near        ; DATA XREF: .pdata:0000000140122A78↑o

var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_18          = qword ptr  38h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 80h
                xor     r14d, r14d
                lea     rax, [rbp+arg_18]
                mov     rsi, r8
                mov     [r11-70h], r14
                mov     r8, cs:SeTokenObjectType
                mov     bl, dl
                mov     r9b, dl
                mov     [rbp+var_38], r14
                lea     edx, [r14+8]
                mov     [rbp+var_40], r14
                mov     [rbp+var_2C], r14d
                mov     [rbp+var_14], r14d
                mov     [rbp+arg_18], r14
                mov     [r11-78h], rax
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_140924185
                mov     rdi, [rbp+arg_18]
                mov     rax, [rdi+0D8h]
                cmp     [rax+30h], r14
                jnz     short loc_1409240E7
                mov     ebx, 0C000007Ch
                jmp     loc_14092417B
; ---------------------------------------------------------------------------

loc_1409240E7:                          ; CODE XREF: SeGetLogonSessionToken+6B↑j
                mov     [rbp+var_30], 30h ; '0'
                lea     rdx, [rbp+var_30]
                mov     [rbp+var_28], r14
                xorps   xmm0, xmm0
                mov     [rbp+var_20], r14
                neg     bl
                movdqu  [rbp+var_10], xmm0
                sbb     eax, eax
                mov     r9d, 1
                not     eax
                xor     r8d, r8d
                and     eax, 200h
                mov     [rbp+var_18], eax
                lea     rax, [rbp+var_40]
                mov     rcx, [rdi+0D8h]
                mov     [rsp+80h+var_48], rax
                mov     byte ptr [rsp+80h+var_50], r14b
                mov     byte ptr [rsp+80h+var_58], r14b
                mov     rcx, [rcx+30h]
                mov     [rsp+80h+var_60], r14d
                call    sub_14061E3A0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14092417B
                mov     rcx, [rbp+var_40]
                lea     rax, [rbp+var_38]
                mov     [rsp+80h+var_50], rax
                xor     r9d, r9d
                mov     [rsp+80h+var_58], r14
                xor     edx, edx
                mov     r8d, 0F01FFh
                mov     [rsp+80h+var_60], r14d
                call    sub_14061EFE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14092417B
                mov     rax, [rbp+var_38]
                mov     [rsi], rax

loc_14092417B:                          ; CODE XREF: SeGetLogonSessionToken+72↑j
                                        ; SeGetLogonSessionToken+D5↑j ...
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, ebx

loc_140924185:                          ; CODE XREF: SeGetLogonSessionToken+56↑j
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeGetLogonSessionToken endp
