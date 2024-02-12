MmCopyMemory    proc near               ; DATA XREF: .rdata:000000014008120C↑o
                                        ; .pdata:00000001400D75BC↑o

var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = byte ptr -0C0h
var_A8          = qword ptr -0A8h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014047DF9C SIZE 0000015E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                mov     r13, [rbp+60h+arg_20]
                mov     r14, r8
                mov     rbx, rdx
                mov     [rsp+160h+var_118], rcx
                mov     rsi, rcx
                mov     [rsp+160h+var_130], r13
                xor     edx, edx
                mov     [rsp+160h+var_108], r9d
                mov     r8d, 80h
                lea     rcx, [rbp+60h+var_C0]
                mov     edi, r9d
                call    memset
                and     [rsp+160h+var_100], 0
                and     qword ptr [r13+0], 0
                test    edi, edi
                jz      loc_14047E0F0
                test    edi, 0FFFFFFFCh
                jnz     loc_14047E0F0
                lea     eax, [rdi-1]
                test    edi, eax
                jnz     loc_14047E0F0
                mov     rax, cr8
                cmp     al, 1
                ja      loc_14047E0F0
                mov     eax, edi
                and     eax, 1
                mov     [rsp+160h+var_128], eax
                jnz     loc_14047DF9C
                lea     rax, [rbx+r14]
                cmp     rax, rbx
                jbe     loc_1403445C6
                mov     rcx, 7FFFFFFEFFFFh
                cmp     rbx, rcx
                jbe     loc_14034459F
                mov     rax, 0FFFF800000000000h
                cmp     rbx, rax
                jb      loc_1403445C6

loc_1403443C5:                          ; CODE XREF: MmCopyMemory+139CBF↓j
                mov     rsi, rbx
                lea     r15, [r14+0FFFh]
                and     esi, 0FFFh
                mov     rax, 100000000h
                add     r15, rsi
                shr     r15, 0Ch
                cmp     r15, rax
                jnb     loc_14047DFB4
                mov     rax, gs:188h
                lea     rcx, qword_140C4EDC0
                mov     [rsp+160h+var_E8], rax
                mov     edx, r15d
                mov     rax, [rax+0B8h]
                mov     [rbp+60h+var_E0], rax
                call    sub_1402583E0
                xor     edi, edi
                mov     [rbp+60h+var_D8], rax
                mov     ecx, 1000h
                mov     [rsp+160h+var_110], rax
                sub     rcx, rsi
                mov     r12, r14
                cmp     rcx, r14
                mov     rdx, rax
                cmovbe  r12, rcx
                mov     ecx, [rsp+160h+var_128]
                test    ecx, ecx
                jnz     loc_14047DFBE
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140344447:                          ; CODE XREF: MmCopyMemory+139CD5↓j
                mov     [rsp+160h+var_120], rax
                test    r14, r14
                jz      loc_140344554

loc_140344455:                          ; CODE XREF: MmCopyMemory+2D1↓j
                and     [rsp+160h+var_F0], 0
                and     [rsp+160h+var_F8], 0
                test    ecx, ecx
                jnz     loc_14047DFCA
                lea     rax, [rsp+160h+var_F8]
                mov     rcx, rbx
                lea     r9, [rsp+160h+var_F0]
                mov     [rsp+160h+var_140], rax
                lea     r8, [rsp+160h+var_120]
                lea     rdx, [rbp+60h+var_C0]
                call    sub_1403447F4
                mov     edi, eax
                test    eax, eax
                js      loc_14047DFD2
                mov     r13, [rbp+60h+var_A8]
                cmp     eax, 111h
                jz      loc_14047E09F
                mov     rdx, [rsp+160h+var_110]

