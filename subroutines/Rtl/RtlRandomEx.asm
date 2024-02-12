RtlRandomEx     proc near               ; CODE XREF: sub_1406A7CD8+90↓p
                                        ; sub_140797B1C+15E↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 1
                call    sub_1402D2900
                btr     eax, 1Fh
                mov     [rbx], eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlRandomEx     endp

byte_140303E90  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D3EC0↑o

; =============== S U B R O U T I N E =======================================


sub_140303E98   proc near               ; CODE XREF: sub_1406A7CD8+66↓p
                                        ; DATA XREF: .pdata:00000001400D3ECC↑o
                mov     [rcx+72Eh], dx
                retn
sub_140303E98   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140303EA1:                         ; DATA XREF: .pdata:00000001400D3ECC↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140303EA8   proc near               ; CODE XREF: sub_14068E540+E2↓p
                                        ; sub_1406A7CD8+53↓p ...

var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046973A SIZE 00000184 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rdx, [rbp+var_20]
                xorps   xmm0, xmm0
                lea     rcx, qword_140C4E480
                xor     eax, eax
                movups  [rbp+var_20], xmm0
                mov     [rbp+var_10], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rbx+4]
                test    al, 20h
                jnz     loc_1404697A1
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_10]
                test    eax, eax
                jnz     loc_14046973A

loc_140303F05:                          ; CODE XREF: sub_140303EA8+165894↓j
                                        ; sub_140303EA8+1658A0↓j ...
                mov     cr8, rbx

loc_140303F09:                          ; CODE XREF: sub_140303EA8+165A02↓j
                                        ; sub_140303EA8+165A11↓j
                mov     eax, 1

loc_140303F0E:                          ; CODE XREF: sub_140303EA8+165978↓j
                mov     rbx, [rsp+40h+arg_0]
                mov     rsi, [rsp+40h+arg_8]
                mov     rdi, [rsp+40h+arg_10]
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140303EA8   endp

byte_140303F24  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140070D10↑o
                                        ; .pdata:00000001400D3ED8↑o

; =============== S U B R O U T I N E =======================================


sub_140303F2C   proc near               ; CODE XREF: sub_1403014F4+83↑p
                                        ; DATA XREF: .rdata:0000000140070D3C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h

; FUNCTION CHUNK AT 00000001404698BE SIZE 0000013D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                mov     r10d, [rsp+8+arg_40]
                mov     rbx, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     r11, rcx
                bt      r10d, 8
                jb      loc_1404698BE

loc_140303F5D:                          ; CODE XREF: sub_140303F2C+1659A2↓j
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                cmp     rbx, rax
                jb      loc_140304053
                mov     rbx, rax
                mov     eax, r10d
                bts     eax, 10h
                test    rdi, rdi
                cmovnz  eax, r10d
                mov     r10d, eax

loc_140303F8C:                          ; CODE XREF: sub_140303F2C+12E↓j
                                        ; sub_140303F2C+137↓j ...
                mov     r8, [rsp+8+arg_20]
                test    r8d, 0FFFh
                jnz     loc_140304073
                shr     r8, 0Ch
                lea     rax, [r8-1]
                test    r8, rax
                jnz     loc_1404698D3

loc_140303FAF:                          ; CODE XREF: sub_140303F2C+1659B4↓j
                mov     r14d, [rsp+8+arg_30]
                bt      r10d, 0Ah
                jb      loc_1404698E5

loc_140303FBF:                          ; CODE XREF: sub_140303F2C+1659E2↓j
                mov     rcx, [rsp+8+arg_28]
                mov     eax, 0FFFFE000h
                cmp     rcx, rax
                ja      loc_140469913

loc_140303FD2:                          ; CODE XREF: sub_140303F2C+1659F8↓j
                                        ; sub_140303F2C+165A01↓j ...
                add     rcx, 0FFFh
                mov     ebp, r10d
                shr     rcx, 0Ch
                and     ebp, 40h
                jnz     loc_140469948

