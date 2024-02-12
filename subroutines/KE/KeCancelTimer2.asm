KeCancelTimer2  proc near               ; CODE XREF: sub_1402AF7BC+88↑p
                                        ; ExCancelTimer+1B↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404501A8 SIZE 000000E4 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r14d, r14d
                mov     rbx, rcx
                xor     sil, sil
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                lea     ecx, [r14+2]
                mov     ebp, ecx
                jnz     loc_1404501A8
                xor     r15b, r15b
                xor     r13d, r13d

loc_1402B68F1:                          ; CODE XREF: KeCancelTimer2+1998FF↓j
                mov     rdi, cr8
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404501B4

loc_1402B690B:                          ; CODE XREF: KeCancelTimer2+199906↓j
                                        ; KeCancelTimer2+199910↓j ...
                mov     rcx, rbx
                call    sub_1402AFC4C
                test    al, al
                jnz     short loc_1402B694A
                mov     rcx, rbx
                call    sub_1402AFBFC
                test    al, al
                jz      short loc_1402B698A
                mov     rcx, rbx
                call    sub_1402B6D60
                lea     rcx, unk_140D23600
                call    KeReleaseSpinLockFromDpcLevel

loc_1402B6937:                          ; CODE XREF: KeCancelTimer2+E6↓j
                xor     ebp, ebp
                mov     sil, 1

loc_1402B693C:                          ; CODE XREF: KeCancelTimer2+DE↓j
                mov     r8d, ebp
                mov     edx, r14d
                mov     rcx, rbx
                call    sub_1402B6BB4

loc_1402B694A:                          ; CODE XREF: KeCancelTimer2+65↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404501F5

loc_1402B6958:                          ; CODE XREF: KeCancelTimer2+199947↓j
                                        ; KeCancelTimer2+199953↓j ...
                movzx   eax, dil
                mov     cr8, rax
                test    r15b, r15b
                jnz     loc_140450258

loc_1402B6969:                          ; CODE XREF: KeCancelTimer2+1999AB↓j
                                        ; KeCancelTimer2+1999D7↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B698A:                          ; CODE XREF: KeCancelTimer2+71↑j
                test    byte ptr [rbx+1], 0Ah
                jz      short loc_1402B693C
                mov     r14d, 4
                jmp     short loc_1402B6937
KeCancelTimer2  endp

; ---------------------------------------------------------------------------
algn_1402B6998:                         ; DATA XREF: .rdata:0000000140065C98↑o
                                        ; .pdata:00000001400D0AB8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=80h

sub_1402B69A0   proc near               ; CODE XREF: ExDeleteTimer+49↑p
                                        ; sub_140578B10+120↓p ...

var_160         = dword ptr -160h
var_158         = qword ptr -158h
var_150         = byte ptr -150h
var_14F         = byte ptr -14Fh
var_14E         = byte ptr -14Eh
var_14D         = byte ptr -14Dh
var_14C         = byte ptr -14Ch
var_148         = dword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F0          = dword ptr -0F0h
var_EC          = byte ptr -0ECh
var_40          = qword ptr -40h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014045028C SIZE 000002AC BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-50h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+80h+var_40], rax
                mov     [rsp+180h+var_14F], r8b
                mov     rdi, rcx
                mov     [rsp+180h+var_14E], dl
                lea     rcx, [rbp+80h+var_F0]
                xor     edx, edx
                mov     r8d, 0A8h
                mov     rsi, r9
                call    memset
                xor     edx, edx
                mov     [rsp+180h+var_148], 20h ; ' '
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                xorps   xmm0, xmm0
                mov     [rsp+180h+var_130], rdx
                mov     r15d, edx
                mov     [rsp+180h+var_128], rdx
                mov     r14d, edx
                lea     ecx, [rdx+1]
                mov     [rsp+180h+var_120], rdx
                movups  [rsp+180h+var_118], xmm0
                mov     [rsp+180h+var_140], rdx
                movups  [rsp+180h+var_108], xmm0
                mov     [rsp+180h+var_150], dl
                mov     [rsp+180h+var_14D], dl
                jnz     loc_14045028C
                mov     r13b, dl

loc_1402B6A39:                          ; CODE XREF: sub_1402B69A0+199907↓j
                mov     r10, 7E35C6C7F3DD7277h
                test    rsi, rsi
                jnz     loc_1402B6B56