loc_1403444A7:                          ; CODE XREF: MmCopyMemory+139CDD↓j
                mov     eax, [rsp+160h+var_108]
                mov     r8, rsi
                mov     rsi, [rsp+160h+var_120]
                mov     r9, r12
                mov     rcx, [rsp+160h+var_118]
                mov     [rsp+160h+var_138], eax
                mov     [rsp+160h+var_140], rdx
                mov     rdx, rsi
                call    sub_1403445D4
                mov     edi, eax
                test    r13, r13
                jz      short loc_14034450D
                lea     rax, [rsi+rsi*2]
                shl     rax, 4
                mov     rcx, 0FFFFFA8000000018h
                add     rax, rcx
                mov     rcx, 7FFFFFFFFFFFFFFFh
                lock and [rax], rcx
                mov     rcx, [rsp+160h+var_F0]
                test    rcx, rcx
                jnz     loc_14047E0D9

loc_140344504:                          ; CODE XREF: MmCopyMemory+139DF1↓j
                lea     rcx, [rbp+60h+var_C0]
                call    sub_14026425C

loc_14034450D:                          ; CODE XREF: MmCopyMemory+1E1↑j
                test    edi, edi
                js      short loc_14034454F

loc_140344511:                          ; CODE XREF: MmCopyMemory+139DC0↓j
                                        ; MmCopyMemory+139DE4↓j
                add     [rsp+160h+var_100], r12
                sub     r14, r12
                add     [rsp+160h+var_118], r12
                add     rbx, r12
                inc     [rsp+160h+var_120]
                mov     eax, 1000h
                mov     rdx, [rsp+160h+var_110]
                cmp     r14, rax
                mov     r12, r14
                cmova   r12, rax
                xor     esi, esi
                test    rdx, rdx
                jz      short loc_14034454A
                add     rdx, 8
                mov     [rsp+160h+var_110], rdx

loc_14034454A:                          ; CODE XREF: MmCopyMemory+24F↑j
                                        ; MmCopyMemory+139DAA↓j
                test    r14, r14
                jnz     short loc_1403445BD

loc_14034454F:                          ; CODE XREF: MmCopyMemory+21F↑j
                                        ; MmCopyMemory+139CE7↓j ...
                mov     r13, [rsp+160h+var_130]

loc_140344554:                          ; CODE XREF: MmCopyMemory+15F↑j
                mov     rdx, [rbp+60h+var_D8]
                test    rdx, rdx
                jz      short loc_14034456C
                mov     r8d, r15d
                lea     rcx, qword_140C4EDC0
                call    sub_14025EFB0

loc_14034456C:                          ; CODE XREF: MmCopyMemory+26B↑j
                mov     rax, [rsp+160h+var_100]
                add     [r13+0], rax
                mov     eax, edi

loc_140344577:                          ; CODE XREF: MmCopyMemory+2CB↓j
                                        ; MmCopyMemory+2DB↓j ...
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_18]
                add     rsp, 130h
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

loc_14034459F:                          ; CODE XREF: MmCopyMemory+BC↑j
                cmp     rax, rcx
                ja      short loc_1403445C6
                mov     r9, r14
                mov     [rsp+160h+var_140], r13
                mov     r8, rsi
                mov     rdx, rbx
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    sub_1403FA3C0
                jmp     short loc_140344577
; ---------------------------------------------------------------------------

loc_1403445BD:                          ; CODE XREF: MmCopyMemory+25D↑j
                mov     ecx, [rsp+160h+var_128]
                jmp     loc_140344455
; ---------------------------------------------------------------------------

loc_1403445C6:                          ; CODE XREF: MmCopyMemory+A9↑j
                                        ; MmCopyMemory+CF↑j ...
                mov     eax, 0C0000018h
                jmp     short loc_140344577
; } // starts at 1403442F0
MmCopyMemory    endp

; ---------------------------------------------------------------------------
byte_1403445CD  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014008120C↑o
                                        ; .pdata:00000001400D75BC↑o

; =============== S U B R O U T I N E =======================================


