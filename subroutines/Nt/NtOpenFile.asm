NtOpenFile      proc near               ; CODE XREF: sub_140698D38+16A↑p
                                        ; sub_140917668+F5↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = dword ptr -48h
var_18          = dword ptr -18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                mov     r11, rsp
                sub     rsp, 88h
                mov     eax, [rsp+88h+arg_28]
                xor     r10d, r10d
                mov     [r11-10h], r10
                mov     [rsp+88h+var_18], 20h ; ' '
                mov     [r11-20h], r10d
                mov     [r11-28h], r10
                mov     [r11-30h], r10d
                mov     [r11-38h], r10d
                mov     [r11-40h], r10
                mov     [rsp+88h+var_48], eax
                mov     eax, [rsp+88h+arg_20]
                mov     [rsp+88h+var_50], 1
                mov     [rsp+88h+var_58], eax
                mov     [r11-60h], r10d
                mov     [r11-68h], r10
                call    sub_14063FB00
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenFile      endp

algn_1406990B1:                         ; DATA XREF: .pdata:0000000140101D30↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406990C0   proc near               ; CODE XREF: sub_140698D38+26F↑p
                                        ; DATA XREF: .rdata:000000014006D56C↑o ...

var_138         = dword ptr -138h
var_130         = dword ptr -130h
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_118         = dword ptr -118h
var_114         = dword ptr -114h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = dword ptr -0F8h
var_F4          = dword ptr -0F4h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_98          = byte ptr -98h
var_48          = qword ptr -48h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408161EC SIZE 000002C4 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 120h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+158h+var_48], rax
                xor     ebx, ebx
                mov     r9d, edx
                xor     r15b, r15b
                mov     [rsp+158h+var_110], rcx
                mov     r12, r8
                mov     rdi, rcx
                cmp     edx, 128h
                jb      loc_1408161EC
                test    dil, 7
                jnz     loc_1408161F6
                cmp     dword ptr [rcx], 1Eh
                jnz     loc_1408164A6
                cmp     dword ptr [rcx+4], 41434353h
                jnz     loc_1408164A6
                cmp     r9d, 10000000h
                ja      loc_140816200
                cmp     r9d, [rcx+0Ch]
                jnz     loc_14081620A
                cmp     dword ptr [rcx+50h], 1
                ja      loc_14081649C
                mov     r14d, [rcx+58h]
                mov     [rsp+158h+var_F0], r14d
                cmp     r14d, 4000h
                ja      loc_140816492
                mov     esi, [rcx+70h]
                mov     [rsp+158h+var_E8], esi
                cmp     esi, 4000h
                ja      loc_140816492
                mov     r11d, [rcx+60h]
                mov     [rsp+158h+var_100], r11d
                cmp     r11d, 100000h
                ja      loc_140816492
                mov     r10d, [rcx+68h]
                cmp     r10d, 400000h
                ja      loc_140816492
                test    r14d, r14d
                jz      loc_140816488
                test    r11d, r11d
                jz      loc_140816488
                test    r10d, r10d
                jz      loc_140816488
                mov     eax, [rcx+0CCh]
                dec     eax
                cmp     eax, 7
                ja      loc_14081647E
                add     rcx, 10h
                call    sub_14069A084
                test    al, al
                jz      loc_140816214
                mov     edx, [rdi+54h]
                add     rdx, rdi
                mov     [rsp+158h+var_E0], rdx
                test    dl, 3
                jnz     loc_14081621E
                cmp     rdx, rdi
                jb      loc_140816474
                lea     rbp, [rdi+r9]
                mov     [rsp+158h+var_108], rbp
                cmp     rdx, rbp
                jnb     loc_140816474
                mov     eax, r14d
                lea     rcx, [rdx-1]
                shl     rax, 5
                add     rcx, rax
                cmp     rcx, rdi
                jb      loc_14081646A
                cmp     rcx, rbp
                jnb     loc_14081646A
                mov     ecx, [rdi+5Ch]
                add     rcx, rdi
                mov     [rsp+158h+var_D8], rcx
                test    cl, 3
                jnz     loc_140816228
                cmp     rcx, rdi
                jb      loc_140816460
                cmp     rcx, rbp
                jnb     loc_140816460
                lea     rcx, [rcx+r11*8]
                dec     rcx
                cmp     rcx, rdi
                jb      loc_140816456
                cmp     rcx, rbp
                jnb     loc_140816456
                mov     r8d, [rdi+64h]
                add     r8, rdi
                mov     [rsp+158h+var_C8], r8
                test    r8b, 1
                jnz     loc_140816232
                cmp     r8, rdi
                jb      loc_14081644C
                cmp     r8, rbp
                jnb     loc_14081644C
                lea     rcx, [r10-1]
                add     rcx, r8
                cmp     rcx, rdi
                jb      loc_140816442
                cmp     rcx, rbp
                jnb     loc_140816442
                mov     r9d, [rdi+6Ch]
                add     r9, rdi
                mov     [rsp+158h+var_120], r9
                test    r9b, 7
                jnz     loc_14081623C
                cmp     r9, rdi
                jb      loc_140816438
                cmp     r9, rbp
                jnb     loc_140816438
                mov     ecx, [rdi+74h]
                dec     rcx
                add     rcx, r9
                cmp     rcx, rdi
                jb      loc_14081642E
                cmp     rcx, rbp
                jnb     loc_14081642E
                lea     rcx, [rsi+rsi*2]
                shl     rcx, 5
                lea     rax, [r9-1]
                add     rax, rcx
                cmp     rax, rdi
                jb      loc_140816424
                cmp     rax, rbp
                jnb     loc_140816424
                mov     eax, [rdi+7Ch]
                mov     [rsp+158h+var_FC], eax
                cmp     eax, 7
                ja      loc_140816246
                mov     [rsp+158h+var_118], ebx
                mov     r10d, ebx
                lea     r13d, [rbx+1]
                mov     esi, ebx
                mov     eax, 400h
                test    r14d, r14d
                jz      loc_1406995D5
                nop     word ptr [rax+rax+00h]

loc_140699340:                          ; CODE XREF: sub_1406990C0+4EF↓j
                mov     r9d, esi
                shl     r9, 5
                add     r9, rdx
                mov     [rsp+158h+var_D0], r9
                mov     edx, [r9+0Ch]
                add     rdx, r8
                test    dl, 1
                jnz     loc_14081630C
                cmp     rdx, rdi
                jb      loc_140816302
                cmp     rdx, rbp
                jnb     loc_140816302
                mov     r8d, [r9+10h]
                test    r8d, r8d
                jz      loc_1408162F8
                cmp     r8d, eax
                ja      loc_1408162EE
                lea     ecx, ds:2[r8*2]
                lea     rax, [rdx-1]
                add     rax, rcx
                cmp     rax, rdi
                jb      loc_1408162E4
                cmp     rax, rbp
                jnb     loc_1408162E4
                cmp     [rdx+r8*2], bx
                jnz     loc_1408162DA
                mov     edx, [r9+4]
                cmp     edx, 8000h
                ja      loc_1408162D0
                cmp     edx, r11d
                ja      loc_1408162C6
                movsxd  r14, dword ptr [r9]
                sub     r11d, edx
                mov     [rsp+158h+var_114], r11d
                cmp     r14d, 0FFFFFFFFh
                jz      loc_140816250

loc_1406993E4:                          ; CODE XREF: sub_1406990C0+17D192↓j
                cmp     r14d, r10d
                jnz     loc_140816262

loc_1406993ED:                          ; CODE XREF: sub_1406990C0+17D1A6↓j
                mov     r8d, [r9+14h]
                add     r10d, edx
                test    r8d, 7F00h
                mov     [rsp+158h+var_EC], r10d
                mov     [rsp+158h+var_F8], r8d
                setz    cl
                test    r8b, 1
                setz    al
                test    al, cl
                jz      short loc_14069941D
                test    r8b, 0FEh
                jz      loc_140816276

loc_14069941D:                          ; CODE XREF: sub_1406990C0+351↑j
                mov     r11d, r8d
                and     r11d, 1
                mov     [rsp+158h+var_F4], r11d
                jnz     short loc_140699435
                cmp     [r9+8], ebx
                jz      loc_140816280

loc_140699435:                          ; CODE XREF: sub_1406990C0+369↑j
                lea     eax, [r14+rdx]
                mov     [rsp+158h+var_128], ebx
                mov     r10, r14
                mov     r13d, ebx
                mov     edi, ebx
                mov     ecx, ebx
                cmp     r14d, eax
                jge     loc_140699552
                mov     r9, [rsp+158h+var_D8]
                mov     r11, r14
                add     r9, 4
                movsxd  rbp, eax
                lea     r9, [r9+r14*8]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140699470:                          ; CODE XREF: sub_1406990C0+46D↓j
                mov     esi, edi
                test    r11, r11
                js      loc_1408162A8
                cmp     r10d, [rsp+158h+var_100]
                jnb     loc_1408162A8
                cmp     r10d, r14d
                jz      short loc_140699499
                mov     eax, [r9-0Ch]
                cmp     [r9-4], eax
                jbe     loc_14081628A

loc_140699499:                          ; CODE XREF: sub_1406990C0+3C9↑j
                mov     eax, [r9]
                mov     r8d, eax
                shr     r8d, 4
                mov     edx, eax
                and     edx, 1
                jnz     short loc_1406994BA
                mov     ecx, r8d
                and     ecx, 7
                cmp     ecx, [rsp+158h+var_FC]
                ja      loc_140816294

loc_1406994BA:                          ; CODE XREF: sub_1406990C0+3E8↑j
                test    al, 0Eh
                jnz     short loc_1406994F7
                mov     ebx, 0ADh

loc_1406994C3:                          ; CODE XREF: sub_1406990C0+7D6↓j
                                        ; sub_1406990C0+17D131↓j ...
                mov     [r12], ebx
                movzx   eax, r15b
                mov     rcx, [rsp+158h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+158h+arg_8]
                add     rsp, 120h
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

loc_1406994F7:                          ; CODE XREF: sub_1406990C0+3FC↑j
                test    edx, edx
                jnz     loc_1406995B4
                and     r8d, 7
                mov     edx, 1
                movzx   ecx, r8b
                inc     r13d
                shl     edx, cl
                test    al, 4
                jnz     loc_1406995C1

loc_140699519:                          ; CODE XREF: sub_1406990C0+505↓j
                or      edi, edx
                and     al, 2
                cmovz   edi, esi

loc_140699520:                          ; CODE XREF: sub_1406990C0+4F6↓j
                inc     r10d
                inc     r11
                add     r9, 8
                cmp     r11, rbp
                jl      loc_140699470
                mov     r8d, [rsp+158h+var_F8]
                mov     r9, [rsp+158h+var_D0]
                mov     ecx, [rsp+158h+var_128]
                mov     r11d, [rsp+158h+var_F4]
                mov     esi, [rsp+158h+var_118]
                mov     rbp, [rsp+158h+var_108]