loc_1402B6A4C:                          ; CODE XREF: sub_1402B69A0+1FC↓j
                mov     rbx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404502EC

loc_1402B6A6B:                          ; CODE XREF: sub_1402B69A0+19994E↓j
                                        ; sub_1402B69A0+199957↓j ...
                mov     rcx, rdi
                call    sub_1402AFC4C
                mov     [rsp+180h+var_14C], al
                test    al, al
                jnz     loc_1404503F6
                test    rsi, rsi
                jnz     loc_1402B6BA1

loc_1402B6A88:                          ; CODE XREF: sub_1402B69A0+209↓j
                cmp     [rsp+180h+var_14E], 0
                jz      short loc_1402B6AA9
                mov     rcx, rdi
                call    sub_1402AFBFC
                test    al, al
                jnz     loc_1402B6B2F
                test    byte ptr [rdi+1], 0Ah
                jnz     loc_14045032B

loc_1402B6AA9:                          ; CODE XREF: sub_1402B69A0+ED↑j
                mov     r14d, 1
                lea     esi, [r14+5]

loc_1402B6AB3:                          ; CODE XREF: sub_1402B69A0+1B1↓j
                test    r13b, r13b
                jnz     loc_140450338

loc_1402B6ABC:                          ; CODE XREF: sub_1402B69A0+1999A8↓j
                mov     edx, [rsp+180h+var_148]
                mov     r8d, esi
                mov     rcx, rdi
                call    sub_1402B6BB4
                mov     sil, al
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14045034D

loc_1402B6ADC:                          ; CODE XREF: sub_1402B69A0+1999B0↓j
                                        ; sub_1402B69A0+1999BC↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     r15b, [rsp+180h+var_14F]
                test    r15b, r15b
                jz      short loc_1402B6AF6
                test    sil, sil
                jz      loc_1404503B0

loc_1402B6AF6:                          ; CODE XREF: sub_1402B69A0+14B↑j
                                        ; sub_1402B69A0+199A51↓j ...
                mov     r14b, [rsp+180h+var_150]
                test    r13b, r13b
                jnz     loc_14045045D

loc_1402B6B04:                          ; CODE XREF: sub_1402B69A0+199AC2↓j
                                        ; sub_1402B69A0+199B93↓j
                mov     al, r14b
                mov     rcx, [rbp+80h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+180h+arg_8]
                add     rsp, 150h
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

loc_1402B6B2F:                          ; CODE XREF: sub_1402B69A0+F9↑j
                mov     rcx, rdi
                call    sub_1402B6D60
                lea     rcx, unk_140D23600
                call    KeReleaseSpinLockFromDpcLevel

loc_1402B6B43:                          ; CODE XREF: sub_1402B69A0+199993↓j
                mov     esi, 4
                lea     r14d, [rsi-3]
                mov     [rsp+180h+var_150], r14b
                jmp     loc_1402B6AB3
; ---------------------------------------------------------------------------

loc_1402B6B56:                          ; CODE XREF: sub_1402B69A0+A6↑j
                mov     r8, [rsi]
                mov     r9, [rsi+8]
                test    r13b, r13b
                jnz     loc_1404502AC

loc_1402B6B66:                          ; CODE XREF: sub_1402B69A0+19990F↓j
                                        ; sub_1402B69A0+199947↓j
                mov     rax, cs:qword_140CFC808
                mov     r14, cs:qword_140CFCA10
                mov     ecx, eax
                mov     r15, r14
                xor     r14, r9
                xor     r15, r8
                bswap   r15
                xor     r15, rdi
                bswap   r14
                ror     r15, cl
                xor     r14, rdi
                ror     r14, cl
                xor     r15, rax
                xor     r14, rax
                mov     ecx, 1
                jmp     loc_1402B6A4C
; ---------------------------------------------------------------------------

loc_1402B6BA1:                          ; CODE XREF: sub_1402B69A0+E2↑j
                mov     [rdi+70h], r15
                mov     [rdi+78h], r14
                jmp     loc_1402B6A88
; } // starts at 1402B69A0
sub_1402B69A0   endp

; ---------------------------------------------------------------------------
byte_1402B6BAE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140065CD0↑o
                                        ; .pdata:00000001400D0AC4↑o

; =============== S U B R O U T I N E =======================================


