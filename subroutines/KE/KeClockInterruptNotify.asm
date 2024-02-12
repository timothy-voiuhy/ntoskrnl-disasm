KeClockInterruptNotify proc near        ; CODE XREF: sub_1402509A0+DD↑p
                                        ; sub_1402534B0+15↑p ...

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                pushfq
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                xor     ebp, ebp
                movzx   r14d, dl
                mov     [rsp+0A8h+var_60], rbp
                mov     rdi, rcx
                mov     rsi, gs:20h
                mov     r12d, ebp
                cmp     cs:dword_140CFC594, ebp
                lea     r13d, [rbp+0Fh]
                mov     [rsp+0A8h+var_48], rbp
                lea     r15, [rbp-1]
                mov     [rsp+0A8h+arg_10], bpl
                mov     [rsp+0A8h+var_68], rbp
                jnz     loc_14025375B
                cli
                mov     rbx, gs:20h
                mov     [rsp+0A8h+var_78], ebp

loc_1402535F8:                          ; CODE XREF: KeClockInterruptNotify+D7↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140253620
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140253620
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140253620
                mov     rcx, rbx
                call    sub_1403F2EC4
                nop     dword ptr [rax]

loc_140253620:                          ; CODE XREF: KeClockInterruptNotify+72↑j
                                        ; KeClockInterruptNotify+78↑j ...
                lock bts cs:qword_140C31F20, 0
                jnb     short loc_140253669
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140253651
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140253651
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140253651
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_140253651:                          ; CODE XREF: KeClockInterruptNotify+A6↑j
                                        ; KeClockInterruptNotify+AC↑j ...
                lea     rcx, [rsp+0A8h+var_78]
                call    sub_1402C8C70
                mov     rax, cs:qword_140C31F20
                test    rax, rax
                jnz     short loc_140253651
                jmp     short loc_1402535F8
; ---------------------------------------------------------------------------

loc_140253669:                          ; CODE XREF: KeClockInterruptNotify+9A↑j
                cmp     [rsi+21h], bpl
                jz      loc_140253715
                call    sub_1402AFBD8
                test    al, al
                jz      loc_140253715
                lea     rcx, [rsp+0A8h+var_48]
                call    sub_140250BC0
                mov     rcx, rax
                mov     rbx, rax
                call    sub_1402512E0
                mov     eax, cs:dword_140C31C44
                cmp     eax, 20h ; ' '
                jnz     short loc_1402536B0
                mov     rax, cs:off_140C008C0
                call    sub_1404079D0
                mov     eax, ebp
                jmp     short loc_1402536B2
; ---------------------------------------------------------------------------

loc_1402536B0:                          ; CODE XREF: KeClockInterruptNotify+10E↑j
                inc     eax

loc_1402536B2:                          ; CODE XREF: KeClockInterruptNotify+11E↑j
                mov     cs:dword_140C31C44, eax
                mov     rax, rbx
                sub     rax, cs:qword_140C31BE0
                cmp     rax, 1312D00h
                ja      short loc_140253709
                mov     eax, cs:dword_140C31660
                lea     rcx, unk_140C31680
                inc     cs:qword_140C31490
                mov     r12d, eax
                shl     r12, 4
                mov     r13b, 1
                add     r12, rcx
                mov     [rsp+0A8h+arg_10], r13b
                inc     eax
                and     eax, 0Fh
                mov     cs:dword_140C31660, eax
                mov     [r12], bpl
                mov     [r12+8], rbx
                jmp     short loc_140253718
; ---------------------------------------------------------------------------

loc_140253709:                          ; CODE XREF: KeClockInterruptNotify+138↑j
                mov     dl, 1
                mov     ecx, 2
                call    sub_140523810

loc_140253715:                          ; CODE XREF: KeClockInterruptNotify+DD↑j
                                        ; KeClockInterruptNotify+EA↑j
                xor     r13b, r13b

loc_140253718:                          ; CODE XREF: KeClockInterruptNotify+177↑j
                lock and cs:qword_140C31F20, rbp
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14025374B
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14025374B
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14025374B
                call    sub_1403F2EC4