loc_140699552:                          ; CODE XREF: sub_1406990C0+38A↑j
                cmp     r13d, [r9+8]
                jnz     loc_1408162BC
                test    r11d, r11d
                jnz     short loc_140699582
                mov     eax, r8d
                shr     eax, 1
                and     eax, 7Fh
                cmp     ecx, eax
                jnz     loc_1408162B2
                shr     r8d, 8
                and     r8d, 7Fh
                cmp     edi, r8d
                jnz     loc_1408162B2

loc_140699582:                          ; CODE XREF: sub_1406990C0+49F↑j
                mov     rdi, [rsp+158h+var_110]
                inc     esi
                mov     r11d, [rsp+158h+var_114]
                mov     [rsp+158h+var_118], esi
                cmp     esi, [rsp+158h+var_F0]
                jnb     short loc_1406995CA
                mov     r10d, [rsp+158h+var_EC]
                mov     eax, 400h
                mov     r8, [rsp+158h+var_C8]
                mov     rdx, [rsp+158h+var_E0]
                jmp     loc_140699340
; ---------------------------------------------------------------------------

loc_1406995B4:                          ; CODE XREF: sub_1406990C0+439↑j
                test    al, 8
                jz      loc_140699520
                jmp     loc_14081629E
; ---------------------------------------------------------------------------

loc_1406995C1:                          ; CODE XREF: sub_1406990C0+453↑j
                or      [rsp+158h+var_128], edx
                jmp     loc_140699519
; ---------------------------------------------------------------------------

loc_1406995CA:                          ; CODE XREF: sub_1406990C0+4D6↑j
                mov     r9, [rsp+158h+var_120]
                mov     r13d, 1

loc_1406995D5:                          ; CODE XREF: sub_1406990C0+274↑j
                test    r11d, r11d
                jnz     loc_140816316
                mov     r10d, [rsp+158h+var_E8]
                mov     ebp, ebx
                mov     r14d, ebx
                test    r10d, r10d
                jz      loc_140699841

loc_1406995F1:                          ; CODE XREF: sub_1406990C0+813↓j
                mov     r11, [rsp+158h+var_120]
                mov     eax, r14d
                lea     rsi, [rax+rax*2]
                shl     rsi, 5
                add     rsi, r9
                inc     r14d
                mov     r9d, r14d
                mov     rax, [rsi+8]
                mov     r8d, [rsi+10h]
                mov     [rsp+158h+var_E0], rax
                cmp     r14d, r10d
                jb      loc_1406998A0

loc_140699620:                          ; CODE XREF: sub_1406990C0+806↓j
                mov     edi, [rsi]
                add     rdi, r11
                test    dil, 1
                jnz     loc_1408163F2
                mov     rdx, [rsp+158h+var_110]
                cmp     rdi, rdx
                jb      loc_1408163E8
                mov     r9, [rsp+158h+var_108]
                cmp     rdi, r9
                jnb     loc_1408163E8
                mov     eax, [rsi+4]
                lea     rcx, [rdi+rax*2]
                lea     rax, [rcx+1]
                cmp     rax, rdx
                jb      loc_1408163DE
                cmp     rax, r9
                jnb     loc_1408163DE
                cmp     [rcx], bx
                jnz     loc_1408163D4
                mov     ecx, [rsi+8]
                mov     edx, 23h ; '#'
                mov     r9d, [rsi+0Ch]
                mov     [rsp+158h+var_130], r8d
                lea     r8, aVolume08lx08lx ; "\\VOLUME{%08lx%08lx-%08lx}"
                mov     [rsp+158h+var_138], ecx
                lea     rcx, [rsp+158h+var_98]
                call    sub_14035CE68
                lea     rdx, [rsp+158h+var_98]
                sub     rdx, rdi

loc_1406996A5:                          ; CODE XREF: sub_1406990C0+5F6↓j
                movzx   ecx, word ptr [rdi]
                movzx   eax, word ptr [rdi+rdx]
                sub     ecx, eax
                jnz     short loc_1406996B8
                add     rdi, 2
                test    eax, eax
                jnz     short loc_1406996A5

loc_1406996B8:                          ; CODE XREF: sub_1406990C0+5EE↑j
                test    ecx, ecx
                jnz     loc_1408163CA
                mov     ecx, [rsi+14h]
                add     rcx, [rsp+158h+var_120]
                test    cl, 7
                jnz     loc_1408163C0
                mov     rdi, [rsp+158h+var_110]
                cmp     rcx, rdi
                jb      loc_1408163B6
                mov     r11, [rsp+158h+var_108]
                cmp     rcx, r11
                jnb     loc_1408163B6
                mov     r10d, [rsi+18h]
                cmp     r10d, 18h
                jb      loc_1408163AC
                lea     rdx, [rcx-1]
                add     rdx, r10
                cmp     rdx, rdi
                jb      loc_1408163A2
                cmp     rdx, r11
                jnb     loc_1408163A2
                cmp     dword ptr [rcx], 3
                jnz     loc_140816398
                mov     edx, [rcx+4]
                cmp     edx, 84000h
                ja      loc_14081638E
                mov     r8d, [rdi+7Ch]
                mov     r9d, ebx
                test    r8d, r8d
                jz      short loc_140699756
                lea     rcx, [rsi+24h]
                mov     r11d, r8d

loc_14069973F:                          ; CODE XREF: sub_1406990C0+68F↓j
                mov     eax, [rcx+1Ch]
                add     eax, [rcx]
                lea     rcx, [rcx+4]
                add     r9d, eax
                sub     r11, 1
                jnz     short loc_14069973F
                mov     r11, [rsp+158h+var_108]

loc_140699756:                          ; CODE XREF: sub_1406990C0+676↑j
                cmp     r9d, edx
                jnz     loc_140816384
                mov     eax, 18h
                test    edx, edx
                jz      short loc_14069976F
                lea     eax, ds:10h[rdx*8]

loc_14069976F:                          ; CODE XREF: sub_1406990C0+6A6↑j
                cmp     eax, r10d
                jnz     loc_14081637A
                mov     r9d, [rsi+20h]
                cmp     r9d, 80000h
                ja      loc_140816370
                mov     eax, ebx
                test    r8d, r8d
                jz      short loc_1406997A3
                lea     rcx, [rsi+40h]
                mov     rdx, r8

loc_140699797:                          ; CODE XREF: sub_1406990C0+6E1↓j
                add     eax, [rcx]
                lea     rcx, [rcx+4]
                sub     rdx, 1
                jnz     short loc_140699797

loc_1406997A3:                          ; CODE XREF: sub_1406990C0+6CE↑j
                cmp     eax, r9d
                jnz     loc_140816366
                mov     ecx, [rsi+1Ch]
                add     ebp, eax
                add     rcx, [rsp+158h+var_120]
                test    cl, 1
                jnz     loc_14081635C
                mov     edx, ebx
                test    r9d, r9d
                jz      short loc_140699834
                mov     r8d, 400h
                nop     dword ptr [rax+00h]

loc_1406997D0:                          ; CODE XREF: sub_1406990C0+772↓j
                cmp     rcx, rdi
                jb      loc_140816352
                cmp     rcx, r11
                jnb     loc_140816352
                lea     rax, [rcx+3]
                cmp     rax, rdi
                jb      loc_140816348
                cmp     rax, r11
                jnb     loc_140816348
                movzx   eax, word ptr [rcx]
                cmp     ax, r8w
                jnb     loc_14081633E
                lea     rcx, [rcx+rax*2]
                lea     rax, [rcx+3]
                cmp     rax, rdi
                jb      loc_140816334
                cmp     rax, r11
                jnb     loc_140816334
                cmp     [rcx+2], bx
                jnz     loc_14081632A
                inc     edx
                add     rcx, 4
                cmp     edx, r9d
                jb      short loc_1406997D0

loc_140699834:                          ; CODE XREF: sub_1406990C0+704↑j
                mov     r10d, [rdi+70h]
                cmp     r14d, r10d
                jb      loc_1406998CE

loc_140699841:                          ; CODE XREF: sub_1406990C0+52B↑j
                cmp     ebp, [rdi+78h]
                jnz     loc_1408163FC
                cmp     ebp, 80000h
                ja      loc_140816406
                mov     eax, [rdi+0D4h]
                test    eax, eax
                jz      short loc_1406998D8
                mov     edx, ebx

loc_140699862:                          ; CODE XREF: sub_1406990C0+81B↓j
                mov     ecx, [rdi+0D8h]
                test    ecx, ecx
                jz      short loc_14069986F
                mov     r13d, ebx

loc_14069986F:                          ; CODE XREF: sub_1406990C0+7AA↑j
                cmp     edx, r13d
                jnz     loc_140816410
                test    eax, eax
                jz      short loc_140699893
                mov     rdx, rcx
                xor     r8d, r8d
                lea     rcx, [rdi+rax]
                call    sub_1402F0150
                test    eax, eax
                js      loc_14081641A

loc_140699893:                          ; CODE XREF: sub_1406990C0+7BA↑j
                mov     r15b, 1
                jmp     loc_1406994C3
; ---------------------------------------------------------------------------
                align 20h

loc_1406998A0:                          ; CODE XREF: sub_1406990C0+55A↑j
                                        ; sub_1406990C0+80C↓j
                mov     eax, r9d
                lea     rdx, [rsp+158h+var_E0]
                lea     rcx, [rax+rax*2]
                shl     rcx, 5
                add     rcx, r11
                call    sub_1405DDD38
                test    al, al
                jnz     loc_140816320
                inc     r9d
                cmp     r9d, r10d
                jnb     loc_140699620
                jmp     short loc_1406998A0
; ---------------------------------------------------------------------------

loc_1406998CE:                          ; CODE XREF: sub_1406990C0+77B↑j
                mov     r9, [rsp+158h+var_120]
                jmp     loc_1406995F1
; ---------------------------------------------------------------------------

loc_1406998D8:                          ; CODE XREF: sub_1406990C0+79E↑j
                mov     edx, r13d
                jmp     short loc_140699862
; } // starts at 1406990C0
sub_1406990C0   endp

; ---------------------------------------------------------------------------
byte_1406998DD  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014006D56C↑o
                                        ; .pdata:0000000140101D3C↑o

; =============== S U B R O U T I N E =======================================


sub_1406998F0   proc near               ; DATA XREF: .pdata:0000000140101D48↑o
                                        ; sub_1406981E8+111↑o
                sub     rsp, 28h
                call    sub_140699908
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406998F0   endp

byte_1406998FF  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140101D48↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140699908   proc near               ; CODE XREF: sub_1406998F0+4↑p
                                        ; DATA XREF: .rdata:000000014006D5A4↑o ...

var_90          = qword ptr -90h
var_80          = word ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 00000001408164B0 SIZE 000000E6 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                mov     rax, gs:188h
                xor     r15d, r15d
                mov     rbx, rcx
                mov     [rbp+57h+var_78], r15
                mov     r14b, [rax+232h]
                mov     rax, gs:188h
                mov     [rax+232h], r15b
                call    sub_1402F01C8
                test    rbx, rbx
                jz      short loc_140699989
                mov     rcx, cs:qword_140C503C8
                test    rcx, rcx
                jz      short loc_140699989
                lea     rdx, qword_14000AAB8
                call    EtwEventEnabled
                test    al, al
                jnz     loc_1408164B0