loc_140303FE9:                          ; CODE XREF: sub_140303F2C+165A63↓j
                                        ; sub_140303F2C+165A7C↓j
                mov     eax, [rsi+4]
                not     eax
                and     eax, 20h
                shl     rax, 5
                mov     [r11+30h], rax
                mov     r9, [rsi+1C00h]
                sub     r9, rax
                test    r9, r9
                jle     short loc_140304073
                cmp     rcx, r9
                ja      loc_1404699AD

loc_140304011:                          ; CODE XREF: sub_140303F2C+165ABF↓j
                test    rcx, rcx
                jz      short loc_140304073
                mov     eax, [rsp+8+arg_38]
                mov     [r11+38h], eax
                xor     eax, eax
                mov     [r11], rsi
                mov     [r11+8], r10d
                mov     [r11+10h], rdi
                mov     [r11+18h], rbx
                mov     [r11+20h], r8
                mov     [r11+3Ch], r14d
                mov     [r11+28h], rcx

loc_14030403B:                          ; CODE XREF: sub_140303F2C+14C↓j
                                        ; sub_140303F2C+165ACA↓j
                mov     rbx, [rsp+8+arg_0]
                mov     rbp, [rsp+8+arg_8]
                mov     rsi, [rsp+8+arg_10]
                mov     rdi, [rsp+8+arg_18]
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140304053:                          ; CODE XREF: sub_140303F2C+46↑j
                cmp     rbx, [rdx+1B08h]
                jb      loc_140303F8C
                test    rdi, rdi
                jnz     loc_140303F8C
                bts     r10d, 10h
                jmp     loc_140303F8C
; ---------------------------------------------------------------------------

loc_140304073:                          ; CODE XREF: sub_140303F2C+6C↑j
                                        ; sub_140303F2C+DA↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_14030403B
sub_140303F2C   endp

; ---------------------------------------------------------------------------
algn_14030407A:                         ; DATA XREF: .rdata:0000000140070D3C↑o
                                        ; .pdata:00000001400D3EE4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140304080   proc near               ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+98↑p
                                        ; sub_1405344DC+2E↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404699FC SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     r9d, r9d
                mov     rbx, r8
                mov     dil, dl
                mov     r8, rcx
                mov     r11d, r9d
                test    rcx, rcx
                jnz     short loc_1403040CF
                lea     r10, unk_140C50C00

loc_1403040A5:                          ; CODE XREF: sub_140304080+7B↓j
                                        ; sub_140304080+165985↓j
                cmp     dword ptr [r10+8], 12361940h
                jnz     loc_140469A4C
                cmp     r11d, 1
                jz      loc_140469A0A

loc_1403040BD:                          ; CODE XREF: sub_140304080+1659BF↓j
                                        ; sub_140304080+1659C7↓j
                mov     [rbx], r9b
                mov     rax, r10
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403040CF:                          ; CODE XREF: sub_140304080+1C↑j
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jnz     loc_1404699FC
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, cs:qword_140C4E4C8
                movzx   edx, word ptr [rcx+72Eh]
                mov     r10, [rax+rdx*8]
                jmp     short loc_1403040A5
sub_140304080   endp

; ---------------------------------------------------------------------------
byte_1403040FD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140070D5C↑o
                                        ; .pdata:00000001400D3EF0↑o

; =============== S U B R O U T I N E =======================================


sub_140304104   proc near               ; CODE XREF: sub_1403021DC+102↑p
                                        ; DATA XREF: .rdata:0000000140070D88↑o ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = byte ptr  8

; FUNCTION CHUNK AT 0000000140469A64 SIZE 00000071 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r15, [rcx+40h]
                mov     rsi, rcx
                or      qword ptr [r11+8], 0FFFFFFFFFFFFFFFFh
                mov     r12d, r8d
                mov     rbp, [rcx+10h]
                or      r12d, 60002000h
                mov     rdi, [rcx+18h]
                mov     ebx, edx
                mov     eax, [r15+28h]
                mov     rcx, [rcx+28h]
                mov     r14, cs:qword_140C52708
                shr     rax, 0Ch
                sub     rcx, rax
                lea     rax, [r11+8]
                mov     [r11-38h], rax
                mov     eax, [rsi+3Ch]
                mov     [r11-40h], r15
                mov     [r11-48h], r12d
                mov     [rsp+88h+var_50], 80000000h
                mov     [rsp+88h+var_58], edx
                mov     [rsp+88h+var_60], eax
                mov     [r11-68h], rcx

