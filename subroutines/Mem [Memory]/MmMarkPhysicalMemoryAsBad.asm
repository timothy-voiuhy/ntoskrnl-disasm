MmMarkPhysicalMemoryAsBad proc near     ; CODE XREF: sub_140557038+D35↓p
                                        ; sub_14095ECAC+8A↓p
                                        ; DATA XREF: ...

var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

                mov     [rsp+arg_8], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 88h
                mov     r13d, [rcx]
                xor     r14d, r14d
                mov     eax, r13d
                mov     [rsp+0C8h+var_58], r14
                mov     r8d, 0FFFh
                and     eax, r8d
                cmp     eax, 1
                ja      loc_14053060D
                test    [rdx], r8d
                jz      short loc_14052FB47
                mov     eax, 0C00000F0h
                jmp     loc_140530612
; ---------------------------------------------------------------------------

loc_14052FB47:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+3B↑j
                test    cs:dword_140CFC400, 8000000h
                jnz     short loc_14052FB5D
                mov     eax, 0C0000002h
                jmp     loc_140530612
; ---------------------------------------------------------------------------

loc_14052FB5D:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+51↑j
                mov     rbp, [rdx]
                mov     rdi, [rcx]
                shr     rbp, 0Ch
                shr     rdi, 0Ch
                mov     [rsp+0C8h+var_50], rbp
                add     rbp, rdi
                mov     [rsp+0C8h+var_60], rbp
                cmp     rdi, rbp
                jnb     loc_14053060D
                mov     rsi, gs:188h
                lea     r15, unk_140C50C00
                not     r13d
                mov     [rsp+0C8h+arg_10], r14d
                and     r13d, 1
                mov     [rsp+0C8h+arg_0], r14d
                shl     r13d, 1Ch
                mov     rdx, rsi
                mov     rcx, r15
                mov     [rsp+0C8h+var_68], rsi
                add     r13d, 2C100000h
                mov     r12d, r14d
                call    sub_14033AEFC
                lea     rbx, [rdi+rdi*2]
                shl     rbx, 4
                mov     rax, 0FFFFFA8000000000h
                add     rbx, rax
                mov     rdx, 2000000000000h
                mov     r8, 4000000000000h

loc_14052FBEF:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+1BD↓j
                mov     rcx, rdi
                call    sub_1403F31C4
                test    eax, eax
                jz      short loc_14052FC45
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1402F1F40
                mov     edx, r13d
                mov     rcx, rdi
                call    sub_1403F329C
                mov     rdx, rsi
                mov     rcx, r15
                mov     r12d, eax
                call    sub_14033AEFC
                mov     rdx, 2000000000000h
                mov     r8, 4000000000000h
                cmp     r12d, 0C0000434h
                jnz     short loc_14052FCB3
                dec     rdi
                sub     rbx, 30h ; '0'
                jmp     short loc_14052FCB3
; ---------------------------------------------------------------------------

loc_14052FC45:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+F9↑j
                mov     rax, 0FFFFFFFFFh
                cmp     rdi, rax
                ja      loc_1405305D8
                lea     r14, [rdi+rdi*2]
                add     r14, r14
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rax+r14*8]
                test    r8, rax
                jz      loc_1405305D5
                mov     rcx, rbx
                test    [rbx+28h], rdx
                jz      loc_14052FD30
                mov     edx, r13d
                call    sub_1405418D8
                mov     r12d, eax
                mov     rdx, 2000000000000h
                mov     r8, 4000000000000h
                cmp     eax, 0C0000434h
                jnz     short loc_14052FCB0
                dec     rdi
                sub     rbx, 30h ; '0'

loc_14052FCB0:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+1A7↑j
                xor     r14d, r14d

loc_14052FCB3:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+13A↑j
                                        ; MmMarkPhysicalMemoryAsBad+143↑j ...
                inc     rdi
                add     rbx, 30h ; '0'
                cmp     rdi, rbp
                jb      loc_14052FBEF
                mov     ebx, [rsp+0C8h+arg_10]

loc_14052FCCA:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+AED↓j
                xor     esi, esi

loc_14052FCCC:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+B08↓j
                mov     rdx, [rsp+0C8h+var_68]
                lea     rcx, unk_140C50C00
                call    sub_1402F1F40
                cmp     [rsp+0C8h+arg_0], 1
                jnz     short loc_14052FD08
                mov     [rsp+0C8h+var_98], esi
                lea     rcx, qword_14000F518
                mov     [rsp+0C8h+var_A0], esi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+0C8h+var_A8], rsi
                xor     edx, edx
                call    ZwUpdateWnfStateData