loc_140699989:                          ; CODE XREF: sub_140699908+5F↑j
                                        ; sub_140699908+6B↑j ...
                mov     edx, [rbx+144h]
                mov     ecx, [rbx+14Ch]
                cmp     edx, ecx
                jg      loc_140816544

loc_14069999D:                          ; CODE XREF: sub_140699908+17CC44↓j
                movsxd  rax, dword ptr [rbx+148h]
                cmp     eax, cs:dword_140C50134
                jge     loc_140699AD2
                sub     ecx, edx
                mov     [rbx+rax*4+11Ch], ecx
                mov     eax, [rbx+14Ch]
                inc     dword ptr [rbx+148h]
                mov     [rbx+144h], eax

loc_1406999CB:                          ; CODE XREF: sub_140699908+1DB↓j
                                        ; sub_140699908+17CC63↓j
                cmp     dword ptr [rbx+58h], 1
                jz      loc_140699B2C

loc_1406999D5:                          ; CODE XREF: sub_140699908+22B↓j
                mov     rdx, rbx
                lea     rcx, [rbp+57h+var_78]
                call    sub_140699CC4
                mov     edi, eax

loc_1406999E3:                          ; CODE XREF: sub_140699908+17CC6D↓j
                mov     rsi, [rbp+57h+var_78]
                mov     rcx, rbx
                mov     [rbx+1C0h], rsi
                mov     [rbx+1C8h], edi
                call    sub_140699B4C
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                test    edi, edi
                js      loc_140699A96
                lea     rcx, unk_140C4FB20
                call    sub_1402F0504
                lea     rcx, dword_140C502E8
                call    ExAcquireFastMutex
                cmp     cs:dword_140C50324, 1
                jz      loc_14081657A
                mov     rax, cs:qword_140C502E0
                lea     rbx, qword_140C502D8
                cmp     [rax], rbx
                jnz     loc_140699B3E
                mov     [rsi+8], rax
                mov     [rsi], rbx
                mov     [rax], rsi
                mov     eax, cs:dword_140C50320
                inc     eax
                mov     cs:qword_140C502E0, rsi

loc_140699A63:                          ; CODE XREF: sub_140699908+21F↓j
                cmp     eax, cs:dword_140C4FFCC
                mov     cs:dword_140C50320, eax
                ja      short loc_140699AEE

loc_140699A71:                          ; CODE XREF: sub_140699908+1F0↓j
                lea     rcx, dword_140C502E8
                call    KeReleaseGuardedMutex
                mov     rcx, cs:qword_140C50328
                test    rcx, rcx
                jz      short loc_140699A93
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_140699A93:                          ; CODE XREF: sub_140699908+17F↑j
                mov     edi, r15d

loc_140699A96:                          ; CODE XREF: sub_140699908+100↑j
                                        ; sub_140699908+17CC89↓j
                mov     rax, gs:188h
                mov     [rax+232h], r14b
                mov     eax, edi
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B0h+var_10]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140699AD2:                          ; CODE XREF: sub_140699908+A2↑j
                mov     r8d, 0Ah
                cmp     eax, r8d
                jg      loc_140816551

loc_140699AE1:                          ; CODE XREF: sub_140699908+17CC53↓j
                cmp     edx, ecx
                jz      loc_1406999CB
                jmp     loc_140816560
; ---------------------------------------------------------------------------

loc_140699AEE:                          ; CODE XREF: sub_140699908+167↑j
                mov     rcx, cs:qword_140C502D8
                cmp     rcx, rbx
                jz      loc_140699A71
                cmp     [rcx+8], rbx
                jnz     short loc_140699B3E
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_140699B3E
                mov     cs:qword_140C502D8, rax
                xor     edx, edx
                mov     [rax+8], rbx
                call    ExFreePoolWithTag
                mov     eax, cs:dword_140C50320
                dec     eax
                jmp     loc_140699A63
; ---------------------------------------------------------------------------

loc_140699B2C:                          ; CODE XREF: sub_140699908+C7↑j
                cmp     dword ptr [rbx+190h], 8
                jz      loc_1406999D5
                jmp     loc_140816570
; ---------------------------------------------------------------------------

loc_140699B3E:                          ; CODE XREF: sub_140699908+13C↑j
                                        ; sub_140699908+1FA↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 140699908
sub_140699908   endp

; ---------------------------------------------------------------------------
byte_140699B45  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006D5A4↑o
                                        ; .pdata:0000000140101D54↑o

; =============== S U B R O U T I N E =======================================


sub_140699B4C   proc near               ; CODE XREF: sub_1406981E8+264↑p
                                        ; sub_140699908+EF↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140816596 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                lea     rbx, [rcx+208h]
                mov     rdi, rcx
                test    byte ptr [rbx+8], 1
                mov     rcx, [rbx]
                jz      short loc_140699B7B
                test    rcx, rcx
                jz      short loc_140699B7B
                xor     rcx, rbx

loc_140699B7B:                          ; CODE XREF: sub_140699B4C+25↑j
                                        ; sub_140699B4C+2A↑j
                movzx   eax, byte ptr [rbx+8]
                mov     ebp, eax
                and     ebp, 1
                test    rcx, rcx
                jz      short loc_140699BE6

loc_140699B89:                          ; CODE XREF: sub_140699B4C+74↓j
                                        ; sub_140699B4C+95↓j ...
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_140699B9D
                mov     rdx, rcx
                test    ebp, ebp
                jnz     short loc_140699BB9
                mov     rcx, rax
                jmp     short loc_140699BBC
; ---------------------------------------------------------------------------

loc_140699B9D:                          ; CODE XREF: sub_140699B4C+43↑j
                mov     rax, [rcx+8]
                test    rax, rax
                jz      short loc_140699BC2
                mov     rdx, rcx
                test    ebp, ebp
                jnz     loc_140699C94
                mov     rcx, rax
                jmp     loc_140699C97
; ---------------------------------------------------------------------------

loc_140699BB9:                          ; CODE XREF: sub_140699B4C+4A↑j
                xor     rcx, rax

loc_140699BBC:                          ; CODE XREF: sub_140699B4C+4F↑j
                and     qword ptr [rdx], 0
                jmp     short loc_140699B89
; ---------------------------------------------------------------------------

loc_140699BC2:                          ; CODE XREF: sub_140699B4C+58↑j
                mov     rsi, [rcx+10h]
                and     rsi, 0FFFFFFFFFFFFFFFCh
                test    ebp, ebp
                jnz     loc_140699CA1

loc_140699BD2:                          ; CODE XREF: sub_140699B4C+158↓j
                                        ; sub_140699B4C+161↓j
                xor     edx, edx
                call    SeFreePrivileges
                test    rsi, rsi
                jz      short loc_140699BE3
                mov     rcx, rsi
                jmp     short loc_140699B89
; ---------------------------------------------------------------------------

loc_140699BE3:                          ; CODE XREF: sub_140699B4C+90↑j
                mov     al, [rbx+8]

loc_140699BE6:                          ; CODE XREF: sub_140699B4C+3B↑j
                and     qword ptr [rbx], 0
                and     qword ptr [rbx+8], 0
                test    al, 1
                jnz     loc_140699CB2

loc_140699BF7:                          ; CODE XREF: sub_140699B4C+16A↓j
                mov     rcx, [rdi+248h]
                test    rcx, rcx
                jz      short loc_140699C0A
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140699C0A:                          ; CODE XREF: sub_140699B4C+B5↑j
                lea     rbx, [rdi+68h]

loc_140699C0E:                          ; CODE XREF: sub_140699B4C+F2↓j
                mov     rcx, [rbx]
                cmp     rcx, rbx
                jz      short loc_140699C40
                cmp     [rcx+8], rbx
                jnz     FatalListEntryError_76
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     FatalListEntryError_76
                mov     [rbx], rax
                xor     edx, edx
                mov     [rax+8], rbx
                dec     dword ptr [rdi+78h]
                call    ExFreePoolWithTag
                jmp     short loc_140699C0E
; ---------------------------------------------------------------------------

loc_140699C40:                          ; CODE XREF: sub_140699B4C+C8↑j
                mov     rcx, [rdi+1D8h]
                test    rcx, rcx
                jz      short loc_140699C53
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140699C53:                          ; CODE XREF: sub_140699B4C+FE↑j
                mov     rcx, [rdi+160h]
                test    rcx, rcx
                jz      short loc_140699C69
                mov     edx, 73576650h
                call    ObfDereferenceObjectWithTag

loc_140699C69:                          ; CODE XREF: sub_140699B4C+111↑j
                test    byte ptr [rdi+1E6h], 2
                jz      short loc_140699C7E
                lea     rcx, qword_140C50280
                call    sub_14024C380

loc_140699C7E:                          ; CODE XREF: sub_140699B4C+124↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140699C94:                          ; CODE XREF: sub_140699B4C+5F↑j
                xor     rcx, rax

loc_140699C97:                          ; CODE XREF: sub_140699B4C+68↑j
                and     qword ptr [rdx+8], 0
                jmp     loc_140699B89
; ---------------------------------------------------------------------------

loc_140699CA1:                          ; CODE XREF: sub_140699B4C+80↑j
                test    rsi, rsi
                jz      loc_140699BD2
                xor     rsi, rcx
                jmp     loc_140699BD2
; ---------------------------------------------------------------------------

loc_140699CB2:                          ; CODE XREF: sub_140699B4C+A5↑j
                mov     byte ptr [rbx+8], 1
                jmp     loc_140699BF7
sub_140699B4C   endp

; ---------------------------------------------------------------------------
byte_140699CBB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006D5CC↑o
                                        ; .pdata:0000000140101D60↑o

; =============== S U B R O U T I N E =======================================