loc_14025374B:                          ; CODE XREF: KeClockInterruptNotify+1A3↑j
                                        ; KeClockInterruptNotify+1A9↑j ...
                sti
                test    r13b, r13b
                jnz     loc_140253D1D
                mov     r13d, 0Fh

loc_14025375B:                          ; CODE XREF: KeClockInterruptNotify+54↑j
                movzx   edi, byte ptr [rdi+170h]
                and     dil, 1
                cmp     [rsi+21h], bpl
                jz      loc_140253993
                mov     edx, cs:dword_140C319E0
                lea     r10, cs:140000000h
                lea     rsi, rva unk_140C314E0[r10]
                lea     eax, [rdx+1]
                and     eax, 0Fh
                lea     rcx, [rdx+rdx*2]
                mov     cs:dword_140C319E0, eax
                lea     rsi, [rsi+rcx*8]
                mov     rax, ds:0FFFFF78000000008h
                cmp     cs:dword_140C31AB8, 1
                mov     [rsi+8], rax
                jnz     loc_140253866
                mov     rbx, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402537FA
                test    al, 1
                jz      short loc_1402537FA
                cmp     bl, 0Fh
                ja      short loc_1402537FA
                mov     rax, gs:20h
                mov     rdx, r15
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1402537FA:                          ; CODE XREF: KeClockInterruptNotify+233↑j
                                        ; KeClockInterruptNotify+237↑j ...
                mov     eax, cs:dword_140CFC660
                mov     cs:dword_140C31AB8, 2
                mov     cs:qword_140C31AB0, rbp
                test    eax, eax
                jz      short loc_14025385F
                test    al, 1
                jz      short loc_14025385F
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14025385F
                cmp     bl, 0Fh
                ja      short loc_14025385F
                cmp     al, 2
                jb      short loc_14025385F
                mov     r10, gs:20h
                mov     rdx, r15
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14025385F
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14025385F:                          ; CODE XREF: KeClockInterruptNotify+283↑j
                                        ; KeClockInterruptNotify+287↑j ...
                movzx   eax, bl
                mov     cr8, rax

loc_140253866:                          ; CODE XREF: KeClockInterruptNotify+21D↑j
                movzx   edx, r14b
                movzx   ecx, dil
                call    sub_140251510
                cmp     cs:dword_140C31AB8, 2
                jnz     loc_140253927
                mov     rbx, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402538C7
                test    al, 1
                jz      short loc_1402538C7
                cmp     bl, 0Fh
                ja      short loc_1402538C7
                mov     rax, gs:20h
                mov     rdx, r15
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1402538C7:                          ; CODE XREF: KeClockInterruptNotify+300↑j
                                        ; KeClockInterruptNotify+304↑j ...
                call    sub_140214830
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140253920
                test    al, 1
                jz      short loc_140253920
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140253920
                cmp     bl, 0Fh
                ja      short loc_140253920
                cmp     al, 2
                jb      short loc_140253920
                mov     r10, gs:20h
                mov     rdx, r15
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140253920
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140253920:                          ; CODE XREF: KeClockInterruptNotify+344↑j
                                        ; KeClockInterruptNotify+348↑j ...
                movzx   eax, bl
                mov     cr8, rax

loc_140253927:                          ; CODE XREF: KeClockInterruptNotify+2EA↑j
                mov     rax, ds:0FFFFF78000000350h
                mov     rbx, 0FFFFF78000000008h
                mov     [rsi], rax
                mov     rbx, [rbx]
                mov     eax, cs:dword_140D23000
                cmp     eax, 2
                jnz     short loc_14025397A
                lea     r8, [rsp+0A8h+var_60]
                mov     rcx, rbx
                lea     rdx, [rsp+0A8h+var_68]
                call    sub_140214F44
                xchg    ebp, cs:dword_140D23000
                lea     r9, [rsp+0A8h+var_68]
                mov     edx, 2
                lea     r8, [rsp+0A8h+var_60]
                xor     ecx, ecx
                call    sub_140214F04

loc_14025397A:                          ; CODE XREF: KeClockInterruptNotify+3BA↑j
                mov     eax, cs:dword_140CFC468
                add     rax, rbx
                mov     [rsi+10h], rbx
                mov     cs:qword_140C314A0, rax
                jmp     loc_140253D0F
; ---------------------------------------------------------------------------

