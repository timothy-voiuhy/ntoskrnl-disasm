KeSetActualBasePriorityThread proc near ; CODE XREF: sub_14020F26C+D2↑p
                                        ; sub_14020F4F0+289↑p ...

var_78          = qword ptr -78h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = dword ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014044554E SIZE 00000193 BYTES

                mov     [rsp-8+arg_8], edx
                mov     r11, rsp
                push    rbp
                push    rbx
                lea     rbp, [r11-5Fh]
                sub     rsp, 88h
                lea     rax, unk_140D24A00
                mov     rbx, rcx
                cmp     [rcx+220h], rax
                jz      loc_14044554E

loc_14028D35B:                          ; DATA XREF: .rdata:000000014005F048↑o
                                        ; .rdata:000000014005F068↑o ...
                mov     [r11-18h], rsi
                mov     [r11-20h], rdi
                mov     [r11-28h], r12
                mov     [r11-30h], r13
                xor     r13d, r13d
                mov     [r11-38h], r14
                mov     [rbp+57h+var_50], r13
                mov     [r11-40h], r15
                mov     r15, cr8
                mov     [rbp+57h+var_60], r15
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140445558

loc_14028D399:                          ; CODE XREF: KeSetActualBasePriorityThread+1B822A↓j
                                        ; KeSetActualBasePriorityThread+1B8234↓j ...
                mov     rdi, gs:20h
                mov     rsi, gs:20h
                mov     [rbp+57h+arg_10], r13d
                mov     r14, [rdi+8]
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14044559D

loc_14028D3C3:                          ; CODE XREF: KeSetActualBasePriorityThread+550↓j
                                        ; KeSetActualBasePriorityThread+1B8271↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_14028D854
                movsx   eax, byte ptr [rbx+233h]
                mov     [rbx+285h], r13b
                mov     r12d, eax
                mov     rcx, gs:20h
                mov     [rbp+57h+arg_0], eax
                cmp     byte ptr [rbp+57h+arg_8], al
                jl      loc_14028D62B

loc_14028D3F6:                          ; CODE XREF: KeSetActualBasePriorityThread+302↓j
                                        ; KeSetActualBasePriorityThread+313↓j ...
                movzx   eax, byte ptr [rbp+57h+arg_8]
                mov     [rbx+233h], al
                movzx   eax, byte ptr [rbx+234h]
                test    al, al
                jnz     loc_14028D711

loc_14028D40F:                          ; CODE XREF: KeSetActualBasePriorityThread+3FB↓j
                movsx   eax, byte ptr [rbx+0C3h]
                cmp     [rbp+57h+arg_8], eax
                jz      loc_14028D54E
                cmp     rbx, r14
                jnz     loc_14028D699
                cmp     [rdi+20h], r13b
                jnz     loc_14028D699
                cli
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402CDFD0
                mov     rdx, rax
                sti

loc_14028D445:                          ; CODE XREF: KeSetActualBasePriorityThread+36D↓j
                movzx   ecx, byte ptr [rbx+28Bh]
                imul    ecx, cs:dword_140CFB150
                mov     eax, [rbx+78h]
                add     rcx, rdx
                test    al, 20h
                jnz     loc_14028D68E