sub_1402B6BB4   proc near               ; CODE XREF: sub_1402AEF60+3B2↑p
                                        ; KeCancelTimer2+95↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140450538 SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, r8d
                mov     r9d, r8d
                not     r9d
                mov     edi, r8d
                and     r9d, 1
                xor     r11b, r11b
                add     r9d, 1Eh
                mov     esi, edx
                mov     edx, [rcx]
                mov     r10, rcx
                shl     r9d, 7
                mov     ebx, r9d
                and     ebx, 0FFFFF0FFh
                and     al, 2
                mov     eax, edx
                cmovz   ebx, r9d
                shl     esi, 8
                not     ebx
                mov     r8d, ebx
                and     r8d, edx
                or      r8d, esi
                lock cmpxchg [rcx], r8d
                cmp     edx, eax
                jnz     loc_140450538

loc_1402B6C11:                          ; CODE XREF: sub_1402B6BB4+199998↓j
                test    dil, 4
                jnz     short loc_1402B6C2B

loc_1402B6C17:                          ; CODE XREF: sub_1402B6BB4+85↓j
                                        ; sub_1402B6BB4+92↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     al, r11b
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B6C2B:                          ; CODE XREF: sub_1402B6BB4+61↑j
                and     r8d, 3F00h
                cmp     r8d, 2000h
                jnz     short loc_1402B6C17
                mov     rcx, r10
                call    sub_1402B6C50
                mov     r11b, 1
                jmp     short loc_1402B6C17
sub_1402B6BB4   endp

; ---------------------------------------------------------------------------
algn_1402B6C48:                         ; DATA XREF: .rdata:0000000140065CF4↑o
                                        ; .pdata:00000001400D0AD0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402B6C50   proc near               ; CODE XREF: sub_1402AEF60+461↑p
                                        ; sub_1402B6BB4+8A↑p ...

var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140450552 SIZE 00000170 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_30], rax
                xorps   xmm0, xmm0
                xor     r12d, r12d
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                mov     rsi, rcx
                movups  [rsp+98h+var_50], xmm0
                movups  [rsp+98h+var_40], xmm0
                jnz     loc_140450552
                xor     r14b, r14b

loc_1402B6C9B:                          ; CODE XREF: sub_1402B6C50+199909↓j
                mov     rdx, cs:qword_140CFC808
                xor     edi, edi
                mov     r8, cs:qword_140CFCA10
                mov     rbx, rdx
                xor     rbx, [rcx+70h]
                mov     ecx, edx
                rol     rbx, cl
                xor     rbx, rsi
                bswap   rbx
                xor     rbx, r8
                jnz     short loc_1402B6CF2

loc_1402B6CC2:                          ; CODE XREF: sub_1402B6C50+FE↓j
                test    r14b, r14b
                jnz     loc_140450617

loc_1402B6CCB:                          ; CODE XREF: sub_1402B6C50+199A6D↓j
                mov     rcx, [rsp+98h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_28]
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
                align 2

loc_1402B6CF2:                          ; CODE XREF: sub_1402B6C50+70↑j
                mov     rdi, rdx
                xor     rdi, [rsi+78h]
                rol     rdi, cl
                xor     rdi, rsi
                bswap   rdi
                xor     rdi, r8
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      r15, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14045055E

loc_1402B6D24:                          ; CODE XREF: sub_1402B6C50+199910↓j
                                        ; sub_1402B6C50+19991A↓j ...
                test    r14b, r14b
                jnz     loc_14045059F

loc_1402B6D2D:                          ; CODE XREF: sub_1402B6C50+19995F↓j
                mov     rcx, rdi
                mov     rax, rbx
                call    sub_1404079D0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404505B4

loc_1402B6D46:                          ; CODE XREF: sub_1402B6C50+199966↓j
                                        ; sub_1402B6C50+199972↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                jmp     loc_1402B6CC2
; } // starts at 1402B6C50
sub_1402B6C50   endp

; ---------------------------------------------------------------------------
algn_1402B6D53:                         ; DATA XREF: .rdata:0000000140065D28↑o
                                        ; .pdata:00000001400D0ADC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B6D60   proc near               ; CODE XREF: KeSetTimer2+20F↑p
                                        ; sub_1402AFC80+2B4↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404506C2 SIZE 0000001A BYTES

                mov     rax, rsp
                sub     rsp, 48h