loc_140253993:                          ; CODE XREF: KeClockInterruptNotify+1DA↑j
                mov     rbx, gs:20h
                mov     r15d, [rsp+0A8h+var_8]
                inc     dword ptr [rbx+3138h]
                inc     dword ptr [rbx+2DA0h]
                cli
                mov     eax, r15d
                shr     eax, 9
                and     al, 1
                mov     rax, 0FFFFF78000000320h
                mov     r13d, [rax]
                mov     edx, [rbx+3134h]
                jz      short loc_1402539CF
                sti

loc_1402539CF:                          ; CODE XREF: KeClockInterruptNotify+43C↑j
                movzx   r9d, r14b
                mov     byte ptr [rsp+0A8h+var_88], dil
                mov     r8d, r13d
                mov     rcx, rbx
                call    sub_140256240
                mov     rsi, [rbx+8]
                mov     dword ptr [rbx+7BE0h], 1
                cmp     rsi, [rbx+18h]
                jz      loc_140253C14
                mov     rax, [rsi+48h]
                cmp     rax, [rsi+20h]
                jnb     loc_140253C82
                movzx   edi, byte ptr [rsi+7Dh]
                mov     [rsp+0A8h+var_58], rbp
                mov     [rsp+0A8h+var_70], rbp
                mov     [rsp+0A8h+var_50], rbp
                test    edi, edi
                jz      loc_140253B70
                cmp     edi, 5
                jb      short loc_140253A36
                mov     r8, rbx
                mov     rcx, rsi
                call    sub_14051F390
                mov     edi, eax

loc_140253A36:                          ; CODE XREF: KeClockInterruptNotify+497↑j
                mov     r14, [rbx+0C0h]
                lea     rax, [rsp+0A8h+var_58]
                mov     rdx, [rsi+240h]
                lea     r9, [rsp+0A8h+var_70]
                mov     [rsp+0A8h+var_80], rax
                mov     r8d, edi
                lea     rax, [rsp+0A8h+var_50]
                mov     rcx, r14
                mov     [rsp+0A8h+var_88], rax
                call    sub_14051F4A8
                mov     rax, [rsp+0A8h+var_58]
                test    [rbx+0C8h], rax
                jz      loc_140253C82
                mov     r8, [r14]
                mov     rax, [rbx+0C0h]
                mov     rdx, [rax+168h]
                call    sub_140398E34
                test    al, al
                jz      short loc_140253ABB
                test    r8, rdx
                jz      short loc_140253ABB
                mov     eax, [rsi+200h]
                movzx   eax, al
                dec     eax
                cmp     eax, 1
                setbe   al
                test    al, al
                jz      short loc_140253ABB
                test    [rbx+0C8h], rdx
                jz      loc_140253C82

loc_140253ABB:                          ; CODE XREF: KeClockInterruptNotify+502↑j
                                        ; KeClockInterruptNotify+507↑j ...
                mov     rax, [rsp+0A8h+var_70]
                test    [rbx+0C8h], rax
                jnz     loc_140253B70
                mov     rax, [r14+8]
                mov     rdx, [rsp+0A8h+var_70]
                and     rax, r8
                cmovnz  r8, rax
                test    rdx, r8
                jnz     loc_140253C82
                not     rdx
                lea     eax, [rdi-3]
                and     rdx, [rsp+0A8h+var_50]
                and     rdx, r8
                cmp     eax, 1
                jbe     short loc_140253B03
                movzx   r9d, byte ptr [rbx+81B9h]
                jmp     short loc_140253B0B
; ---------------------------------------------------------------------------

loc_140253B03:                          ; CODE XREF: KeClockInterruptNotify+567↑j
                movzx   r9d, byte ptr [rbx+81BAh]

loc_140253B0B:                          ; CODE XREF: KeClockInterruptNotify+571↑j
                test    rdx, rdx
                jz      short loc_140253B70
                movzx   r11d, word ptr [r14+90h]
                lea     r10, cs:140000000h
                shl     r11d, 6

