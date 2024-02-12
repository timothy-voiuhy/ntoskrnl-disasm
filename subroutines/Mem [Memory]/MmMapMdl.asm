MmMapMdl        proc near               ; DATA XREF: .pdata:00000001400F4BC0↑o

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                and     dword ptr [rax-48h], 0
                mov     rbx, rcx
                mov     ecx, edx
                xor     r13d, r13d
                call    sub_1402320B0
                mov     r14d, eax
                and     eax, 7
                cmp     r14d, 0FFFFFFFFh
                jz      loc_140537A10
                cmp     r14d, 18h
                jz      loc_140537A10
                cmp     eax, 5
                jz      loc_140537A10
                test    al, 2
                jnz     loc_140537A10
                mov     eax, r14d
                and     eax, 0FFFFFFF8h
                cmp     eax, 10h
                jz      loc_140537A10
                test    byte ptr [rbx+0Ah], 5
                jz      short loc_140537805
                mov     rdx, [rbx+18h]
                mov     rcx, r9
                mov     rax, r8
                call    sub_1404079D0
                xor     eax, eax
                jmp     loc_140537A15
; ---------------------------------------------------------------------------

loc_140537805:                          ; CODE XREF: MmMapMdl+6D↑j
                mov     ecx, [rbx+20h]
                add     ecx, [rbx+2Ch]
                mov     r12d, [rbx+28h]
                and     ecx, 0FFFh
                add     r12, 0FFFh
                add     r12, rcx
                shr     r12, 0Ch
                cmp     cs:dword_140CFC538, 1
                mov     esi, r12d
                jnz     short loc_140537831
                inc     esi

loc_140537831:                          ; CODE XREF: MmMapMdl+AD↑j
                mov     rbp, 0FFFFF68000000000h
                cmp     esi, 200h
                ja      short loc_14053787F
                call    sub_14055F568
                mov     r13, rax
                test    rax, rax
                jz      short loc_14053787F
                xor     r9d, r9d
                mov     r8d, esi
                lea     rcx, [rax+8]
                lea     edx, [r9+3]
                call    sub_140292240
                mov     rdi, rax
                mov     rax, 7FFFFFFFF8h
                shr     rdi, 9
                and     rdi, rax
                mov     rcx, rbp
                add     rdi, rcx
                jnz     short loc_14053789F

loc_14053787F:                          ; CODE XREF: MmMapMdl+C1↑j
                                        ; MmMapMdl+CE↑j
                mov     edx, esi
                lea     rcx, qword_140C4EDC0
                call    sub_1402583E0
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14053789F
                mov     eax, 0C000009Ah
                jmp     loc_140537A15
; ---------------------------------------------------------------------------

loc_14053789F:                          ; CODE XREF: MmMapMdl+FD↑j
                                        ; MmMapMdl+113↑j
                mov     r15, rdi
                shl     r15, 19h
                mov     rax, rbp
                shl     rax, 19h
                lea     r8, [rbx+30h]
                sub     r15, rax
                mov     r9d, r14d
                mov     eax, [rbx+2Ch]
                mov     rdx, r12
                sar     r15, 10h
                mov     rcx, rdi
                add     r15, rax
                lea     rax, [rsp+78h+var_48]
                mov     [rsp+78h+var_50], rax
                and     [rsp+78h+var_58], 0
                call    sub_140258D20
                mov     [rsp+78h+var_44], eax
                test    eax, eax
                js      short loc_140537958
                mov     ebp, [rsp+78h+var_48]
                and     ebp, 1
                jz      short loc_1405378FD
                mov     rcx, r15
                call    sub_1402E8264
                mov     eax, 800h
                or      [rbx+0Ah], ax

loc_1405378FD:                          ; CODE XREF: MmMapMdl+16A↑j
                mov     eax, cs:dword_140CFB17C
                test    al, 1
                jz      short loc_14053792C
                cmp     cs:dword_140CFC538, 1
                mov     r8d, ebp
                jnz     short loc_140537917
                or      r8d, 2

loc_140537917:                          ; CODE XREF: MmMapMdl+191↑j
                mov     ecx, r14d
                call    sub_1402C4570
                mov     r9d, eax
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14055EFE0

loc_14053792C:                          ; CODE XREF: MmMapMdl+185↑j
                mov     rcx, [rsp+78h+arg_18]
                mov     rdx, r15
                mov     rax, [rsp+78h+arg_10]
                and     [rsp+78h+var_44], 0
                call    sub_1404079D0
                test    ebp, ebp
                jz      short loc_140537958
                mov     rdx, r12
                mov     rcx, r15
                call    sub_1402E87D0

loc_140537958:                          ; CODE XREF: MmMapMdl+161↑j
                                        ; MmMapMdl+1CB↑j
                test    r13, r13
                jz      loc_1405379F3
                test    esi, esi
                jz      loc_1405379E9
                mov     ebp, esi
                mov     r15, 8000000000000000h

loc_140537975:                          ; CODE XREF: MmMapMdl+267↓j
                mov     rbx, cs:qword_14001D278
                mov     rcx, rdi
                xor     r14d, r14d
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1405379CC
                call    sub_140349680
                test    eax, eax
                jz      short loc_1405379A8
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     r14d, 1
                jnz     short loc_1405379CC
                test    r14b, bl
                jmp     short loc_1405379C7
; ---------------------------------------------------------------------------

loc_1405379A8:                          ; CODE XREF: MmMapMdl+212↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_1405379CC
                test    bl, 1

loc_1405379C7:                          ; CODE XREF: MmMapMdl+226↑j
                jz      short loc_1405379CC
                or      rbx, r15

loc_1405379CC:                          ; CODE XREF: MmMapMdl+209↑j
                                        ; MmMapMdl+221↑j ...
                mov     [rdi], rbx
                test    r14d, r14d
                jz      short loc_1405379DF
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140349620

loc_1405379DF:                          ; CODE XREF: MmMapMdl+252↑j
                add     rdi, 8
                sub     rbp, 1
                jnz     short loc_140537975

loc_1405379E9:                          ; CODE XREF: MmMapMdl+1E3↑j
                mov     rcx, r13
                call    sub_14055F4D4
                xor     edi, edi

loc_1405379F3:                          ; CODE XREF: MmMapMdl+1DB↑j
                test    rdi, rdi
                jz      short loc_140537A0A
                mov     r8d, esi
                lea     rcx, qword_140C4EDC0
                mov     rdx, rdi
                call    sub_14025EFB0

loc_140537A0A:                          ; CODE XREF: MmMapMdl+276↑j
                mov     eax, [rsp+78h+var_44]
                jmp     short loc_140537A15
; ---------------------------------------------------------------------------

loc_140537A10:                          ; CODE XREF: MmMapMdl+39↑j
                                        ; MmMapMdl+43↑j ...
                mov     eax, 0C0000045h