loc_1402B6D67:                          ; DATA XREF: .rdata:0000000140065D44↑o
                                        ; .rdata:0000000140065D70↑o ...
                mov     [rax+10h], rbx
                lea     r10, cs:140000000h

loc_1402B6D72:                          ; DATA XREF: .rdata:0000000140065D70↑o
                                        ; .rdata:0000000140065D80↑o ...
                mov     [rax+18h], rbp
                mov     rbx, rcx
                mov     [rax+20h], rsi
                lea     rsi, [rcx+82h]
                mov     [rax-8], rdi
                xor     edi, edi
                mov     [rax-10h], r12
                xor     r12d, r12d
                mov     [rax-20h], r14
                xor     ebp, ebp
                mov     [rax-18h], r13
                mov     [rax-28h], r15
                lea     r14d, [r12+48h]
                lea     r9, [r12-1]

loc_1402B6DA9:                          ; CODE XREF: sub_1402B6D60+E8↓j
                movzx   eax, byte ptr [rsi]
                test    al, 10h
                jnz     loc_1402B6E38
                and     al, 7
                movzx   eax, al
                lea     rcx, [rax+rax*2]
                mov     eax, edi
                inc     rax
                lea     r15, ds:0C31B60h[rcx*8]
                add     r15, r10
                lea     rax, [rax+rax*2]
                mov     rcx, [r15+8]
                lea     rax, [rbx+rax*8]
                mov     [rsp+48h+arg_0], rax
                test    cl, 1
                jnz     loc_1402B6EC7
                mov     r13, rcx

loc_1402B6DEA:                          ; CODE XREF: sub_1402B6D60+170↓j
                                        ; sub_1402B6D60+192↓j
                mov     rdx, rax
                mov     rcx, r15
                call    RtlRbRemoveNode
                cmp     r13, [rsp+48h+arg_0]
                jnz     short loc_1402B6E2A
                mov     rax, [r15+8]
                mov     r12d, 1
                test    r12b, al
                jnz     loc_1402B6ED5
                mov     rcx, rax

loc_1402B6E12:                          ; CODE XREF: sub_1402B6D60+183↓j
                test    rcx, rcx
                jz      loc_1402B6F25
                mov     rax, r14
                sub     rax, rbp
                mov     rcx, [rax+rcx-18h]
                mov     [r15+10h], rcx

loc_1402B6E2A:                          ; CODE XREF: sub_1402B6D60+9A↑j
                mov     r9, 0FFFFFFFFFFFFFFFFh

loc_1402B6E31:                          ; CODE XREF: sub_1402B6D60+1D0↓j
                lea     r10, cs:140000000h

loc_1402B6E38:                          ; CODE XREF: sub_1402B6D60+4E↑j
                inc     edi
                add     r14, 8
                inc     rsi
                add     rbp, 18h
                cmp     edi, 2
                jb      loc_1402B6DA9
                mov     r15, [rsp+48h+var_28]
                test    r12d, r12d
                mov     r12, [rsp+48h+var_10]
                mov     r14, [rsp+48h+var_20]
                mov     r13, [rsp+48h+var_18]
                mov     rdi, [rsp+48h+var_8]
                mov     rsi, [rsp+48h+arg_18]
                mov     rbp, [rsp+48h+arg_10]
                jz      short loc_1402B6EB1

loc_1402B6E76:                          ; DATA XREF: .pdata:00000001400D0B00↑o
                                        ; .pdata:00000001400D0B0C↑o
                mov     rax, [rbx+48h]
                cmp     cs:qword_140C31BD8, rax
                jnz     short loc_1402B6EB1
                mov     rax, r9
                lea     rdx, qword_140C31B70
                mov     r8d, 5

loc_1402B6E93:                          ; CODE XREF: sub_1402B6D60+148↓j
                mov     rcx, rax
                mov     rax, [rdx]
                cmp     rax, rcx
                lea     rdx, [rdx+18h]
                cmovnb  rax, rcx
                sub     r8, 1
                jnz     short loc_1402B6E93
                mov     cs:qword_140C31BD8, rax

loc_1402B6EB1:                          ; CODE XREF: sub_1402B6D60+114↑j
                                        ; sub_1402B6D60+121↑j
                movzx   eax, byte ptr [rbx+81h]
                mov     rbx, [rsp+48h+arg_8]
                test    al, 4
                jnz     short loc_1402B6EF7