loc_140304178:                          ; CODE XREF: sub_140304104+1659CC↓j
                mov     rcx, [rsi]
                xor     r9d, r9d
                mov     r8, rdi
                mov     rdx, rbp
                call    sub_1402D80F0
                mov     edx, [r15+28h]
                mov     r8, [rsi+28h]
                shr     rdx, 0Ch
                cmp     rdx, r8
                jnz     loc_140469A64

loc_14030419E:                          ; CODE XREF: sub_140304104+165967↓j
                                        ; sub_140304104+165974↓j ...
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140304104   endp

algn_1403041B8:                         ; DATA XREF: .rdata:0000000140070D88↑o
                                        ; .pdata:00000001400D3EFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403041C0   proc near               ; CODE XREF: sub_1406A8700+223↓p
                                        ; DATA XREF: .rdata:0000000140070DDC↑o ...

var_60          = dword ptr -60h
var_50          = xmmword ptr -50h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 0000000140469AD6 SIZE 000000BE BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-38h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     r15, [rdx]
                xor     r13d, r13d
                mov     r14, rcx
                mov     [rbp+var_3C], r13d
                mov     [rbp+var_24], r13d
                mov     r12, rdx
                mov     [rbp+var_18], r13
                mov     ebx, 100005h
                mov     ecx, [r15]
                movzx   r8d, cl
                cmp     r8d, 2
                jnb     loc_140469AF2
                cmp     [r15+14h], r13d
                jnz     loc_140469AF2
                mov     eax, [r15+0Ch]
                dec     eax
                cmp     eax, 3FFFFh
                ja      loc_140469AF2
                mov     edx, [r15+8]
                test    edx, edx
                jz      loc_140469AF2
                lea     eax, [rdx-1]
                test    edx, eax
                jnz     loc_140469AF2
                cmp     r8d, 1
                jz      loc_140469AD6

loc_140304252:                          ; CODE XREF: sub_1403041C0+16591A↓j
                mov     eax, ecx
                mov     r8d, 0A0000h
                and     eax, r8d
                mov     edx, ecx
                and     edx, 40000h
                jz      loc_140469AEA

loc_14030426B:                          ; CODE XREF: sub_1403041C0+16592C↓j
                cmp     eax, r8d
                jz      loc_140469AF2
                bt      ecx, 14h
                jb      loc_140469AFC