loc_140537A15:                          ; CODE XREF: MmMapMdl+80↑j
                                        ; MmMapMdl+11A↑j ...
                mov     rbx, [rsp+78h+arg_0]
                add     rsp, 40h
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
MmMapMdl        endp

byte_140537A2E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400F4BC0↑o

; =============== S U B R O U T I N E =======================================


sub_140537A34   proc near               ; CODE XREF: sub_140538940+17C↓p
                                        ; DATA XREF: .pdata:00000001400F4BCC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                xor     r10d, r10d
                xor     r11d, r11d
                mov     rsi, r8
                mov     rdi, rdx
                mov     r14, rcx
                test    r8, r8
                jz      short loc_140537AE0
                lea     rbx, [rdx+rdx*2]
                shl     rbx, 4
                lea     rbp, [rdx+1]
                mov     rax, 0FFFFFA8000000000h
                add     rbx, rax

loc_140537A7A:                          ; CODE XREF: sub_140537A34+8B↓j
                mov     rcx, rbx
                call    sub_140344778
                test    eax, eax
                jz      short loc_140537AB1
                test    r10, r10
                jz      short loc_140537AA9
                mov     rax, [r14]
                mov     r9d, 102h
                mov     r8, r10
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_1404079D0
                mov     r11d, eax
                test    eax, eax
                js      short loc_140537AE3

loc_140537AA9:                          ; CODE XREF: sub_140537A34+55↑j
                mov     rdi, rbp
                xor     r10d, r10d
                jmp     short loc_140537AB4
; ---------------------------------------------------------------------------

loc_140537AB1:                          ; CODE XREF: sub_140537A34+50↑j
                inc     r10

loc_140537AB4:                          ; CODE XREF: sub_140537A34+7B↑j
                add     rbx, 30h ; '0'
                inc     rbp
                sub     rsi, 1
                jnz     short loc_140537A7A
                test    r10, r10
                jz      short loc_140537AE0
                mov     rax, [r14]
                mov     r9d, 102h
                mov     r8, r10
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_1404079D0
                mov     r11d, eax

loc_140537AE0:                          ; CODE XREF: sub_140537A34+2B↑j
                                        ; sub_140537A34+90↑j
                mov     eax, r11d

loc_140537AE3:                          ; CODE XREF: sub_140537A34+73↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140537A34   endp

byte_140537AFF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F4BCC↑o

; =============== S U B R O U T I N E =======================================


sub_140537B08   proc near               ; CODE XREF: sub_140538660+119↓p
                                        ; DATA XREF: .pdata:00000001400F4BD8↑o

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdx, cs:qword_140C4E4C8
                xor     edi, edi
                mov     rbx, rcx
                lea     r8d, [rdi+8]
                call    sub_1405387A8
                mov     r8d, eax
                test    eax, eax
                js      loc_140537CFB
                mov     rdx, cs:qword_140C4E4A8
                lea     r8d, [rdi+10h]
                mov     rcx, rbx
                call    sub_1405387A8
                mov     r8d, eax
                test    eax, eax
                js      loc_140537CFB
                mov     rdx, cs:qword_140C4E4A8
                mov     r8d, edi
                mov     rcx, rbx
                mov     eax, [rdx]
                mov     rdx, [rdx+8]
                test    al, 3Fh
                setnz   r8b
                shr     rax, 6
                add     r8, rax
                shl     r8, 3
                call    sub_1405387A8
                mov     r8d, eax
                test    eax, eax
                js      loc_140537CFB
                or      r13d, 0FFFFFFFFh

loc_140537B95:                          ; CODE XREF: sub_140537B08+191↓j
                mov     rax, cs:qword_140C4E4A8
                mov     r15d, [rax]
                cmp     edi, r15d
                mov     rsi, [rax+8]
                sbb     r10d, r10d
                mov     rcx, rsi
                and     ecx, 4
                and     r10d, edi
                mov     eax, ecx
                lea     edx, [r15-1]
                neg     rax
                sbb     r11d, r11d
                and     r11d, 20h
                neg     rcx
                sbb     rax, rax
                and     eax, 4
                sub     rsi, rax

loc_140537BCE:                          ; CODE XREF: sub_140537B08+15B↓j
                and     [rsp+48h+arg_8], 0
                lea     r14d, [r11+rdx]
                mov     eax, r14d
                lea     ecx, [r11+r10]
                sub     eax, ecx
                inc     eax
                cmp     eax, 1
                jnb     short loc_140537BEC

loc_140537BE7:                          ; CODE XREF: sub_140537B08+11B↓j
                                        ; sub_140537B08+13F↓j
                mov     edx, r13d
                jmp     short loc_140537C4E
; ---------------------------------------------------------------------------

loc_140537BEC:                          ; CODE XREF: sub_140537B08+DD↑j
                mov     eax, r14d
                mov     r9d, 1
                shr     rax, 6
                lea     r12, [rsi+rax*8]
                mov     rax, rcx
                shr     rax, 6
                and     cl, 3Fh
                shl     r9, cl
                dec     r9
                lea     rdx, [rsi+rax*8]
                mov     rax, [rdx]
                not     rax
                or      r9, rax
                jmp     short loc_140537C2B
; ---------------------------------------------------------------------------

loc_140537C1C:                          ; CODE XREF: sub_140537B08+127↓j
                add     rdx, 8
                cmp     rdx, r12
                ja      short loc_140537BE7
                mov     r9, [rdx]
                not     r9

loc_140537C2B:                          ; CODE XREF: sub_140537B08+112↑j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140537C1C
                sub     rdx, rsi
                not     r9
                sar     rdx, 3
                bsf     rax, r9
                shl     edx, 6
                add     edx, eax
                cmp     edx, r14d
                ja      short loc_140537BE7
                cmp     edx, r13d
                jnz     short loc_140537C68

loc_140537C4E:                          ; CODE XREF: sub_140537B08+E2↑j
                test    r10d, r10d
                jz      short loc_140537C68
                lea     edx, [rdi+1]
                cmp     edx, r15d
                cmova   edx, r15d
                add     edx, r13d
                xor     r10d, r10d
                jmp     loc_140537BCE
; ---------------------------------------------------------------------------

loc_140537C68:                          ; CODE XREF: sub_140537B08+144↑j
                                        ; sub_140537B08+149↑j
                mov     eax, edx
                sub     eax, r11d
                cmp     edx, r13d
                cmovz   eax, edx
                cmp     eax, edi
                jb      short loc_140537C9F
                cmp     eax, r13d
                jz      short loc_140537C9F
                mov     edx, eax
                lea     edi, [rax+1]
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, rbx
                mov     rdx, [rax+rdx*8]
                call    sub_140537D20
                mov     r8d, eax
                test    eax, eax
                jns     loc_140537B95