loc_1402B6EC1:                          ; CODE XREF: sub_1402B6D60+1A4↓j
                                        ; sub_1402B6D60+1BE↓j ...
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B6EC7:                          ; CODE XREF: sub_1402B6D60+81↑j
                                        ; DATA XREF: .pdata:00000001400D0B18↑o ...
                cmp     rcx, 1
                jnz     short loc_1402B6EE8
                xor     r13d, r13d
                jmp     loc_1402B6DEA
; ---------------------------------------------------------------------------

loc_1402B6ED5:                          ; CODE XREF: sub_1402B6D60+A9↑j
                cmp     rax, r12
                jz      short loc_1402B6F25
                mov     rcx, r15
                or      rcx, r12
                xor     rcx, rax
                jmp     loc_1402B6E12
; ---------------------------------------------------------------------------

loc_1402B6EE8:                          ; CODE XREF: sub_1402B6D60+16B↑j
                mov     r13, r15
                or      r13, 1
                xor     r13, rcx
                jmp     loc_1402B6DEA
; ---------------------------------------------------------------------------

loc_1402B6EF7:                          ; CODE XREF: sub_1402B6D60+15F↑j
                                        ; DATA XREF: .pdata:00000001400D0B24↑o ...
                lock xadd cs:dword_140C31B40, r9d
                cmp     r9d, 1
                jnz     short loc_1402B6EC1
                mov     eax, cs:dword_140C314C0
                mov     rax, ds:rva qword_140CFDCC0[r10+rax*8]
                mov     rcx, [rax+84B8h]
                test    rcx, rcx
                jz      short loc_1402B6EC1
                jmp     loc_1404506C2
; ---------------------------------------------------------------------------

loc_1402B6F25:                          ; CODE XREF: sub_1402B6D60+B5↑j
                                        ; sub_1402B6D60+178↑j
                                        ; DATA XREF: ...
                mov     r9, 0FFFFFFFFFFFFFFFFh
                mov     [r15+10h], r9
                jmp     loc_1402B6E31
sub_1402B6D60   endp

; ---------------------------------------------------------------------------
algn_1402B6F35:                         ; DATA XREF: .pdata:00000001400D0B3C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402B6F40   proc near               ; DATA XREF: .rdata:0000000140065E44↑o
                                        ; .pdata:00000001400D0B48↑o ...

var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_10          = qword ptr  40h

; FUNCTION CHUNK AT 00000001404506DC SIZE 00000129 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                and     qword ptr [r11-50h], 0
                xor     eax, eax
                mov     [rbp+var_10], rax
                xorps   xmm0, xmm0
                movups  [rbp+var_20], xmm0
                mov     rax, gs:188h
                mov     r13b, dl
                mov     r8, cs:qword_140CFC9B0
                mov     edx, 1
                and     [rbp+arg_10], 0
                mov     r9b, [rax+232h]
                lea     rax, [rbp+arg_10]
                mov     [r11-58h], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      loc_1402B706D
                mov     rsi, [rbp+arg_10]
                lea     r14, [rsi+60h]
                mov     rcx, r14
                call    KeAcquireSpinLockRaiseToDpc
                mov     r15, [rsi+58h]
                movzx   edi, al
                test    r15, r15
                jz      short loc_1402B6FD5
                mov     edx, 746C6644h
                mov     rcx, r15
                call    ObfReferenceObjectWithTag

loc_1402B6FD5:                          ; CODE XREF: sub_1402B6F40+86↑j
                mov     rcx, r14
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404506DC

loc_1402B6FEF:                          ; CODE XREF: sub_1402B6F40+19979E↓j
                                        ; sub_1402B6F40+1997AA↓j ...
                mov     cr8, rdi
                test    r15, r15
                jz      loc_1402B70B8
                lea     rcx, [r15+40h]
                lea     rdx, [rbp+var_20]
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, r14
                call    KeAcquireSpinLockRaiseToDpc
                movzx   edi, al
                mov     al, [rsi+68h]
                test    al, al
                jz      loc_1402B70BF
                mov     rcx, [rbp+arg_10]
                mov     r8b, dil
                mov     dl, r13b
                call    sub_1402B71D8
                test    al, al
                jz      short loc_1402B708C