loc_140253B23:                          ; CODE XREF: KeClockInterruptNotify+5DE↓j
                bsr     rax, rdx
                mov     [rsp+0A8h+var_74], eax
                add     eax, r11d
                mov     eax, ds:rva dword_140D024D0[r10+rax*4]
                mov     r8, ds:rva qword_140CFDCC0[r10+rax*8]
                lea     eax, [rdi-3]
                cmp     eax, 1
                jbe     short loc_140253B50
                movzx   eax, byte ptr [r8+81B9h]
                jmp     short loc_140253B58
; ---------------------------------------------------------------------------

loc_140253B50:                          ; CODE XREF: KeClockInterruptNotify+5B4↑j
                movzx   eax, byte ptr [r8+81BAh]

loc_140253B58:                          ; CODE XREF: KeClockInterruptNotify+5BE↑j
                cmp     al, r9b
                ja      loc_140253C82
                mov     rax, [r8+0C8h]
                not     rax
                and     rdx, rax
                jnz     short loc_140253B23

loc_140253B70:                          ; CODE XREF: KeClockInterruptNotify+48E↑j
                                        ; KeClockInterruptNotify+537↑j ...
                mov     rdi, gs:20h
                mov     ecx, [rdi+0ECh]
                test    ecx, 300h
                jz      short loc_140253BFD
                cli
                mov     ecx, [rdi+0ECh]
                mov     r8d, ecx
                mov     edx, [rsi+200h]
                and     r8d, 0FFFFFCFFh
                shr     r15d, 9
                mov     eax, edx
                xor     eax, ecx
                and     r15b, 1
                test    al, al
                jz      short loc_140253BDD
                and     edx, 3
                mov     rcx, rdi
                shl     edx, 8
                or      edx, r8d
                mov     [rdi+0ECh], edx
                shr     edx, 8
                and     edx, 3
                call    sub_14056E81C
                mov     r8d, [rdi+0ECh]
                test    al, al
                jz      short loc_140253BE4
                and     r8d, 0FFFFFCFFh

loc_140253BDD:                          ; CODE XREF: KeClockInterruptNotify+61C↑j
                mov     [rdi+0ECh], r8d

loc_140253BE4:                          ; CODE XREF: KeClockInterruptNotify+644↑j
                test    r8d, 300h
                jnz     short loc_140253BF5
                mov     rcx, rdi
                call    sub_14051F050

loc_140253BF5:                          ; CODE XREF: KeClockInterruptNotify+65B↑j
                test    r15b, r15b
                jz      short loc_140253C14
                sti
                jmp     short loc_140253C14
; ---------------------------------------------------------------------------

loc_140253BFD:                          ; CODE XREF: KeClockInterruptNotify+5F5↑j
                mov     eax, [rsi+200h]
                xor     eax, ecx
                test    al, al
                jz      short loc_140253C14
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14051E690

loc_140253C14:                          ; CODE XREF: KeClockInterruptNotify+465↑j
                                        ; KeClockInterruptNotify+668↑j ...
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                cmp     rax, [rbx+8358h]
                ja      short loc_140253C82
                mov     rcx, [rsi+68h]
                test    rcx, rcx
                jz      loc_140253CBC
                mov     eax, [rbx+0D8h]
                add     rcx, rax
                test    rcx, rcx
                jz      short loc_140253CBC
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140253C50:                          ; CODE XREF: KeClockInterruptNotify+72A↓j
                mov     eax, [rbx+0D8h]
                mov     r8, rcx
                movzx   edx, byte ptr [rcx+70h]
                sub     r8, rax
                movzx   eax, dl
                and     al, 10h
                test    dl, 4
                jnz     short loc_140253C95
                test    al, al
                jz      short loc_140253C74
                mov     rax, [rcx+8]
                jmp     short loc_140253CAB
; ---------------------------------------------------------------------------

loc_140253C74:                          ; CODE XREF: KeClockInterruptNotify+6DC↑j
                test    dl, 2
                jnz     short loc_140253CB0
                mov     rax, [r8+30h]
                test    rax, rax
                jg      short loc_140253CB0

loc_140253C82:                          ; CODE XREF: KeClockInterruptNotify+473↑j
                                        ; KeClockInterruptNotify+4E4↑j ...
                mov     byte ptr [rbx+3129h], 1
                cmp     [rbx+20h], bpl
                jz      short loc_140253D01
                mov     byte ptr [rbx+6], 1
                jmp     short loc_140253D08