loc_14052FD08:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+1E5↑j
                mov     rax, [rsp+0C8h+arg_8]
                sub     rdi, rbp
                add     rdi, [rsp+0C8h+var_50]
                shl     rdi, 0Ch
                cmp     [rsp+0C8h+var_50], 1
                mov     [rax], rdi
                cmovz   ebx, r12d
                mov     eax, ebx
                jmp     loc_140530612
; ---------------------------------------------------------------------------

loc_14052FD30:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+17D↑j
                call    sub_1402DAA00
                mov     rcx, [rbx+28h]
                mov     rdx, 2000000000000h
                movzx   esi, al
                test    rdx, rcx
                jz      loc_14052FDDE
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                xor     r14d, r14d
                test    eax, eax
                jz      short loc_14052FDBF
                test    al, 1
                jz      short loc_14052FDBF
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14052FDBF
                cmp     sil, 0Fh
                ja      short loc_14052FDBF
                cmp     al, 2
                jb      short loc_14052FDBF
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14052FDB5
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14052FDB5:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+2AB↑j
                mov     rdx, 2000000000000h

loc_14052FDBF:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+269↑j
                                        ; MmMarkPhysicalMemoryAsBad+26D↑j ...
                mov     cr8, rsi
                dec     rdi
                sub     rbx, 30h ; '0'

loc_14052FDCA:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+384↓j
                mov     rsi, [rsp+0C8h+var_68]
                mov     r8, 4000000000000h
                jmp     loc_14052FCB3
; ---------------------------------------------------------------------------

loc_14052FDDE:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+249↑j
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     r15, [rax+rcx*8]
                mov     rcx, [r15+0B0h]
                call    sub_1402073F0
                mov     rcx, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rcx
                test    al, al
                mov     eax, cs:dword_140CFC660
                jnz     short loc_14052FE89
                xor     r14d, r14d
                test    eax, eax
                jz      short loc_14052FE69
                test    al, 1
                jz      short loc_14052FE69
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14052FE69
                cmp     sil, 0Fh
                ja      short loc_14052FE69
                cmp     al, 2
                jb      short loc_14052FE69
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14052FE69
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14052FE69:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+31D↑j
                                        ; MmMarkPhysicalMemoryAsBad+321↑j ...
                mov     cr8, rsi
                mov     r12d, 0C000010Ah

loc_14052FE73:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+53D↓j
                                        ; MmMarkPhysicalMemoryAsBad+677↓j ...
                lea     r15, unk_140C50C00
                mov     rdx, 2000000000000h
                jmp     loc_14052FDCA
; ---------------------------------------------------------------------------

loc_14052FE89:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+316↑j
                test    eax, eax
                jz      short loc_14052FED7
                test    al, 1
                jz      short loc_14052FED7
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14052FED7
                cmp     sil, 0Fh
                ja      short loc_14052FED7
                cmp     al, 2
                jb      short loc_14052FED7
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14052FED7
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14052FED7:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+38B↑j
                                        ; MmMarkPhysicalMemoryAsBad+38F↑j ...
                mov     cr8, rsi
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rcx, r15
                lea     edx, [r9+2]
                call    sub_140303D90
                xor     esi, esi
                test    eax, eax
                js      loc_1405305F2
                mov     rcx, rbx
                call    sub_1402DAA00
                mov     rdx, [rbx+28h]
                mov     rcx, cs:qword_140C4E4C8
                shr     rdx, 27h
                and     edx, 3FFh
                movzx   esi, al
                mov     rdx, [rcx+rdx*8]
                cmp     rdx, r15
                jz      loc_140530042
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                xor     r14d, r14d
                test    eax, eax
                jz      short loc_14052FF8A
                test    al, 1
                jz      short loc_14052FF8A
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14052FF8A
                cmp     sil, 0Fh
                ja      short loc_14052FF8A
                cmp     al, 2
                jb      short loc_14052FF8A
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14052FF8A
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14052FF8A:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+43E↑j
                                        ; MmMarkPhysicalMemoryAsBad+442↑j ...
                mov     cr8, rsi
                mov     esi, 2
                mov     rcx, r15
                mov     edx, esi
                call    sub_14026B700
                lea     rcx, unk_140C50C00
                mov     r8d, esi
                cmp     r15, rcx
                jnz     short loc_140530021
                mov     r9, gs:20h
                or      r10d, 0FFFFFFFFh
                movsxd  rdx, dword ptr [r9+831Ch]
                cmp     edx, r10d
                jz      short loc_140530021
                lea     rcx, [rsi+rdx]
                mov     r11d, 100h
                cmp     rcx, r11
                ja      short loc_14052FFF5