loc_14028D461:                          ; CODE XREF: KeSetActualBasePriorityThread+364↓j
                movzx   edx, byte ptr [rbp+57h+arg_8]
                mov     [rbx+20h], rcx
                mov     rcx, rbx
                mov     [rbp+57h+arg_18], r13
                mov     [rbp+57h+var_58], r13
                call    sub_14028DB40
                movsx   r14d, al
                movsx   eax, byte ptr [rbx+0C3h]
                cmp     eax, r14d
                jz      loc_14028D54E
                lea     r8, [rbp+57h+var_58]
                mov     rcx, rbx
                lea     rdx, [rbp+57h+arg_18]
                call    sub_14028DCC0
                movzx   ecx, al
                mov     r15d, r13d
                movsx   r13d, byte ptr [rbx+0C3h]
                cmp     ecx, 2
                jnz     loc_14028D6A2
                mov     rsi, [rbp+57h+arg_18]
                mov     r8d, r14d
                mov     r12, [rsi+10h]
                lea     rax, [rsi+10h]
                test    r12, r12
                mov     [rbp+57h+var_48], rax
                mov     rdx, rbx
                mov     rcx, rsi
                setz    r9b
                call    sub_14028DBD0
                cmp     r14d, r13d
                jge     loc_14028D5CD
                test    r12, r12
                jnz     loc_14028D5CA
                movzx   eax, byte ptr [rbx+184h]
                mov     rsi, [rbp+57h+arg_18]
                cmp     al, 2
                jnz     loc_14028D88B
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402897D0
                mov     r14, rax
                test    rax, rax
                jnz     loc_14028D6F0

loc_14028D518:                          ; CODE XREF: KeSetActualBasePriorityThread:loc_14028D5CD↓j
                                        ; KeSetActualBasePriorityThread+2A6↓j
                mov     r12d, [rbp+57h+arg_0]

loc_14028D51C:                          ; CODE XREF: KeSetActualBasePriorityThread+2BD↓j
                                        ; KeSetActualBasePriorityThread+2C6↓j ...
                xor     r14b, r14b

loc_14028D51F:                          ; CODE XREF: KeSetActualBasePriorityThread+4B0↓j
                mov     rdx, rbx
                xor     ecx, ecx
                call    sub_14028DB70
                mov     r8, [rbp+57h+var_58]
                mov     rdx, rsi
                call    sub_1402B86D0
                test    r14b, r14b
                jnz     loc_14028D6CD

loc_14028D53E:                          ; CODE XREF: KeSetActualBasePriorityThread+3AE↓j
                                        ; KeSetActualBasePriorityThread+3BB↓j
                test    r15d, r15d
                jg      loc_14028D5FB

loc_14028D547:                          ; CODE XREF: KeSetActualBasePriorityThread+2DC↓j
                                        ; KeSetActualBasePriorityThread+2F0↓j ...
                mov     r15, [rbp+57h+var_60]
                xor     r13d, r13d

loc_14028D54E:                          ; CODE XREF: KeSetActualBasePriorityThread+E9↑j
                                        ; KeSetActualBasePriorityThread+157↑j
                mov     rcx, [rbx+0E8h]
                mov     r14, [rsp+90h+var_30]
                mov     rsi, [rsp+80h]
                test    rcx, rcx
                jnz     loc_14028D674

loc_14028D56B:                          ; CODE XREF: KeSetActualBasePriorityThread+34B↓j
                                        ; DATA XREF: .pdata:00000001400CED00↑o ...
                mov     [rbx+40h], r13
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14044569A

loc_14028D588:                          ; CODE XREF: KeSetActualBasePriorityThread+359↓j
                                        ; KeSetActualBasePriorityThread+1B836E↓j ...
                movzx   r8d, r15b
                lea     rdx, [rbp+57h+var_50]
                mov     rcx, rdi
                call    sub_14028D950
                test    dword ptr cs:xmmword_140CFC480+4, 2000h
                mov     r15, [rsp+90h+var_38]
                mov     r13, [rsp+90h+var_28]
                mov     rdi, [rsp+90h+var_18]
                jnz     loc_1404456BE

loc_14028D5B7:                          ; CODE XREF: KeSetActualBasePriorityThread+1B83AC↓j
                                        ; DATA XREF: .pdata:00000001400CED0C↑o ...
                mov     eax, r12d
                mov     r12, [rsp+90h+var_20]