loc_14030427E:                          ; CODE XREF: sub_1403041C0+165940↓j
                mov     rax, [r12+20h]
                mov     ecx, 7
                mov     [r14+1A40h], rax
                mov     eax, [r12+38h]
                test    eax, eax
                cmovz   eax, ecx
                mov     [r14+1A48h], eax
                mov     al, [r15]
                mov     [r14+1784h], al
                mov     eax, [r15]
                shr     eax, 12h
                shl     al, 2
                xor     al, [r14+1785h]
                and     al, 4
                xor     [r14+1785h], al
                mov     al, [r14+1785h]
                mov     ecx, [r15]
                shr     ecx, 11h
                shl     cl, 3
                xor     cl, al
                and     cl, 8
                xor     cl, al
                mov     [r14+1785h], cl
                mov     edx, [r15]
                shr     edx, 13h
                shl     dl, 5
                xor     dl, cl
                and     dl, 20h
                xor     dl, cl
                mov     [r14+1785h], dl
                mov     eax, [r15+8]
                mov     [r14+1840h], eax
                cmp     [r15], r13b
                jnz     loc_140469B50
                test    dl, 4
                jz      loc_1403044A3
                lea     rsi, [r14+1858h]
                mov     edi, 80h
                mov     r8d, edi
                mov     rcx, rsi
                xor     edx, edx
                call    memset
                mov     [rsi+8], r13w
                lea     rax, [rsi+10h]
                mov     [rax+8], rax
                mov     r8d, edi
                mov     [rax], rax
                xor     edx, edx
                mov     [rsi+0Ch], r13d
                lea     rax, [rsi+28h]
                mov     byte ptr [rsi+0Ah], 6
                mov     [rsi+20h], r13w
                mov     [rsi+24h], r13d
                lea     r13, [r14+18D8h]
                mov     rcx, r13
                mov     byte ptr [rsi+22h], 6
                mov     [rax+8], rax
                mov     [rax], rax
                call    memset
                xor     ecx, ecx
                mov     byte ptr [r13+0Ah], 6
                mov     [r13+8], cx
                lea     rax, [r13+10h]
                mov     [r13+0Ch], ecx
                lea     rdi, [r14+1958h]
                mov     [rax+8], rax
                xor     edx, edx
                mov     [rax], rax
                lea     r8d, [rcx+50h]
                lea     rax, [r13+28h]
                mov     [r13+20h], cx
                mov     [r13+24h], ecx
                mov     rcx, rdi
                mov     byte ptr [r13+22h], 6
                mov     [rax+8], rax
                mov     [rax], rax
                call    memset
                mov     byte ptr [rdi+0Ah], 6
                lea     rax, [rdi+10h]
                mov     [rax+8], rax
                xor     ecx, ecx
                mov     [rax], rax
                lea     rax, [rdi+28h]
                mov     [rdi+8], cx
                mov     [rdi+0Ch], ecx
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rdi+38h]
                mov     [rdi+20h], cx
                mov     [rdi+24h], ecx
                mov     byte ptr [rdi+22h], 6
                mov     [rax+8], rax
                mov     [rax], rcx
                mov     [rdi+48h], rcx
                mov     rcx, rsi
                mov     rax, [r12+28h]
                mov     [r14+19B8h], rax
                mov     rdx, [r12+30h]
                call    sub_1403045E4
                test    eax, eax
                js      loc_1403045B6
                mov     rdx, [r12+30h]
                mov     rcx, r13
                call    sub_1403045E4
                xor     r13d, r13d
                test    eax, eax
                js      loc_1403045B6
                test    byte ptr [r14+1785h], 8
                jnz     loc_140469B05

loc_14030443F:                          ; CODE XREF: sub_1403041C0+165953↓j
                lea     rax, unk_140D24410
                mov     edi, 50h ; 'P'
                mov     edx, edi
                mov     [r14+1950h], rax
                mov     r8d, 6C526D73h
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     [r14+1850h], rax
                test    rax, rax
                jz      loc_140469B18
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     ecx, [r14+1840h]
                lea     edx, [rdi-4Fh]
                xor     r8d, r8d
                call    sub_1402EF11C
                test    eax, eax
                jz      loc_140469B18
                or      byte ptr [r14+1785h], 10h

loc_1403044A3:                          ; CODE XREF: sub_1403041C0+14F↑j
                mov     eax, [r15+0Ch]
                mov     r8d, 67526D73h
                mov     [r14+1844h], eax
                mov     ecx, 200h
                shl     eax, 3
                mov     edi, r13d
                mov     edx, eax
                mov     esi, eax
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_140469B18
                mov     r8d, esi
                mov     [r14+1848h], rax
                xor     edx, edx
                mov     rcx, rax
                call    memset
                test    byte ptr [r14+1785h], 4
                jz      loc_140469B22

loc_1403044F3:                          ; CODE XREF: sub_1403041C0+1659C2↓j
                mov     eax, [r14+1844h]
                mov     [rbp+var_3C], r13d
                mov     [rbp+var_24], r13d
                mov     [rbp+var_18], r13
                movups  xmm0, xmmword ptr [r15]
                mov     [rbp+var_40], edi
                mov     [rbp+var_38], r14
                movdqu  [rbp+var_50], xmm0
                mov     dword ptr [rbp+var_50+0Ch], eax
                mov     rax, [r12+18h]
                mov     [rbp+var_20], rax
                cmp     byte ptr [r15], 0
                jnz     loc_140469B87