sub_1403445D4   proc near               ; CODE XREF: MmCopyMemory+1D7↑p
                                        ; DATA XREF: .rdata:0000000140081238↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014047E0FA SIZE 000002B3 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, 0FFFFFFFFFh
                mov     r13, r9
                mov     r15, rdx
                cmp     rdx, rax
                ja      loc_14047E183
                lea     rbx, [rdx+rdx*2]
                add     rbx, rbx
                mov     r14, 0FFFFFA8000000028h
                mov     rax, [r14+rbx*8]
                mov     r12, 4000000000000h
                test    r12, rax
                jz      loc_14047E183
                mov     rcx, 0FFFFFA8000000000h
                mov     ebp, 1
                lea     rsi, [rcx+rbx*8]
                test    [rsp+58h+arg_28], bpl
                jnz     loc_14047E0FA
                mov     dil, 11h

loc_140344657:                          ; CODE XREF: sub_1403445D4+139B35↓j
                test    r12, rax
                jz      loc_14047E10E
                cmp     byte ptr [rsi+23h], 0
                jl      loc_14047E32E
                mov     rcx, rsi
                call    sub_140344778
                test    eax, eax
                jnz     loc_14047E32E
                movzx   r12d, byte ptr [rsi+22h]
                shr     r12d, 6
                cmp     r12d, 3
                jz      loc_14047E18D

loc_14034468D:                          ; CODE XREF: sub_1403445D4+139BC7↓j
                mov     rdx, rsi
                mov     ecx, ebp
                call    sub_1402994FC
                mov     r14, [rsp+58h+arg_20]
                test    r14, r14
                jz      loc_14047E20E
                bts     eax, 1Dh
                mov     rdx, r15
                mov     r8d, eax
                mov     rcx, r14
                call    sub_140280E60
                mov     rcx, r14
                mov     rbx, rax
                xor     ebp, ebp
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047E1A0
                mov     r15, 8000000000000000h

loc_1403446D9:                          ; CODE XREF: sub_1403445D4+139BEB↓j
                                        ; sub_1403445D4:loc_14047E1CD↓j ...
                mov     [r14], rbx
                test    ebp, ebp
                jnz     loc_14047E1FD

loc_1403446E4:                          ; CODE XREF: sub_1403445D4+139C35↓j
                mov     rbx, r14
                shl     rbx, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                sub     rbx, rax
                sar     rbx, 10h

loc_140344700:                          ; CODE XREF: sub_1403445D4+139C57↓j
                add     rbx, [rsp+58h+arg_10]
                mov     r8, r13
                mov     rcx, [rsp+58h+arg_0]
                mov     rdx, rbx
                call    memmove
                test    r14, r14
                jz      loc_14047E292
                mov     rbx, cs:qword_14001D278
                mov     rcx, r14
                xor     ebp, ebp
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047E230

loc_140344737:                          ; CODE XREF: sub_1403445D4+139C71↓j
                                        ; sub_1403445D4+139C96↓j ...
                mov     [r14], rbx
                test    ebp, ebp
                jnz     loc_14047E281

loc_140344742:                          ; CODE XREF: sub_1403445D4+139CB9↓j
                                        ; sub_1403445D4+139CCF↓j
                mov     eax, 3
                cmp     r12d, eax
                jz      loc_14047E2A8

loc_140344750:                          ; CODE XREF: sub_1403445D4+139CE2↓j
                cmp     dil, 11h
                jnz     loc_14047E2BB

loc_14034475A:                          ; CODE XREF: sub_1403445D4+139D55↓j
                xor     eax, eax

loc_14034475C:                          ; CODE XREF: sub_1403445D4+139BB4↓j
                                        ; sub_1403445D4+139DD4↓j
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 20h
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
sub_1403445D4   endp