loc_140537C9F:                          ; CODE XREF: sub_140537B08+16D↑j
                                        ; sub_140537B08+172↑j
                test    r8d, r8d
                js      short loc_140537CFB
                mov     rdx, cs:qword_140C4E4E8
                test    rdx, rdx
                jz      short loc_140537CD9
                mov     rax, cs:qword_140C4E4E0
                mov     r8d, 0
                test    al, 3Fh
                mov     rcx, rbx
                setnz   r8b
                shr     rax, 6
                add     r8, rax
                shl     r8, 3
                call    sub_1405387A8
                mov     r8d, eax

loc_140537CD9:                          ; CODE XREF: sub_140537B08+1A6↑j
                test    r8d, r8d
                js      short loc_140537CFB
                mov     rdx, cs:qword_140C4E4F0
                test    rdx, rdx
                jz      short loc_140537CFB
                mov     r8d, 200000h
                mov     rcx, rbx
                call    sub_1405387A8
                mov     r8d, eax

loc_140537CFB:                          ; CODE XREF: sub_140537B08+31↑j
                                        ; sub_140537B08+4F↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, r8d
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140537B08   endp

algn_140537D17:                         ; DATA XREF: .pdata:00000001400F4BD8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140537D20   proc near               ; CODE XREF: sub_140537B08+187↑p
                                        ; DATA XREF: .pdata:00000001400F4BE4↑o

var_18          = xmmword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                lea     rax, unk_140C50C00
                mov     rbx, rdx
                mov     rsi, rcx
                cmp     rdx, rax
                jz      short loc_140537D9B
                mov     eax, cs:dword_140C4DD7C
                lea     r10d, [rax+rax]
                call    sub_140722F30
                movzx   r8d, cs:word_140CFB000
                lea     rdx, [r10+r10*4]
                shl     r10, 4
                imul    r11, r8, 11C0h
                add     r11, 2D0Fh
                lea     r11, [r11+rdx*8]
                and     r11, 0FFFFFFFFFFFFFFF0h
                add     r11, rax
                add     r11, r10
                mov     r10, rbx
                call    sub_1403F64B4
                mov     r9d, eax
                lea     rax, [r9+r9*2]
                lea     r8, [r11+rax*8]
                jmp     short loc_140537DC0
; ---------------------------------------------------------------------------

loc_140537D9B:                          ; CODE XREF: sub_140537D20+29↑j
                mov     r8d, 2D00h
                call    sub_1405387A8
                test    eax, eax
                js      loc_140537E46
                movzx   eax, cs:word_140CFB000
                mov     r10, [rbx+10h]
                imul    r8, rax, 11C0h

loc_140537DC0:                          ; CODE XREF: sub_140537D20+79↑j
                mov     rdx, r10
                mov     rcx, rsi
                call    sub_1405387A8
                mov     ecx, [rbx+1B18h]
                mov     r14d, eax
                mov     eax, 10h
                cmp     ecx, eax
                cmova   ecx, eax
                test    ecx, ecx
                jz      short loc_140537E43
                lea     rdi, [rbx+1B20h]
                mov     ebp, ecx

loc_140537DEB:                          ; CODE XREF: sub_140537D20+121↓j
                mov     rbx, [rdi]
                test    rbx, rbx
                jz      short loc_140537E39
                mov     rcx, rbx
                call    sub_14029B5F0
                test    al, al
                jz      short loc_140537E39
                mov     r8d, 120h
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1405387A8
                mov     rdx, [rbx+38h]
                mov     r8d, 0D8h
                mov     rcx, rsi
                call    sub_1405387A8
                movups  xmm0, xmmword ptr [rbx+60h]
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rsi
                movdqu  [rsp+38h+var_18], xmm0
                call    sub_1405384AC

loc_140537E39:                          ; CODE XREF: sub_140537D20+D1↑j
                                        ; sub_140537D20+DD↑j
                add     rdi, 8
                sub     rbp, 1
                jnz     short loc_140537DEB

loc_140537E43:                          ; CODE XREF: sub_140537D20+C0↑j
                mov     eax, r14d

loc_140537E46:                          ; CODE XREF: sub_140537D20+88↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140537D20   endp

algn_140537E62:                         ; DATA XREF: .pdata:00000001400F4BE4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140537E68   proc near               ; CODE XREF: sub_140538940+100↓p
                                        ; DATA XREF: .pdata:00000001400F4BF0↑o

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, cs:qword_140CFC4A8
                xor     ebx, ebx
                mov     r15, rcx
                cmp     [rax], ebx
                jbe     loc_140537F9F

loc_140537E8C:                          ; CODE XREF: sub_140537E68+131↓j
                mov     edi, ebx
                xor     r14d, r14d
                add     rdi, rdi
                mov     rsi, [rax+rdi*8+10h]
                cmp     [rax+rdi*8+18h], r14
                jbe     loc_140537F95

loc_140537EA4:                          ; CODE XREF: sub_140537E68+127↓j
                lea     r9, [rsi+rsi*2]
                shl     r9, 4
                mov     rax, 0FFFFFA8000000000h
                add     r9, rax
                mov     ebp, 1
                mov     rax, 1000000000h
                mov     rdx, [r9+28h]
                test    rax, rdx
                jz      short loc_140537F02
                and     [rsp+58h+arg_8], 0
                lea     r8, [rsp+58h+arg_10]
                and     [rsp+58h+arg_10], 0
                lea     rdx, [rsp+58h+arg_8]
                mov     rcx, r9
                call    sub_1403F63D4
                cmp     [rsp+58h+arg_8], 6
                mov     rbp, rax
                jnz     loc_140537F7D
                cmp     [rsp+58h+arg_10], 1
                jmp     short loc_140537F64
; ---------------------------------------------------------------------------

loc_140537F02:                          ; CODE XREF: sub_140537E68+67↑j
                mov     cl, [r9+22h]
                mov     al, cl
                and     al, 0C0h
                cmp     al, 40h ; '@'
                jnz     short loc_140537F7D
                and     cl, 7
                cmp     cl, 6
                jnz     short loc_140537F52
                mov     rax, rdx
                shr     rax, 3Ch
                and     al, 7
                cmp     al, bpl
                jz      short loc_140537F7D
                mov     rcx, 3FFFFFFFFFFFFFFFh
                test    [r9+18h], rcx
                jz      short loc_140537F66
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                mov     rax, 0FFFFFFFFDh
                cmp     rdx, rax
                jnz     short loc_140537F66
                jmp     short loc_140537F7D
; ---------------------------------------------------------------------------

loc_140537F52:                          ; CODE XREF: sub_140537E68+AC↑j
                sub     cl, 2
                cmp     cl, bpl
                ja      short loc_140537F7D
                mov     eax, [r9+10h]
                test    rax, 400h