sub_140699CC4   proc near               ; CODE XREF: sub_140699908+D4↑p
                                        ; DATA XREF: .rdata:000000014006D5F8↑o ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081659E SIZE 00000034 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     [rsp+58h+arg_8], 0
                xor     r12d, r12d
                and     qword ptr [rcx], 0
                mov     rsi, rdx
                cmp     dword ptr [rdx+14Ch], 20h ; ' '
                mov     r15, rcx
                jl      loc_14081659E
                test    byte ptr [rdx+1E4h], 2
                jnz     loc_140699EEF
                mov     edx, [rdx+158h]
                mov     r8d, 44506343h
                add     edx, [rsi+78h]
                mov     eax, [rsi+1E0h]
                shl     edx, 4
                add     edx, 0D7h
                and     edx, 0FFFFFFF8h
                lea     ecx, [rax+1]
                lea     ecx, [rax+rcx*2]
                lea     eax, [rdx+rcx*8]
                mov     edx, eax
                lea     ecx, [r12+1]
                mov     edi, eax
                call    ExAllocatePoolWithTag
                mov     [r15], rax
                mov     rbx, rax
                test    rax, rax
                jz      loc_1408165A8
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     r14, [rbx+10h]
                mov     dword ptr [r14], 1Eh
                lea     r13, [r14+0D7h]
                mov     dword ptr [r14+4], 43435341h
                and     r13, 0FFFFFFFFFFFFFFF8h
                movups  xmm0, xmmword ptr [rsi+18h]
                movups  xmmword ptr [r14+0Ch], xmm0
                movups  xmm1, xmmword ptr [rsi+28h]
                movups  xmmword ptr [r14+1Ch], xmm1
                movups  xmm0, xmmword ptr [rsi+38h]
                movups  xmmword ptr [r14+2Ch], xmm0
                movups  xmm1, xmmword ptr [rsi+48h]
                movups  xmmword ptr [r14+3Ch], xmm1
                mov     eax, [rsi+58h]
                mov     [r14+4Ch], eax
                mov     rax, [rsi+1D0h]
                mov     [r14+98h], rax
                mov     rax, [rsi+0C8h]
                mov     [r14+68h], rax
                movzx   eax, word ptr [rsi+1E4h]
                xor     eax, [r14+0A0h]
                and     eax, 1
                xor     [r14+0A0h], eax
                mov     eax, [r14+0A0h]
                movzx   ecx, word ptr [rsi+1E6h]
                add     ecx, ecx
                xor     ecx, eax
                and     ecx, 2
                xor     ecx, eax
                mov     eax, r13d
                sub     eax, r14d
                mov     [r14+0A0h], ecx
                mov     [r14+50h], eax
                lea     rax, [rsi+68h]
                mov     rbp, [rax]
                cmp     rbp, rax
                jz      short loc_140699E3F
                lea     r15, [rsi+68h]

loc_140699E0F:                          ; CODE XREF: sub_140699CC4+174↓j
                mov     edi, [rbp+10h]
                mov     rdx, rbp
                mov     rbp, [rbp+0]
                mov     eax, edi
                shl     eax, 4
                add     rdx, 18h
                mov     r8d, eax
                mov     rcx, r13
                mov     ebx, eax
                call    memmove
                add     r13, rbx
                add     r12d, edi
                cmp     rbp, r15
                jnz     short loc_140699E0F
                mov     r15, [rsp+58h+arg_0]

loc_140699E3F:                          ; CODE XREF: sub_140699CC4+145↑j
                mov     [r14+54h], r12d
                lea     rcx, [r13+7]
                mov     eax, [rsi+14Ch]
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     [r14+58h], eax
                mov     edi, ecx
                mov     eax, [rsi+150h]
                sub     edi, r14d
                mov     [r14+5Ch], eax
                movups  xmm0, xmmword ptr [rsi+11Ch]
                movups  xmmword ptr [r14+70h], xmm0
                movups  xmm1, xmmword ptr [rsi+12Ch]
                movups  xmmword ptr [r14+80h], xmm1
                movsd   xmm0, qword ptr [rsi+13Ch]
                movsd   qword ptr [r14+90h], xmm0
                mov     [r14+60h], edi
                mov     eax, [rsi+1E0h]
                mov     rdx, [rsi+1D8h]
                lea     ebx, [rax+rax*2]
                shl     ebx, 3
                mov     r8d, ebx
                call    memmove
                mov     eax, [rsi+1E0h]
                lea     edx, [rdi+rbx]
                lea     r8, [rsp+58h+arg_8]
                mov     [r14+8], edx
                mov     rcx, r14
                mov     [r14+64h], eax
                call    sub_140699F08
                test    al, al
                jz      loc_1408165B2
                xor     edi, edi

loc_140699ED7:                          ; CODE XREF: sub_140699CC4+235↓j
                                        ; sub_140699CC4+17C909↓j
                mov     rbx, [rsp+58h+arg_10]
                mov     eax, edi
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
; ---------------------------------------------------------------------------

loc_140699EEF:                          ; CODE XREF: sub_140699CC4+3F↑j
                mov     edi, 0C0190019h

loc_140699EF4:                          ; CODE XREF: sub_140699CC4+17C8DF↓j
                xor     ebx, ebx

loc_140699EF6:                          ; CODE XREF: sub_140699CC4+17C8E9↓j
                                        ; sub_140699CC4+17C8F6↓j
                test    rbx, rbx
                jz      short loc_140699ED7
                jmp     loc_1408165BF
sub_140699CC4   endp

; ---------------------------------------------------------------------------
byte_140699F00  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006D5F8↑o
                                        ; .pdata:0000000140101D6C↑o

; =============== S U B R O U T I N E =======================================


sub_140699F08   proc near               ; CODE XREF: sub_140699CC4+204↑p
                                        ; DATA XREF: .rdata:000000014006D690↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408165D2 SIZE 00000079 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                xor     r9d, r9d
                mov     r11d, edx
                mov     r14, r8
                mov     r10, rcx
                mov     sil, r9b
                cmp     edx, 0D0h
                jb      loc_1408165D2
                test    r10b, 7
                jnz     loc_1408165DD
                cmp     dword ptr [rcx], 1Eh
                jnz     loc_140816640
                cmp     dword ptr [rcx+4], 43435341h
                jnz     loc_140816640
                cmp     r11d, 10000000h
                ja      loc_1408165E8
                cmp     dword ptr [rcx+4Ch], 1
                ja      loc_140816635
                mov     edi, [rcx+64h]
                cmp     edi, 84000h
                ja      loc_14081662A
                mov     ebx, [rcx+54h]
                cmp     ebx, 100000h
                ja      loc_14081662A
                cmp     [rcx+8], r11d
                jnz     loc_1408165F3
                add     rcx, 0Ch
                call    sub_14069A084
                test    al, al
                jz      loc_1408165FE
                mov     ecx, [r10+50h]
                add     rcx, r10
                test    cl, 7
                jnz     loc_140816609
                cmp     rcx, r10
                jb      loc_14081661F
                lea     r8, [r10+r11]
                cmp     rcx, r8
                jnb     loc_14081661F
                mov     eax, ebx
                lea     rdx, [rcx-1]
                shl     rax, 4
                add     rdx, rax
                cmp     rdx, r10
                jb      loc_140816614
                cmp     rdx, r8
                jnb     loc_140816614
                mov     ecx, r9d
                lea     rdx, [r10+70h]
                lea     eax, [r9+0Ah]

loc_140699FF8:                          ; CODE XREF: sub_140699F08+FA↓j
                add     ecx, [rdx]
                lea     rdx, [rdx+4]
                sub     rax, 1
                jnz     short loc_140699FF8
                cmp     ecx, [r10+58h]
                jb      short loc_14069A05D
                test    edi, edi
                jz      short loc_14069A03D
                mov     edx, [r10+60h]
                add     rdx, r10
                test    dl, 7
                jnz     short loc_14069A065
                cmp     rdx, r10
                jb      short loc_14069A075
                cmp     rdx, r8
                jnb     short loc_14069A075
                lea     rcx, [rdi+rdi*2]
                lea     rax, ds:0FFFFFFFFFFFFFFFFh[rcx*8]
                add     rax, rdx
                cmp     rax, r10
                jb      short loc_14069A06D
                cmp     rax, r8
                jnb     short loc_14069A06D

loc_14069A03D:                          ; CODE XREF: sub_140699F08+104↑j
                mov     sil, 1

loc_14069A040:                          ; CODE XREF: sub_140699F08+15B↓j
                                        ; sub_140699F08+163↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     [r14], r9d
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069A05D:                          ; CODE XREF: sub_140699F08+100↑j
                mov     r9d, 78h ; 'x'
                jmp     short loc_14069A040
; ---------------------------------------------------------------------------

loc_14069A065:                          ; CODE XREF: sub_140699F08+110↑j
                mov     r9d, 41h ; 'A'
                jmp     short loc_14069A040
; ---------------------------------------------------------------------------

loc_14069A06D:                          ; CODE XREF: sub_140699F08+12E↑j
                                        ; sub_140699F08+133↑j
                mov     r9d, 5Ah ; 'Z'
                jmp     short loc_14069A040
; ---------------------------------------------------------------------------

loc_14069A075:                          ; CODE XREF: sub_140699F08+115↑j
                                        ; sub_140699F08+11A↑j
                mov     r9d, 50h ; 'P'
                jmp     short loc_14069A040
sub_140699F08   endp

; ---------------------------------------------------------------------------
byte_14069A07D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006D690↑o
                                        ; .pdata:0000000140101D78↑o

; =============== S U B R O U T I N E =======================================


sub_14069A084   proc near               ; CODE XREF: sub_1406990C0+109↑p
                                        ; sub_140699F08+93↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014081664C SIZE 00000011 BYTES

                mov     eax, 1Dh
                xor     r8d, r8d
                mov     edx, eax

loc_14069A08E:                          ; CODE XREF: sub_14069A084+17C5CE↓j
                cmp     [rcx+rdx*2], r8w
                jnz     loc_14081664C

loc_14069A099:                          ; CODE XREF: sub_14069A084+17C5D4↓j
                test    eax, eax
                setnle  al
                retn
sub_14069A084   endp

; ---------------------------------------------------------------------------
                align 20h
byte_14069A0A0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140101D84↑o

; =============== S U B R O U T I N E =======================================


sub_14069A0A8   proc near               ; CODE XREF: sub_140208A00:loc_140208A17↑p
                                        ; DATA XREF: .pdata:0000000140101D90↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                mov     r9d, [rcx+38h]
                mov     rdx, rcx
                mov     r8d, [rcx+34h]
                lea     rcx, unk_140C4FB20
                mov     [rsp+38h+var_18], 1
                call    sub_1402F045C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14069A0A8   endp

algn_14069A0D1:                         ; DATA XREF: .pdata:0000000140101D90↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14069A0E0   proc near               ; CODE XREF: sub_14069A420+42↓p
                                        ; DATA XREF: .rdata:000000014006D6B8↑o ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081665E SIZE 00000015 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                lea     rcx, unk_140C4FBA0
                mov     esi, ebx
                call    sub_1402F0504
                lea     rcx, word_140C4FC20
                call    ExpInterlockedFlushSList
                mov     rcx, rax
                test    rax, rax
                jz      short loc_14069A192

loc_14069A118:                          ; CODE XREF: sub_14069A0E0+47↓j
                mov     rax, rcx
                mov     rcx, [rcx]
                mov     [rax], rbx
                mov     rbx, rax
                test    rcx, rcx
                jnz     short loc_14069A118

loc_14069A129:                          ; CODE XREF: sub_14069A0E0+B0↓j
                mov     rbp, rbx
                mov     rbx, [rbx]
                cmp     dword ptr [rbp+28h], 0
                lea     rdi, [rbp+30h]
                jz      short loc_14069A167
                nop     dword ptr [rax+00000000h]

loc_14069A140:                          ; CODE XREF: sub_14069A0E0+85↓j
                mov     rcx, rdi
                call    sub_14069A1E0
                mov     esi, eax
                test    eax, eax
                js      short loc_14069A1AA
                mov     ecx, [rdi]
                shr     rcx, 2
                and     ecx, 3FFh
                shl     rcx, 4
                add     rdi, rcx
                add     dword ptr [rbp+28h], 0FFFFFFFFh
                jnz     short loc_14069A140