algn_140344772:                         ; DATA XREF: .rdata:0000000140081238↑o
                                        ; .pdata:00000001400D75C8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140344778   proc near               ; CODE XREF: sub_1403445D4+99↑p
                                        ; sub_140534A38+AC↓p ...
                sub     rsp, 28h
                test    cs:dword_140CFC400, 8000h
                jz      short loc_1403447E5
                mov     rax, [rcx+28h]
                shr     rax, 3Ch
                and     al, 7
                cmp     al, 3
                jnz     short loc_1403447E5
                call    sub_1403F41D8
                test    eax, eax
                jnz     short loc_1403447E5
                mov     r9, [rcx+8]
                test    r9, r9
                jz      short loc_1403447DE
                call    sub_140553538
                test    eax, eax
                jz      short loc_1403447B7
                cmp     r9, 0FFFFFFFFFFFFFFFEh
                jz      short loc_1403447DE

loc_1403447B7:                          ; CODE XREF: sub_140344778+37↑j
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                mov     rcx, 3FFFFFFF78h
                add     rax, rcx
                cmp     r9, rax
                ja      short loc_1403447E5
                mov     rax, rdx
                cmp     r9, rax
                jb      short loc_1403447E5

loc_1403447DE:                          ; CODE XREF: sub_140344778+2E↑j
                                        ; sub_140344778+3D↑j
                mov     eax, 1
                jmp     short loc_1403447E7
; ---------------------------------------------------------------------------

loc_1403447E5:                          ; CODE XREF: sub_140344778+E↑j
                                        ; sub_140344778+1C↑j ...
                xor     eax, eax

loc_1403447E7:                          ; CODE XREF: sub_140344778+6B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140344778   endp

byte_1403447ED  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D75D4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_1403447F4   proc near               ; CODE XREF: MmCopyMemory+194↑p
                                        ; DATA XREF: .rdata:000000014008126C↑o ...

var_140         = qword ptr -140h
var_130         = byte ptr -130h
var_128         = qword ptr -128h
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = dword ptr -118h
var_114         = dword ptr -114h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E0          = qword ptr -0E0h
var_C8          = qword ptr -0C8h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014047E3AE SIZE 000004A3 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-28h]
                sub     rsp, 128h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_50], rax
                mov     rbx, [rbp+60h+arg_20]
                mov     r14, r8
                and     [rsp+160h+var_F0], 0
                mov     r13, rdx
                and     [rsp+160h+var_108], 0
                mov     r15, rcx
                and     [rsp+160h+var_114], 0
                lea     rcx, [rbp+60h+var_E0]
                mov     [rsp+160h+var_110], r8
                xor     edx, edx
                mov     r8d, 88h
                mov     [rsp+160h+var_F8], rbx
                mov     rsi, r9
                mov     [rsp+160h+var_100], r9
                call    memset
                xor     edx, edx
                mov     r8d, 80h
                mov     rcx, r13
                call    memset
                lea     rax, [rbp+60h+var_E0]
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     [r14], rdi
                xor     r9d, r9d
                and     qword ptr [rsi], 0
                xor     r8d, r8d
                and     qword ptr [rbx], 0
                mov     rdx, r15
                xor     ecx, ecx
                mov     [rsp+160h+var_140], rax
                call    sub_14029F150
                lea     esi, [rdi+2]
                mov     rax, r15
                sar     rax, 2Fh
                add     rax, rsi
                cmp     rax, rsi
                ja      loc_14047E847
                mov     rax, 0FFFFF68000000000h
                cmp     r15, rax
                jb      short loc_1403448CF
                mov     rax, 0FFFFF6FFFFFFFFFFh
                cmp     r15, rax
                jbe     loc_14047E847

loc_1403448CF:                          ; CODE XREF: sub_1403447F4+C6↑j
                mov     rcx, 0FFFFFA8000000000h
                mov     rax, rcx
                cmp     r15, rax
                jb      short loc_1403448FA
                mov     rax, rcx
                mov     rcx, 30000000000h
                add     rax, rcx
                cmp     r15, rax
                jb      loc_14047E847