loc_140537F64:                          ; CODE XREF: sub_140537E68+98↑j
                jnz     short loc_140537F7D

loc_140537F66:                          ; CODE XREF: sub_140537E68+CA↑j
                                        ; sub_140537E68+E6↑j
                mov     rax, [r15]
                mov     r9d, 2
                mov     r8, rbp
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1404079D0

loc_140537F7D:                          ; CODE XREF: sub_140537E68+8D↑j
                                        ; sub_140537E68+A4↑j ...
                mov     rax, cs:qword_140CFC4A8
                add     r14, rbp
                add     rsi, rbp
                cmp     r14, [rax+rdi*8+18h]
                jb      loc_140537EA4

loc_140537F95:                          ; CODE XREF: sub_140537E68+36↑j
                inc     ebx
                cmp     ebx, [rax]
                jb      loc_140537E8C

loc_140537F9F:                          ; CODE XREF: sub_140537E68+1E↑j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140537E68   endp

algn_140537FB1:                         ; DATA XREF: .pdata:00000001400F4BF0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140537FB8   proc near               ; CODE XREF: sub_140537FB8+2DD↓p
                                        ; sub_1405387A8+DE↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15d, [rsp+68h+arg_20]
                xor     r11d, r11d
                movsxd  r10, r15d
                mov     rbp, rdx
                add     r10, r10
                mov     r12, r8
                mov     r13, rcx
                mov     esi, r11d
                mov     rax, [r9+r10*8]
                cmp     rdx, rax
                cmovb   rbp, rax
                mov     rax, [r9+r10*8+8]
                cmp     r8, rax
                cmova   r12, rax
                jmp     loc_140538414
; ---------------------------------------------------------------------------

loc_14053800A:                          ; CODE XREF: sub_140537FB8+45F↓j
                cmp     r15d, 3
                jnz     short loc_140538015
                call    sub_140383CE8

loc_140538015:                          ; CODE XREF: sub_140537FB8+56↑j
                mov     rcx, rbp
                call    sub_1402805F0
                mov     r14, rax
                mov     [rsp+68h+arg_8], rax
                mov     rbx, rax
                and     r14d, 1
                jz      loc_1405380E9
                lea     rcx, [rsp+68h+arg_8]
                mov     rdi, rax
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1405380B1
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1405380B1
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_1405380AC
                test    dil, 20h
                jz      short loc_140538074
                test    dil, 42h
                jnz     short loc_1405380AC

loc_140538074:                          ; CODE XREF: sub_140537FB8+B4↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1405380AC
                lea     rax, [rsp+68h+arg_8]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_1405380AA
                or      rdi, 20h

loc_1405380AA:                          ; CODE XREF: sub_140537FB8+EC↑j
                test    al, 42h

loc_1405380AC:                          ; CODE XREF: sub_140537FB8+AE↑j
                                        ; sub_140537FB8+BA↑j ...
                mov     rbx, [rsp+68h+arg_8]

loc_1405380B1:                          ; CODE XREF: sub_140537FB8+89↑j
                                        ; sub_140537FB8+95↑j
                shr     rdi, 0Ch
                lea     rcx, qword_140C4C740
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                movsxd  rax, r15d
                cmp     rdi, [rcx+rax*8+2508h]
                jz      loc_140538410
                cmp     rdi, [rcx+rax*8+24E8h]
                jnz     short loc_1405380F8
                jmp     loc_140538410
; ---------------------------------------------------------------------------

loc_1405380E9:                          ; CODE XREF: sub_140537FB8+74↑j
                xor     r8d, r8d
                test    r15d, r15d
                jnz     loc_140538410
                mov     edi, r8d

loc_1405380F8:                          ; CODE XREF: sub_140537FB8+12A↑j
                cmp     r15d, 3
                jnz     short loc_140538162
                mov     rax, 0FFFFF6FB7DBEDF68h
                cmp     rbp, rax
                jz      loc_140538410
                mov     rcx, rbp
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                shl     rax, 19h
                lea     edx, [r15+1]

loc_140538129:                          ; CODE XREF: sub_140537FB8+180↓j
                shl     rcx, 19h
                sub     rcx, rax
                sar     rcx, 10h
                sub     rdx, 1
                jnz     short loc_140538129
                call    sub_140245330
                mov     r9, [rsp+68h+arg_18]
                cmp     dword ptr [r9+50h], 1
                jnz     short loc_140538157
                cmp     eax, 1
                jz      loc_140538410

loc_140538157:                          ; CODE XREF: sub_140537FB8+194↑j
                cmp     eax, 8
                jz      loc_140538410
                jmp     short loc_14053816A
; ---------------------------------------------------------------------------

loc_140538162:                          ; CODE XREF: sub_140537FB8+144↑j
                mov     r9, [rsp+68h+arg_18]

loc_14053816A:                          ; CODE XREF: sub_140537FB8+1A8↑j
                test    r15d, r15d
                jz      loc_1405382AC
                lea     rcx, [rdi+rdi*2]
                mov     rax, 0FFFFFA8000000028h
                add     rcx, rcx
                mov     rax, rax
                test    bl, bl
                jns     loc_14053822C
                mov     rdx, [rax+rcx*8]
                shr     rdx, 32h
                and     edx, 1
                jz      loc_140538410
                mov     rax, 0FFFFF68000000000h
                mov     rdx, rax
                shl     rdx, 19h
                mov     rax, rbp
                shl     rax, 19h
                sub     rax, rdx
                mov     rcx, rax
                add     rax, 10000000h
                sar     rax, 10h
                sar     rcx, 10h
                test    r15d, r15d
                jle     short loc_1405381F0
                mov     r8, r15

loc_1405381D4:                          ; CODE XREF: sub_140537FB8+236↓j
                shl     rcx, 19h
                shl     rax, 19h
                sub     rcx, rdx
                sub     rax, rdx
                sar     rcx, 10h
                sar     rax, 10h
                sub     r8, 1
                jnz     short loc_1405381D4

loc_1405381F0:                          ; CODE XREF: sub_140537FB8+217↑j
                mov     rdx, [r9+40h]
                mov     r8, [r9+48h]
                and     rdx, 0FFFFFFFFFFFFF000h
                cmp     rcx, rdx
                mov     r9d, 1
                dec     rax
                cmovnb  rdx, rcx
                or      r8, 0FFFh
                cmp     rax, r8
                cmovbe  r8, rax
                sub     r8, rdx
                inc     r8
                shr     r8, 0Ch
                jmp     loc_1405383FA
; ---------------------------------------------------------------------------