loc_14069A167:                          ; CODE XREF: sub_14069A0E0+57↑j
                test    esi, esi
                js      short loc_14069A1AA
                mov     r8d, [rbp+20h]
                lea     rcx, unk_140C4FBA0
                mov     r9d, [rbp+2Ch]
                sub     r8d, ebp
                mov     rdx, rbp
                mov     [rsp+38h+var_18], 1
                call    sub_1402F045C
                test    rbx, rbx
                jnz     short loc_14069A129

loc_14069A192:                          ; CODE XREF: sub_14069A0E0+36↑j
                                        ; sub_14069A0E0+E8↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14069A1AA:                          ; CODE XREF: sub_14069A0E0+6C↑j
                                        ; sub_14069A0E0+89↑j
                mov     r8d, [rbp+20h]
                lea     rcx, [rbp+30h]
                sub     r8d, edi
                mov     rdx, rdi
                call    memmove
                mov     rcx, rbp
                call    sub_1403495AC
                test    rbx, rbx
                jz      short loc_14069A192
                jmp     loc_14081665E
sub_14069A0E0   endp

; ---------------------------------------------------------------------------
algn_14069A1CF:                         ; DATA XREF: .rdata:000000014006D6B8↑o
                                        ; .pdata:0000000140101D9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14069A1E0   proc near               ; CODE XREF: sub_14069A0E0+63↑p
                                        ; sub_14069A420+139↓p ...

var_28          = dword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140816674 SIZE 0000000A BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 40h
                mov     rax, [rcx]
                xor     esi, esi
                mov     rdx, rax
                mov     [rsp+48h+arg_8], rsi
                and     edx, 1F000h
                mov     dword ptr [rsp+48h+arg_0], esi
                mov     rbx, rcx
                cmp     rdx, 0A000h
                jnz     loc_14069A2F8
                mov     rcx, [rcx+20h]
                mov     rdx, 7FFFFFFFFFFFFFFFh
                mov     rax, rcx
                xorps   xmm0, xmm0
                and     rax, rdx
                movups  [rsp+48h+var_18], xmm0
                cmp     rax, 0FFh
                jnb     loc_14069A3EB

loc_14069A23E:                          ; CODE XREF: sub_14069A1E0+210↓j
                mov     r8d, 2
                test    rcx, rcx
                js      short loc_14069A24F
                mov     r8d, 1002h

loc_14069A24F:                          ; CODE XREF: sub_14069A1E0+67↑j
                mov     edx, [rbx+30h]
                lea     r9, [rbx+18h]
                mov     ecx, edx
                movzx   eax, al
                shl     ecx, 8
                and     rdx, 0FFFFFFFFFF000000h
                or      ecx, eax
                mov     [rsp+48h+var_28], 1
                mov     rax, 0FFFFFFFF00FFFFFFh
                mov     dword ptr [rsp+48h+var_18+8], ecx
                mov     rcx, [rbx+28h]
                and     r8, rax
                mov     rax, [r9]
                or      rdx, r8
                shl     rax, 0Ch
                lea     r8, [rsp+48h+var_18]
                mov     [rsp+48h+arg_0], rax
                or      eax, 1
                mov     qword ptr [rsp+48h+var_18], rdx
                lea     rdx, [rsp+48h+arg_0]
                mov     dword ptr [rsp+48h+arg_0], eax
                call    sub_14069A7C0
                mov     rcx, rax
                test    rax, rax
                jz      loc_140816674
                mov     rdx, cs:qword_140C4FA98
                movzx   ecx, word ptr [rcx+0Ah]
                movzx   eax, word ptr [rdx+24h]
                sub     rcx, rax
                mov     eax, ecx
                lea     rcx, [rax+rax*4]
                lea     rax, [rdx+2Fh]
                and     rax, 0FFFFFFFFFFFFFFF8h
                test    byte ptr [rax+rcx*8+8], 4
                lea     rdi, [rax+rcx*8]
                jnz     short loc_14069A343

loc_14069A2E5:                          ; CODE XREF: sub_14069A1E0+161↓j
                                        ; sub_14069A1E0+172↓j
                mov     eax, esi

loc_14069A2E7:                          ; CODE XREF: sub_14069A1E0+17C499↓j
                mov     rbx, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14069A2F8:                          ; CODE XREF: sub_14069A1E0+30↑j
                shr     rax, 2
                lea     rdx, [rsp+48h+arg_0]
                and     eax, 3FFh
                lea     rcx, unk_140C4FA58
                mov     r8d, eax
                mov     edi, eax
                call    sub_14069AE10
                test    rax, rax
                jz      loc_14069A3F5
                mov     ecx, dword ptr [rsp+48h+arg_0]
                add     rax, 1Fh
                shl     rcx, 4
                and     rax, 0FFFFFFFFFFFFFFF8h
                shl     edi, 4
                add     rcx, rax
                mov     r8d, edi
                mov     rdx, rbx
                call    memmove
                jmp     short loc_14069A2E5
; ---------------------------------------------------------------------------

loc_14069A343:                          ; CODE XREF: sub_14069A1E0+103↑j
                mov     ecx, [rbx+34h]
                lea     rdx, [rsp+48h+arg_8]
                call    PsLookupProcessByProcessId
                test    eax, eax
                js      short loc_14069A2E5
                mov     r9, [rsp+48h+arg_8]
                mov     rax, 1FFFFFFFFFFFFFFFh
                mov     rcx, [r9+468h]
                xor     rcx, [r9+440h]
                and     rcx, rax
                cmp     rcx, [rbx+28h]
                jnz     short loc_14069A3CB
                mov     rcx, r9
                call    sub_1402F0434
                test    eax, eax
                jz      short loc_14069A3CB
                mov     r8, [rdi+8]
                and     r8, 0FFFFFFFFFFFFFFF9h
                or      r8, 1
                mov     [rdi+8], r8
                and     r8d, 7
                mov     rdx, [r9+468h]
                xor     rdx, [r9+440h]
                shl     rdx, 3
                or      rdx, r8
                mov     [rdi+8], rdx
                mov     edx, [r9+5F4h]
                mov     [rdi+1Ch], edx
                mov     edx, [r9+440h]
                mov     [rdi+18h], edx
                mov     [rdi+10h], r9

loc_14069A3CB:                          ; CODE XREF: sub_14069A1E0+198↑j
                                        ; sub_14069A1E0+1A4↑j
                mov     edx, 746C6644h
                mov     rcx, r9
                call    ObfDereferenceObjectWithTag
                mov     eax, esi
                mov     rbx, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069A3EB:                          ; CODE XREF: sub_14069A1E0+58↑j
                mov     eax, 0FFh
                jmp     loc_14069A23E
; ---------------------------------------------------------------------------

loc_14069A3F5:                          ; CODE XREF: sub_14069A1E0+13A↑j
                mov     rbx, [rsp+48h+arg_10]
                mov     eax, 0C000009Ah
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14069A1E0   endp

algn_14069A40B:                         ; DATA XREF: .rdata:000000014006D6E0↑o
                                        ; .pdata:0000000140101DA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14069A420   proc near               ; CODE XREF: sub_1407ACA30:loc_1407ACB46↓p
                                        ; sub_1407ACA30:loc_1407ACB79↓p ...

var_98          = dword ptr -98h
var_88          = dword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = qword ptr -44h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081667E SIZE 00000011 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rdi
                push    r12
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_38], rax
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  [rsp+0B8h+var_80], xmm0
                mov     dword ptr [rsp+0B8h+var_80+8], 1
                xor     ebx, ebx
                movups  [rsp+0B8h+var_60], xmm0
                xor     edi, edi
                xor     r12d, r12d
                movups  [rsp+0B8h+var_70], xmm1
                call    sub_14069A0E0
                mov     [rsp+0B8h+var_88], eax
                test    eax, eax
                js      loc_14069A760
; } // starts at 14069A420

loc_14069A473:                          ; DATA XREF: .rdata:000000014006D71C↑o
                                        ; .rdata:000000014006D730↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+0B8h+arg_0], rbp
                lea     rcx, word_140CEC0C0
                mov     [rsp+0B8h+arg_8], rsi
                mov     [rsp+0B8h+arg_10], r13
                mov     [rsp+0B8h+var_20], r14
                mov     [rsp+0B8h+var_28], r15
                call    ExpInterlockedFlushSList
                test    rax, rax
                jz      loc_14069A675

loc_14069A4B0:                          ; CODE XREF: sub_14069A420+A2↓j
                mov     rcx, rax
                mov     r15, rbx
                mov     rax, [rax]
                mov     [rcx], rbx
                mov     rbx, rcx
                test    rax, rax
                jnz     short loc_14069A4B0

loc_14069A4C4:                          ; CODE XREF: sub_14069A420+250↓j
                mov     rsi, rbx
                mov     [rsp+0B8h+var_44], 0
                mov     rcx, 0FFFFF78000000004h
                mov     r13, rbx
                mov     rbx, r15
                mov     rax, [rsi+10h]
                mov     r8d, [rcx]
                mov     r9d, eax
                shr     rax, 20h
                imul    rax, r8
                imul    r9, r8
                shl     rax, 8
                shr     r9, 18h
                add     r9, rax
                mov     rax, [rsi+18h]
                mov     ecx, eax
                shr     rax, 20h
                imul    rcx, r8
                imul    rax, r8
                shr     rcx, 18h
                shr     r9, 0Ah
                add     r9d, cs:dword_140C5015C
                mov     dword ptr [rsp+0B8h+var_44+4], r9d
                mov     [rsp+0B8h+var_48], r9d
                shl     rax, 8
                add     rcx, rax
                xor     eax, eax
                shr     rcx, 0Ah
                and     rax, 0FFFFFFFFFFFE800Bh
                add     ecx, cs:dword_140C5015C
                or      rax, 2800Bh
                mov     [rsp+0B8h+var_3C], ecx
                lea     rcx, [rsp+0B8h+var_50]
                mov     [rsp+0B8h+var_50], rax
                call    sub_14069A1E0
                mov     eax, [rsi+8]
                cmp     eax, 1
                jg      loc_14069A6D2
                mov     eax, [rsi+0Ch]
                lea     rcx, [rsp+0B8h+var_70]
                mov     dword ptr [rsp+0B8h+var_70+8], eax
                mov     dword ptr [rsp+0B8h+var_70+0Ch], 0
                mov     qword ptr [rsp+0B8h+var_70], 17007h
                call    sub_14069A1E0
                mov     eax, [rsi+8]
                cmp     eax, 1
                jg      loc_14069A6D2
                mov     rbp, [rsi+38h]
                mov     r14, [rsi+30h]
                cmp     rbp, 1
                jz      loc_14069A6C8
                test    rbp, rbp
                jz      short loc_14069A5BF
                mov     rcx, rbp
                call    sub_1402F0434
                test    eax, eax
                jz      loc_14069A65E

loc_14069A5BF:                          ; CODE XREF: sub_14069A420+18D↑j
                                        ; sub_14069A420+2AD↓j
                lea     r12, [rsi+48h]
                mov     rdi, r12
                cmp     r12, [rsi+20h]
                jnb     short loc_14069A5FE
                nop     dword ptr [rax+00h]