loc_14030452C:                          ; CODE XREF: sub_1403041C0+1659CF↓j
                mov     rax, [r12+8]
                lea     rdx, [rbp+var_50]
                mov     [rbp+var_30], rax
                mov     eax, [r12+10h]
                mov     [rbp+var_28], eax
                neg     eax
                mov     eax, dword ptr [rbp+var_50]
                sbb     ecx, ecx
                btr     eax, 0Bh
                not     ecx
                and     ecx, 800h
                or      ecx, eax
                mov     dword ptr [rbp+var_50], ecx
                mov     rcx, r14
                call    sub_140304C18
                test    eax, eax
                js      short loc_1403045B6
                test    byte ptr [r14+1785h], 4
                jz      short loc_140304594
                mov     rdx, [r12+30h]
                lea     r9, [r14+1958h]
                lea     r8, sub_1402EDB40
                mov     rcx, r14
                call    sub_14030467C
                test    eax, eax
                cmovns  eax, r13d
                test    eax, eax
                js      short loc_1403045B6

loc_140304594:                          ; CODE XREF: sub_1403041C0+3AD↑j
                mov     rdx, [r12+30h]
                lea     r9, [r14+1838h]
                lea     r8, sub_140363530
                mov     rcx, r14
                call    sub_14030467C
                test    eax, eax
                js      short loc_1403045B6
                mov     eax, r13d

loc_1403045B6:                          ; CODE XREF: sub_1403041C0+253↑j
                                        ; sub_1403041C0+26B↑j ...
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_10]
                add     rsp, 80h
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
; } // starts at 1403041C0
sub_1403041C0   endp

byte_1403045DE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140070DDC↑o
                                        ; .pdata:00000001400D3F08↑o

; =============== S U B R O U T I N E =======================================


sub_1403045E4   proc near               ; CODE XREF: sub_1403041C0+24C↑p
                                        ; sub_1403041C0+261↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 40h
                and     qword ptr [r11+18h], 0
                lea     rax, sub_1402ECA80
                mov     [r11-18h], rcx
                mov     rdi, rcx
                mov     r9, rdx
                mov     [r11-20h], rax
                and     qword ptr [r11-28h], 0
                lea     rcx, [r11+18h]
                xor     r8d, r8d
                mov     edx, 1FFFFFh
                call    PsCreateSystemThread
                mov     ebx, eax
                test    eax, eax
                js      short loc_140304667
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_18]
                mov     rcx, [rsp+48h+arg_10]
                xor     r9d, r9d
                and     [rsp+48h+arg_18], 0
                xor     r8d, r8d
                mov     edx, 1FFFFFh
                mov     [rsp+48h+var_28], rax
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+48h+arg_10]
                mov     ebx, eax
                mov     rax, [rsp+48h+arg_18]
                xor     edx, edx
                mov     [rdi], rax
                call    ObCloseHandle

loc_140304667:                          ; CODE XREF: sub_1403045E4+40↑j
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403045E4   endp

byte_140304675  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D3F14↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14030467C   proc near               ; CODE XREF: sub_1403041C0+3C5↑p
                                        ; sub_1403041C0+3EA↑p
                                        ; DATA XREF: ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = dword ptr -8
var_4           = dword ptr -4
var_s0          = byte ptr  0
arg_0           = qword ptr  10h

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 70h
                and     [rbp+arg_0], 0
                lea     rax, [rbp+var_18]
                and     [rbp+var_4], 0
                mov     rdi, r9
                and     [rbp+var_1C], 0
                mov     r9, rdx
                or      [rbp+var_8], 0FFFFFFFFh
                mov     edx, 1FFFFFh
                mov     [rbp+var_10], rax
                lea     rax, [rbp+var_18]
                mov     [rbp+var_18], rax
                lea     rax, [rbp+var_28]
                mov     [r11-48h], rax
                mov     [r11-50h], r8
                xor     r8d, r8d
                and     qword ptr [r11-58h], 0
                mov     [rbp+var_28], rcx
                lea     rcx, [rbp+arg_0]
                mov     [rbp+var_20], 60000h
                call    PsCreateSystemThread
                mov     ebx, eax
                test    eax, eax
                js      short loc_140304749
                and     [rsp+70h+var_48], 0
                lea     rax, [rbp+var_30]
                mov     rcx, [rbp+arg_0]
                xor     r9d, r9d
                and     [rbp+var_30], 0
                xor     r8d, r8d
                mov     edx, 1FFFFFh
                mov     [rsp+70h+var_50], rax
                call    ObReferenceObjectByHandle
                mov     rcx, [rbp+arg_0]
                mov     ebx, eax
                mov     rax, [rbp+var_30]
                xor     edx, edx
                mov     [rdi], rax
                call    ObCloseHandle
                and     [rbp+arg_0], 0
                lea     rcx, [rbp+var_20]
                and     [rsp+70h+var_50], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, [rbp+var_8]
                test    eax, eax
                cmovs   ebx, eax