loc_14052FFD4:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+4F3↓j
                lea     ecx, [rdx+2]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_14053002A
                cmp     edx, r10d
                jz      short loc_14052FFF5
                lea     rax, [rsi+rdx]
                cmp     rax, r11
                jbe     short loc_14052FFD4

loc_14052FFF5:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+4D2↑j
                                        ; MmMarkPhysicalMemoryAsBad+4EA↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_14053001C
                cmp     edx, r10d
                jz      short loc_14053001C
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_14053001C
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                add     r8, rsi

loc_14053001C:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+4FC↑j
                                        ; MmMarkPhysicalMemoryAsBad+501↑j ...
                test    r8, r8
                jz      short loc_14053002A

loc_140530021:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+4AA↑j
                                        ; MmMarkPhysicalMemoryAsBad+4C3↑j
                lock xadd [r15+1C00h], r8

loc_14053002A:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+4E5↑j
                                        ; MmMarkPhysicalMemoryAsBad+51F↑j
                mov     rcx, [r15+0B0h]
                call    sub_1402073C8
                dec     rdi
                sub     rbx, 30h ; '0'
                jmp     loc_14052FE73
; ---------------------------------------------------------------------------

loc_140530042:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+41E↑j
                bt      r13d, 1Ch
                jnb     short loc_140530055
                mov     al, [rbx+23h]
                test    al, al
                js      short loc_140530055
                or      al, 80h
                mov     [rbx+23h], al

loc_140530055:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+547↑j
                                        ; MmMarkPhysicalMemoryAsBad+54E↑j
                test    byte ptr [rbx+23h], 40h
                jz      loc_14053017C
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                xor     r14d, r14d
                test    eax, eax
                jz      short loc_1405300C5
                test    al, 1
                jz      short loc_1405300C5
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405300C5
                cmp     sil, 0Fh
                ja      short loc_1405300C5
                cmp     al, 2
                jb      short loc_1405300C5
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405300C5
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405300C5:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+579↑j
                                        ; MmMarkPhysicalMemoryAsBad+57D↑j ...
                mov     cr8, rsi
                mov     esi, 2
                mov     rcx, r15
                mov     edx, esi
                call    sub_14026B700
                lea     rcx, unk_140C50C00
                mov     r8d, esi
                cmp     r15, rcx
                jnz     short loc_14053015C
                mov     r9, gs:20h
                or      r10d, 0FFFFFFFFh
                movsxd  rdx, dword ptr [r9+831Ch]
                cmp     edx, r10d
                jz      short loc_14053015C
                lea     rcx, [rsi+rdx]
                mov     r11d, 100h
                cmp     rcx, r11
                ja      short loc_140530130

loc_14053010F:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+62E↓j
                lea     ecx, [rdx+2]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_140530165
                cmp     edx, r10d
                jz      short loc_140530130
                lea     rax, [rsi+rdx]
                cmp     rax, r11
                jbe     short loc_14053010F

loc_140530130:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+60D↑j
                                        ; MmMarkPhysicalMemoryAsBad+625↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_140530157
                cmp     edx, r10d
                jz      short loc_140530157
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_140530157
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                add     r8, rsi

loc_140530157:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+637↑j
                                        ; MmMarkPhysicalMemoryAsBad+63C↑j ...
                test    r8, r8
                jz      short loc_140530165

loc_14053015C:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+5E5↑j
                                        ; MmMarkPhysicalMemoryAsBad+5FE↑j
                lock xadd [r15+1C00h], r8

loc_140530165:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+620↑j
                                        ; MmMarkPhysicalMemoryAsBad+65A↑j
                mov     rcx, [r15+0B0h]
                call    sub_1402073C8
                mov     r12d, 103h
                jmp     loc_14052FE73
; ---------------------------------------------------------------------------

loc_14053017C:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+559↑j
                mov     al, [rbx+22h]
                and     al, 7
                cmp     al, 5
                jnz     loc_1405302C0
                mov     rcx, 2000000000000h
                test    [rbx+28h], rcx
                jnz     short loc_1405301A9
                mov     rcx, rbx
                call    sub_1402D9F7C
                test    eax, eax
                jz      loc_1405302C0