loc_14069A5D0:                          ; CODE XREF: sub_14069A420+1DC↓j
                mov     r9, r14
                mov     [rsp+0B8h+var_98], 0
                lea     r8, [rsp+0B8h+var_80]
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_14069A7C0
                test    rax, rax
                jz      loc_14069A767
                add     rdi, 8
                cmp     rdi, [rsi+20h]
                jb      short loc_14069A5D0

loc_14069A5FE:                          ; CODE XREF: sub_14069A420+1AA↑j
                                        ; sub_14069A420+2BA↓j ...
                cmp     [rsp+0B8h+var_88], 0
                jl      loc_14069A7A7

loc_14069A609:                          ; CODE XREF: sub_14069A420+326↓j
                mov     rdx, [rsi+18h]
                lea     rcx, [rsp+0B8h+var_60]
                mov     r8d, edx
                mov     rax, 0FFFFF78000000004h
                shr     rdx, 20h
                mov     dword ptr [rsp+0B8h+var_60+0Ch], 0
                mov     qword ptr [rsp+0B8h+var_60], 24007h
                mov     eax, [rax]
                imul    r8, rax
                imul    rdx, rax
                shr     r8, 18h
                shl     rdx, 8
                add     r8, rdx
                shr     r8, 0Ah
                add     r8d, cs:dword_140C5015C
                mov     dword ptr [rsp+0B8h+var_60+8], r8d
                call    sub_14069A1E0

loc_14069A65E:                          ; CODE XREF: sub_14069A420+199↑j
                xor     edx, edx
                mov     rcx, r13
                call    sub_1402F03F4
                test    rbx, rbx
                jz      short loc_14069A675
                mov     r15, [r15]
                jmp     loc_14069A4C4
; ---------------------------------------------------------------------------

loc_14069A675:                          ; CODE XREF: sub_14069A420+8A↑j
                                        ; sub_14069A420+24B↑j
                mov     ebp, [rsp+0B8h+var_88]

loc_14069A679:                          ; CODE XREF: sub_14069A420+382↓j
                mov     r15, [rsp+0B8h+var_28]
                test    ebp, ebp
                mov     rbp, [rsp+0B8h+arg_0]
                mov     r14, [rsp+0B8h+var_20]
                mov     r13, [rsp+0B8h+arg_10]
                mov     rsi, [rsp+0B8h+arg_8]
                js      loc_14069A74B
; } // starts at 14069A473

loc_14069A6A9:                          ; DATA XREF: .pdata:0000000140101DC0↑o
                                        ; .pdata:0000000140101DCC↑o
; __unwind { // __GSHandlerCheck
                mov     al, 1

loc_14069A6AB:                          ; CODE XREF: sub_14069A420+342↓j
                mov     rcx, [rsp+0B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     r12
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8
; } // starts at 14069A6A9

loc_14069A6C8:                          ; CODE XREF: sub_14069A420+184↑j
                                        ; DATA XREF: .pdata:0000000140101DCC↑o ...
; __unwind { // __GSHandlerCheck
                mov     ebp, [rsi+40h]
                inc     ebp
                jmp     loc_14069A5BF
; ---------------------------------------------------------------------------

loc_14069A6D2:                          ; CODE XREF: sub_14069A420+144↑j
                                        ; sub_14069A420+172↑j
                mov     r14, [rsi+20h]
                cmp     r14, [rsi+28h]
                ja      loc_14069A5FE

loc_14069A6E0:                          ; CODE XREF: sub_14069A420+324↓j
                mov     rbp, [r14]
                lea     rdx, [rsp+0B8h+var_88]
                mov     r8d, 1
                mov     [rsp+0B8h+var_88], 0
                lea     rcx, unk_140C4FA58
                call    sub_14069AE10
                test    rax, rax
                jz      loc_14081667E
                lea     rcx, [rax+1Fh]
                mov     eax, [rsp+0B8h+var_88]
                shl     rax, 4
                and     rcx, 0FFFFFFFFFFFFFFF8h
                add     rcx, rax
                mov     rax, [rcx]
                and     rax, 0FFFFFFFFFFFC6007h
                mov     [rcx+8], rbp
                or      rax, 6007h
                mov     [rcx], rax
                add     r14, 8
                mov     [rsp+0B8h+var_88], 0
                cmp     r14, [rsi+28h]
                jbe     short loc_14069A6E0
                jmp     loc_14069A609
; } // starts at 14069A6C8
; ---------------------------------------------------------------------------

loc_14069A74B:                          ; CODE XREF: sub_14069A420+283↑j
                                        ; DATA XREF: .pdata:0000000140101DD8↑o ...
; __unwind { // __GSHandlerCheck
                test    rbx, rbx
                jz      short loc_14069A760

loc_14069A750:                          ; CODE XREF: sub_14069A420+33E↓j
                mov     rcx, rbx
                mov     rbx, [rbx]
                call    sub_1402F0578
                test    rbx, rbx
                jnz     short loc_14069A750

loc_14069A760:                          ; CODE XREF: sub_14069A420+4D↑j
                                        ; sub_14069A420+32E↑j
                xor     al, al
                jmp     loc_14069A6AB
; } // starts at 14069A74B
; ---------------------------------------------------------------------------

loc_14069A767:                          ; CODE XREF: sub_14069A420+1CE↑j
                                        ; DATA XREF: .pdata:0000000140101DE4↑o ...
; __unwind { // __GSHandlerCheck
                mov     ebp, 0C0000188h

loc_14069A76C:                          ; CODE XREF: sub_14069A420+38B↓j
                cmp     dword ptr [rsi+8], 1
                jg      short loc_14069A79A
                mov     r8, [rsi+20h]
                mov     rdx, rdi
                sub     r8, rdi
                mov     rcx, r12
                and     r8, 0FFFFFFFFFFFFFFF8h
                call    memmove
                sub     rdi, r12
                sar     rdi, 3
                neg     rdi
                shl     rdi, 3
                add     [rsi+20h], rdi

loc_14069A79A:                          ; CODE XREF: sub_14069A420+350↑j
                mov     rcx, rsi
                call    sub_1402F0578
                jmp     loc_14069A679
; ---------------------------------------------------------------------------

loc_14069A7A7:                          ; CODE XREF: sub_14069A420+1E3↑j
                mov     ebp, [rsp+0B8h+var_88]
                jmp     short loc_14069A76C
; } // starts at 14069A767
sub_14069A420   endp

; ---------------------------------------------------------------------------
algn_14069A7AD:                         ; DATA XREF: .pdata:0000000140101DF0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14069A7C0   proc near               ; CODE XREF: sub_14069A1E0+C9↑p
                                        ; sub_14069A420+1C6↑p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140816690 SIZE 00000018 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     eax, [rdx]
                xor     r12d, r12d
                mov     [rsp+68h+var_40], r12d
                mov     esi, 0FFFFh
                mov     word ptr [rsp+68h+arg_8], si
                mov     r14, r8
                mov     rdi, rdx
                mov     rbp, rcx
                test    eax, 1FFh
                jz      short loc_14069A870
                and     eax, 1FFh
                shl     rax, 3
                sub     r9, rax
                xor     eax, eax
                movzx   r13d, ax
                mov     r12, [r9]
                mov     rbx, r12
                and     rbx, 0FFFFFFFFFFFFFFFCh
                mov     [rsp+68h+var_48], rbx
                xor     r15b, r15b

loc_14069A824:                          ; CODE XREF: sub_14069A7C0+61B↓j
                mov     r8, cs:qword_140C4FA98
                mov     edx, [r8+10h]
                lea     r9, [r8+2Fh]
                and     r9, 0FFFFFFFFFFFFFFF8h
                lea     rax, [rdx+rdx*4]
                cmp     [r9+rax*8], rbx
                jnz     loc_14069AA8C

loc_14069A845:                          ; CODE XREF: sub_14069A7C0+34D↓j
                                        ; sub_14069A7C0+435↓j
                cmp     dx, si
                jz      loc_14069ACA6

loc_14069A84E:                          ; CODE XREF: sub_14069A7C0+516↓j
                test    r8, r8
                jz      loc_14069ADE1
                movzx   ecx, word ptr [r8+24h]
                add     cx, dx
                mov     word ptr [rsp+68h+arg_8], cx
                test    r15b, r15b
                jnz     loc_14069ABFA

loc_14069A86D:                          ; CODE XREF: sub_14069A7C0+476↓j
                xor     r12d, r12d

loc_14069A870:                          ; CODE XREF: sub_14069A7C0+3E↑j
                mov     r15d, [rsp+68h+arg_20]
                test    rbp, rbp
                jns     loc_14069AA3E
                test    r15d, r15d
                jnz     loc_14069AA5B
                mov     rbx, [rbp+468h]
                mov     rax, 1FFFFFFFFFFFFFFFh
                xor     rbx, [rbp+440h]
                and     rbx, rax

loc_14069A8A5:                          ; CODE XREF: sub_14069A7C0+29E↓j
                and     rbx, 0FFFFFFFFFFFFFFFDh
                mov     word ptr [rsp+68h+var_48], r12w
                or      rbx, 1
                xor     r13b, r13b
                mov     rax, rbx
                mov     [rsp+68h+var_38], rbx
                and     eax, 3
                lea     r12, ds:10h[rax*4]

loc_14069A8C9:                          ; CODE XREF: sub_14069A7C0+639↓j
                mov     r8, cs:qword_140C4FA98
                mov     ecx, [r12+r8]
                lea     r9, [r8+2Fh]
                and     r9, 0FFFFFFFFFFFFFFF8h
                lea     rax, [rcx+rcx*4]
                cmp     [r9+rax*8], rbx
                jnz     loc_14069AB12

loc_14069A8EA:                          ; CODE XREF: sub_14069A7C0+3D0↓j
                                        ; sub_14069A7C0+522↓j
                cmp     cx, si
                jz      loc_140816698

loc_14069A8F3:                          ; CODE XREF: sub_14069A7C0+5E2↓j
                test    r8, r8
                jz      loc_14069ADE1
                movzx   esi, word ptr [r8+24h]
                mov     r12d, 2
                add     si, cx
                movzx   eax, cx
                lea     rcx, [rax+rax*4]
                lea     rdx, [r9+rcx*8]
                test    r13b, r13b
                jnz     loc_14069AD1F
                test    byte ptr [rdx+8], 4
                jnz     loc_14069AD1F

loc_14069A928:                          ; CODE XREF: sub_14069A7C0+286↓j
                                        ; sub_14069A7C0+5AB↓j ...
                mov     ebp, [rsp+68h+var_40]

loc_14069A92C:                          ; CODE XREF: sub_14069A7C0+296↓j
                mov     rdx, cs:qword_140C4FA70
                xor     r15d, r15d
                movzx   eax, byte ptr [r14]
                mov     ebx, r15d
                and     al, 3
                cmp     al, 2
                mov     ecx, [rdx+10h]
                setz    bl
                inc     ebx
                add     ecx, ebx
                cmp     ecx, [rdx+14h]
                ja      loc_14069ACF1

loc_14069A954:                          ; CODE XREF: sub_14069A7C0+557↓j
                mov     ecx, [rdx+10h]
                lea     eax, [rbx+rcx]
                mov     [rdx+10h], eax
                shl     rcx, 4
                lea     rax, [rdx+1Fh]
                and     rax, 0FFFFFFFFFFFFFFF8h
                add     rax, rcx
                movzx   ecx, byte ptr [r14]
                and     cl, 3
                cmp     cl, 2
                jz      loc_14069AA63

loc_14069A97C:                          ; CODE XREF: sub_14069A7C0+2BF↓j
                test    dword ptr [rdi], 1FFh
                mov     r8, [rax]
                jz      short loc_14069A9F5
                and     r8, 0FFFFFFFFFFFFFFFCh
                mov     [rax], r8
                mov     ecx, [rdi]
                shr     rcx, 7
                xor     rcx, r8
                and     ecx, 4
                xor     r8, rcx
                mov     [rax], r8
                mov     ecx, [rdi]
                shr     rcx, 7
                xor     rcx, r8
                and     ecx, 8
                xor     r8, rcx
                movzx   ecx, word ptr [rsp+68h+arg_8]
                mov     [rax], r8
                and     r8d, 0Fh
                mov     rdx, [rdi]
                shr     rdx, 0Ch
                mov     edx, edx
                shl     rdx, 4
                or      rdx, r8
                mov     [rax+0Ah], si
                mov     [rax], rdx
                mov     [rax+8], cx

loc_14069A9D6:                          ; CODE XREF: sub_14069A7C0+27C↓j
                                        ; sub_14069A7C0+2C7↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069A9F5:                          ; CODE XREF: sub_14069A7C0+1C5↑j
                and     r8, 0FFFFFFFFFFFFFFFDh
                or      r8, 1
                mov     [rax], r8
                mov     ecx, [rdi]
                shr     rcx, 7
                xor     rcx, r8
                and     ecx, 4
                xor     r8, rcx
                lea     rcx, ds:0[r12*8]
                and     r8, 0FFFFFFFFFFFFFFE7h
                or      r8, rcx
                mov     [rax], r8
                mov     ecx, r8d
                xor     ecx, [rdi]
                and     ecx, 0FFFh
                xor     rcx, [rdi]
                mov     [rax], rcx
                cmp     r12, 2
                jnz     short loc_14069AA84
                mov     [rax+0Ah], si
                jmp     short loc_14069A9D6
; ---------------------------------------------------------------------------

loc_14069AA3E:                          ; CODE XREF: sub_14069A7C0+BB↑j
                test    r15d, r15d
                jnz     short loc_14069AA5B
                test    rbp, rbp
                jz      loc_14069A928
                btr     ebp, 1Fh
                lea     r12d, [r15+1]
                dec     ebp
                jmp     loc_14069A92C
; ---------------------------------------------------------------------------

loc_14069AA5B:                          ; CODE XREF: sub_14069A7C0+C4↑j
                                        ; sub_14069A7C0+281↑j
                mov     rbx, rbp
                jmp     loc_14069A8A5
; ---------------------------------------------------------------------------

loc_14069AA63:                          ; CODE XREF: sub_14069A7C0+1B6↑j
                movups  xmm0, xmmword ptr [r14]
                movups  xmmword ptr [rax], xmm0
                mov     rcx, [rax]
                and     rcx, 0FFFFFFFFFFFFF00Bh
                or      rcx, 8
                mov     [rax], rcx
                add     rax, 10h
                jmp     loc_14069A97C
; ---------------------------------------------------------------------------

loc_14069AA84:                          ; CODE XREF: sub_14069A7C0+276↑j
                mov     [rax+8], ebp
                jmp     loc_14069A9D6
; ---------------------------------------------------------------------------

loc_14069AA8C:                          ; CODE XREF: sub_14069A7C0+7F↑j
                mov     r11d, [r8+20h]
                movzx   eax, bl
                add     rax, 0B15DCBh
                mov     [rsp+68h+var_3C], r11d
                imul    rcx, rax, 25h ; '%'
                movzx   eax, byte ptr [rsp+68h+var_48+1]
                add     rcx, rax
                movzx   eax, byte ptr [rsp+68h+var_48+2]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+68h+var_48+3]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+68h+var_48+4]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+68h+var_48+5]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+68h+var_48+6]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+68h+var_48+7]
                imul    rcx, rdx, 25h ; '%'
                lea     edx, [r11-1]
                add     rcx, rax
                and     edx, ecx
                lea     rcx, [rdx+rdx*4]
                mov     rax, [r9+rcx*8]
                cmp     rax, rbx
                jnz     loc_14069AB95
                mov     [r8+10h], edx
                jmp     loc_14069A845
