MmUnlockPages   proc near               ; CODE XREF: sub_140221A30+383↑p
                                        ; sub_14025D100+543↑p ...

var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = word ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A8h
                movzx   ebp, word ptr [rcx+0Ah]
                lea     rdi, [rcx+30h]
                mov     rax, [rcx+10h]
                mov     edx, 200h
                mov     [rsp+0E8h+var_70], rax
                mov     r14, rcx
                mov     [rsp+0E8h+arg_8], bp
                mov     [rsp+0E8h+var_B8], rdi
                test    dx, bp
                jz      short loc_14025E26D
                call    sub_140530EC0
                mov     edx, 200h

loc_14025E26D:                          ; CODE XREF: MmUnlockPages+41↑j
                mov     ecx, [r14+2Ch]
                mov     r13d, 4
                mov     r8, [r14+20h]
                mov     r9d, [r14+28h]
                mov     r12, 0FFFFF68000000000h
                lea     rax, [r8+rcx]
                and     eax, 0FFFh
                lea     rsi, [r9+0FFFh]
                add     rsi, rax
                shr     rsi, 0Ch
                mov     [rsp+0E8h+var_80], rsi
                test    bpl, 1
                jz      loc_14025E529
                mov     rdi, [r14+18h]
                xor     r11d, r11d
                test    [r14+0Ah], dx
                jz      short loc_14025E2D4
                mov     rcx, r14
                call    sub_140530EC0
                mov     ecx, [r14+2Ch]
                mov     r11d, eax
                mov     r8, [r14+20h]
                mov     r9d, [r14+28h]

loc_14025E2D4:                          ; CODE XREF: MmUnlockPages+9B↑j
                mov     r10d, ecx
                mov     rax, 7FFFFFFEFFFFh
                add     r10, r8
                mov     ebx, r9d
                add     rbx, 0FFFh
                mov     r8, r10
                and     r8d, 0FFFh
                add     rbx, r8
                shr     rbx, 0Ch
                cmp     rdi, rax
                ja      short loc_14025E314
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14076C8BC
                jmp     loc_14025E524
; ---------------------------------------------------------------------------

loc_14025E314:                          ; CODE XREF: MmUnlockPages+E2↑j
                mov     eax, r11d
                mov     r15, 7FFFFFFFF8h
                sub     rdi, rax
                mov     rsi, rdi
                shr     rsi, 9
                and     rsi, r15
                mov     rax, r12
                and     word ptr [r14+0Ah], 0FFDEh
                add     rsi, rax
                movzx   eax, word ptr [r14+0Ah]
                test    r13b, al
                jz      short loc_14025E348
                mov     [r14+18h], r10

loc_14025E348:                          ; CODE XREF: MmUnlockPages+122↑j
                mov     rcx, rsi
                mov     [rsp+0E8h+var_68], rsi
                shr     rcx, 9
                mov     r9, rsi
                and     rcx, r15
                mov     r10d, r13d
                mov     rax, r12
                add     rcx, rax
                mov     [rsp+0E8h+var_60], rcx
                shr     rcx, 9
                and     rcx, r15
                mov     rax, r12
                add     rcx, rax
                mov     [rsp+0E8h+var_58], rcx
                shr     rcx, 9
                and     rcx, r15
                mov     rax, r12
                add     rcx, rax
                mov     r12, 0FFFFF6FB7DBED7F8h
                mov     r11, r13
                mov     [rsp+0E8h+var_50], rcx
                mov     r13, 0FFFFF6FB7DBED000h
                nop

loc_14025E3B0:                          ; CODE XREF: MmUnlockPages+21A↓j
                mov     r8, [rsp+r11*8+0E8h+var_70]
                dec     r11
                dec     r10d
                mov     rdx, [r8]
                mov     rax, r13
                cmp     r8, rax
                jb      short loc_14025E42D
                mov     rax, r12
                cmp     r8, rax
                ja      short loc_14025E42D
                call    sub_140349680
                test    eax, eax
                jz      short loc_14025E42D
                test    dl, 1
                jz      short loc_14025E440
                test    dl, 20h
                jz      short loc_14025E3E6
                test    dl, 42h
                jnz     short loc_14025E42D

loc_14025E3E6:                          ; CODE XREF: MmUnlockPages+1BF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14025E42D
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14025E42D
                or      rdx, 42h

loc_14025E42D:                          ; CODE XREF: MmUnlockPages+1A4↑j
                                        ; MmUnlockPages+1AC↑j ...
                test    dl, 1
                jz      short loc_14025E440
                test    dl, dl
                js      short loc_14025E443
                cmp     r11, 1
                jnz     loc_14025E3B0

loc_14025E440:                          ; CODE XREF: MmUnlockPages+1BA↑j
                                        ; MmUnlockPages+210↑j
                xor     r10d, r10d

loc_14025E443:                          ; CODE XREF: MmUnlockPages+214↑j
                test    r10d, r10d
                jz      short loc_14025E465
                mov     rcx, 0FFFFF68000000000h

loc_14025E452:                          ; CODE XREF: MmUnlockPages+243↓j
                shr     r9, 9
                and     r9, r15
                mov     rax, rcx
                add     r9, rax
                add     r10d, 0FFFFFFFFh
                jnz     short loc_14025E452

loc_14025E465:                          ; CODE XREF: MmUnlockPages+226↑j
                mov     rdx, [r9]
                mov     rax, r13
                cmp     r9, rax
                jb      short loc_14025E4D7
                mov     rax, r12
                cmp     r9, rax
                ja      short loc_14025E4D7
                call    sub_140349680
                test    eax, eax
                jz      short loc_14025E4D7
                test    dl, 1
                jz      short loc_14025E4D7
                test    dl, 20h
                jz      short loc_14025E490
                test    dl, 42h
                jnz     short loc_14025E4D7