loc_1405301A9:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+697↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                xor     r14d, r14d
                test    eax, eax
                jz      short loc_14053020F
                test    al, 1
                jz      short loc_14053020F
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14053020F
                cmp     sil, 0Fh
                ja      short loc_14053020F
                cmp     al, 2
                jb      short loc_14053020F
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14053020F
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14053020F:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+6C3↑j
                                        ; MmMarkPhysicalMemoryAsBad+6C7↑j ...
                mov     cr8, rsi
                mov     esi, 2
                mov     rcx, r15
                mov     edx, esi
                call    sub_14026B700
                lea     rcx, unk_140C50C00
                mov     r8d, esi
                cmp     r15, rcx
                jnz     short loc_1405302A6
                mov     r9, gs:20h
                or      r10d, 0FFFFFFFFh
                movsxd  rdx, dword ptr [r9+831Ch]
                cmp     edx, r10d
                jz      short loc_1405302A6
                lea     rcx, [rsi+rdx]
                mov     r11d, 100h
                cmp     rcx, r11
                ja      short loc_14053027A

loc_140530259:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+778↓j
                lea     ecx, [rdx+2]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_1405302AF
                cmp     edx, r10d
                jz      short loc_14053027A
                lea     rax, [rsi+rdx]
                cmp     rax, r11
                jbe     short loc_140530259

loc_14053027A:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+757↑j
                                        ; MmMarkPhysicalMemoryAsBad+76F↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_1405302A1
                cmp     edx, r10d
                jz      short loc_1405302A1
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_1405302A1
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                add     r8, rsi

loc_1405302A1:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+781↑j
                                        ; MmMarkPhysicalMemoryAsBad+786↑j ...
                test    r8, r8
                jz      short loc_1405302AF

loc_1405302A6:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+72F↑j
                                        ; MmMarkPhysicalMemoryAsBad+748↑j
                lock xadd [r15+1C00h], r8

loc_1405302AF:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+76A↑j
                                        ; MmMarkPhysicalMemoryAsBad+7A4↑j
                mov     rcx, [r15+0B0h]
                call    sub_1402073C8
                jmp     loc_14052FE73
; ---------------------------------------------------------------------------

loc_1405302C0:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+683↑j
                                        ; MmMarkPhysicalMemoryAsBad+6A3↑j
                mov     ebp, 1
                mov     rcx, rbx
                mov     edx, ebp
                call    sub_14054F5F8
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140530333
                test    bpl, al
                jz      short loc_140530333
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140530333
                cmp     sil, 0Fh
                ja      short loc_140530333
                cmp     al, 2
                jb      short loc_140530333
                mov     r10, gs:20h
                lea     ecx, [rsi+rbp]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140530333
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140530333:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+7E6↑j
                                        ; MmMarkPhysicalMemoryAsBad+7EB↑j ...
                mov     cr8, rsi
                mov     rdx, [rsp+0C8h+var_68]
                lea     rcx, unk_140C50C00
                call    sub_1402F1F40
                lea     rax, [rsp+0C8h+var_58]
                xor     r9d, r9d
                mov     [rsp+0C8h+var_78], rax
                mov     r8, rdi
                and     [rsp+0C8h+var_80], 0
                mov     eax, 80000000h
                mov     [rsp+0C8h+var_88], r13d
                mov     rdx, rdi
                mov     [rsp+0C8h+var_90], eax
                mov     rcx, r15
                mov     [rsp+0C8h+var_98], eax
                mov     [rsp+0C8h+var_A0], ebp
                mov     [rsp+0C8h+var_A8], rbp
                call    sub_1402D80F0
                mov     rdx, [rsp+0C8h+var_68]
                lea     rcx, unk_140C50C00
                mov     ebp, eax
                xor     r12d, r12d
                call    sub_14033AEFC
                mov     rax, 0FFFFFA8000000028h
                mov     rcx, [rax+r14*8]
                mov     rax, 4000000000000h
                test    rax, rcx
                jnz     short loc_1405303C5
                mov     r12d, 0C00000F0h
                xor     r14d, r14d
                jmp     loc_140530512
; ---------------------------------------------------------------------------

loc_1405303C5:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+8B5↑j
                mov     rcx, rbx
                call    sub_1402DAA00
                xor     r14d, r14d
                movzx   esi, al
                test    ebp, ebp
                js      loc_14053047E
                test    byte ptr [rbx+23h], 40h
                jz      short loc_140530405
                mov     rax, 0FFFFFFF000000000h
                mov     [rbx+20h], r14w
                and     [rbx+28h], rax
                lea     edx, [r14+20h]
                mov     rcx, rbx
                call    sub_140279270
                jmp     loc_1405304AB
; ---------------------------------------------------------------------------