loc_14053822C:                          ; CODE XREF: sub_140537FB8+1D1↑j
                mov     r8, [rax+rcx*8]
                shr     r8, 32h
                and     r8d, 1
                jz      short loc_14053825C
                mov     rax, [r13+0]
                mov     r9d, 2
                mov     rdx, rdi
                mov     rcx, r13
                lea     r8d, [r9-1]
                call    sub_1404079D0
                test    eax, eax
                jns     short loc_14053825C
                test    esi, esi
                cmovns  esi, eax

loc_14053825C:                          ; CODE XREF: sub_140537FB8+280↑j
                                        ; sub_140537FB8+29D↑j
                mov     rdx, rbp
                mov     rax, 0FFFFF68000000000h
                shl     rdx, 19h
                mov     rax, rax
                mov     r9, [rsp+68h+arg_18]
                mov     rcx, r13
                shl     rax, 19h
                sub     rdx, rax
                lea     eax, [r15-1]
                sar     rdx, 10h
                mov     [rsp+68h+var_48], eax
                lea     r8, [rdx+0FF8h]
                call    sub_140537FB8
                test    eax, eax
                jns     loc_140538410
                test    esi, esi
                cmovns  esi, eax
                jmp     loc_140538410
; ---------------------------------------------------------------------------

loc_1405382AC:                          ; CODE XREF: sub_140537FB8+1B5↑j
                test    r14, r14
                jnz     short loc_1405382F7
                bt      rbx, 0Ah
                jb      loc_140538410
                bt      rbx, 0Bh
                jnb     loc_140538410
                mov     rcx, cs:qword_140C4DDC0
                mov     rdi, rbx
                mov     rax, rbx
                test    rcx, rcx
                jz      short loc_1405382E6
                test    al, 10h
                jnz     short loc_1405382E6
                mov     rdi, rcx
                not     rdi
                and     rdi, rax

loc_1405382E6:                          ; CODE XREF: sub_140537FB8+31F↑j
                                        ; sub_140537FB8+323↑j
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax

loc_1405382F7:                          ; CODE XREF: sub_140537FB8+2F7↑j
                mov     r10, rbp
                mov     rax, 0FFFFF68000000000h
                shl     r10, 19h
                mov     rax, rax
                shl     rax, 19h
                lea     rcx, [rdi+rdi*2]
                sub     r10, rax
                add     rcx, rcx
                sar     r10, 10h
                mov     rax, 0FFFFFA8000000028h
                mov     rax, rax
                mov     rbx, [rax+rcx*8]
                shr     rbx, 32h
                and     ebx, 1
                jz      loc_140538410
                mov     rax, 0FFFFFA8000000000h
                lea     r14, [rax+rcx*8]
                mov     rcx, r14
                call    sub_140344778
                test    eax, eax
                jnz     loc_140538410
                mov     rcx, r10
                call    sub_140245330
                cmp     eax, 9
                jnz     loc_1405383EB
                mov     rcx, [r14+8]
                mov     rax, 8000000000000000h
                or      rcx, rax
                mov     r8, 0FFFFF68000000000h
                mov     rax, r8
                mov     rdx, 3FFFFFFF78h
                add     rax, rdx
                cmp     rcx, rax
                ja      short loc_1405383EB
                mov     rax, r8
                cmp     rcx, rax
                jb      short loc_1405383EB
                mov     rcx, 3FFFFFFFFFFFFFFFh
                test    [r14+18h], rcx
                jz      short loc_1405383DC
                mov     al, [r14+22h]
                and     al, 7
                cmp     al, 6
                jnz     short loc_1405383DC
                mov     rax, [r14+28h]
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                mov     rcx, 0FFFFFFFFDh
                cmp     rax, rcx
                jz      short loc_1405383EB

loc_1405383DC:                          ; CODE XREF: sub_140537FB8+3F8↑j
                                        ; sub_140537FB8+402↑j
                cmp     rdi, cs:qword_140C4E5F0
                mov     ecx, 0
                cmovnz  ebx, ecx

loc_1405383EB:                          ; CODE XREF: sub_140537FB8+3AC↑j
                                        ; sub_140537FB8+3E0↑j ...
                cmp     ebx, 1
                jnz     short loc_140538410
                lea     r9d, [rbx+1]
                mov     r8d, ebx
                mov     rdx, rdi

loc_1405383FA:                          ; CODE XREF: sub_140537FB8+26F↑j
                mov     rax, [r13+0]
                mov     rcx, r13
                call    sub_1404079D0
                test    eax, eax
                jns     short loc_140538410
                test    esi, esi
                js      short loc_140538410
                mov     esi, eax

loc_140538410:                          ; CODE XREF: sub_140537FB8+11C↑j
                                        ; sub_140537FB8+12C↑j ...
                add     rbp, 8

loc_140538414:                          ; CODE XREF: sub_140537FB8+4D↑j
                cmp     rbp, r12
                jbe     loc_14053800A
                mov     rbx, [rsp+68h+arg_0]
                mov     eax, esi
                add     rsp, 30h
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
sub_140537FB8   endp

byte_140538435  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400F4BFC↑o

; =============== S U B R O U T I N E =======================================


sub_14053843C   proc near               ; CODE XREF: sub_140538E84+B1↓p
                                        ; sub_140538E84+D3↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rcx
                mov     rbx, rcx
                xor     edi, edi

loc_140538453:                          ; CODE XREF: sub_14053843C+57↓j
                shr     rbx, 9
                mov     rax, 7FFFFFFFF8h
                and     rbx, rax
                mov     rax, 0FFFFF68000000000h
                add     rbx, rax
                test    edi, edi
                jnz     short loc_140538481
                mov     rcx, rsi
                call    sub_140260090
                test    eax, eax
                jnz     short loc_14053848E

loc_140538481:                          ; CODE XREF: sub_14053843C+37↑j
                mov     edx, 8
                mov     rcx, rbx
                call    sub_1403CC478

loc_14053848E:                          ; CODE XREF: sub_14053843C+43↑j
                inc     edi
                cmp     edi, 4
                jb      short loc_140538453
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14053843C   endp

byte_1405384A6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400F4C08↑o

; =============== S U B R O U T I N E =======================================


sub_1405384AC   proc near               ; CODE XREF: sub_140537D20+114↑p
                                        ; DATA XREF: .pdata:00000001400F4C14↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                movzx   ebp, word ptr [rdx+2]
                mov     rsi, rdx
                mov     rdx, [rdx+8]
                mov     r14, rcx
                mov     rax, rdx
                mov     rcx, 0FFFFFFFFFFFFF000h
                and     eax, 0FFFh
                mov     rbx, rdx
                and     rbx, rcx
                lea     rdi, [rbp+0FFFh]
                add     rdi, rax
                and     rdi, rcx
                add     rdi, rbx
                cmp     rbx, rdi
                jnb     short loc_140538519