; ---------------------------------------------------------------------------

loc_14069AB12:                          ; CODE XREF: sub_14069A7C0+124↑j
                mov     r11d, [r8+20h]
                movzx   eax, bl
                add     rax, 0B15DCBh
                imul    rcx, rax, 25h ; '%'
                movzx   eax, byte ptr [rsp+68h+var_38+1]
                add     rcx, rax
                movzx   eax, byte ptr [rsp+68h+var_38+2]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+68h+var_38+3]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+68h+var_38+4]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+68h+var_38+5]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+68h+var_38+6]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+68h+var_38+7]
                imul    rcx, rdx, 25h ; '%'
                lea     edx, [r11-1]
                add     rcx, rax
                and     edx, ecx
                lea     rcx, [rdx+rdx*4]
                mov     rax, [r9+rcx*8]
                cmp     rax, rbx
                jnz     loc_14069AC3B
                mov     [r12+r8], edx
                mov     ecx, edx
                jmp     loc_14069A8EA
; ---------------------------------------------------------------------------

loc_14069AB95:                          ; CODE XREF: sub_14069A7C0+343↑j
                test    rax, rax
                jz      loc_14069AC9E
                xor     r11d, r11d
                lea     r10d, [rdx+1]
                mov     eax, r11d
                mov     r11d, [rsp+68h+var_3C]
                mov     [rsp+68h+arg_8], eax

loc_14069ABB1:                          ; CODE XREF: sub_14069A7C0+427↓j
                cmp     r10d, r11d
                jnb     short loc_14069ABD8

loc_14069ABB6:                          ; CODE XREF: sub_14069A7C0+412↓j
                lea     rcx, [r10+r10*4]
                mov     rax, [r9+rcx*8]
                cmp     rax, rbx
                jz      short loc_14069ABEE
                test    rax, rax
                jz      loc_14069ACE7
                inc     r10d
                cmp     r10d, r11d
                jb      short loc_14069ABB6
                mov     eax, [rsp+68h+arg_8]

loc_14069ABD8:                          ; CODE XREF: sub_14069A7C0+3F4↑j
                inc     eax
                xor     r10d, r10d
                mov     [rsp+68h+arg_8], eax
                mov     r11d, edx
                cmp     eax, 2
                jb      short loc_14069ABB1
                jmp     loc_140816690
; ---------------------------------------------------------------------------

loc_14069ABEE:                          ; CODE XREF: sub_14069A7C0+401↑j
                mov     [r8+10h], r10d
                mov     edx, r10d
                jmp     loc_14069A845
; ---------------------------------------------------------------------------

loc_14069ABFA:                          ; CODE XREF: sub_14069A7C0+A7↑j
                movzx   eax, dx
                lea     rcx, [rax+rax*4]
                mov     rax, r12
                lea     rdx, [r9+rcx*8]
                shl     rax, 4
                mov     ecx, [rdx+8]
                and     ecx, 8
                shr     r12, 3Ch
                or      rcx, rax
                movzx   eax, word ptr [rdx+10h]
                or      rcx, 4
                mov     [rdx+8], rcx
                mov     ecx, 0FFF0h
                and     ax, cx
                or      r12w, ax
                mov     [rdx+10h], r12w
                jmp     loc_14069A86D
; ---------------------------------------------------------------------------

loc_14069AC3B:                          ; CODE XREF: sub_14069A7C0+3C4↑j
                test    rax, rax
                jz      loc_14069AD70
                xor     r15d, r15d
                lea     r10d, [rdx+1]
                mov     eax, r15d
                xor     ecx, ecx
                mov     r15d, [rsp+68h+arg_20]
                mov     [rsp+68h+var_3C], eax

loc_14069AC5C:                          ; CODE XREF: sub_14069A7C0+4D7↓j
                cmp     r10d, r11d
                jnb     short loc_14069AC88

loc_14069AC61:                          ; CODE XREF: sub_14069A7C0+4C0↓j
                mov     eax, r10d
                lea     rcx, [rax+rax*4]
                mov     rax, [r9+rcx*8]
                cmp     rax, rbx
                jz      short loc_14069ACDB
                test    rax, rax
                jz      loc_14069ADA7
                inc     r10d
                cmp     r10d, r11d
                jb      short loc_14069AC61
                mov     eax, [rsp+68h+var_3C]
                xor     ecx, ecx

loc_14069AC88:                          ; CODE XREF: sub_14069A7C0+49F↑j
                inc     eax
                mov     r10d, ecx
                mov     [rsp+68h+var_3C], eax
                mov     r11d, edx
                cmp     eax, 2
                jb      short loc_14069AC5C
                jmp     loc_1408166A1
; ---------------------------------------------------------------------------

loc_14069AC9E:                          ; CODE XREF: sub_14069A7C0+3D8↑j
                mov     [r8+10h], edx
                movzx   r13d, dx

loc_14069ACA6:                          ; CODE XREF: sub_14069A7C0+88↑j
                                        ; sub_14069A7C0+52F↓j ...
                mov     eax, [r8+20h]
                mov     ecx, [r8+1Ch]
                shr     eax, 2
                lea     eax, [rax+rax*2]
                cmp     ecx, eax
                jnb     loc_14069ADCA
                lea     eax, [rcx+1]
                mov     r15b, 1
                mov     [r8+1Ch], eax
                movzx   edx, r13w
                movzx   eax, r13w
                lea     rcx, [rax+rax*4]
                mov     [r9+rcx*8], rbx
                jmp     loc_14069A84E
; ---------------------------------------------------------------------------

loc_14069ACDB:                          ; CODE XREF: sub_14069A7C0+4AF↑j
                mov     [r12+r8], r10d
                mov     ecx, r10d
                jmp     loc_14069A8EA
; ---------------------------------------------------------------------------

loc_14069ACE7:                          ; CODE XREF: sub_14069A7C0+406↑j
                mov     [r8+10h], r10d
                movzx   r13d, r10w
                jmp     short loc_14069ACA6
; ---------------------------------------------------------------------------

loc_14069ACF1:                          ; CODE XREF: sub_14069A7C0+18E↑j
                                        ; sub_14069A7C0+55D↓j
                lea     rcx, unk_140C4FA58
                call    sub_14069AE94
                cmp     eax, 0C0000001h
                jz      loc_14069ADB1
                mov     rdx, cs:qword_140C4FA70
                mov     ecx, [rdx+10h]
                add     ecx, ebx
                cmp     ecx, [rdx+14h]
                jbe     loc_14069A954
                jmp     short loc_14069ACF1
; ---------------------------------------------------------------------------

