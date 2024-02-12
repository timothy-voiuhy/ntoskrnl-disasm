LdrResSearchResource proc near          ; CODE XREF: sub_1406EF55C+7D↑p
                                        ; LdrResFindResource+61↓p ...

var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140824EAA SIZE 000001A0 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_40], rax
                mov     r14d, r8d
                mov     r15, rcx
                mov     rax, [rsp+0D8h+arg_20]
                mov     [rsp+0D8h+var_70], rax
                mov     r12, [rsp+0D8h+arg_28]
                mov     r13, [rsp+0D8h+arg_30]
                mov     rax, [rsp+0D8h+arg_38]
                mov     [rsp+0D8h+var_68], rax
                xor     ebx, ebx
                mov     esi, ebx
                test    rcx, rcx
                jz      loc_140824EB3
                test    rdx, rdx
                jz      loc_140824EB3
                test    r13, r13
                jnz     loc_140824EAA

loc_1406EF6D4:                          ; CODE XREF: LdrResSearchResource+13584D↓j
                mov     r8d, 0C00h
                test    r8d, r9d
                jnz     loc_1406EF764
                mov     eax, r9d
                mov     ecx, r9d
                mov     r10d, 100h
                or      ecx, r10d
                and     eax, 0F00h
                cmovnz  ecx, r9d
                mov     eax, ecx
                mov     edi, ecx
                bts     edi, 0Ch
                and     eax, 2000h
                cmovnz  edi, ecx
                test    edi, 0FFF80000h
                jnz     short loc_1406EF764
                cmp     r14d, 3
                jb      loc_1406EF8A9

loc_1406EF71D:                          ; CODE XREF: LdrResSearchResource+24D↓j
                cmp     r14d, 4
                ja      loc_140824EBD
                mov     eax, edi
                and     eax, 41h
                jnz     loc_140824EC7
                cmp     r14d, 4
                jz      loc_140824ED7

loc_1406EF73C:                          ; CODE XREF: LdrResSearchResource+135879↓j
                test    r10d, edi
                jz      loc_1406EF87C
                test    edi, 0E00h

loc_1406EF74B:                          ; CODE XREF: LdrResSearchResource+22D↓j
                jnz     short loc_1406EF764

loc_1406EF74D:                          ; CODE XREF: LdrResSearchResource+135892↓j
                bt      edi, 0Fh
                jb      loc_140824EF7

loc_1406EF757:                          ; CODE XREF: LdrResSearchResource+1358A6↓j
                mov     eax, edi
                mov     ecx, 3000h
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1406EF78F

loc_1406EF764:                          ; CODE XREF: LdrResSearchResource+7D↑j
                                        ; LdrResSearchResource+B1↑j ...
                mov     ebx, 0C00000F2h

loc_1406EF769:                          ; CODE XREF: LdrResSearchResource+15C↓j
                                        ; LdrResSearchResource+1FB↓j ...
                mov     eax, ebx

loc_1406EF76B:                          ; CODE XREF: LdrResSearchResource+25A↓j
                                        ; LdrResSearchResource+135872↓j ...
                mov     rcx, [rsp+0D8h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406EF78F:                          ; CODE XREF: LdrResSearchResource+102↑j
                mov     eax, edi
                and     eax, 18h
                cmp     al, 18h
                jz      short loc_1406EF764
                mov     [rsp+0D8h+var_88], rbx
                bt      edi, 11h
                jb      loc_140824F0B

loc_1406EF7A7:                          ; CODE XREF: LdrResSearchResource+1358C4↓j
                                        ; DATA XREF: .rdata:000000014007EDA8↑o
;   __try { // __except at loc_1406EF7BA
                mov     r8, r14
                shl     r8, 3
                lea     rcx, [rsp+0D8h+var_60]
                call    memmove
                jmp     short loc_1406EF7BE
;   } // starts at 1406EF7A7
; ---------------------------------------------------------------------------

loc_1406EF7BA:                          ; DATA XREF: .rdata:000000014007EDA8↑o
;   __except(1) // owned by 1406EF7A7
                mov     ebx, eax
                jmp     short loc_1406EF769
; ---------------------------------------------------------------------------

loc_1406EF7BE:                          ; CODE XREF: LdrResSearchResource+158↑j
                cmp     r14d, 3
                ja      loc_140824F42
                jnz     short loc_1406EF7E7

loc_1406EF7CA:                          ; CODE XREF: LdrResSearchResource+1358E8↓j
                mov     rax, [rsp+0D8h+var_50]
                cmp     rax, 10000h
                jnb     loc_140824F4D
                test    rax, rax
                jnz     loc_140824F87

loc_1406EF7E7:                          ; CODE XREF: LdrResSearchResource+168↑j
                                        ; LdrResSearchResource+135922↓j ...
                mov     ebx, edi
                and     ebx, 1000h
                test    edi, 300h
                jz      short loc_1406EF81C
                mov     rsi, r15
                bt      edi, 9
                jb      loc_1406EF892

loc_1406EF804:                          ; CODE XREF: LdrResSearchResource+244↓j
                mov     r8d, edi
                lea     rdx, [rsp+0D8h+var_88]
                mov     rcx, rsi
                call    sub_1406EF8CC
                test    eax, eax
                js      loc_1406EF8B8

loc_1406EF81C:                          ; CODE XREF: LdrResSearchResource+195↑j
                                        ; LdrResSearchResource+260↓j
                mov     r15, [rsp+0D8h+var_68]
                mov     [rsp+0D8h+var_98], r15
                mov     [rsp+0D8h+var_A0], r13
                mov     [rsp+0D8h+var_A8], r12
                mov     rax, [rsp+0D8h+var_70]
                mov     [rsp+0D8h+var_B0], rax
                mov     [rsp+0D8h+var_B8], r14d
                lea     r9, [rsp+0D8h+var_60]
                mov     r8d, edi
                mov     rdx, [rsp+0D8h+var_88]
                mov     rcx, rsi
                call    sub_14033B748
                mov     ebx, eax
                cmp     eax, 0C000008Ah
                jnz     loc_1406EF769
                mov     rdx, [rsp+0D8h+var_60]
                add     rdx, 0FFFFFFFFFFFFFFF0h
                test    rdx, 0FFFFFFFFFFFFFFF7h
                jz      loc_1406EF769
                jmp     loc_140824FBF
; ---------------------------------------------------------------------------

loc_1406EF87C:                          ; CODE XREF: LdrResSearchResource+DF↑j
                mov     eax, edi
                and     eax, r8d
                bt      edi, 9
                jnb     loc_140824EE9
                test    eax, eax
                jmp     loc_1406EF74B
; ---------------------------------------------------------------------------

loc_1406EF892:                          ; CODE XREF: LdrResSearchResource+19E↑j
                mov     al, r15b
                mov     rsi, r15
                or      rsi, 1
                and     al, 1
                cmovnz  rsi, r15
                test    ebx, ebx
                jmp     loc_1406EF804
; ---------------------------------------------------------------------------

loc_1406EF8A9:                          ; CODE XREF: LdrResSearchResource+B7↑j
                test    dil, 2
                jnz     loc_1406EF71D
                jmp     loc_140824EBD
; ---------------------------------------------------------------------------

loc_1406EF8B8:                          ; CODE XREF: LdrResSearchResource+1B6↑j
                test    ebx, ebx
                jnz     loc_1406EF76B
                jmp     loc_1406EF81C
; } // starts at 1406EF660
LdrResSearchResource endp