loc_140530405:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+8DF↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140530468
                test    al, 1
                jz      short loc_140530468
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140530468
                cmp     sil, 0Fh
                ja      short loc_140530468
                cmp     al, 2
                jb      short loc_140530468
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140530468
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140530468:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+91C↑j
                                        ; MmMarkPhysicalMemoryAsBad+920↑j ...
                mov     cr8, rsi
                mov     edx, 1
                mov     rcx, rdi
                call    sub_1402E8438
                jmp     loc_1405305AF
; ---------------------------------------------------------------------------

loc_14053047E:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+8D5↑j
                mov     rcx, rbx
                call    sub_1402D9F7C
                test    eax, eax
                jnz     short loc_1405304A8
                test    byte ptr [rbx+23h], 40h
                jz      short loc_1405304AB
                mov     cs:byte_140C4E678, 1
                mov     r12d, 103h
                mov     [rsp+0C8h+arg_0], 1

loc_1405304A8:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+988↑j
                mov     ebp, r14d

loc_1405304AB:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+900↑j
                                        ; MmMarkPhysicalMemoryAsBad+98E↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14053050E
                test    al, 1
                jz      short loc_14053050E
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14053050E
                cmp     sil, 0Fh
                ja      short loc_14053050E
                cmp     al, 2
                jb      short loc_14053050E
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14053050E
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14053050E:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+9C2↑j
                                        ; MmMarkPhysicalMemoryAsBad+9C6↑j ...
                mov     cr8, rsi

loc_140530512:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+8C0↑j
                mov     edx, 1
                mov     rcx, r15
                call    sub_14026B700
                lea     rax, unk_140C50C00
                mov     r8d, 1
                cmp     r15, rax
                jnz     short loc_1405305A6
                mov     r9, gs:20h
                or      r10d, 0FFFFFFFFh
                movsxd  rdx, dword ptr [r9+831Ch]
                cmp     edx, r10d
                jz      short loc_1405305A6
                lea     rcx, [rdx+1]
                mov     r11d, 100h
                cmp     rcx, r11
                ja      short loc_14053057A

loc_140530559:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+A78↓j
                lea     ecx, [rdx+1]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_1405305AF
                cmp     edx, r10d
                jz      short loc_14053057A
                lea     rax, [rdx+1]
                cmp     rax, r11
                jbe     short loc_140530559

loc_14053057A:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+A57↑j
                                        ; MmMarkPhysicalMemoryAsBad+A6F↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_1405305A1
                cmp     edx, r10d
                jz      short loc_1405305A1
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_1405305A1
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                inc     r8

loc_1405305A1:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+A81↑j
                                        ; MmMarkPhysicalMemoryAsBad+A86↑j ...
                test    r8, r8
                jz      short loc_1405305AF

loc_1405305A6:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+A2F↑j
                                        ; MmMarkPhysicalMemoryAsBad+A48↑j
                lock xadd [r15+1C00h], r8

loc_1405305AF:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+979↑j
                                        ; MmMarkPhysicalMemoryAsBad+A6A↑j ...
                mov     rcx, [r15+0B0h]
                call    sub_1402073C8
                cmp     ebp, 0C000012Dh
                jz      short loc_1405305E3
                cmp     ebp, 0C000009Ah
                jz      short loc_1405305E3
                mov     rbp, [rsp+0C8h+var_60]
                jmp     loc_14052FE73
; ---------------------------------------------------------------------------

loc_1405305D5:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+170↑j
                xor     r14d, r14d

loc_1405305D8:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+152↑j
                mov     r12d, 0C00000F0h
                jmp     loc_14052FCB3
; ---------------------------------------------------------------------------

loc_1405305E3:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+AC1↑j
                                        ; MmMarkPhysicalMemoryAsBad+AC9↑j
                mov     r12d, ebp
                mov     ebx, ebp
                mov     rbp, [rsp+0C8h+var_60]
                jmp     loc_14052FCCA
; ---------------------------------------------------------------------------

loc_1405305F2:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+3F1↑j
                mov     rcx, [r15+0B0h]
                mov     eax, 0C000009Ah
                mov     r12d, eax
                mov     ebx, eax
                call    sub_1402073C8
                jmp     loc_14052FCCC
; ---------------------------------------------------------------------------

loc_14053060D:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+32↑j
                                        ; MmMarkPhysicalMemoryAsBad+7B↑j
                mov     eax, 0C00000EFh

loc_140530612:                          ; CODE XREF: MmMarkPhysicalMemoryAsBad+42↑j
                                        ; MmMarkPhysicalMemoryAsBad+58↑j ...
                add     rsp, 88h
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
MmMarkPhysicalMemoryAsBad endp