loc_140304749:                          ; CODE XREF: sub_14030467C+6B↑j
                mov     rcx, [rbp+arg_0]
                test    rcx, rcx
                jnz     short loc_140304767

loc_140304752:                          ; CODE XREF: sub_14030467C+F2↓j
                lea     r11, [rsp+70h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140304767:                          ; CODE XREF: sub_14030467C+D4↑j
                xor     edx, edx
                call    ObCloseHandle
                jmp     short loc_140304752
sub_14030467C   endp

; ---------------------------------------------------------------------------
byte_140304770  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D3F20↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140304778   proc near               ; CODE XREF: sub_140301E24+249↑p
                                        ; sub_14055DC5C+21E↓p ...

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = word ptr -30h
var_2E          = byte ptr -2Eh
var_2D          = byte ptr -2Dh
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_0           = dword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r14
                lea     rbp, [rsp-47h]
                sub     rsp, 90h
                and     [rbp+57h+arg_8], 0
                xor     ebx, ebx
                and     [rbp+57h+var_40], 0
                xorps   xmm0, xmm0
                and     [rbp+57h+arg_0], 0
                mov     eax, [rcx+10h]
                mov     rdx, [rcx]
                mov     [rbp+57h+var_2D], 0
                mov     r14, gs:188h
                mov     edi, cs:dword_140C4DD64
                movups  xmm1, xmmword ptr [rcx+20h]
                movups  [rbp+57h+var_60], xmm0
                movaps  [rbp+57h+var_50], xmm1
                test    eax, eax
                jz      short loc_14030484A
                mov     r10, qword ptr [rbp+57h+var_50]
                mov     r11d, eax

loc_1403047D5:                          ; CODE XREF: sub_140304778+D0↓j
                lea     rax, [rdx+20h]
                cmp     [rax], rax
                jnz     short loc_1403047E6
                mov     dword ptr [rdx], 1
                jmp     short loc_140304840
; ---------------------------------------------------------------------------

loc_1403047E6:                          ; CODE XREF: sub_140304778+64↑j
                and     dword ptr [rdx], 0
                inc     ebx
                test    r10, r10
                jz      short loc_14030483B
                xor     r8d, r8d
                movdqa  [rbp+57h+var_60], xmm1
                xor     r9b, r9b
                mov     qword ptr [rbp+57h+var_60], r8
                test    edi, edi
                jz      short loc_140304830

loc_140304803:                          ; CODE XREF: sub_140304778+AA↓j
                bsf     rax, r10
                bts     r8, rax
                mov     [rbp+57h+arg_0], eax
                mov     rax, r8
                not     rax
                and     r10, rax
                jz      short loc_140304824
                inc     r9b
                movzx   eax, r9b
                cmp     eax, edi
                jb      short loc_140304803

loc_140304824:                          ; CODE XREF: sub_140304778+9F↑j
                mov     qword ptr [rbp+57h+var_50], r10
                movaps  xmm1, [rbp+57h+var_50]
                mov     qword ptr [rbp+57h+var_60], r8

loc_140304830:                          ; CODE XREF: sub_140304778+89↑j
                movaps  xmm0, [rbp+57h+var_60]
                movdqu  xmmword ptr [rdx+8], xmm0
                jmp     short loc_140304840
; ---------------------------------------------------------------------------

loc_14030483B:                          ; CODE XREF: sub_140304778+76↑j
                and     qword ptr [rax-18h], 0

loc_140304840:                          ; CODE XREF: sub_140304778+6C↑j
                                        ; sub_140304778+C1↑j
                add     rdx, 30h ; '0'
                sub     r11, 1
                jnz     short loc_1403047D5

loc_14030484A:                          ; CODE XREF: sub_140304778+54↑j
                cmp     ebx, 1
                jz      short loc_140304872
                mov     eax, [rcx+8]
                test    al, 4
                jnz     short loc_140304872
                test    dword ptr [r14+74h], 400h
                jnz     short loc_140304872
                mov     rax, cr8
                cmp     al, 2
                jz      short loc_140304872
                mov     eax, cs:dword_140CFC400
                test    al, 30h
                jnz     short loc_140304874

loc_140304872:                          ; CODE XREF: sub_140304778+D5↑j
                                        ; sub_140304778+DC↑j ...
                xor     ebx, ebx

loc_140304874:                          ; CODE XREF: sub_140304778+F8↑j
                and     [rbp+57h+var_2C], 0
                lea     rax, [rbp+57h+var_28]
                mov     [rbp+57h+var_20], rax
                lea     rax, [rbp+57h+var_28]
                mov     [rbp+57h+var_28], rax
                mov     [rbp+57h+var_38], rcx
                mov     [rbp+57h+var_30], 107h
                mov     [rbp+57h+var_2E], 6
                mov     dword ptr [rbp+57h+var_40+4], ebx
                test    ebx, ebx
                jz      short loc_1403048AE
                mov     edx, 0Fh
                mov     rcx, r14
                call    KeSetPriorityThread
                mov     esi, eax
                jmp     short loc_1403048B1
; ---------------------------------------------------------------------------

loc_1403048AE:                          ; CODE XREF: sub_140304778+123↑j
                or      esi, 0FFFFFFFFh

loc_1403048B1:                          ; CODE XREF: sub_140304778+134↑j
                xor     edi, edi
                mov     dword ptr [rbp+57h+var_40], esi
                test    ebx, ebx
                jz      short loc_14030492B

loc_1403048BA:                          ; CODE XREF: sub_140304778+184↓j
                lea     rax, [rbp+57h+var_40]
                xor     r9d, r9d
                mov     [rsp+0A0h+var_70], rax
                lea     rcx, [rbp+57h+arg_8]
                lea     rax, sub_1402FE040
                xor     r8d, r8d
                mov     [rsp+0A0h+var_78], rax
                mov     edx, 1FFFFFh
                and     [rsp+0A0h+var_80], 0
                call    PsCreateSystemThread
                test    eax, eax
                js      short loc_140304900
                mov     rcx, [rbp+57h+arg_8]
                xor     edx, edx
                call    ObCloseHandle
                inc     edi
                cmp     edi, ebx
                jb      short loc_1403048BA
                jmp     short loc_14030491D
; ---------------------------------------------------------------------------

loc_140304900:                          ; CODE XREF: sub_140304778+173↑j
                sub     ebx, edi
                mov     eax, ebx
                neg     eax
                lock xadd dword ptr [rbp+57h+var_40+4], eax
                cmp     eax, ebx
                jnz     short loc_14030491D
                mov     edx, 1
                lea     rcx, [rbp+57h+var_30]
                call    sub_1402FDDC0

loc_14030491D:                          ; CODE XREF: sub_140304778+186↑j
                                        ; sub_140304778+195↑j
                test    ebx, ebx
                jz      short loc_14030492B
                mov     edx, esi
                mov     rcx, r14
                call    KeSetPriorityThread

loc_14030492B:                          ; CODE XREF: sub_140304778+140↑j
                                        ; sub_140304778+1A7↑j
                test    edi, edi
                jz      short loc_14030493C
                xor     edx, edx
                lea     rcx, [rbp+57h+var_30]
                call    sub_1403245A8
                jmp     short loc_140304945
; ---------------------------------------------------------------------------

loc_14030493C:                          ; CODE XREF: sub_140304778+1B5↑j
                lea     rcx, [rbp+57h+var_40]
                call    sub_1402FE040

loc_140304945:                          ; CODE XREF: sub_140304778+1C2↑j
                lea     r11, [rsp+0A0h+var_10]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140304778   endp

byte_14030495E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400D3F2C↑o
; Exported entry 1232. KeQueryActiveGroupCount

; =============== S U B R O U T I N E =======================================