loc_14028D5BF:                          ; CODE XREF: KeSetActualBasePriorityThread+1B8223↓j
                                        ; DATA XREF: .pdata:00000001400CED18↑o ...
                add     rsp, 88h
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14028D5CA:                          ; CODE XREF: KeSetActualBasePriorityThread+1B5↑j
                                        ; DATA XREF: .pdata:00000001400CED24↑o ...
                cmp     r14d, r13d

loc_14028D5CD:                          ; CODE XREF: KeSetActualBasePriorityThread+1AC↑j
                jle     loc_14028D518
                test    r12, r12
                jnz     loc_14028D518
                movzx   eax, byte ptr [rbx+184h]
                mov     rsi, [rbp+57h+arg_18]
                mov     r12d, [rbp+57h+arg_0]
                cmp     al, 2
                jnz     loc_14028D51C

loc_14028D5F3:                          ; CODE XREF: KeSetActualBasePriorityThread+4E3↓j
                mov     r15d, r14d
                jmp     loc_14028D51C
; ---------------------------------------------------------------------------

loc_14028D5FB:                          ; CODE XREF: KeSetActualBasePriorityThread+211↑j
                mov     rdx, gs:20h
                mov     eax, cs:dword_140CFC450
                test    al, 2
                jz      loc_14028D547
                mov     rax, [rbp+57h+arg_18]
                mov     rcx, [rax+84B8h]
                test    rcx, rcx
                jz      loc_14028D547
                jmp     loc_140445606
; ---------------------------------------------------------------------------

loc_14028D62B:                          ; CODE XREF: KeSetActualBasePriorityThread+C0↑j
                cmp     [rbx+367h], r13b
                jbe     loc_14028D3F6
                lea     rdx, [rbx+330h]
                cmp     qword ptr [rdx], 1
                jnz     loc_14028D3F6
                lea     r8, [rcx+8770h]
                test    r8, r8
                jz      loc_14028D3F6
                mov     rax, [r8]
                mov     [rdx], rax
                mov     [r8], rdx
                lock inc word ptr [rbx+364h]
                call    sub_14032A28C
                jmp     loc_14028D3F6
; ---------------------------------------------------------------------------

loc_14028D674:                          ; CODE XREF: KeSetActualBasePriorityThread+235↑j
                                        ; DATA XREF: .pdata:00000001400CED30↑o ...
                movzx   eax, byte ptr [rcx]
                and     al, 7Fh
                cmp     al, 15h
                jnz     loc_14028D56B
                mov     rdx, rbx
                call    sub_14032F34C
                jmp     loc_14028D588
; ---------------------------------------------------------------------------

loc_14028D68E:                          ; CODE XREF: KeSetActualBasePriorityThread+12B↑j
                                        ; DATA XREF: .pdata:00000001400CED3C↑o ...
                lock btr dword ptr [rbx+78h], 5
                jmp     loc_14028D461
; ---------------------------------------------------------------------------

loc_14028D699:                          ; CODE XREF: KeSetActualBasePriorityThread+F2↑j
                                        ; KeSetActualBasePriorityThread+FC↑j
                mov     rdx, [rbx+48h]
                jmp     loc_14028D445
; ---------------------------------------------------------------------------

loc_14028D6A2:                          ; CODE XREF: KeSetActualBasePriorityThread+17E↑j
                sub     ecx, 1
                jz      loc_14028D730
                mov     r8d, r14d
                mov     rdx, rbx
                cmp     ecx, 2
                jz      loc_14028D801
                xor     r9d, r9d
                xor     ecx, ecx
                call    sub_14028DBD0
                mov     rsi, [rbp+57h+arg_18]
                jmp     loc_14028D51C
; ---------------------------------------------------------------------------

loc_14028D6CD:                          ; CODE XREF: KeSetActualBasePriorityThread+208↑j
                mov     edx, gs:1A4h
                mov     rax, [rbp+57h+arg_18]
                mov     ecx, [rax+24h]
                cmp     edx, ecx
                jz      loc_14028D53E
                mov     dl, 2
                call    sub_140308E0C
                jmp     loc_14028D53E