loc_1403448FA:                          ; CODE XREF: sub_1403447F4+EB↑j
                mov     rax, 0FFFF800000000000h
                cmp     r15, rax
                jb      short loc_140344919
                mov     rcx, r15
                call    sub_140344B50
                test    eax, eax
                jnz     loc_14047E847

loc_140344919:                          ; CODE XREF: sub_1403447F4+113↑j
                cmp     r15, cs:qword_140C4F9B8
                jnb     loc_140344B2B

loc_140344926:                          ; CODE XREF: sub_1403447F4+33E↓j
                mov     rcx, r15
                call    sub_140245330
                mov     r8d, eax
                cmp     eax, 8
                jz      loc_14047E42F
                cmp     eax, esi
                jz      loc_14047E436
                cmp     eax, 6
                jz      short loc_140344963
                cmp     eax, 9
                jz      loc_14047E44E
                mov     ecx, esi
                cmp     eax, 0Ch
                jz      short loc_140344968
                cmp     eax, 3
                jz      short loc_140344968
                mov     ecx, 5
                jmp     short loc_140344968
; ---------------------------------------------------------------------------

loc_140344963:                          ; CODE XREF: sub_1403447F4+151↑j
                mov     ecx, 2

loc_140344968:                          ; CODE XREF: sub_1403447F4+161↑j
                                        ; sub_1403447F4+166↑j ...
                call    sub_1402A46FC

loc_14034496D:                          ; CODE XREF: sub_1403447F4+139C4A↓j
                or      dword ptr [r13+4], 4
                xor     r9d, r9d
                mov     rdx, r15
                mov     [rsp+160h+var_140], r13
                mov     rcx, rax
                call    sub_140263DA0
                test    eax, eax
                jz      loc_14047E458
                movups  xmm0, xmmword ptr [r13+18h]
                movsxd  rbx, dword ptr [r13+10h]
                movsd   xmm1, qword ptr [r13+28h]
                movsd   [rbp+60h+var_98], xmm1
                movups  [rbp+60h+var_A8], xmm0
                test    ebx, ebx
                jnz     loc_140344A82
                mov     r12, [rbp+60h+var_C8]

loc_1403449B1:                          ; CODE XREF: sub_1403447F4+139C15↓j
                mov     rcx, r12
                mov     [rsp+160h+var_130], 11h
                xor     ebx, ebx
                call    sub_1402805F0
                mov     [rsp+160h+var_128], rax
                mov     r14, rax
                test    sil, al
                jz      loc_14047E4FF

loc_1403449D1:                          ; CODE XREF: sub_1403447F4+139D72↓j
                lea     rcx, [rsp+160h+var_128]
                mov     rdi, r14
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047E77D

loc_1403449E6:                          ; CODE XREF: sub_1403447F4+139F93↓j
                                        ; sub_1403447F4+139FB0↓j ...
                shr     rdi, 0Ch
                mov     r8, 0FFFFFFFFFh
                and     rdi, r8
                mov     rax, 0FFFFFA8000000028h
                lea     rsi, [rdi+rdi*2]
                shl     rsi, 4
                mov     rax, rax
                mov     rcx, [rsi+rax]
                shr     rcx, 32h
                and     ecx, 1
                jz      loc_14047E82F
                and     [rsp+160h+var_118], ebx
                mov     rax, 0FFFFFA8000000018h
                mov     r14, rax

loc_140344A2E:                          ; CODE XREF: sub_1403447F4+13A036↓j
                lock bts qword ptr [rsi+r14], 3Fh ; '?'
                jb      loc_14047E817

loc_140344A3B:                          ; CODE XREF: sub_1403447F4+32C↓j
                                        ; sub_1403447F4+139DAC↓j ...
                mov     r14, [rsp+160h+var_110]

loc_140344A40:                          ; CODE XREF: sub_1403447F4+34E↓j
                                        ; sub_1403447F4+139C36↓j
                movsd   xmm1, [rbp+60h+var_98]
                movups  xmm0, [rbp+60h+var_A8]
                movups  xmmword ptr [r13+18h], xmm0
                movsd   qword ptr [r13+28h], xmm1
                test    ebx, ebx
                js      loc_14047E839
                mov     [r14], rdi