loc_1405384FD:                          ; CODE XREF: sub_1405384AC+67↓j
                mov     rcx, rbx
                call    sub_14029B5F0
                test    al, al
                jz      short loc_140538542
                add     rbx, 1000h
                cmp     rbx, rdi
                jb      short loc_1405384FD
                mov     rdx, [rsi+8]

loc_140538519:                          ; CODE XREF: sub_1405384AC+4F↑j
                mov     r8, rbp
                mov     rcx, r14
                call    sub_1405387A8
                xor     eax, eax

loc_140538526:                          ; CODE XREF: sub_1405384AC+9B↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140538542:                          ; CODE XREF: sub_1405384AC+5B↑j
                mov     eax, 0C0000001h
                jmp     short loc_140538526
sub_1405384AC   endp

; ---------------------------------------------------------------------------
algn_140538549:                         ; DATA XREF: .pdata:00000001400F4C14↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140538550   proc near               ; DATA XREF: .pdata:00000001400F4C20↑o
                                        ; sub_140538D5C+3A↓o

arg_0           = qword ptr  8
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                cmp     r8d, 1
                jge     loc_14053864A
                mov     rcx, rdx
                call    sub_1402805F0
                mov     [rsp+38h+arg_18], rax
                mov     rbx, rax
                test    al, 1
                jz      loc_14053864A
                lea     rcx, [rsp+38h+arg_18]
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1405385F4
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1405385F4
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_1405385F4
                test    bl, 20h
                jz      short loc_1405385BC
                test    bl, 42h
                jnz     short loc_1405385F4

loc_1405385BC:                          ; CODE XREF: sub_140538550+65↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1405385F4
                lea     rax, [rsp+38h+arg_18]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_1405385F2
                or      rbx, 20h

loc_1405385F2:                          ; CODE XREF: sub_140538550+9C↑j
                test    al, 42h

loc_1405385F4:                          ; CODE XREF: sub_140538550+3B↑j
                                        ; sub_140538550+47↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                and     rbx, rax
                lea     rax, [rbx+rbx*2]
                add     rax, rax
                mov     rcx, 0FFFFFA8000000018h
                mov     rcx, [rcx+rax*8]
                mov     rax, 3FFFFFFFFFFFFFFFh
                and     rcx, rax
                cmp     rcx, 1
                jnz     short loc_14053864A
                mov     rcx, [rdi+0A8h]
                mov     r9d, 2
                mov     rdx, rbx
                mov     rax, [rcx+8]
                lea     r8d, [r9-1]
                call    sub_1404079D0

loc_14053864A:                          ; CODE XREF: sub_140538550+11↑j
                                        ; sub_140538550+29↑j ...
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140538550   endp

algn_140538658:                         ; DATA XREF: .pdata:00000001400F4C20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140538660   proc near               ; CODE XREF: sub_14050B8F8+13D↑p
                                        ; sub_14050B8F8+174↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                xor     ebx, ebx
                mov     edi, edx
                mov     r14, rcx
                test    dl, 1
                jz      short loc_1405386A0
                mov     rdx, cs:qword_140CFC510
                mov     r8, 30000000000h
                call    sub_1405387A8
                test    eax, eax
                cmovs   ebx, eax

loc_1405386A0:                          ; CODE XREF: sub_140538660+23↑j
                test    dil, 2
                jz      short loc_1405386F3
                mov     eax, cs:dword_140CFC404
                test    eax, eax
                jz      short loc_1405386F3
                lea     rsi, qword_140CFDCC0
                mov     ebp, eax

loc_1405386B9:                          ; CODE XREF: sub_140538660+91↓j
                mov     rax, [rsi]
                mov     r9d, 2
                mov     rcx, [rax+8]
                lea     r8d, [r9-1]
                mov     rax, [rcx+0B8h]
                mov     rcx, r14
                mov     rdx, [rax+28h]
                mov     rax, [r14]
                shr     rdx, 0Ch
                call    sub_1404079D0
                test    eax, eax
                lea     rsi, [rsi+8]
                cmovs   ebx, eax
                sub     rbp, 1
                jnz     short loc_1405386B9

loc_1405386F3:                          ; CODE XREF: sub_140538660+44↑j
                                        ; sub_140538660+4E↑j
                test    dil, 4
                jz      short loc_140538717
                mov     r8, cs:qword_140CFC640
                mov     rcx, r14
                mov     rdx, cs:qword_140CFC470
                sub     r8, rdx
                call    sub_1405387A8
                test    eax, eax
                cmovs   ebx, eax

loc_140538717:                          ; CODE XREF: sub_140538660+97↑j
                test    dil, 8
                jz      short loc_14053873B
                mov     r8, cs:qword_140CFC648
                mov     rcx, r14
                mov     rdx, cs:qword_140CFC500
                sub     r8, rdx
                call    sub_1405387A8
                test    eax, eax
                cmovs   ebx, eax

loc_14053873B:                          ; CODE XREF: sub_140538660+BB↑j
                test    dil, 10h
                jz      short loc_140538770
                mov     rsi, cs:qword_140C4ED80
                lea     rbp, qword_140C4ED80
                jmp     short loc_14053876B
; ---------------------------------------------------------------------------

loc_140538751:                          ; CODE XREF: sub_140538660+10E↓j
                lea     rdx, [rsi-80h]
                mov     r8d, 5000h
                mov     rcx, r14
                call    sub_1405387A8
                mov     rsi, [rsi]
                test    eax, eax
                cmovs   ebx, eax

loc_14053876B:                          ; CODE XREF: sub_140538660+EF↑j
                cmp     rsi, rbp
                jnz     short loc_140538751

loc_140538770:                          ; CODE XREF: sub_140538660+DF↑j
                test    dil, 20h
                jz      short loc_140538783
                mov     rcx, r14
                call    sub_140537B08
                test    eax, eax
                cmovs   ebx, eax

loc_140538783:                          ; CODE XREF: sub_140538660+114↑j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140538660   endp

algn_1405387A1:                         ; DATA XREF: .pdata:00000001400F4C2C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405387A8   proc near               ; CODE XREF: sub_14050B8F8+96↑p
                                        ; sub_14050B8F8+BC↑p ...

var_98          = dword ptr -98h
var_88          = byte ptr -88h
var_80          = byte ptr -80h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_28          = qword ptr -28h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_28], rax
                mov     rbx, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     rsi, rcx
                lea     rcx, [rsp+0B8h+var_88]
                lea     r8d, [rdx+58h]
                call    memset
                mov     rax, gs:188h
                mov     r10d, 1
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140538819
                call    sub_140358800
                mov     ecx, [rsp+0B8h+var_38]
                test    eax, eax
                cmovz   ecx, r10d
                mov     [rsp+0B8h+var_38], ecx