; ---------------------------------------------------------------------------

loc_14028D6F0:                          ; CODE XREF: KeSetActualBasePriorityThread+1E2↑j
                test    byte ptr [rax+2], 4
                jz      short loc_14028D76A
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1402D0980
                mov     dl, 1
                test    al, al
                jnz     short loc_14028D771
                movzx   edx, byte ptr [r14+0C3h]
                jmp     short loc_14028D771
; ---------------------------------------------------------------------------

loc_14028D711:                          ; CODE XREF: KeSetActualBasePriorityThread+D9↑j
                test    al, 0Fh
                jz      short loc_14028D724
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+368h], eax

loc_14028D724:                          ; CODE XREF: KeSetActualBasePriorityThread+3E3↑j
                mov     [rbx+234h], r13b
                jmp     loc_14028D40F
; ---------------------------------------------------------------------------

loc_14028D730:                          ; CODE XREF: KeSetActualBasePriorityThread+375↑j
                mov     rsi, [rbp+57h+arg_18]
                mov     r9d, r13d
                mov     rdx, [rbp+57h+var_58]
                mov     rcx, rsi
                mov     r8, rbx
                call    sub_1402B8790
                xor     r9d, r9d
                mov     r8d, r14d
                mov     rdx, rbx
                xor     ecx, ecx
                call    sub_14028DBD0
                lea     r8, [rbp+57h+var_50]
                mov     edx, r14d
                mov     rcx, rbx
                call    sub_1402B8730
                jmp     loc_14028D51C
; ---------------------------------------------------------------------------

loc_14028D76A:                          ; CODE XREF: KeSetActualBasePriorityThread+3C4↑j
                movzx   edx, byte ptr [rax+0C3h]

loc_14028D771:                          ; CODE XREF: KeSetActualBasePriorityThread+3D5↑j
                                        ; KeSetActualBasePriorityThread+3DF↑j
                mov     rax, [rsi+38h]
                mov     [rax], dl
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      short loc_14028D78E
                cmp     r14, [rsi+18h]
                jz      short loc_14028D7E5
                movsx   edx, dl
                jmp     short loc_14028D7EB
; ---------------------------------------------------------------------------

loc_14028D78E:                          ; CODE XREF: KeSetActualBasePriorityThread+451↑j
                                        ; KeSetActualBasePriorityThread+4CA↓j
                mov     rax, [rbp+57h+var_48]
                cmp     r14, [rsi+18h]
                mov     [rax], r14
                setz    al
                test    rcx, rcx
                jnz     short loc_14028D7FC