loc_140344A5F:                          ; CODE XREF: sub_1403447F4+13A04E↓j
                mov     eax, ebx

loc_140344A61:                          ; CODE XREF: sub_1403447F4+139C55↓j
                                        ; sub_1403447F4+139C69↓j ...
                mov     rcx, [rbp+60h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 128h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140344A82:                          ; CODE XREF: sub_1403447F4+1B3↑j
                mov     rcx, [rbp+rbx*8+60h+var_C8]
                call    sub_1402805F0
                lea     rcx, [rsp+160h+var_128]
                mov     [rsp+160h+var_128], rax
                mov     rdi, rax
                call    sub_1402433C0
                mov     r9d, 1FFh
                test    eax, eax
                jnz     loc_14047E462

loc_140344AAC:                          ; CODE XREF: sub_1403447F4+139C78↓j
                                        ; sub_1403447F4+139C95↓j ...
                mov     rcx, [rbp+60h+var_E0]
                mov     r8, 0FFFFFFFFFh
                shr     rdi, 0Ch
                mov     rdx, rsi
                and     rdi, r8
                shr     rcx, 0Ch

loc_140344AC8:                          ; CODE XREF: sub_1403447F4+2EB↓j
                mov     rax, rcx
                shr     rcx, 9
                and     rax, r9
                imul    rax, rdx
                shl     rdx, 9
                add     rdi, rax
                sub     ebx, esi
                jnz     short loc_140344AC8
                cmp     rdi, r8
                ja      short loc_140344B3D
                lea     rsi, [rdi+rdi*2]
                mov     rax, 0FFFFFA8000000028h
                shl     rsi, 4
                mov     rax, rax
                mov     rcx, [rsi+rax]
                shr     rcx, 32h
                and     ecx, 1
                jz      short loc_140344B3D
                and     [rsp+160h+var_11C], ebx
                mov     rax, 0FFFFFA8000000018h
                mov     r14, rax

loc_140344B19:                          ; CODE XREF: sub_1403447F4+139D06↓j
                lock bts qword ptr [rsi+r14], 3Fh ; '?'
                jnb     loc_140344A3B
                jmp     loc_14047E4E7
; ---------------------------------------------------------------------------

loc_140344B2B:                          ; CODE XREF: sub_1403447F4+12C↑j
                cmp     r15, cs:qword_140C4E1E8
                ja      loc_140344926
                jmp     loc_14047E3AE
; ---------------------------------------------------------------------------

loc_140344B3D:                          ; CODE XREF: sub_1403447F4+2F0↑j
                                        ; sub_1403447F4+312↑j
                mov     ebx, 0C0000141h
                jmp     loc_140344A40
; } // starts at 1403447F4
sub_1403447F4   endp

; ---------------------------------------------------------------------------
algn_140344B47:                         ; DATA XREF: .rdata:000000014008126C↑o
                                        ; .pdata:00000001400D75E0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140344B50   proc near               ; CODE XREF: sub_140268AA0+406↑p
                                        ; sub_1403447F4+118↑p ...
                mov     rdx, cs:qword_140C4EA78
                test    rdx, rdx
                jz      short loc_140344B74
                cmp     rcx, rdx
                jb      short loc_140344B74
                mov     rax, cs:qword_140C4EA88
                shl     rax, 1Eh
                add     rax, rdx
                cmp     rcx, rax
                jb      short loc_140344B78

loc_140344B74:                          ; CODE XREF: sub_140344B50+A↑j
                                        ; sub_140344B50+F↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140344B78:                          ; CODE XREF: sub_140344B50+22↑j
                mov     eax, 1
                retn
sub_140344B50   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140344B7F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400D75EC↑o
; Exported entry 1164. KeGenericCallDpc

; =============== S U B R O U T I N E =======================================