loc_140538819:                          ; CODE XREF: sub_1405387A8+56↑j
                lea     r8, [rbx-1]
                mov     [rsp+0B8h+var_48], rbx
                add     r8, rdi
                mov     rcx, 0FFFFF68000000000h
                mov     [rsp+0B8h+var_40], r8
                lea     rdx, [rsp+0B8h+var_80]
                mov     r9d, 4
                mov     r11, 7FFFFFFFF8h

loc_140538849:                          ; CODE XREF: sub_1405387A8+C9↓j
                shr     rbx, 9
                and     rbx, r11
                mov     rax, rcx
                shr     r8, 9
                add     rbx, rax
                and     r8, r11
                mov     rax, rcx
                add     r8, rax
                mov     [rdx-8], rbx
                mov     [rdx], r8
                lea     rdx, [rdx+10h]
                sub     r9, r10
                jnz     short loc_140538849
                lea     r9, [rsp+0B8h+var_88]
                mov     [rsp+0B8h+var_98], 3
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140537FB8
                mov     rcx, [rsp+0B8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405387A8
sub_1405387A8   endp

algn_1405388A7:                         ; DATA XREF: .pdata:00000001400F4C38↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405388B0   proc near               ; CODE XREF: sub_14050BC10+A9↑p
                                        ; DATA XREF: .pdata:00000001400F4C44↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdx, cs:qword_140C2A658
                mov     rsi, rcx
                test    rdx, rdx
                jnz     short loc_1405388D2
                xor     eax, eax
                jmp     short loc_140538926
; ---------------------------------------------------------------------------

loc_1405388D2:                          ; CODE XREF: sub_1405388B0+1C↑j
                mov     r8d, 7D0h
                call    sub_1405387A8
                mov     ecx, eax
                test    eax, eax
                js      short loc_140538926
                mov     edi, cs:dword_140C2A650
                xor     ebx, ebx
                test    edi, edi
                jz      short loc_140538924

loc_1405388EF:                          ; CODE XREF: sub_1405388B0+72↓j
                mov     eax, edi
                sub     eax, ebx
                dec     eax
                lea     r8, [rax+rax*4]
                mov     rax, cs:qword_140C2A658
                mov     rdx, [rax+r8*8+8]
                test    rdx, rdx
                jz      short loc_140538924
                movzx   r8d, word ptr [rax+r8*8+2]
                mov     rcx, rsi
                call    sub_1405387A8
                mov     ecx, eax
                test    eax, eax
                js      short loc_140538924
                inc     ebx
                cmp     ebx, edi
                jb      short loc_1405388EF

loc_140538924:                          ; CODE XREF: sub_1405388B0+3D↑j
                                        ; sub_1405388B0+58↑j ...
                mov     eax, ecx

loc_140538926:                          ; CODE XREF: sub_1405388B0+20↑j
                                        ; sub_1405388B0+31↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405388B0   endp

algn_140538937:                         ; DATA XREF: .pdata:00000001400F4C44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140538940   proc near               ; CODE XREF: sub_140502DE0+4F8↑p
                                        ; DATA XREF: .pdata:00000001400F4C50↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14d, 2
                mov     rsi, 0FFFFFA8000000000h
                xor     r15d, r15d
                mov     ebp, r8d
                mov     rbx, rcx
                mov     r13, 2AAAAAAAAAAAAAABh
                lea     r12d, [r14-1]
                test    edx, edx
                jnz     loc_140538A8F
                mov     eax, cs:dword_140CFC404
                test    eax, eax
                jz      short loc_1405389D8
                lea     rdi, qword_140CFDCC0
                mov     esi, eax

loc_14053899E:                          ; CODE XREF: sub_140538940+8C↓j
                mov     rax, [rdi]
                mov     r9d, r14d
                mov     r8, r12
                mov     rcx, [rax+8]
                mov     rax, [rcx+0B8h]
                mov     rcx, rbx
                mov     rdx, [rax+28h]
                mov     rax, [rbx]
                shr     rdx, 0Ch
                call    sub_1404079D0
                lea     rdi, [rdi+8]
                sub     rsi, r12
                jnz     short loc_14053899E
                mov     rsi, 0FFFFFA8000000000h

loc_1405389D8:                          ; CODE XREF: sub_140538940+53↑j
                mov     rdx, 0FFFF800000000000h
                mov     r8, 800000000000h
                mov     rcx, rbx
                call    sub_1405387A8
                test    r12b, bpl
                jz      short loc_140538A17
                mov     eax, cs:dword_140C313E0
                test    al, 3
                jz      short loc_140538A17
                xor     edx, edx
                mov     r8, 7FFFFFFF0000h
                mov     rcx, rbx
                call    sub_1405387A8

loc_140538A17:                          ; CODE XREF: sub_140538940+B7↑j
                                        ; sub_140538940+C1↑j
                mov     rax, cr3
                cqo
                mov     ecx, 1000h
                idiv    rcx
                mov     r9d, r14d
                mov     r8, r12
                mov     rdx, rax
                mov     rcx, rbx
                mov     rax, [rbx]
                call    sub_1404079D0
                test    r14b, bpl
                jz      short loc_140538A4D
                mov     rcx, rbx
                call    sub_140537E68
                mov     rcx, rbx
                call    sub_140538D5C

loc_140538A4D:                          ; CODE XREF: sub_140538940+FB↑j
                mov     rdi, cs:qword_140C4C758
                jmp     short loc_140538A88
; ---------------------------------------------------------------------------

loc_140538A56:                          ; CODE XREF: sub_140538940+14B↓j
                mov     rcx, rdi
                mov     rdi, [rdi]
                mov     rax, rsi
                sub     rcx, rax
                mov     r9d, r14d
                mov     rax, r13
                mov     r8, r12
                imul    rcx
                mov     rcx, rbx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     rax, [rbx+8]
                call    sub_1404079D0

loc_140538A88:                          ; CODE XREF: sub_140538940+114↑j
                test    rdi, rdi
                jnz     short loc_140538A56
                jmp     short loc_140538ADC
; ---------------------------------------------------------------------------

loc_140538A8F:                          ; CODE XREF: sub_140538940+45↑j
                mov     rcx, cs:qword_140CFC4A8
                mov     edi, r15d
                cmp     [rcx], r15d
                jbe     short loc_140538ADC

loc_140538A9E:                          ; CODE XREF: sub_140538940+19A↓j
                mov     edx, edi
                add     rdx, rdx
                test    cs:dword_140CFC400, 8000h
                mov     r8, [rcx+rdx*8+18h]
                mov     rdx, [rcx+rdx*8+10h]
                mov     rcx, rbx
                jz      short loc_140538AC3
                call    sub_140537A34
                jmp     short loc_140538ACE
; ---------------------------------------------------------------------------

loc_140538AC3:                          ; CODE XREF: sub_140538940+17A↑j
                mov     rax, [rbx]
                mov     r9d, r14d
                call    sub_1404079D0

loc_140538ACE:                          ; CODE XREF: sub_140538940+181↑j
                mov     rcx, cs:qword_140CFC4A8
                add     edi, r12d
                cmp     edi, [rcx]
                jb      short loc_140538A9E

loc_140538ADC:                          ; CODE XREF: sub_140538940+14D↑j
                                        ; sub_140538940+15C↑j
                mov     esi, r15d

loc_140538ADF:                          ; CODE XREF: sub_140538940+2F9↓j
                or      r13d, 0FFFFFFFFh

loc_140538AE3:                          ; CODE XREF: sub_140538940+29E↓j
                                        ; sub_140538940+2B8↓j
                mov     rax, cs:qword_140C4E4A8
                mov     ebp, [rax]
                cmp     esi, ebp
                mov     rdi, [rax+8]
                sbb     r9d, r9d
                mov     rcx, rdi
                and     ecx, 4
                and     r9d, esi
                mov     eax, ecx
                lea     edx, [rbp-1]
                neg     rax
                sbb     r10d, r10d
                and     r10d, 20h
                neg     rcx
                sbb     rax, rax
                and     eax, 4
                sub     rdi, rax

loc_140538B19:                          ; CODE XREF: sub_140538940+265↓j
                lea     r11d, [r10+rdx]
                mov     eax, r11d
                lea     ecx, [r10+r9]
                sub     eax, ecx
                add     eax, r12d
                cmp     eax, r12d
                jnb     short loc_140538B33

loc_140538B2E:                          ; CODE XREF: sub_140538940+227↓j
                                        ; sub_140538940+24B↓j
                mov     edx, r13d
                jmp     short loc_140538B92
; ---------------------------------------------------------------------------

loc_140538B33:                          ; CODE XREF: sub_140538940+1EC↑j
                mov     eax, r11d
                mov     r8, r12
                shr     rax, 6
                lea     r14, [rdi+rax*8]
                mov     rax, rcx
                shr     rax, 6
                and     cl, 3Fh
                shl     r8, cl
                sub     r8, r12
                lea     rdx, [rdi+rax*8]
                mov     rax, [rdx]
                not     rax
                or      r8, rax
                jmp     short loc_140538B6F
; ---------------------------------------------------------------------------

loc_140538B60:                          ; CODE XREF: sub_140538940+233↓j
                add     rdx, 8
                cmp     rdx, r14
                ja      short loc_140538B2E
                mov     r8, [rdx]
                not     r8

loc_140538B6F:                          ; CODE XREF: sub_140538940+21E↑j
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140538B60
                sub     rdx, rdi
                not     r8
                sar     rdx, 3
                bsf     rax, r8
                shl     edx, 6
                add     edx, eax
                cmp     edx, r11d
                ja      short loc_140538B2E
                cmp     edx, r13d
                jnz     short loc_140538BAA

loc_140538B92:                          ; CODE XREF: sub_140538940+1F1↑j
                test    r9d, r9d
                jz      short loc_140538BAA
                lea     edx, [rsi+1]
                mov     r9d, r15d
                cmp     edx, ebp
                cmova   edx, ebp
                add     edx, r13d
                jmp     loc_140538B19
; ---------------------------------------------------------------------------

loc_140538BAA:                          ; CODE XREF: sub_140538940+250↑j
                                        ; sub_140538940+255↑j
                mov     eax, edx
                sub     eax, r10d
                cmp     edx, r13d
                cmovz   eax, edx
                cmp     eax, esi
                jb      loc_140538C3E
                cmp     eax, r13d
                jz      short loc_140538C3E
                mov     ecx, eax
                lea     esi, [rax+1]
                mov     rax, cs:qword_140C4E4C8
                mov     r14d, 2
                mov     rdi, [rax+rcx*8]
                mov     eax, [rdi+4]
                test    r14b, al
                jz      loc_140538AE3
                mov     rdi, [rdi+1010h]
                mov     rax, 0FFFFFFFFFh
                cmp     rdi, rax
                jz      loc_140538AE3
                mov     r15, 0FFFFFA8000000000h
                mov     r13, rax

loc_140538C0B:                          ; CODE XREF: sub_140538940+2F4↓j
                mov     rax, [rbx+8]
                mov     r9d, r14d
                mov     r8, r12
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1404079D0
                lea     rcx, [rdi+rdi*2]
                add     rcx, rcx
                mov     rax, r15
                mov     rdi, [rax+rcx*8]
                and     rdi, r13
                cmp     rdi, r13
                jnz     short loc_140538C0B
                xor     r15d, r15d
                jmp     loc_140538ADF
; ---------------------------------------------------------------------------

loc_140538C3E:                          ; CODE XREF: sub_140538940+277↑j
                                        ; sub_140538940+280↑j
                cmp     cs:byte_140C4E678, r12b
                jnz     loc_140538CE2
                mov     rcx, 0FFFFFA8000000000h
                mov     rsi, rcx
                mov     rax, cs:qword_140C52708
                lea     rdi, [rax+rax*2]
                shl     rdi, 4
                mov     rax, rcx
                add     rdi, rax
                mov     rax, rcx
                cmp     rax, rdi
                ja      short loc_140538CE2
                mov     rbp, 2AAAAAAAAAAAAAABh

loc_140538C7F:                          ; CODE XREF: sub_140538940+3A0↓j
                mov     rax, rcx
                mov     r8, rsi
                sub     r8, rax
                mov     rax, 0FFFFFA8000000023h
                mov     al, [r8+rax]
                test    al, 40h
                jnz     short loc_140538CA6
                mov     rcx, rsi
                call    sub_1402D9F7C
                test    eax, eax
                jz      short loc_140538CCF

loc_140538CA6:                          ; CODE XREF: sub_140538940+358↑j
                mov     rax, rbp
                mov     r9d, 2
                imul    r8
                mov     r8, r12
                mov     rcx, rbx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     rax, [rbx+8]
                call    sub_1404079D0

loc_140538CCF:                          ; CODE XREF: sub_140538940+364↑j
                add     rsi, 30h ; '0'
                mov     rcx, 0FFFFFA8000000000h
                cmp     rsi, rdi
                jbe     short loc_140538C7F

loc_140538CE2:                          ; CODE XREF: sub_140538940+305↑j
                                        ; sub_140538940+333↑j
                cmp     cs:qword_140C4ED00, r15
                jz      short loc_140538CF3
                mov     rcx, rbx
                call    sub_14054B42C

loc_140538CF3:                          ; CODE XREF: sub_140538940+3A9↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140538940   endp

algn_140538D11:                         ; DATA XREF: .pdata:00000001400F4C50↑o
                align 20h
; Exported entry 1468. MmMapMemoryDumpMdl

; =============== S U B R O U T I N E =======================================