loc_1402B7032:                          ; CODE XREF: sub_1402B6F40+173↓j
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+var_10]
                test    eax, eax
                jnz     loc_1404507A1

loc_1402B704D:                          ; CODE XREF: sub_1402B6F40+199863↓j
                                        ; sub_1402B6F40+19986F↓j ...
                mov     cr8, rdi
                mov     edi, 746C6644h
                mov     rcx, r15
                mov     edx, edi
                call    ObfDereferenceObjectWithTag
                mov     rcx, [rbp+arg_10]
                mov     edx, edi
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx

loc_1402B706D:                          ; CODE XREF: sub_1402B6F40+66↑j
                                        ; sub_1402B6F40+17D↓j
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402B708C:                          ; CODE XREF: sub_1402B6F40+F0↑j
                mov     al, [rsi+68h]
                mov     ecx, 103h
                test    al, al
                cmovnz  ebx, ecx

loc_1402B7099:                          ; CODE XREF: sub_1402B6F40+184↓j
                mov     rcx, r14
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14045073E

loc_1402B70AF:                          ; CODE XREF: sub_1402B6F40+199800↓j
                                        ; sub_1402B6F40+19980C↓j ...
                mov     cr8, rdi
                jmp     loc_1402B7032
; ---------------------------------------------------------------------------

loc_1402B70B8:                          ; CODE XREF: sub_1402B6F40+B6↑j
                mov     eax, 0C0000120h
                jmp     short loc_1402B706D
; ---------------------------------------------------------------------------

loc_1402B70BF:                          ; CODE XREF: sub_1402B6F40+D9↑j
                mov     ebx, 0C0000120h
                jmp     short loc_1402B7099
sub_1402B6F40   endp

; ---------------------------------------------------------------------------
algn_1402B70C6:                         ; DATA XREF: .rdata:0000000140065E44↑o
                                        ; .pdata:00000001400D0B48↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402B70D0   proc near               ; DATA XREF: .rdata:0000000140065E70↑o
                                        ; .pdata:00000001400D0B54↑o ...

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140450806 SIZE 0000012C BYTES

                cmp     r9, 1
                jnz     locret_1402B71CD
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     rdi, [rdx+60h]
                xor     eax, eax
                mov     rcx, rdi
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                mov     rsi, rdx
                call    KeAcquireSpinLockRaiseToDpc
                mov     rbx, [rsi+58h]
                movzx   ebp, al
                test    rbx, rbx
                jz      short loc_1402B7129
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag

loc_1402B7129:                          ; CODE XREF: sub_1402B70D0+4A↑j
                mov     rcx, rdi
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                or      r14, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_140450806

loc_1402B7143:                          ; CODE XREF: sub_1402B70D0+199738↓j
                                        ; sub_1402B70D0+199744↓j ...
                mov     cr8, rbp
                test    rbx, rbx
                jz      short loc_1402B71B3
                lea     rcx, [rbx+40h]
                lea     rdx, [rsp+48h+var_28]
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rdi
                call    KeAcquireSpinLockRaiseToDpc
                mov     dl, [rsi+68h]
                movzx   ebp, al
                test    dl, dl
                jz      loc_140450869
                mov     r8b, bpl
                mov     dl, 1
                mov     rcx, rsi
                call    sub_1402B71D8
                test    al, al
                jz      loc_140450869

loc_1402B7185:                          ; CODE XREF: sub_1402B70D0+1997F8↓j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404508CD

loc_1402B71A2:                          ; CODE XREF: sub_1402B70D0+1997FF↓j
                                        ; sub_1402B70D0+19980B↓j ...
                mov     cr8, rdi
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag

loc_1402B71B3:                          ; CODE XREF: sub_1402B70D0+7A↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14

locret_1402B71CD:                       ; CODE XREF: sub_1402B70D0+4↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B70D0   endp

byte_1402B71CF  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140065E70↑o
                                        ; .pdata:00000001400D0B54↑o

; =============== S U B R O U T I N E =======================================


sub_1402B71D8   proc near               ; CODE XREF: sub_1402B6F40+E9↑p
                                        ; sub_1402B70D0+A8↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140450932 SIZE 00000064 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, [rcx+50h]
                mov     rbx, rcx
                movzx   edi, r8b
                mov     sil, dl
                lea     rcx, [r14-30h]
                call    sub_14023FE50
                xor     ecx, ecx
                lea     rdx, word_140C25940
                cmp     rax, rdx
                mov     rdx, rbx
                cmovnz  rcx, rax
                call    sub_1402B7304
                mov     rbp, [rbx+58h]
                test    al, al
                jz      short loc_1402B728D