loc_14069AD1F:                          ; CODE XREF: sub_14069A7C0+158↑j
                                        ; sub_14069A7C0+162↑j
                mov     r8, [rdx+8]
                test    r15d, r15d
                jnz     loc_14069ADB9
                and     r8, 0FFFFFFFFFFFFFFF9h
                or      r8, 1
                mov     [rdx+8], r8
                and     r8d, 7
                mov     rcx, [rbp+468h]
                xor     rcx, [rbp+440h]
                shl     rcx, 3
                or      rcx, r8
                mov     [rdx+8], rcx
                mov     eax, [rbp+5F4h]
                mov     [rdx+1Ch], eax
                mov     eax, [rbp+440h]
                mov     [rdx+18h], eax
                mov     [rdx+10h], rbp
                jmp     loc_14069A928
; ---------------------------------------------------------------------------

loc_14069AD70:                          ; CODE XREF: sub_14069A7C0+47E↑j
                mov     [r12+r8], edx

loc_14069AD74:                          ; CODE XREF: sub_14069A7C0+5EF↓j
                                        ; sub_14069A7C0+17BEE3↓j
                mov     dword ptr [rsp+68h+var_48], edx

loc_14069AD78:                          ; CODE XREF: sub_14069A7C0+17BEDC↓j
                mov     eax, [r8+20h]
                mov     ecx, [r8+1Ch]
                shr     eax, 2
                lea     eax, [rax+rax*2]
                cmp     ecx, eax
                jnb     short loc_14069ADE8
                lea     eax, [rcx+1]
                mov     r13b, 1
                mov     [r8+1Ch], eax
                movzx   eax, dx
                lea     rcx, [rax+rax*4]
                mov     [r9+rcx*8], rbx
                movzx   ecx, dx
                jmp     loc_14069A8F3
; ---------------------------------------------------------------------------

loc_14069ADA7:                          ; CODE XREF: sub_14069A7C0+4B4↑j
                mov     [r12+r8], r10d
                movzx   edx, r10w
                jmp     short loc_14069AD74
; ---------------------------------------------------------------------------

loc_14069ADB1:                          ; CODE XREF: sub_14069A7C0+542↑j
                mov     rax, r15
                jmp     loc_14069A9D6
; ---------------------------------------------------------------------------

loc_14069ADB9:                          ; CODE XREF: sub_14069A7C0+566↑j
                and     r8, 0FFFFFFFFFFFFFFFDh
                or      r8, 5
                mov     [rdx+8], r8
                jmp     loc_14069A928
; ---------------------------------------------------------------------------

loc_14069ADCA:                          ; CODE XREF: sub_14069A7C0+4F6↑j
                lea     rcx, unk_140C4FA80
                call    sub_14069AE94
                cmp     eax, 0C0000001h
                jnz     loc_14069A824

loc_14069ADE1:                          ; CODE XREF: sub_14069A7C0+91↑j
                                        ; sub_14069A7C0+136↑j ...
                xor     eax, eax
                jmp     loc_14069A9D6
; ---------------------------------------------------------------------------

loc_14069ADE8:                          ; CODE XREF: sub_14069A7C0+5C8↑j
                lea     rcx, unk_140C4FA80
                call    sub_14069AE94
                cmp     eax, 0C0000001h
                jnz     loc_14069A8C9
                jmp     short loc_14069ADE1
sub_14069A7C0   endp

; ---------------------------------------------------------------------------
algn_14069AE01:                         ; DATA XREF: .rdata:000000014006D7DC↑o
                                        ; .pdata:0000000140101DFC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14069AE10   proc near               ; CODE XREF: sub_14069A1E0+132↑p
                                        ; sub_14069A420+2DD↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+18h]
                mov     ebx, r8d
                mov     rdi, rdx
                mov     rsi, rcx
                mov     r10d, [rax+10h]
                add     r10d, r8d
                cmp     r10d, [rax+14h]
                ja      short loc_14069AE55

loc_14069AE39:                          ; CODE XREF: sub_14069AE10+60↓j
                mov     edx, [rax+10h]
                mov     [rdi], edx
                lea     ecx, [rdx+rbx]
                mov     [rax+10h], ecx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069AE55:                          ; CODE XREF: sub_14069AE10+27↑j
                                        ; sub_14069AE10+62↓j
                mov     rcx, rsi
                call    sub_14069AE94
                cmp     eax, 0C0000001h
                jz      short loc_14069AE74
                mov     rax, [rsi+18h]
                mov     edx, [rax+10h]
                add     edx, ebx
                cmp     edx, [rax+14h]
                jbe     short loc_14069AE39
                jmp     short loc_14069AE55
; ---------------------------------------------------------------------------

loc_14069AE74:                          ; CODE XREF: sub_14069AE10+52↑j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rsi, [rsp+28h+arg_8]
                mov     dword ptr [rdi], 0FFFFh
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14069AE10   endp

byte_14069AE8D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140101E08↑o

; =============== S U B R O U T I N E =======================================


sub_14069AE94   proc near               ; CODE XREF: sub_14069A7C0+538↑p
                                        ; sub_14069A7C0+611↑p ...

; FUNCTION CHUNK AT 00000001408166A8 SIZE 0000001D BYTES

                push    rbx
                sub     rsp, 20h
                mov     r10, rcx
                call    sub_14069AF34
                xor     ebx, ebx
                mov     r9, rax
                test    rax, rax
                jz      short loc_14069AEFD
                mov     edx, [rcx]
                and     dl, 0Fh
                cmp     dl, 1
                jz      short loc_14069AF04

loc_14069AEB6:                          ; CODE XREF: sub_14069AE94+92↓j
                                        ; sub_14069AE94+17B825↓j
                lea     rax, [r10+18h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_1408166BE
                mov     [r9], rcx
                mov     [r9+8], rax
                mov     [rcx+8], r9
                mov     [rax], r9
                movzx   eax, word ptr [r10+8]
                cmp     [r10+0Ah], ax
                jbe     short loc_14069AEEA

loc_14069AEE1:                          ; CODE XREF: sub_14069AE94+67↓j
                                        ; sub_14069AE94+6E↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14069AEEA:                          ; CODE XREF: sub_14069AE94+4B↑j
                xor     r8d, r8d
                lea     rcx, unk_140C4FAB0
                xor     edx, edx
                call    KeSetEvent
                jmp     short loc_14069AEE1
; ---------------------------------------------------------------------------

loc_14069AEFD:                          ; CODE XREF: sub_14069AE94+16↑j
                mov     ebx, 0C0000001h
                jmp     short loc_14069AEE1
; ---------------------------------------------------------------------------

loc_14069AF04:                          ; CODE XREF: sub_14069AE94+20↑j
                mov     rcx, [rcx+18h]
                movzx   r8d, word ptr [rcx+24h]
                mov     ecx, 0FFFFh
                add     r8w, [rax+20h]
                movzx   eax, r8w
                sub     ecx, eax
                mov     [r9+24h], ax
                cmp     ecx, [r9+20h]
                jnb     short loc_14069AEB6
                jmp     loc_1408166A8
sub_14069AE94   endp

; ---------------------------------------------------------------------------
byte_14069AF2D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006D848↑o
                                        ; .pdata:0000000140101E14↑o

; =============== S U B R O U T I N E =======================================


sub_14069AF34   proc near               ; CODE XREF: sub_14069AE94+9↑p
                                        ; sub_1407BF5B4+94↓p
                                        ; DATA XREF: ...
                mov     rdx, [rcx+10h]
                xor     eax, eax
                test    rdx, rdx
                jz      short locret_14069AF52
                mov     rax, [rdx]
                mov     [rcx+10h], rax
                mov     rax, rdx
                mov     edx, 0FFFFh
                add     [rcx+0Ah], dx

locret_14069AF52:                       ; CODE XREF: sub_14069AF34+9↑j
                retn
sub_14069AF34   endp

; ---------------------------------------------------------------------------
                align 4
byte_14069AF54  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140101E20↑o
; [0000006F BYTES: COLLAPSED FUNCTION DnsPrint_RpcStatsBuffer. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_14069AFCB  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140101E2C↑o
; [00000059 BYTES: COLLAPSED FUNCTION sub_14069AFD4. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_14069B02D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006D8A4↑o
                                        ; .pdata:0000000140101E38↑o

; =============== S U B R O U T I N E =======================================


sub_14069B034   proc near               ; CODE XREF: sub_14069C3B0+32↓p
                                        ; sub_140910970+9↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408166E8 SIZE 0000000E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                lea     rbp, qword_140C1DD10
                cmp     cs:qword_140C1DD10, rbp
                jnz     short loc_14069B06E

loc_14069B058:                          ; CODE XREF: sub_14069B034+8C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14069B06E:                          ; CODE XREF: sub_14069B034+22↑j
                lea     rcx, dword_140C1DD20
                call    ExAcquireFastMutex
                mov     rbx, cs:qword_140C1DD10

loc_14069B081:                          ; CODE XREF: sub_14069B034+6D↓j
                                        ; sub_14069B034+79↓j ...
                cmp     rbx, rbp
                jz      short loc_14069B0B4
                lea     rsi, [rbx-0A0h]
                mov     rbx, [rbx]
                lea     rdi, [rsi+0E0h]
                mov     rcx, rdi
                call    ExTryToAcquireFastMutex
                test    al, al
                jz      short loc_14069B081
                mov     rcx, rsi
                call    sub_140395224
                test    al, al
                jnz     short loc_14069B081
                jmp     loc_1408166E8
; ---------------------------------------------------------------------------

loc_14069B0B4:                          ; CODE XREF: sub_14069B034+50↑j
                lea     rcx, dword_140C1DD20
                call    KeReleaseGuardedMutex
                jmp     short loc_14069B058
sub_14069B034   endp

; ---------------------------------------------------------------------------
algn_14069B0C2:                         ; DATA XREF: .rdata:000000014006D8CC↑o
                                        ; .pdata:0000000140101E44↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14069B0C8   proc near               ; CODE XREF: sub_1402EFDAC+F5↑p
                                        ; sub_140395224+6F↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+0B0h]
                call    PsDereferenceSiloContext
                lea     rcx, [rbx-150h]
                call    IoDeleteDevice
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14069B0C8   endp

byte_14069B0F0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140101E50↑o

; =============== S U B R O U T I N E =======================================


sub_14069B0F8   proc near               ; CODE XREF: IoDeleteDevice+7E↑p
                                        ; DATA XREF: .pdata:0000000140101E5C↑o
                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx+138h]
                mov     rbx, rcx
                mov     rcx, [rax+58h]
                test    rcx, rcx
                jnz     short loc_14069B118

loc_14069B111:                          ; CODE XREF: sub_14069B0F8+36↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14069B118:                          ; CODE XREF: sub_14069B0F8+17↑j
                mov     edx, 47706E50h
                call    ExFreePoolWithTag
                mov     rax, [rbx+138h]
                and     qword ptr [rax+58h], 0
                jmp     short loc_14069B111
sub_14069B0F8   endp

; ---------------------------------------------------------------------------
algn_14069B130:                         ; DATA XREF: .pdata:0000000140101E5C↑o
                align 20h
; Exported entry 778. IoCreateDevice

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