; ---------------------------------------------------------------------------

loc_140253C95:                          ; CODE XREF: KeClockInterruptNotify+6D8↑j
                test    al, al
                jnz     short loc_140253CA7
                test    dl, 2
                jnz     short loc_140253CB0
                mov     rax, [r8+30h]
                test    rax, rax
                jle     short loc_140253C82

loc_140253CA7:                          ; CODE XREF: KeClockInterruptNotify+707↑j
                mov     rax, [rcx+18h]

loc_140253CAB:                          ; CODE XREF: KeClockInterruptNotify+6E2↑j
                cmp     [rcx], rax
                jnb     short loc_140253C82

loc_140253CB0:                          ; CODE XREF: KeClockInterruptNotify+6E7↑j
                                        ; KeClockInterruptNotify+6F0↑j ...
                mov     rcx, [rcx+198h]
                test    rcx, rcx
                jnz     short loc_140253C50

loc_140253CBC:                          ; CODE XREF: KeClockInterruptNotify+6A1↑j
                                        ; KeClockInterruptNotify+6B3↑j
                cmp     [rbx+313Ch], r13d
                jns     short loc_140253D08
                mov     rcx, rbx
                call    sub_1402CE674
                test    eax, eax
                jz      short loc_140253CE2
                mov     rax, [rbx+8448h]
                mov     eax, [rax+8]
                test    eax, 7FFEh
                jnz     short loc_140253D08

loc_140253CE2:                          ; CODE XREF: KeClockInterruptNotify+73F↑j
                test    dword ptr [rbx+7C18h], 7FFEh
                mov     r15, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140253D0F
                lea     eax, [r13+4Bh]
                mov     [rbx+313Ch], eax
                jmp     short loc_140253D0F
; ---------------------------------------------------------------------------

loc_140253D01:                          ; CODE XREF: KeClockInterruptNotify+6FD↑j
                mov     cl, 2
                call    HalRequestSoftwareInterrupt

loc_140253D08:                          ; CODE XREF: KeClockInterruptNotify+703↑j
                                        ; KeClockInterruptNotify+733↑j ...
                mov     r15, 0FFFFFFFFFFFFFFFFh

loc_140253D0F:                          ; CODE XREF: KeClockInterruptNotify+3FE↑j
                                        ; KeClockInterruptNotify+763↑j ...
                cmp     [rsp+0A8h+arg_10], 0
                jz      loc_140253DEE

loc_140253D1D:                          ; CODE XREF: KeClockInterruptNotify+1BF↑j
                cmp     cs:dword_140C31AB8, 1
                jnz     loc_140253DEE
                mov     rbx, cr8
                mov     eax, 0Fh
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140253D76
                test    al, 1
                jz      short loc_140253D76
                cmp     bl, 0Fh
                ja      short loc_140253D76
                mov     rax, gs:20h
                mov     rdx, r15
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140253D76:                          ; CODE XREF: KeClockInterruptNotify+7AF↑j
                                        ; KeClockInterruptNotify+7B3↑j ...
                mov     cs:dword_140C31AB8, 2
                call    sub_140214830
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140253DD6
                test    al, 1
                jz      short loc_140253DD6
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140253DD6
                cmp     bl, 0Fh
                ja      short loc_140253DD6
                cmp     al, 2
                jb      short loc_140253DD6
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     r15, cl
                mov     r8, [r9+84B8h]
                movzx   eax, r15w
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140253DD6
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140253DD6:                          ; CODE XREF: KeClockInterruptNotify+7FD↑j
                                        ; KeClockInterruptNotify+801↑j ...
                movzx   eax, bl
                mov     cr8, rax
                test    r12, r12
                jz      short loc_140253DE7
                mov     byte ptr [r12], 1

loc_140253DE7:                          ; CODE XREF: KeClockInterruptNotify+850↑j
                inc     cs:qword_140C31498

loc_140253DEE:                          ; CODE XREF: KeClockInterruptNotify+787↑j
                                        ; KeClockInterruptNotify+794↑j
                lea     r11, [rsp+0A8h+var_38]
                mov     rbx, [r11+40h]
                mov     rbp, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeClockInterruptNotify endp