loc_1402B7228:                          ; CODE XREF: sub_1402B71D8+C7↓j
                and     qword ptr [rbx+58h], 0
                lea     rcx, [rbx+60h]
                mov     byte ptr [rbx+68h], 0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140450932

loc_1402B7248:                          ; CODE XREF: sub_1402B71D8+19975C↓j
                                        ; sub_1402B71D8+199768↓j ...
                mov     cr8, rdi
                mov     edi, 746C6644h
                mov     rcx, r14
                mov     edx, edi
                call    ObfDereferenceObjectWithTag
                mov     edx, edi
                mov     rcx, rbp
                call    ObfDereferenceObjectWithTag
                mov     edx, edi
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     al, 1

loc_1402B7271:                          ; CODE XREF: sub_1402B71D8+CB↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B728D:                          ; CODE XREF: sub_1402B71D8+4E↑j
                test    sil, sil
                jz      short loc_1402B72A1
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_140357628
                test    al, al
                jnz     short loc_1402B7228

loc_1402B72A1:                          ; CODE XREF: sub_1402B71D8+B8↑j
                xor     al, al
                jmp     short loc_1402B7271
sub_1402B71D8   endp

; ---------------------------------------------------------------------------
byte_1402B72A5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140065E9C↑o
                                        ; .pdata:00000001400D0B60↑o

; =============== S U B R O U T I N E =======================================


sub_1402B72AC   proc near               ; CODE XREF: sub_140216560+402↑p
                                        ; sub_1402B5AA0+52A↑p ...
                push    rbx
                sub     rsp, 20h
                test    dword ptr [rcx+138h], 400h
                mov     rbx, rcx
                jz      short loc_1402B72EE
                mov     rcx, [rcx+10h]
                lea     rdx, [rbx+208h]
                mov     rcx, [rcx+8]
                call    sub_1402B7304
                test    al, al
                jz      short loc_1402B72EE
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                btr     dword ptr [rbx+138h], 0Ah

loc_1402B72EE:                          ; CODE XREF: sub_1402B72AC+13↑j
                                        ; sub_1402B72AC+2B↑j
                btr     dword ptr [rbx+138h], 9
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B72AC   endp

byte_1402B72FD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0B6C↑o

; =============== S U B R O U T I N E =======================================


sub_1402B7304   proc near               ; CODE XREF: sub_1402B6740+92↑p
                                        ; sub_1402B71D8+43↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140450996 SIZE 000000A5 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rsi, rcx
                xor     r14b, r14b
                mov     rdi, cr8
                mov     r12d, 2
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_140450996

loc_1402B7345:                          ; CODE XREF: sub_1402B7304+199694↓j
                                        ; sub_1402B7304+19969E↓j ...
                mov     rcx, rsi
                call    sub_1402AF4F0
                mov     al, [rbx+11h]
                cmp     al, 4
                jnz     short loc_1402B7374
                mov     rcx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     short loc_1402B73AE
                cmp     [rax], rbx
                jnz     short loc_1402B73AE
                mov     [rax], rcx
                mov     r14b, 1
                mov     [rcx+8], rax
                mov     byte ptr [rbx+11h], 5

loc_1402B7374:                          ; CODE XREF: sub_1402B7304+4E↑j
                lock and dword ptr [rsi], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404509D7

loc_1402B7389:                          ; CODE XREF: sub_1402B7304+1996D5↓j
                                        ; sub_1402B7304+1996E1↓j ...
                movzx   ecx, dil
                mov     cr8, rcx
                mov     rbx, [rsp+38h+arg_0]
                mov     al, r14b
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B73AE:                          ; CODE XREF: sub_1402B7304+5B↑j
                                        ; sub_1402B7304+60↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1402B7304   endp

; ---------------------------------------------------------------------------
algn_1402B73B5:                         ; DATA XREF: .rdata:0000000140065EC8↑o
                                        ; .pdata:00000001400D0B78↑o
                align 20h
; Exported entry 410. FsRtlCreateSectionForDataScan

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