loc_14025E490:                          ; CODE XREF: MmUnlockPages+269↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14025E4D7
                shr     r9, 3
                mov     r8, rdx
                and     r9d, 1FFh
                or      r8, 20h
                mov     rax, [rax+r9*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14025E4D7
                or      rdx, 42h

loc_14025E4D7:                          ; CODE XREF: MmUnlockPages+24E↑j
                                        ; MmUnlockPages+256↑j ...
                bt      rdx, 9
                jnb     short loc_14025E4E9
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402E87D0

loc_14025E4E9:                          ; CODE XREF: MmUnlockPages+2BC↑j
                cmp     cs:dword_140CFC538, 1
                jnz     short loc_14025E4F5
                inc     rbx

loc_14025E4F5:                          ; CODE XREF: MmUnlockPages+2D0↑j
                mov     eax, cs:dword_140CFB17C
                test    al, 1
                jz      short loc_14025E50D
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_14055F260

loc_14025E50D:                          ; CODE XREF: MmUnlockPages+2DD↑j
                mov     r8d, ebx
                lea     rcx, qword_140C4EDC0
                mov     rdx, rsi
                call    sub_14025EFB0
                mov     rsi, [rsp+0E8h+var_80]

loc_14025E524:                          ; CODE XREF: MmUnlockPages+EF↑j
                mov     rdi, [rsp+0E8h+var_B8]

loc_14025E529:                          ; CODE XREF: MmUnlockPages+89↑j
                mov     eax, cs:dword_140CFC4EC
                test    al, 1
                jz      short loc_14025E53E
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_140530D00

loc_14025E53E:                          ; CODE XREF: MmUnlockPages+311↑j
                xor     r11d, r11d
                lea     rsi, [rdi+rsi*8]
                mov     r13d, 1
                mov     [rsp+0E8h+var_88], r11
                mov     r8, 0FFFFFFFFFh
                mov     [rsp+0E8h+var_90], rsi
                mov     ebx, r11d
                mov     [rsp+0E8h+arg_10], r13d
                mov     r10d, r13d
                mov     [rsp+0E8h+var_A8], r8
                mov     r15, r8
                mov     r12, cr8
                mov     [rsp+0E8h+var_A0], r12
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                lea     r14, [r11-1]
                test    eax, eax
                jz      short loc_14025E5CA
                test    r10b, al
                jz      short loc_14025E5CA
                cmp     r12b, 0Fh
                ja      short loc_14025E5CA
                mov     rax, gs:20h
                mov     rdx, r14
                movzx   ecx, r12b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14025E5CA:                          ; CODE XREF: MmUnlockPages+373↑j
                                        ; MmUnlockPages+378↑j ...
                mov     rdx, [rdi]
                mov     r8, 1000000000h
                mov     rax, 0FFFFFA8000000028h
                cmp     rdx, 0FFFFFFFFFFFFFFFFh
                jz      loc_14025EC37
                mov     r9, 0FFFFFFFFFh
                cmp     rdx, r9
                ja      loc_14025EC1D
                lea     rcx, [rdx+rdx*2]
                add     rcx, rcx
                mov     rax, rax
                mov     rcx, [rax+rcx*8]
                mov     rax, 4000000000000h
                test    rax, rcx
                jz      loc_14025EC1D
                lea     rcx, [rdx+rdx*2]
                mov     rsi, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     [rsp+0E8h+var_78], rcx
                mov     rax, rsi
                lea     rdi, [rcx+rax]
                mov     eax, 100h
                test    ax, bp
                jz      loc_14025E6CC
                mov     rcx, [rdi+28h]
                test    r8, rcx
                jnz     short loc_14025E6CC
                mov     rax, rcx
                shr     rax, 3Ch
                and     al, 7
                cmp     al, r13b
                jz      short loc_14025E6CC
                mov     rax, rcx
                mov     rdx, 0FFFFFFFFDh
                and     rax, r9
                cmp     rax, rdx
                jz      short loc_14025E6CC
                cmp     r15, rax
                jz      short loc_14025E6CC
                cmp     r15, r9
                jz      short loc_14025E6A8
                lea     rcx, [r15+r15*2]
                shl     rcx, 4
                mov     rax, rsi
                add     rcx, rax
                mov     edx, r10d
                call    sub_1402DDD14
                mov     rcx, [rdi+28h]
                xor     r11d, r11d
                mov     r9, 0FFFFFFFFFh

loc_14025E6A8:                          ; CODE XREF: MmUnlockPages+45F↑j
                mov     r15, rcx
                mov     rcx, rdi
                and     r15, r9
                mov     [rsp+0E8h+var_A8], r15
                call    sub_1403F41D8
                neg     eax
                sbb     r10d, r10d
                add     r10d, 2
                mov     [rsp+0E8h+arg_10], r10d

loc_14025E6CC:                          ; CODE XREF: MmUnlockPages+425↑j
                                        ; MmUnlockPages+432↑j ...
                mov     [rsp+0E8h+arg_18], r11d
                mov     r14, r11
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                mov     rsi, r11
                mov     r12, r11
                jnb     short loc_14025E712
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_14025E6F0:                          ; CODE XREF: MmUnlockPages+4E4↓j
                                        ; MmUnlockPages+4ED↓j
                lea     rcx, [rsp+0E8h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_14025E6F0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_14025E6F0
                xor     r11d, r11d

loc_14025E712:                          ; CODE XREF: MmUnlockPages+4C4↑j
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rdi+28h]
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     r15, [rax+rcx*8]
                movzx   eax, byte ptr [rdi+22h]
                test    al, 20h
                jz      short loc_14025E756
                test    al, 8
                jnz     short loc_14025E756
                mov     rcx, 3FFFFFFFFFFFFFFFh
                test    [rdi+18h], rcx
                jnz     short loc_14025E756
                mov     rsi, [rdi]
                sub     rsi, 20h ; ' '
                lock dec qword ptr [rsi+108h]

loc_14025E756:                          ; CODE XREF: MmUnlockPages+511↑j
                                        ; MmUnlockPages+515↑j ...
                test    bpl, bpl
                jns     loc_14025E7F0
                test    rsi, rsi
                jnz     short loc_14025E7AA
                mov     rsi, [rdi+10h]
                bt      rsi, 0Ah
                jb      short loc_14025E79E
                test    byte ptr [rdi+22h], 8
                jnz     short loc_14025E79E
                movzx   eax, sil
                shr     al, 2
                test    r13b, al
                jz      short loc_14025E79B
                lea     rcx, [rdi+10h]
                call    sub_1402805F0
                and     rsi, 0FFFFFFFFFFFFFFFBh
                mov     rbx, rax
                and     rbx, 0FFFFFFFFFFFFFFFDh
                mov     [rdi+10h], rsi
                jmp     short loc_14025E79E
; ---------------------------------------------------------------------------

loc_14025E79B:                          ; CODE XREF: MmUnlockPages+55F↑j
                mov     rbx, r11

loc_14025E79E:                          ; CODE XREF: MmUnlockPages+54D↑j
                                        ; MmUnlockPages+553↑j ...
                movzx   eax, byte ptr [rdi+22h]
                mov     r14, r12
                or      al, 10h
                mov     [rdi+22h], al

loc_14025E7AA:                          ; CODE XREF: MmUnlockPages+542↑j
                mov     rsi, 1000000000h
                test    [rdi+28h], rsi
                jnz     short loc_14025E7FA
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14025E7FA
                mov     rax, [rdi+10h]
                bt      rax, 0Ah
                jnb     short loc_14025E7FA
                mov     rcx, cs:qword_140C4DDC0
                test    rcx, rcx
                jz      short loc_14025E7E7
                test    al, 10h
                jnz     short loc_14025E7E7
                not     rcx
                and     rax, rcx

loc_14025E7E7:                          ; CODE XREF: MmUnlockPages+5BB↑j
                                        ; MmUnlockPages+5BF↑j
                sar     rax, 10h
                mov     r14, [rax]
                jmp     short loc_14025E7FA
; ---------------------------------------------------------------------------

loc_14025E7F0:                          ; CODE XREF: MmUnlockPages+539↑j
                mov     rsi, 1000000000h

loc_14025E7FA:                          ; CODE XREF: MmUnlockPages+598↑j
                                        ; MmUnlockPages+5A4↑j ...
                movzx   edx, word ptr [rdi+20h]
                test    dx, dx
                jz      loc_14025EF67
                mov     eax, 0FFFFh
                add     dx, ax
                mov     [rdi+20h], dx
                jnz     short loc_14025E825
                mov     rcx, rdi
                call    sub_1402303F0
                test    eax, eax
                jnz     loc_14025E9F4

loc_14025E825:                          ; CODE XREF: MmUnlockPages+5F3↑j
                mov     r10, [rdi+28h]
                test    rsi, r10
                jnz     loc_14025EA19
                mov     rax, 2000000000000h
                test    rax, r10
                jnz     loc_14025EA19
                mov     r11, [rdi+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                mov     rax, r11
                and     rax, rcx
                test    dx, dx
                jz      short loc_14025E88E
                cmp     dx, r13w
                jnz     short loc_14025E86B
                test    rax, rax
                jnz     short loc_14025E888
                jmp     short loc_14025E87E
; ---------------------------------------------------------------------------

loc_14025E86B:                          ; CODE XREF: MmUnlockPages+642↑j
                cmp     dx, 2
                jnz     loc_14025EA19
                test    rax, rax
                jz      loc_14025EA19

loc_14025E87E:                          ; CODE XREF: MmUnlockPages+649↑j
                test    byte ptr [rdi+22h], 8
                jz      loc_14025EA19

loc_14025E888:                          ; CODE XREF: MmUnlockPages+647↑j
                xor     ecx, ecx
                mov     ebp, ecx
                jmp     short loc_14025E893
; ---------------------------------------------------------------------------

loc_14025E88E:                          ; CODE XREF: MmUnlockPages+63C↑j
                mov     ebp, r13d
                xor     ecx, ecx

loc_14025E893:                          ; CODE XREF: MmUnlockPages+66C↑j
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                mov     r8, [rdi+8]
                mov     r9, 3FFFFFFF78h
                add     r9, rax
                mov     rax, 8000000000000000h
                or      r8, rax
                cmp     r8, r9
                ja      short loc_14025E8CB
                mov     rax, rdx
                cmp     r8, rax
                jnb     short loc_14025E8DD

loc_14025E8CB:                          ; CODE XREF: MmUnlockPages+6A1↑j
                movzx   eax, byte ptr [rdi+23h]
                test    al, 20h
                jz      short loc_14025E8DD
                and     al, 0DFh
                mov     [rdi+23h], al
                jmp     loc_14025E9F0
; ---------------------------------------------------------------------------

loc_14025E8DD:                          ; CODE XREF: MmUnlockPages+6A9↑j
                                        ; MmUnlockPages+6B1↑j
                mov     edx, ecx
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14025E8FA
                mov     eax, [rdi+10h]
                bt      rax, 0Ah
                jnb     short loc_14025E8FA
                mov     edx, r13d
                jmp     short loc_14025E92C
; ---------------------------------------------------------------------------

loc_14025E8FA:                          ; CODE XREF: MmUnlockPages+6C9↑j
                                        ; MmUnlockPages+6D3↑j
                cmp     r8, r9
                ja      short loc_14025E91C
                mov     rcx, 0FFFFF68000000000h
                mov     rax, rcx
                cmp     r8, rax
                jb      short loc_14025E91C
                test    byte ptr [rdi+23h], 20h
                jz      short loc_14025E91C
                mov     edx, r13d
                jmp     short loc_14025E92C
; ---------------------------------------------------------------------------

loc_14025E91C:                          ; CODE XREF: MmUnlockPages+6DD↑j
                                        ; MmUnlockPages+6EF↑j ...
                cmp     ebp, r13d
                jnz     short loc_14025E92C
                shr     r11, 3Eh
                test    r13b, r11b
                cmovnz  edx, r13d

loc_14025E92C:                          ; CODE XREF: MmUnlockPages+6D8↑j
                                        ; MmUnlockPages+6FA↑j ...
                mov     rax, cs:qword_140C4E4C8
                shr     r10, 27h
                and     r10d, 3FFh
                mov     rsi, [rax+r10*8]
                cmp     edx, r13d
                jnz     short loc_14025E952
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_14026B700

loc_14025E952:                          ; CODE XREF: MmUnlockPages+725↑j
                lea     rax, unk_140C50C00
                mov     r9, r13
                cmp     rsi, rax
                jnz     short loc_14025E9DD
                mov     r8, gs:20h
                movsxd  rdx, dword ptr [r8+831Ch]
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14025E9DD
                lea     rcx, [rdx+1]
                mov     r10d, 100h
                cmp     rcx, r10
                ja      short loc_14025E9B1
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_14025E990:                          ; CODE XREF: MmUnlockPages+78F↓j
                lea     ecx, [rdx+1]
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_14025E9E6
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14025E9B1
                lea     rax, [rdx+1]
                cmp     rax, r10
                jbe     short loc_14025E990

loc_14025E9B1:                          ; CODE XREF: MmUnlockPages+763↑j
                                        ; MmUnlockPages+786↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_14025E9D8
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14025E9D8
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                jnz     short loc_14025E9D8
                lea     eax, [rdx-0C0h]
                movsxd  r9, eax
                inc     r9

loc_14025E9D8:                          ; CODE XREF: MmUnlockPages+798↑j
                                        ; MmUnlockPages+79D↑j ...
                test    r9, r9
                jz      short loc_14025E9E6

loc_14025E9DD:                          ; CODE XREF: MmUnlockPages+73F↑j
                                        ; MmUnlockPages+754↑j
                lock xadd [rsi+1C00h], r9

loc_14025E9E6:                          ; CODE XREF: MmUnlockPages+781↑j
                                        ; MmUnlockPages+7BB↑j
                mov     rsi, 1000000000h

loc_14025E9F0:                          ; CODE XREF: MmUnlockPages+6B8↑j
                test    ebp, ebp
                jz      short loc_14025EA19

loc_14025E9F4:                          ; CODE XREF: MmUnlockPages+5FF↑j
                mov     rax, 2AAAAAAAAAAAAAABh
                mov     rcx, rdi
                imul    [rsp+0E8h+var_78]
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                call    sub_140278860

loc_14025EA19:                          ; CODE XREF: MmUnlockPages+60C↑j
                                        ; MmUnlockPages+61F↑j ...
                test    [rdi+28h], rsi
                jz      short loc_14025EA9B
                mov     rcx, [rdi+18h]
                mov     rax, rcx
                shr     rax, 3Eh
                test    r13b, al
                jz      short loc_14025EA9B
                cmp     word ptr [rdi+20h], 2
                jnz     short loc_14025EA9B
                mov     rax, 0BFFFFFFFFFFFFFFFh
                and     rcx, rax
                mov     [rdi+18h], rcx
                mov     rcx, rdi
                call    sub_1403F6150
                mov     r12, rax
                mov     r8, 0FFFFFFFFFh
                mov     rcx, [rax]
                mov     rdx, rcx
                mov     rax, rcx
                and     rdx, r8
                dec     rdx
                xor     rax, rdx
                and     rax, r8
                xor     rax, rcx
                mov     [r12], rax
                cmp     r12, rdi
                jz      short loc_14025EA8D
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r12+18h], rax

loc_14025EA8D:                          ; CODE XREF: MmUnlockPages+85B↑j
                test    rdx, rdx
                mov     esi, 0
                cmovnz  r12, rsi
                jmp     short loc_14025EA9D
; ---------------------------------------------------------------------------

loc_14025EA9B:                          ; CODE XREF: MmUnlockPages+7FD↑j
                                        ; MmUnlockPages+80D↑j ...
                xor     esi, esi

loc_14025EA9D:                          ; CODE XREF: MmUnlockPages+879↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                test    rbx, rbx
                jz      short loc_14025EAC2
                mov     r8d, r13d
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_14020B2C0
                mov     rbx, rsi

loc_14025EAC2:                          ; CODE XREF: MmUnlockPages+88F↑j
                test    r12, r12
                jz      short loc_14025EAD2
                mov     edx, r13d
                mov     rcx, r12
                call    sub_1403F7420

loc_14025EAD2:                          ; CODE XREF: MmUnlockPages+8A5↑j
                test    r14, r14
                jz      short loc_14025EAE2
                mov     edx, r13d
                mov     rcx, r14
                call    sub_1402FAD30

loc_14025EAE2:                          ; CODE XREF: MmUnlockPages+8B5↑j
                lea     rax, unk_140C50C00
                cmp     r15, rax
                jz      short loc_14025EAFA
                mov     rcx, [r15+860h]
                call    ExReleaseRundownProtectionCacheAware

loc_14025EAFA:                          ; CODE XREF: MmUnlockPages+8CC↑j
                movzx   ebp, [rsp+0E8h+arg_8]
                mov     r14, 0FFFFFFFFFFFFFFFFh
                mov     r12, [rsp+0E8h+var_A0]
                mov     rsi, [rsp+0E8h+var_90]
                mov     rdi, [rsp+0E8h+var_B8]
                mov     r15, [rsp+0E8h+var_A8]

loc_14025EB1D:                          ; CODE XREF: MmUnlockPages+A07↓j
                mov     rcx, [rsp+0E8h+var_88]
                add     rdi, 8
                inc     rcx
                mov     [rsp+0E8h+var_B8], rdi
                mov     [rsp+0E8h+var_88], rcx
                test    cl, 3Fh
                jnz     loc_14025EC08
                cmp     r12b, 2
                jnb     loc_14025EC08
                cmp     rdi, rsi
                jnb     loc_14025EC2C
                call    KeShouldYieldProcessor
                test    eax, eax
                jz      loc_14025EC08
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14025EBAB
                test    r13b, al
                jz      short loc_14025EBAB
                mov     rax, cr8
                sub     al, 2
                cmp     al, 0Dh
                ja      short loc_14025EBAB
                mov     r10, gs:20h
                mov     rdx, r14
                movzx   ecx, r12b
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14025EBAB
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14025EBAB:                          ; CODE XREF: MmUnlockPages+944↑j
                                        ; MmUnlockPages+949↑j ...
                movzx   eax, r12b
                mov     cr8, rax
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14025EBFF
                test    r13b, al
                jz      short loc_14025EBFF
                cmp     r10b, 0Fh
                ja      short loc_14025EBFF
                mov     rax, gs:20h
                mov     rdx, r14
                movzx   ecx, r10b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14025EBFF:                          ; CODE XREF: MmUnlockPages+9A8↑j
                                        ; MmUnlockPages+9AD↑j ...
                movzx   r12d, r10b
                mov     [rsp+0E8h+var_A0], r12

loc_14025EC08:                          ; CODE XREF: MmUnlockPages+916↑j
                                        ; MmUnlockPages+920↑j ...
                mov     r10d, [rsp+0E8h+arg_10]
                xor     r11d, r11d
                cmp     rdi, rsi
                jnb     short loc_14025EC37
                jmp     loc_14025E5CA
; ---------------------------------------------------------------------------

loc_14025EC1D:                          ; CODE XREF: MmUnlockPages+3D8↑j
                                        ; MmUnlockPages+3F9↑j
                mov     r8, r13
                xor     ecx, ecx
                call    sub_1402E8AF8
                jmp     loc_14025EB1D
; ---------------------------------------------------------------------------

loc_14025EC2C:                          ; CODE XREF: MmUnlockPages+929↑j
                mov     r10d, [rsp+0E8h+arg_10]
                xor     r11d, r11d

loc_14025EC37:                          ; CODE XREF: MmUnlockPages+3C5↑j
                                        ; MmUnlockPages+9F6↑j
                mov     rcx, 0FFFFFFFFFh
                cmp     r15, rcx
                jz      loc_14025EEC5
                lea     rbx, [r15+r15*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     r14, r11
                cmp     r10d, 2
                jnz     loc_14025ED09
                movzx   eax, byte ptr [rbx+22h]
                and     al, 7
                cmp     al, 6
                jnz     short loc_14025ECF6
                mov     rdx, 3FFFFFFFFFFFFFFFh
                test    [rbx+18h], rdx
                jz      short loc_14025ECF6
                mov     rcx, [rbx+8]
                mov     rax, 8000000000000000h
                or      rcx, rax
                mov     r8, 0FFFFF68000000000h
                mov     rax, r8
                cmp     rcx, rax
                jb      short loc_14025ECEC
                mov     rdx, 0FFFFF6FFFFFFFFFFh
                mov     rax, rdx
                cmp     rcx, rax
                ja      short loc_14025ECEC
                shl     rcx, 19h
                mov     rax, r8
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, r8
                cmp     rcx, rax
                jb      short loc_14025ECEC
                mov     rax, rdx
                cmp     rcx, rax
                ja      short loc_14025ECEC
                mov     rcx, 0FFFFFFFFFh
                jmp     short loc_14025ECF9
; ---------------------------------------------------------------------------

loc_14025ECEC:                          ; CODE XREF: MmUnlockPages+A8A↑j
                                        ; MmUnlockPages+A9C↑j ...
                mov     rcx, 0FFFFFFFFFh

loc_14025ECF6:                          ; CODE XREF: MmUnlockPages+A57↑j
                                        ; MmUnlockPages+A67↑j
                mov     r13d, r11d

loc_14025ECF9:                          ; CODE XREF: MmUnlockPages+ACA↑j
                mov     ebp, 3
                test    r13d, r13d
                jz      loc_14025EF70
                jmp     short loc_14025ED17
; ---------------------------------------------------------------------------

loc_14025ED09:                          ; CODE XREF: MmUnlockPages+A49↑j
                test    r10d, r10d
                mov     ebp, r13d
                mov     eax, 4
                cmovz   ebp, eax

loc_14025ED17:                          ; CODE XREF: MmUnlockPages+AE7↑j
                mov     rax, [rbx+18h]
                mov     r13, 3FFFFFFFFFFFFFFFh
                and     rax, r13
                cmp     rax, 10000h
                jb      loc_14025EF7A
                mov     rdi, r11
                mov     r15, r11
                nop     word ptr [rax+rax+00h]

loc_14025ED40:                          ; CODE XREF: MmUnlockPages+BE7↓j
                mov     rsi, [rbx+28h]
                and     rsi, rcx
                mov     [rsp+0E8h+var_B0], r11d
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jnb     short loc_14025ED71

loc_14025ED55:                          ; CODE XREF: MmUnlockPages+B46↓j
                                        ; MmUnlockPages+B4F↓j
                lea     rcx, [rsp+0E8h+var_B0]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_14025ED55
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_14025ED55

loc_14025ED71:                          ; CODE XREF: MmUnlockPages+B33↑j
                mov     rcx, [rbx+18h]
                mov     rdx, rcx
                lea     rax, [rcx-10000h]
                xor     rdx, rax
                and     rdx, r13
                xor     rdx, rcx
                mov     [rbx+18h], rdx
                and     rdx, r13
                cmp     rdx, 10000h
                jnb     short loc_14025EE0C
                test    r14, r14
                jnz     short loc_14025EDB6
                mov     rcx, [rbx+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     r14, [rax+rcx*8]

loc_14025EDB6:                          ; CODE XREF: MmUnlockPages+B7B↑j
                inc     rdi
                test    rdx, rdx
                jnz     short loc_14025EDCE
                mov     rcx, rbx
                call    sub_140278C00
                cmp     eax, 3
                jz      short loc_14025EDCE
                inc     r15

loc_14025EDCE:                          ; CODE XREF: MmUnlockPages+B9C↑j
                                        ; MmUnlockPages+BA9↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                add     ebp, 0FFFFFFFFh
                jz      short loc_14025EE1B
                lea     rbx, [rsi+rsi*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     rcx, 0FFFFFFFFFh
                xor     r11d, r11d
                jmp     loc_14025ED40
; ---------------------------------------------------------------------------

loc_14025EE0C:                          ; CODE XREF: MmUnlockPages+B76↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax

loc_14025EE1B:                          ; CODE XREF: MmUnlockPages+BC0↑j
                test    rdi, rdi
                jz      loc_14025EEB5
                lea     rax, unk_140C50C00
                cmp     r14, rax
                jnz     short loc_14025EEA7
                mov     r8, gs:20h
                movsxd  rdx, dword ptr [r8+831Ch]
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14025EEA7
                lea     rcx, [rdi+rdx]
                mov     r9d, 100h
                cmp     rcx, r9
                ja      short loc_14025EE7E

loc_14025EE54:                          ; CODE XREF: MmUnlockPages+C5C↓j
                cmp     rdi, 80000h
                jnb     short loc_14025EE7E
                lea     ecx, [rdi+rdx]
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_14025EEB5
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14025EE7E
                lea     rax, [rdi+rdx]
                cmp     rax, r9
                jbe     short loc_14025EE54

loc_14025EE7E:                          ; CODE XREF: MmUnlockPages+C32↑j
                                        ; MmUnlockPages+C3B↑j ...
                mov     r9d, 0C0h
                cmp     edx, r9d
                jle     short loc_14025EEA7
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14025EEA7
                mov     eax, edx
                lock cmpxchg [r8+831Ch], r9d
                jnz     short loc_14025EEA7
                lea     eax, [rdx-0C0h]
                movsxd  rcx, eax
                add     rdi, rcx

loc_14025EEA7:                          ; CODE XREF: MmUnlockPages+C0E↑j
                                        ; MmUnlockPages+C23↑j ...
                test    rdi, rdi
                jz      short loc_14025EEB5
                lock xadd [r14+1C00h], rdi

loc_14025EEB5:                          ; CODE XREF: MmUnlockPages+BFE↑j
                                        ; MmUnlockPages+C4E↑j ...
                test    r15, r15
                jz      short loc_14025EEC5
                mov     rdx, r15
                mov     rcx, r14
                call    sub_14026B700

loc_14025EEC5:                          ; CODE XREF: MmUnlockPages+A24↑j
                                        ; MmUnlockPages+C98↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14025EF1E
                test    al, 1
                jz      short loc_14025EF1E
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14025EF1E
                cmp     r12b, 0Fh
                ja      short loc_14025EF1E
                cmp     al, 2
                jb      short loc_14025EF1E
                mov     r9, gs:20h
                mov     rax, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r12b
                inc     ecx
                shl     rax, cl
                mov     r8, [r9+84B8h]
                movzx   eax, ax
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14025EF1E
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14025EF1E:                          ; CODE XREF: MmUnlockPages+CAD↑j
                                        ; MmUnlockPages+CB1↑j ...
                movzx   eax, r12b
                mov     cr8, rax
                mov     rcx, [rsp+0E8h+var_70]
                test    rcx, rcx
                jz      short loc_14025EF41
                mov     rax, [rsp+0E8h+var_80]
                neg     rax
                lock xadd [rcx+500h], rax

loc_14025EF41:                          ; CODE XREF: MmUnlockPages+D0E↑j
                mov     rax, [rsp+0E8h+arg_0]
                mov     ecx, 0FFFFF6FDh
                and     [rax+0Ah], cx
                add     rsp, 0A8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14025EF67:                          ; CODE XREF: MmUnlockPages+5E1↑j
                mov     rcx, rdi
                call    sub_1403F41EC
; ---------------------------------------------------------------------------
                align 10h

loc_14025EF70:                          ; CODE XREF: MmUnlockPages+AE1↑j
                mov     r13, 3FFFFFFFFFFFFFFFh

loc_14025EF7A:                          ; CODE XREF: MmUnlockPages+B0E↑j
                mov     rax, [rbx+18h]
                mov     rcx, 8000000000000000h
                mov     r9, [rbx+8]
                and     rax, r13
                or      r9, rcx
                mov     [rsp+0E8h+var_C8], rax
                mov     ecx, 1Ah
                mov     r8, rbx
                mov     edx, 41791h
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
MmUnlockPages   endp

algn_14025EFAA:                         ; DATA XREF: .pdata:00000001400CD5E4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14025EFB0   proc near               ; CODE XREF: sub_140213C50+1F8↑p
                                        ; sub_140229EE0+682↑p ...

var_128         = qword ptr -128h
var_118         = dword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_104         = word ptr -104h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_48          = qword ptr -48h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+148h+var_48], rax
                mov     r13d, r8d
                mov     rbx, rdx
                mov     r14, rcx
                xor     ebp, ebp
                xor     edx, edx
                mov     [rsp+148h+var_110], rbp
                mov     r8d, 0B8h
                lea     rcx, [rsp+148h+var_108]
                call    memset
                lea     r15, qword_140C4EDC0
                cmp     r14, r15
                jnz     short loc_14025F01C
                mov     eax, cs:dword_140CFB17C
                test    al, 2
                jz      short loc_14025F01C
                mov     edx, r13d
                mov     rcx, rbx
                call    sub_140553CD0

loc_14025F01C:                          ; CODE XREF: sub_14025EFB0+55↑j
                                        ; sub_14025EFB0+5F↑j
                mov     eax, [r14+18h]
                mov     rsi, rbx
                sub     rsi, [r14+10h]
                sar     rsi, 3
                and     eax, 4
                jz      short loc_14025F034
                shr     rsi, 4

loc_14025F034:                          ; CODE XREF: sub_14025EFB0+7E↑j
                mov     rdi, r13
                mov     r11, 0FFFFFFFFFFFFFFFFh
                shr     rdi, 4
                test    eax, eax
                cmovz   rdi, r13
                cmp     r13d, 200h
                jb      short loc_14025F064
                cmp     r14, r15
                jnz     short loc_14025F064
                mov     edx, 1
                mov     [rsp+148h+var_118], edx
                jmp     loc_14025F13F
; ---------------------------------------------------------------------------

loc_14025F064:                          ; CODE XREF: sub_14025EFB0+9F↑j
                                        ; sub_14025EFB0+A4↑j
                mov     rax, [r14]
                mov     edx, ebp
                mov     [rsp+148h+var_118], edx
                cmp     rsi, rax
                jnb     loc_14025F387
                cmp     rdi, 1
                ja      short loc_14025F09A
                jnz     loc_14025F387
                mov     rax, [r14+8]
                bt      [rax], rsi
                setb    al
                test    al, al
                jz      loc_14025F387
                jmp     loc_14025F13F
; ---------------------------------------------------------------------------

loc_14025F09A:                          ; CODE XREF: sub_14025EFB0+CA↑j
                sub     rax, rsi
                cmp     rax, rdi
                jb      loc_14025F387
                mov     rcx, [r14+8]
                lea     r10, [rdi-1]
                add     r10, rsi
                mov     rax, rsi
                shr     rax, 6
                mov     r9, [rcx+rax*8]
                lea     r8, [rcx+rax*8]
                mov     rax, r10
                shr     rax, 6
                lea     rdx, [rcx+rax*8]
                cmp     r8, rdx
                jnz     short loc_14025F0EC
                mov     ecx, 40h ; '@'
                mov     rdx, r11
                sub     cl, dil
                shr     rdx, cl
                mov     rcx, rsi
                shl     rdx, cl
                and     r9, rdx
                cmp     r9, rdx
                jmp     short loc_14025F137
; ---------------------------------------------------------------------------

loc_14025F0EC:                          ; CODE XREF: sub_14025EFB0+11E↑j
                mov     rcx, rsi
                mov     rax, r11
                shl     rax, cl
                and     r9, rax
                cmp     r9, rax
                jnz     loc_14025F387
                add     r8, 8
                cmp     r8, rdx
                jz      short loc_14025F122
                nop     word ptr [rax+rax+00h]

loc_14025F110:                          ; CODE XREF: sub_14025EFB0+170↓j
                cmp     [r8], r11
                jnz     loc_14025F387
                add     r8, 8
                cmp     r8, rdx
                jnz     short loc_14025F110

loc_14025F122:                          ; CODE XREF: sub_14025EFB0+158↑j
                mov     rax, [r8]
                movzx   ecx, r10b
                not     cl
                mov     rdx, r11
                shr     rdx, cl
                and     rax, rdx
                cmp     rax, rdx

loc_14025F137:                          ; CODE XREF: sub_14025EFB0+13A↑j
                jnz     loc_14025F387
                mov     edx, ebp

loc_14025F13F:                          ; CODE XREF: sub_14025EFB0+AF↑j
                                        ; sub_14025EFB0+E5↑j
                test    r13d, r13d
                jz      short loc_14025F15D
                mov     rax, cs:qword_14001D278
                mov     rcx, r13
                xchg    ax, ax

loc_14025F150:                          ; CODE XREF: sub_14025EFB0+1AB↓j
                mov     [rbx], rax
                add     rbx, 8
                sub     rcx, 1
                jnz     short loc_14025F150

loc_14025F15D:                          ; CODE XREF: sub_14025EFB0+192↑j
                lea     r15, ds:0[r13*8]
                sub     rbx, r15
                test    edx, edx
                jnz     loc_14025F2F2
                mov     eax, [r14+18h]
                test    al, 1
                jz      short loc_14025F18F
                mov     r8d, r13d
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_14025F3D0
                cmp     eax, 1
                jz      loc_14025F336

loc_14025F18F:                          ; CODE XREF: sub_14025EFB0+1C6↑j
                lea     rcx, [rsp+148h+var_110]
                call    sub_14032C660
                mov     rax, [rsp+148h+var_110]
                test    r13d, r13d
                jz      short loc_14025F1BD
                mov     rcx, r13
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_14025F1B0:                          ; CODE XREF: sub_14025EFB0+20B↓j
                mov     [rbx], rax
                add     rbx, 8
                sub     rcx, 1
                jnz     short loc_14025F1B0

loc_14025F1BD:                          ; CODE XREF: sub_14025EFB0+1F1↑j
                mov     rdx, cs:qword_140C4DDC0
                sub     rbx, r15
                mov     rcx, rax
                test    rdx, rdx
                jz      short loc_14025F1DD
                test    cl, 10h
                jnz     short loc_14025F1DD
                mov     rax, rdx
                not     rax
                and     rax, rcx

loc_14025F1DD:                          ; CODE XREF: sub_14025EFB0+21D↑j
                                        ; sub_14025EFB0+222↑j
                mov     rcx, 0FFFFFFFF00000000h
                test    rcx, rax
                jnz     short loc_14025F249
                mov     eax, [r14+18h]
                not     eax
                mov     [rsp+148h+var_104], bp
                and     eax, 2
                mov     [rsp+148h+var_F8], rbp
                mov     [rsp+148h+var_108], eax
                mov     rax, 0FFFFF68000000000h
                mov     [rsp+148h+var_100], 14h
                mov     [rsp+148h+var_F0], rbp
                shl     rbx, 19h
                mov     rax, rax
                shl     rax, 19h
                lea     rcx, [rsp+148h+var_108]
                sub     rbx, rax
                xor     r9d, r9d
                sar     rbx, 10h
                mov     r8, r13
                mov     rdx, rbx
                call    sub_1402882E0
                lea     rcx, [rsp+148h+var_108]
                call    sub_14028EDB0

loc_14025F249:                          ; CODE XREF: sub_14025EFB0+23A↑j
                mov     rax, [r14+8]
                mov     r10, rsi
                and     r10d, 1Fh
                mov     rcx, rsi
                shr     rcx, 5
                mov     r9, rdi
                lea     r8, [rax+rcx*4]
                lea     rax, [rdi+r10]
                cmp     rax, 20h ; ' '
                ja      short loc_14025F28C
                cmp     rdi, 20h ; ' '
                jnz     short loc_14025F277
                mov     [r8], ebp
                jmp     short loc_14025F2F2
; ---------------------------------------------------------------------------

loc_14025F277:                          ; CODE XREF: sub_14025EFB0+2C0↑j
                mov     rcx, rdi
                mov     eax, 1
                shl     eax, cl
                mov     rcx, r10
                dec     eax
                shl     eax, cl
                not     eax
                jmp     short loc_14025F2EE
; ---------------------------------------------------------------------------

loc_14025F28C:                          ; CODE XREF: sub_14025EFB0+2BA↑j
                test    r10, r10
                jz      short loc_14025F2BC
                mov     eax, esi
                mov     edx, 20h ; ' '
                and     eax, 1Fh
                sub     edx, eax
                mov     eax, 1
                mov     ecx, edx
                shl     eax, cl
                mov     rcx, r10
                dec     eax
                shl     eax, cl
                not     eax
                lock and [r8], eax
                mov     eax, edx
                sub     r9, rax
                add     r8, 4

loc_14025F2BC:                          ; CODE XREF: sub_14025EFB0+2DF↑j
                cmp     r9, 20h ; ' '
                jb      short loc_14025F2DD
                mov     rdx, r9
                shr     rdx, 5
                imul    rax, rdx, -20h
                add     r9, rax

loc_14025F2D0:                          ; CODE XREF: sub_14025EFB0+32B↓j
                mov     [r8], ebp
                add     r8, 4
                sub     rdx, 1
                jnz     short loc_14025F2D0

loc_14025F2DD:                          ; CODE XREF: sub_14025EFB0+310↑j
                test    r9, r9
                jz      short loc_14025F2F2
                mov     rcx, r9
                mov     rax, 0FFFFFFFFFFFFFFFFh
                shl     eax, cl

loc_14025F2EE:                          ; CODE XREF: sub_14025EFB0+2DA↑j
                lock and [r8], eax

loc_14025F2F2:                          ; CODE XREF: sub_14025EFB0+1BA↑j
                                        ; sub_14025EFB0+2C5↑j ...
                call    sub_1403F53C4
                test    eax, eax
                jz      short loc_14025F306
                mov     rbp, rdi
                lock xadd [r14+58h], rbp
                jmp     short loc_14025F30F
; ---------------------------------------------------------------------------

loc_14025F306:                          ; CODE XREF: sub_14025EFB0+349↑j
                mov     rax, rdi
                lock xadd [r14+58h], rax

loc_14025F30F:                          ; CODE XREF: sub_14025EFB0+354↑j
                cmp     [rsp+148h+var_118], 1
                jnz     short loc_14025F362
                mov     eax, 0FFFFFE00h
                lea     r8d, [r13+1FFh]
                and     r8, rax
                mov     r9d, 1
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_140355410

loc_14025F336:                          ; CODE XREF: sub_14025EFB0+1D9↑j
                                        ; sub_14025EFB0+3C5↓j ...
                mov     rcx, [rsp+148h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+148h+arg_18]
                add     rsp, 110h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14025F362:                          ; CODE XREF: sub_14025EFB0+364↑j
                call    sub_1403F53C4
                test    eax, eax
                jz      short loc_14025F377
                lea     rax, [rdi+rbp]
                cmp     rax, 40000h
                jbe     short loc_14025F336

loc_14025F377:                          ; CODE XREF: sub_14025EFB0+3B9↑j
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1402438A0
                jmp     short loc_14025F336
; ---------------------------------------------------------------------------

loc_14025F387:                          ; CODE XREF: sub_14025EFB0+C0↑j
                                        ; sub_14025EFB0+CC↑j ...
                shl     rbx, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                shl     rax, 19h
                mov     r9, r13
                sub     rbx, rax
                mov     [rsp+148h+var_128], rsi
                sar     rbx, 10h
                mov     edx, 302h
                mov     r8, rbx
                mov     ecx, 0DAh
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14025EFB0
sub_14025EFB0   endp

byte_14025F3BE  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400CD5F0↑o

; =============== S U B R O U T I N E =======================================


sub_14025F3D0   proc near               ; CODE XREF: sub_14025EFB0+1D1↑p
                                        ; MmUnmapVideoDisplay+177FD2↓p
                                        ; DATA XREF: ...

var_88          = dword ptr -88h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], r8d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xor     esi, esi
                mov     ebx, r8d
                mov     [rsp+88h+var_68], rsi
                mov     r14, rdx
                mov     r15, rcx
                call    sub_1403F53C4
                test    eax, eax
                jz      short loc_14025F425
                cmp     ebx, 200h
                jb      short loc_14025F42A

loc_14025F40A:                          ; CODE XREF: sub_14025F3D0+58↓j
                                        ; sub_14025F3D0+E1↓j ...
                xor     eax, eax

loc_14025F40C:                          ; CODE XREF: sub_14025F3D0+5E4↓j
                                        ; sub_14025F3D0+60C↓j ...
                mov     rbx, [rsp+88h+arg_0]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14025F425:                          ; CODE XREF: sub_14025F3D0+30↑j
                cmp     ebx, 40h ; '@'
                ja      short loc_14025F40A

loc_14025F42A:                          ; CODE XREF: sub_14025F3D0+38↑j
                mov     rbp, [r15+10h]
                mov     rcx, r14
                mov     [rsp+88h+var_40], rbp
                mov     r11d, esi
                shl     rcx, 19h
                mov     [rsp+88h+arg_18], esi
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, rdx
                cmp     rcx, rax
                jb      short loc_14025F4B7
                mov     rax, 0FFFFF6FFFFFFFFFFh
                cmp     rcx, rax
                ja      short loc_14025F4B7
                mov     r11d, 1
                shr     rbp, 9
                mov     rax, 7FFFFFFFF8h
                mov     [rsp+88h+arg_18], r11d
                and     rbp, rax
                mov     rax, rdx
                add     rbp, rax
                mov     ecx, 1000h
                mov     eax, r14d
                mov     [rsp+88h+var_40], rbp
                and     eax, 0FFFh
                sub     ecx, eax
                shr     ecx, 3
                cmp     ebx, ecx
                ja      loc_14025F40A

loc_14025F4B7:                          ; CODE XREF: sub_14025F3D0+92↑j
                                        ; sub_14025F3D0+A1↑j
                cmp     r14, rbp
                jz      loc_14025F40A
                mov     r10, 0FFFFF6FB7DBED000h
                mov     r9, 8000000000000000h
                mov     rdi, 0FFFFF6FB7DBED7F8h
                cmp     ebx, 1
                jnz     short loc_14025F4ED
                mov     edi, 1000h
                jmp     loc_14025F576
; ---------------------------------------------------------------------------

loc_14025F4ED:                          ; CODE XREF: sub_14025F3D0+111↑j
                mov     rcx, cs:qword_140C4DDC0
                lea     r8, [r14+8]
                mov     rdx, rbx
                shl     rdx, 20h
                test    rcx, rcx
                jz      short loc_14025F515
                mov     rax, rcx
                and     rax, rdx
                jnz     short loc_14025F511
                or      rdx, rcx
                jmp     short loc_14025F515
; ---------------------------------------------------------------------------

loc_14025F511:                          ; CODE XREF: sub_14025F3D0+13A↑j
                or      rdx, 10h

loc_14025F515:                          ; CODE XREF: sub_14025F3D0+132↑j
                                        ; sub_14025F3D0+13F↑j
                mov     rax, r10
                cmp     r8, rax
                jb      short loc_14025F570
                mov     rax, rdi
                cmp     r8, rax
                ja      short loc_14025F570
                call    sub_140349680
                test    eax, eax
                jz      short loc_14025F54C
                cmp     byte ptr cs:word_140C4DE88+1, sil
                jnz     short loc_14025F53F
                test    dl, 1
                jz      short loc_14025F53F
                or      rdx, r9

loc_14025F53F:                          ; CODE XREF: sub_14025F3D0+165↑j
                                        ; sub_14025F3D0+16A↑j
                mov     rcx, r8
                mov     [r8], rdx
                call    sub_140349620
                jmp     short loc_14025F573
; ---------------------------------------------------------------------------

loc_14025F54C:                          ; CODE XREF: sub_14025F3D0+15C↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14025F570
                test    dl, 1
                jz      short loc_14025F570
                or      rdx, r9

loc_14025F570:                          ; CODE XREF: sub_14025F3D0+14B↑j
                                        ; sub_14025F3D0+153↑j ...
                mov     [r8], rdx

loc_14025F573:                          ; CODE XREF: sub_14025F3D0+17A↑j
                mov     rdi, rsi

loc_14025F576:                          ; CODE XREF: sub_14025F3D0+118↑j
                mov     rdx, [r15+50h]
                mov     [rsp+88h+var_50], rdi
                test    r11d, r11d
                jz      short loc_14025F593
                movzx   eax, cs:word_140CFB000
                lea     rcx, [rax+rax*8]
                lea     rdx, [rdx+rcx*8]

loc_14025F593:                          ; CODE XREF: sub_14025F3D0+1B2↑j
                mov     rax, gs:20h
                mov     rcx, [rax+0C0h]
                movzx   eax, word ptr [rcx+92h]
                lea     rax, [rax+rax*8]
                lea     r10, [rdx+rax*8]
                mov     [rsp+88h+var_48], r10
                lock or [rsp+88h+var_88], esi
                mov     r12d, cs:dword_140D23080
                test    r12d, r12d
                jnz     short loc_14025F5F9
                nop     word ptr [rax+rax+00000000h]

loc_14025F5D0:                          ; CODE XREF: sub_14025F3D0+21A↓j
                mov     edx, 1
                xor     ecx, ecx
                call    sub_14031FD30
                lock or [rsp+88h+var_88], esi
                mov     r12d, cs:dword_140D23080
                test    r12d, r12d
                jz      short loc_14025F5D0
                mov     r10, [rsp+88h+var_48]
                mov     r11d, [rsp+88h+arg_18]

loc_14025F5F9:                          ; CODE XREF: sub_14025F3D0+1F5↑j
                mov     eax, r12d
                and     eax, 7
                lea     r13, [r10+rax*8]
                test    r11d, r11d
                jz      short loc_14025F642
                movsxd  rcx, dword ptr [r10+40h]
                add     rcx, rbx
                cmp     rcx, 80h
                jb      short loc_14025F62A
                mov     edx, 1
                mov     rcx, r15
                call    sub_14030E9B0
                jmp     loc_14025F40A
; ---------------------------------------------------------------------------

loc_14025F62A:                          ; CODE XREF: sub_14025F3D0+246↑j
                cmp     rcx, 40h ; '@'
                jb      short loc_14025F642
                xor     edx, edx
                mov     rcx, r15
                call    sub_14030E9B0
                mov     r11d, [rsp+88h+arg_18]

loc_14025F642:                          ; CODE XREF: sub_14025F3D0+236↑j
                                        ; sub_14025F3D0+25E↑j
                mov     rax, cs:qword_140C4DDC0
                mov     rbx, rsi
                test    rax, rax
                mov     ecx, 2
                cmovnz  rbx, rax
                and     rbx, 0FFFFFFFFFFFF0FFFh
                or      rbx, rdi

loc_14025F662:                          ; CODE XREF: sub_14025F3D0+2BF↓j
                mov     rdi, [r13+0]
                mov     [rsp+88h+var_60], rdi
                nop     dword ptr [rax+rax+00h]

loc_14025F670:                          ; CODE XREF: sub_14025F3D0+407↓j
                                        ; sub_14025F3D0+51C↓j
                mov     [rsp+88h+var_58], rdi
                cmp     edi, r12d
                jz      loc_14025F7DC
                mov     rax, rdi
                shr     rax, 20h
                test    eax, eax
                jz      loc_14025F7DC
                test    edi, edi
                jz      short loc_14025F662
                lock or [rsp+88h+var_88], esi
                mov     eax, cs:dword_140D23080
                sub     eax, edi
                cmp     eax, 2
                jbe     short loc_14025F6A6
                mov     eax, esi
                jmp     short loc_14025F6B8
; ---------------------------------------------------------------------------

loc_14025F6A6:                          ; CODE XREF: sub_14025F3D0+2D0↑j
                test    dil, 1
                jnz     short loc_14025F6B3
                cmp     eax, 2
                mov     eax, esi
                jnb     short loc_14025F6B8

loc_14025F6B3:                          ; CODE XREF: sub_14025F3D0+2DA↑j
                mov     eax, 1

loc_14025F6B8:                          ; CODE XREF: sub_14025F3D0+2D4↑j
                                        ; sub_14025F3D0+2E1↑j
                test    eax, eax
                jnz     loc_14025F8F1
                mov     rbp, cr8
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14025F70A
                test    al, 1
                jz      short loc_14025F70A
                cmp     bpl, 0Fh
                ja      short loc_14025F70A
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14025F70A:                          ; CODE XREF: sub_14025F3D0+300↑j
                                        ; sub_14025F3D0+304↑j ...
                mov     rax, rdi
                lock cmpxchg [r13+0], rsi
                mov     rdi, rax
                mov     [rsp+88h+var_60], rax
                cmp     rax, [rsp+88h+var_58]
                jnz     short loc_14025F763
                xor     r8d, r8d
                mov     rcx, r15
                test    r11d, r11d
                jz      short loc_14025F73C
                lea     rdx, [rsp+88h+var_58]
                call    sub_1405541BC
                mov     rcx, rax
                jmp     short loc_14025F74E
; ---------------------------------------------------------------------------

loc_14025F73C:                          ; CODE XREF: sub_14025F3D0+35B↑j
                mov     edx, dword ptr [rsp+88h+var_58+4]
                call    sub_14030EB80
                mov     rcx, rax
                lock xadd [r15+58h], rax

loc_14025F74E:                          ; CODE XREF: sub_14025F3D0+36A↑j
                mov     r10, [rsp+88h+var_48]
                neg     ecx
                lock xadd [r10+40h], ecx
                mov     rdi, rsi
                mov     [rsp+88h+var_60], rsi

loc_14025F763:                          ; CODE XREF: sub_14025F3D0+350↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14025F7BD
                test    al, 1
                jz      short loc_14025F7BD
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14025F7BD
                cmp     bpl, 0Fh
                ja      short loc_14025F7BD
                cmp     al, 2
                jb      short loc_14025F7BD
                mov     r10, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14025F7BD
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14025F7BD:                          ; CODE XREF: sub_14025F3D0+39B↑j
                                        ; sub_14025F3D0+39F↑j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rbp, [rsp+88h+var_40]
                mov     ecx, 2
                mov     r11d, [rsp+88h+arg_18]
                jmp     loc_14025F670
; ---------------------------------------------------------------------------

loc_14025F7DC:                          ; CODE XREF: sub_14025F3D0+2A8↑j
                                        ; sub_14025F3D0+2B7↑j
                mov     ecx, dword ptr [rsp+88h+var_60+4]
                test    rbx, rbx
                jnz     short loc_14025F7EA
                mov     rbx, rsi
                jmp     short loc_14025F807
; ---------------------------------------------------------------------------

loc_14025F7EA:                          ; CODE XREF: sub_14025F3D0+413↑j
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14025F807
                test    bl, 10h
                jnz     short loc_14025F803
                not     rax
                and     rbx, rax
                jmp     short loc_14025F807
; ---------------------------------------------------------------------------

loc_14025F803:                          ; CODE XREF: sub_14025F3D0+429↑j
                and     rbx, 0FFFFFFFFFFFFFFEFh

loc_14025F807:                          ; CODE XREF: sub_14025F3D0+418↑j
                                        ; sub_14025F3D0+424↑j ...
                mov     rax, cs:qword_140C4DDC0
                shl     rcx, 20h
                mov     ebx, ebx
                or      rbx, rcx
                test    rax, rax
                jz      short loc_14025F82A
                test    rbx, rax
                jnz     short loc_14025F826
                or      rbx, rax
                jmp     short loc_14025F82A
; ---------------------------------------------------------------------------

loc_14025F826:                          ; CODE XREF: sub_14025F3D0+44F↑j
                or      rbx, 10h

loc_14025F82A:                          ; CODE XREF: sub_14025F3D0+44A↑j
                                        ; sub_14025F3D0+454↑j
                mov     rdx, rbx
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r14, rax
                jb      short loc_14025F8B0
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_14025F8B0
                call    sub_140349680
                test    eax, eax
                jz      short loc_14025F882
                cmp     byte ptr cs:word_140C4DE88+1, sil
                jnz     short loc_14025F875
                test    bl, 1
                jz      short loc_14025F875
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14025F875:                          ; CODE XREF: sub_14025F3D0+491↑j
                                        ; sub_14025F3D0+496↑j
                mov     rcx, r14
                mov     [r14], rdx
                call    sub_140349620
                jmp     short loc_14025F8B3
; ---------------------------------------------------------------------------

loc_14025F882:                          ; CODE XREF: sub_14025F3D0+488↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14025F8B0
                test    bl, 1
                jz      short loc_14025F8B0
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14025F8B0:                          ; CODE XREF: sub_14025F3D0+46D↑j
                                        ; sub_14025F3D0+47F↑j ...
                mov     [r14], rdx

loc_14025F8B3:                          ; CODE XREF: sub_14025F3D0+4B0↑j
                mov     rax, r14
                mov     dword ptr [rsp+88h+var_68], r12d
                sub     rax, rbp
                sar     rax, 3
                mov     dword ptr [rsp+88h+var_68+4], eax
                mov     rax, rdi
                mov     rcx, [rsp+88h+var_68]
                lock cmpxchg [r13+0], rcx
                mov     rdi, rax
                mov     [rsp+88h+var_60], rax
                cmp     rax, [rsp+88h+var_58]
                jz      loc_14025F9E1
                mov     ecx, 2
                jmp     loc_14025F670
; ---------------------------------------------------------------------------

loc_14025F8F1:                          ; CODE XREF: sub_14025F3D0+2EA↑j
                mov     rax, r14
                mov     rcx, rsi
                sub     rax, rbp
                sar     rax, 3
                mov     dword ptr [rsp+88h+var_68+4], eax
                call    sub_14027C6C0
                mov     rbx, rax
                mov     rcx, r14
                and     rbx, 0FFFFFFFFFFFF0FFFh
                or      rbx, [rsp+88h+var_50]
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14025F984
                call    sub_140349680
                test    eax, eax
                jz      short loc_14025F956
                cmp     byte ptr cs:word_140C4DE88+1, sil
                jnz     short loc_14025F946
                test    bl, 1
                jz      short loc_14025F946
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14025F946:                          ; CODE XREF: sub_14025F3D0+562↑j
                                        ; sub_14025F3D0+567↑j
                mov     rdx, rbx
                mov     [r14], rbx
                mov     rcx, r14
                call    sub_140349620
                jmp     short loc_14025F987
; ---------------------------------------------------------------------------

loc_14025F956:                          ; CODE XREF: sub_14025F3D0+559↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14025F984
                test    bl, 1
                jz      short loc_14025F984
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14025F984:                          ; CODE XREF: sub_14025F3D0+550↑j
                                        ; sub_14025F3D0+5A0↑j ...
                mov     [r14], rbx

loc_14025F987:                          ; CODE XREF: sub_14025F3D0+584↑j
                xor     r8d, r8d
                mov     rcx, r15
                cmp     [rsp+88h+arg_18], esi
                jz      short loc_14025F9B9
                lea     rdx, [rsp+88h+var_68]
                call    sub_1405541BC
                mov     rcx, rax
                mov     rax, [rsp+88h+var_48]
                neg     ecx
                lock xadd [rax+40h], ecx
                mov     eax, 1
                jmp     loc_14025F40C
; ---------------------------------------------------------------------------

loc_14025F9B9:                          ; CODE XREF: sub_14025F3D0+5C4↑j
                mov     edx, dword ptr [rsp+88h+var_68+4]
                call    sub_14030EB80
                mov     rcx, rax
                lock xadd [r15+58h], rax
                mov     rax, [rsp+88h+var_48]
                neg     ecx
                lock xadd [rax+40h], ecx
                mov     eax, 1
                jmp     loc_14025F40C
; ---------------------------------------------------------------------------

loc_14025F9E1:                          ; CODE XREF: sub_14025F3D0+511↑j
                mov     ecx, [rsp+88h+arg_10]
                mov     rax, [rsp+88h+var_48]
                lock xadd [rax+40h], ecx
                mov     eax, 1
                jmp     loc_14025F40C
sub_14025F3D0   endp

; ---------------------------------------------------------------------------
byte_14025F9FC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CD5FC↑o

; =============== S U B R O U T I N E =======================================


sub_14025FA04   proc near               ; CODE XREF: sub_14025D100+5F2↑p
                                        ; DATA XREF: .pdata:00000001400CD608↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_18          = qword ptr  20h

                push    rbx
                sub     rsp, 30h
                and     [rsp+38h+arg_18], 0
                mov     rbx, rcx
                and     [rsp+38h+arg_0], 0
                cmp     byte ptr [rcx+41h], 0
                jnz     short loc_14025FA3F
                mov     ecx, [rcx+30h]
                mov     r9d, 0C0000000h
                mov     eax, ecx
                and     eax, r9d
                cmp     eax, r9d
                jz      short loc_14025FA7A
                test    dword ptr [rdx+50h], 2000000h
                jz      short loc_14025FA3F
                test    ecx, ecx
                jns     short loc_14025FA7A

loc_14025FA3F:                          ; CODE XREF: sub_14025FA04+19↑j
                                        ; sub_14025FA04+35↑j
                cmp     qword ptr [rdx+0B0h], 0
                jz      short loc_14025FA53
                mov     rcx, rbx
                call    sub_14025FAC0
                jmp     short loc_14025FAA2
; ---------------------------------------------------------------------------

loc_14025FA53:                          ; CODE XREF: sub_14025FA04+43↑j
                mov     eax, cs:dword_140C0F1DC
                cmp     eax, 1
                jz      short loc_14025FA6E
                test    eax, eax
                jz      short loc_14025FA7E
                call    sub_1405CD304
                movzx   eax, al
                test    eax, eax
                jz      short loc_14025FA7E

loc_14025FA6E:                          ; CODE XREF: sub_14025FA04+58↑j
                mov     rcx, rbx
                call    sub_1403F1290
                test    al, al
                jz      short loc_14025FA7E

loc_14025FA7A:                          ; CODE XREF: sub_14025FA04+2C↑j
                                        ; sub_14025FA04+39↑j
                xor     al, al
                jmp     short loc_14025FAA4
; ---------------------------------------------------------------------------

loc_14025FA7E:                          ; CODE XREF: sub_14025FA04+5C↑j
                                        ; sub_14025FA04+68↑j ...
                lea     rdx, [rsp+38h+arg_0]
                mov     [rsp+38h+var_18], rdx
                lea     r9, [rbx+0C0h]
                lea     rdx, [rsp+38h+arg_18]
                lea     rcx, [rbx+78h]
                lea     r8, [rsp+38h+arg_0]
                call    sub_14023D030

loc_14025FAA2:                          ; CODE XREF: sub_14025FA04+4D↑j
                mov     al, 1

loc_14025FAA4:                          ; CODE XREF: sub_14025FA04+78↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14025FA04   endp

algn_14025FAAB:                         ; DATA XREF: .pdata:00000001400CD608↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14025FAC0   proc near               ; CODE XREF: sub_14025FA04+48↑p
                                        ; DATA XREF: .rdata:000000014005AB88↑o ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140439F94 SIZE 00000088 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                xor     eax, eax
                movsx   ebp, r8b
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                mov     rax, [rdx+0B0h]
                mov     rbx, rcx
                movups  [rsp+48h+var_28], xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     sil, sil
                mov     rdi, [rax]
                mov     rax, [rax+8]
                mov     [rcx+78h], rax
                mov     dword ptr [rcx+0B8h], 0
                lea     rcx, [rdi+40h]
                call    KeAcquireInStackQueuedSpinLock
                or      dword ptr [rbx+10h], 10000h
                cmp     [rdi+48h], sil
                jnz     short loc_14025FB3F
                mov     r8d, ebp
                lea     rdx, [rbx+0A8h]
                xor     r9d, r9d
                mov     rcx, rdi
                call    sub_14025FD00
                nop
                jmp     loc_140439F94
; ---------------------------------------------------------------------------

loc_14025FB3F:                          ; CODE XREF: sub_14025FAC0+62↑j
                mov     sil, 1
                jmp     loc_140439F94
; ---------------------------------------------------------------------------

loc_14025FB47:                          ; CODE XREF: sub_14025FAC0+1DA4EB↓j
                                        ; sub_14025FAC0+1DA4F3↓j ...
                mov     cr8, rdi
                test    sil, sil
                jnz     short loc_14025FB66

loc_14025FB50:                          ; CODE XREF: sub_14025FAC0+B5↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14025FB66:                          ; CODE XREF: sub_14025FAC0+8E↑j
                mov     rdx, [rbx+0C0h]
                mov     rcx, rbx
                call    sub_14038DB70
                jmp     short loc_14025FB50
sub_14025FAC0   endp

; ---------------------------------------------------------------------------
algn_14025FB77:                         ; DATA XREF: .rdata:000000014005AB88↑o
                                        ; .pdata:00000001400CD614↑o
                align 20h
; Exported entry 1093. KeAcquireInStackQueuedSpinLock

; =============== S U B R O U T I N E =======================================