loc_14028D7A1:                          ; CODE XREF: KeSetActualBasePriorityThread+4CF↓j
                movzx   eax, byte ptr [r14+184h]
                cmp     al, 1
                jnz     short loc_14028D7CD
                mov     ecx, [r14+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     ecx, [r14+1B4h]
                add     eax, ecx
                mov     [r14+84h], eax

loc_14028D7CD:                          ; CODE XREF: KeSetActualBasePriorityThread+47B↑j
                mov     rsi, [rbp+57h+arg_18]
                mov     r12d, [rbp+57h+arg_0]
                mov     byte ptr [r14+184h], 3
                mov     r14b, 1
                jmp     loc_14028D51F
; ---------------------------------------------------------------------------

loc_14028D7E5:                          ; CODE XREF: KeSetActualBasePriorityThread+457↑j
                mov     edx, cs:dword_140CFB01C

loc_14028D7EB:                          ; CODE XREF: KeSetActualBasePriorityThread+45C↑j
                xor     r8d, r8d
                call    sub_140520B44
                mov     rcx, [rsi+84B8h]
                jmp     short loc_14028D78E
; ---------------------------------------------------------------------------

loc_14028D7FC:                          ; CODE XREF: KeSetActualBasePriorityThread+46F↑j
                mov     [rcx+10h], al
                jmp     short loc_14028D7A1
; ---------------------------------------------------------------------------

loc_14028D801:                          ; CODE XREF: KeSetActualBasePriorityThread+384↑j
                mov     rsi, [rbp+57h+arg_18]
                mov     r9b, 1
                mov     rcx, rsi
                call    sub_14028DBD0
                cmp     r14d, r13d
                jge     loc_14028D5F3
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402897D0
                mov     r14, rax
                test    rax, rax
                jz      loc_14028D51C
                test    byte ptr [rax+2], 4
                jz      short loc_14028D8AC
                mov     rdx, rsi
                mov     rcx, rax
                call    sub_1402D0980
                mov     cl, 1
                test    al, al
                jnz     short loc_14028D8B3
                movzx   ecx, byte ptr [r14+0C3h]
                jmp     short loc_14028D8B3
; ---------------------------------------------------------------------------

loc_14028D854:                          ; CODE XREF: KeSetActualBasePriorityThread+9A↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_1404455C4

loc_14028D864:                          ; CODE XREF: KeSetActualBasePriorityThread+544↓j
                                        ; KeSetActualBasePriorityThread+1B8298↓j ...
                lea     rcx, [rbp+57h+arg_10]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_14028D864
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      loc_14028D3C3
                jmp     loc_1404455EB
; ---------------------------------------------------------------------------

loc_14028D88B:                          ; CODE XREF: KeSetActualBasePriorityThread+1C8↑j
                mov     eax, [rsi+7C18h]
                lea     ecx, [r14+1]
                mov     r12d, [rbp+57h+arg_0]
                shr     eax, cl
                test    eax, eax
                jz      loc_14028D51C
                or      byte ptr [rbx+70h], 10h
                jmp     loc_14028D51C
; ---------------------------------------------------------------------------

loc_14028D8AC:                          ; CODE XREF: KeSetActualBasePriorityThread+507↑j
                movzx   ecx, byte ptr [rax+0C3h]

loc_14028D8B3:                          ; CODE XREF: KeSetActualBasePriorityThread+518↑j
                                        ; KeSetActualBasePriorityThread+522↑j
                mov     rax, [rsi+38h]
                mov     [rax], cl
                mov     rax, [rsi+84B8h]
                test    rax, rax
                jz      short loc_14028D8E6
                mov     edx, cs:dword_140CFB01C
                cmp     r14, [rsi+18h]
                jz      short loc_14028D8D4
                movsx   edx, cl

loc_14028D8D4:                          ; CODE XREF: KeSetActualBasePriorityThread+59F↑j
                xor     r8d, r8d
                mov     rcx, rax
                call    sub_140520B44
                mov     rax, [rsi+84B8h]

loc_14028D8E6:                          ; CODE XREF: KeSetActualBasePriorityThread+593↑j
                cmp     r14, [rsi+18h]
                mov     [rsi+10h], r14
                setz    cl
                test    rax, rax
                jz      short loc_14028D8F9
                mov     [rax+10h], cl

loc_14028D8F9:                          ; CODE XREF: KeSetActualBasePriorityThread+5C4↑j
                movzx   eax, byte ptr [r14+184h]
                cmp     al, 1
                jnz     short loc_14028D925
                mov     ecx, [r14+84h]
                mov     eax, ds:0FFFFF78000000320h
                sub     ecx, [r14+1B4h]
                add     eax, ecx
                mov     [r14+84h], eax

loc_14028D925:                          ; CODE XREF: KeSetActualBasePriorityThread+5D3↑j
                mov     rdx, rbx
                mov     byte ptr [r14+184h], 3
                lea     rcx, [rbp+57h+var_50]
                call    sub_1402C34D0
                mov     rsi, [rbp+57h+arg_18]
                jmp     loc_14028D51C
KeSetActualBasePriorityThread endp
