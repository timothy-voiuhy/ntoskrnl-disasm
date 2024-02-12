KeRundownQueue  proc near               ; DATA XREF: .pdata:00000001400D6F20↑o
                sub     rsp, 28h
                mov     dl, 1
                call    sub_14033D458
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRundownQueue  endp

algn_14033D2E1:                         ; DATA XREF: .pdata:00000001400D6F20↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14033D2E8   proc near               ; CODE XREF: sub_1406F2D90+6↓p
                                        ; sub_1406F2DB0+13↓p
                                        ; DATA XREF: ...

var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047BCBA SIZE 00000067 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+var_10], rax
                xorps   xmm1, xmm1
                mov     sil, dl
                mov     rdi, rcx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm1
                test    dl, dl
                jz      short loc_14033D383
                add     rcx, 40h ; '@'
                lea     rdx, [rbp+var_20]
                call    KeAcquireInStackQueuedSpinLock
                xor     dl, dl
                mov     byte ptr [rdi+48h], 1

loc_14033D330:                          ; CODE XREF: sub_14033D2E8+9D↓j
                mov     rcx, rdi
                call    sub_14033D458
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_14033D387

loc_14033D340:                          ; CODE XREF: sub_14033D2E8+120↓j
                                        ; sub_14033D2E8+15C↓j
                test    sil, sil
                jz      short loc_14033D364
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+var_10]
                test    eax, eax
                jnz     loc_14047BCBA

loc_14033D360:                          ; CODE XREF: sub_14033D2E8+13E9D4↓j
                                        ; sub_14033D2E8+13E9E0↓j ...
                mov     cr8, rdi

loc_14033D364:                          ; CODE XREF: sub_14033D2E8+5B↑j
                test    rbx, rbx
                jnz     loc_14033D42D

loc_14033D36D:                          ; CODE XREF: sub_14033D2E8+155↓j
                mov     rbx, [rsp+50h+arg_0]
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033D383:                          ; CODE XREF: sub_14033D2E8+33↑j
                mov     dl, 1
                jmp     short loc_14033D330
; ---------------------------------------------------------------------------

loc_14033D387:                          ; CODE XREF: sub_14033D2E8+56↑j
                mov     rax, [rax]
                cmp     [rax+8], rbx
                jnz     loc_14033D449
                mov     qword ptr [rbp+var_30], rax
                lea     rcx, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], rbx
                mov     [rax+8], rcx
                lea     rax, [rbp+var_30]
                mov     [rbx], rax
                lea     rax, [rbp+var_30]
                mov     rbx, qword ptr [rbp+var_30]
                cmp     rbx, rax
                jz      short loc_14033D3D1

loc_14033D3B8:                          ; CODE XREF: sub_14033D2E8+E3↓j
                mov     rcx, rbx
                mov     rbx, [rbx]
                cmp     byte ptr [rcx+10h], 2
                jz      short loc_14033D40D

loc_14033D3C4:                          ; CODE XREF: sub_14033D2E8+143↓j
                lea     rax, [rbp+var_30]
                cmp     rbx, rax
                jnz     short loc_14033D3B8
                mov     rbx, qword ptr [rbp+var_30]

loc_14033D3D1:                          ; CODE XREF: sub_14033D2E8+CE↑j
                lea     rax, [rbp+var_30]
                cmp     rbx, rax
                jz      short loc_14033D442
                mov     rax, qword ptr [rbp+var_30+8]
                lea     rcx, [rbp+var_30]
                cmp     [rbx+8], rcx
                jnz     short loc_14033D449
                lea     rcx, [rbp+var_30]
                cmp     [rax], rcx
                jnz     short loc_14033D449
                mov     [rax], rbx
                mov     [rbx+8], rax
                lea     rax, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], rax
                lea     rax, [rbp+var_30]
                mov     qword ptr [rbp+var_30], rax
                jmp     loc_14033D340
; ---------------------------------------------------------------------------

loc_14033D40D:                          ; CODE XREF: sub_14033D2E8+DA↑j
                mov     rax, [rcx+8]
                cmp     [rbx+8], rcx
                jnz     short loc_14033D449
                cmp     [rax], rcx
                jnz     short loc_14033D449
                mov     [rax], rbx
                mov     rdx, rdi
                mov     [rbx+8], rax
                call    sub_14033D9B0
                jmp     short loc_14033D3C4
; ---------------------------------------------------------------------------

loc_14033D42D:                          ; CODE XREF: sub_14033D2E8+7F↑j
                mov     rax, [rbx+8]
                mov     rcx, rbx
                and     qword ptr [rax], 0
                call    sub_1406F2DD4
                jmp     loc_14033D36D
; ---------------------------------------------------------------------------

loc_14033D442:                          ; CODE XREF: sub_14033D2E8+F0↑j
                xor     ebx, ebx
                jmp     loc_14033D340
; ---------------------------------------------------------------------------

loc_14033D449:                          ; CODE XREF: sub_14033D2E8+A6↑j
                                        ; sub_14033D2E8+FE↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D2E8   endp

; ---------------------------------------------------------------------------
byte_14033D450  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F8E0↑o
                                        ; .pdata:00000001400D6F2C↑o

; =============== S U B R O U T I N E =======================================


sub_14033D458   proc near               ; CODE XREF: KeRundownQueue+6↑p
                                        ; sub_14033D2E8+4B↑p ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047BD22 SIZE 00000042 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     bpl, dl
                mov     rbx, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047BD22

loc_14033D48D:                          ; CODE XREF: sub_14033D458+13E8CC↓j
                                        ; sub_14033D458+13E8D6↓j ...
                mov     rcx, rbx
                call    sub_1402AF4F0
                lea     rax, [rbx+18h]
                mov     rdi, [rax]
                cmp     rdi, rax
                jnz     short loc_14033D507
                xor     edi, edi

loc_14033D4A3:                          ; CODE XREF: sub_14033D458+D0↓j
                lea     r8, [rbx+28h]
                mov     [rsp+38h+var_18], bpl
                lea     rdx, [rbx+30h]
                mov     r9d, 1
                mov     rcx, rbx
                call    sub_14033D53C
                lock and dword ptr [rbx], 0FFFFFF7Fh
                test    bpl, bpl
                jz      short loc_14033D4D2
                mov     rcx, rbx
                call    sub_14033D974

loc_14033D4D2:                          ; CODE XREF: sub_14033D458+70↑j
                mov     rcx, gs:20h
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+38h+var_18], sil
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, rdi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033D507:                          ; CODE XREF: sub_14033D458+47↑j
                and     dword ptr [rbx+4], 0
                mov     rcx, [rax+8]
                cmp     [rdi+8], rax
                jnz     short loc_14033D52D
                cmp     [rcx], rax
                jnz     short loc_14033D52D
                mov     [rcx], rdi
                mov     [rdi+8], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                jmp     loc_14033D4A3
; ---------------------------------------------------------------------------

loc_14033D52D:                          ; CODE XREF: sub_14033D458+BB↑j
                                        ; sub_14033D458+C0↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D458   endp

; ---------------------------------------------------------------------------
byte_14033D534  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F908↑o
                                        ; .pdata:00000001400D6F38↑o

; =============== S U B R O U T I N E =======================================


sub_14033D53C   proc near               ; CODE XREF: sub_14033D458+61↑p
                                        ; sub_14052465C+7D↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 000000014047BD64 SIZE 00000085 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                lock bts dword ptr [rcx], 8
                xor     r13d, r13d
                mov     r14d, r9d
                mov     rsi, r8
                mov     r15, rdx
                mov     rbp, rcx
                cmp     [rsp+48h+arg_20], r13b
                jz      short loc_14033D594

loc_14033D573:                          ; CODE XREF: sub_14033D53C+1D0↓j
                mov     rax, [r15]
                cmp     rax, r15
                jnz     loc_14033D6AA
                test    r14d, r14d
                jz      short loc_14033D594
                mov     rax, r14

loc_14033D587:                          ; CODE XREF: sub_14033D53C+56↓j
                mov     [rsi], r13d
                lea     rsi, [rsi+4]
                sub     rax, 1
                jnz     short loc_14033D587

loc_14033D594:                          ; CODE XREF: sub_14033D53C+35↑j
                                        ; sub_14033D53C+46↑j
                mov     r12, gs:20h
                lea     rsi, [rbp+8]
                mov     r14, [rsi]

loc_14033D5A4:                          ; CODE XREF: sub_14033D53C+1F5↓j
                                        ; sub_14033D53C+13E8A8↓j
                cmp     r14, rsi
                jnz     short loc_14033D5CE
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     [rsi+8], rsi
                mov     [rsi], rsi
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033D5CE:                          ; CODE XREF: sub_14033D53C+6B↑j
                mov     rbx, r14
                mov     edx, 2
                mov     r14, [r14]
                mov     al, [rbx+10h]
                cmp     al, 1
                jz      loc_14047BDC8
                cmp     al, dl
                jnz     loc_14047BDCF
                mov     byte ptr [rbx+11h], 5
                mov     rdi, [rbx+18h]
                mov     [rbx], r13
                lea     r15, [rdi+8]
                mov     rcx, cr8
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14033D615
                test    al, 1
                jnz     loc_14033D736

loc_14033D615:                          ; CODE XREF: sub_14033D53C+CF↑j
                                        ; sub_14033D53C+1FD↓j ...
                mov     r13, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     rbp, [r13+8]
                jnz     loc_14033D76E

loc_14033D632:                          ; CODE XREF: sub_14033D53C+248↓j
                mov     rcx, rdi
                call    sub_1402AF4F0
                cmp     [r15], r15
                jz      short loc_14033D664
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                jnb     short loc_14033D664
                mov     rax, [rbp+0E8h]
                cmp     rax, rdi
                jnz     loc_14033D711
                cmp     byte ptr [rbp+283h], 0Fh
                jnz     loc_14033D711

loc_14033D664:                          ; CODE XREF: sub_14033D53C+101↑j
                                        ; sub_14033D53C+109↑j ...
                mov     ecx, [rdi+4]
                lea     eax, [rcx+1]
                mov     [rdi+4], eax
                lea     rax, [rdi+18h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_14033D789
                mov     [rbx], rax
                mov     [rbx+8], rdx
                mov     [rdx], rbx
                mov     [rax+8], rbx
                test    ecx, ecx
                jnz     loc_14033D727
                cmp     [r15], r15
                jz      loc_14033D727
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_1402C2EC0
                jmp     short loc_14033D727
; ---------------------------------------------------------------------------

loc_14033D6AA:                          ; CODE XREF: sub_14033D53C+3D↑j
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14033D789
                cmp     [rcx], rax
                jnz     loc_14033D789
                mov     [rcx], rdx
                lea     rdi, [rax-208h]
                mov     [rdx+8], rcx
                mov     rbx, gs:20h
                mov     [rsp+48h+arg_0], r13d

loc_14033D6E0:                          ; CODE XREF: sub_14033D53C+13E887↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14047BD64

loc_14033D6F0:                          ; CODE XREF: sub_14033D53C+13E82C↓j
                                        ; sub_14033D53C+13E83B↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_14047BD8B
                mov     rcx, rdi
                mov     [rdi+0E8h], r13
                call    sub_1403261B0
                jmp     loc_14033D573
; ---------------------------------------------------------------------------

loc_14033D711:                          ; CODE XREF: sub_14033D53C+115↑j
                                        ; sub_14033D53C+122↑j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_1402AF540
                test    al, al
                jz      loc_14033D664

loc_14033D727:                          ; CODE XREF: sub_14033D53C+152↑j
                                        ; sub_14033D53C+15B↑j ...
                lock and dword ptr [rdi], 0FFFFFF7Fh
                xor     r13d, r13d
                jmp     loc_14033D5A4
; ---------------------------------------------------------------------------

loc_14033D736:                          ; CODE XREF: sub_14033D53C+D3↑j
                cmp     cl, 0Fh
                ja      loc_14033D615
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_14033D615
; ---------------------------------------------------------------------------

loc_14033D76E:                          ; CODE XREF: sub_14033D53C+F0↑j
                mov     rcx, rbp
                call    sub_1405131B4
                mov     r8b, al
                mov     rcx, rbp
                mov     rdx, rbx
                call    sub_1405A7A60
                jmp     loc_14033D632
; ---------------------------------------------------------------------------

loc_14033D789:                          ; CODE XREF: sub_14033D53C+13C↑j
                                        ; sub_14033D53C+179↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D53C   endp

; ---------------------------------------------------------------------------
algn_14033D790:                         ; DATA XREF: .rdata:000000014007F938↑o
                                        ; .pdata:00000001400D6F44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033D7A0   proc near               ; DATA XREF: .pdata:00000001400D6F50↑o
                                        ; sub_140A74914+65↓o
                sub     rsp, 28h
                call    sub_14033D7B8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033D7A0   endp

byte_14033D7AF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6F50↑o

; =============== S U B R O U T I N E =======================================


sub_14033D7B8   proc near               ; CODE XREF: sub_14033D7A0+4↑p
                                        ; DATA XREF: .rdata:000000014007F964↑o ...

var_98          = byte ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047BDEA SIZE 000002BD BYTES

                mov     [rsp+arg_8], edx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     rsi, gs:188h
                xor     r15d, r15d
                mov     edi, r15d
                mov     byte ptr [rsp+0B8h+arg_8], r15b
                mov     ebp, r15d
                mov     [rsp+0B8h+var_70], rsi
                mov     r13b, r15b
                mov     [rsp+0B8h+var_80], r15
                mov     rbx, rcx
                mov     r14, cr8
                mov     [rsp+0B8h+arg_18], r14
                lea     eax, [r15+2]
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047BDEA

loc_14033D818:                          ; CODE XREF: sub_14033D7B8+13E634↓j
                                        ; sub_14033D7B8+13E63E↓j ...
                mov     r12, gs:20h
                mov     rcx, rbx
                mov     [rsp+0B8h+var_88], r12
                call    sub_1402AF4F0
                mov     eax, [rbx+4]
                or      byte ptr [rbx+30h], 1
                mov     dword ptr [rbx+4], 1
                test    eax, eax
                jle     short loc_14033D884
                mov     r15d, 0FFFFFF7Fh
                lock and [rbx], r15d

loc_14033D84A:                          ; CODE XREF: sub_14033D7B8+19D↓j
                xor     edx, edx
                mov     [rsp+0B8h+var_98], r14b
                mov     rcx, r12
                lea     r9d, [rdx+1]
                mov     r8d, r9d
                call    sub_14023E110
                test    r13b, r13b
                jnz     loc_14047C06B

loc_14033D869:                          ; CODE XREF: sub_14033D7B8+13E8C1↓j
                                        ; sub_14033D7B8+13E8DC↓j
                cmp     rbp, rsi
                jz      loc_14033D95A

loc_14033D872:                          ; CODE XREF: sub_14033D7B8+1A4↓j
                                        ; sub_14033D7B8+13E8EA↓j
                add     rsp, 78h
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
                align 4

loc_14033D884:                          ; CODE XREF: sub_14033D7B8+86↑j
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+0B8h+var_58], rax
                mov     eax, [rbx]
                movups  [rsp+0B8h+var_68], xmm0
                mov     dword ptr [rsp+0B8h+var_68], eax
                mov     byte ptr [rsp+0B8h+var_68+2], r15b
                mov     eax, dword ptr [rsp+0B8h+var_68]
                mov     [rbx], eax
                movzx   eax, byte ptr [rbx+31h]
                mov     rdi, gs:20h
                mov     rbp, [rbx+28h]
                mov     [rsp+0B8h+arg_10], eax
                mov     [rsp+0B8h+arg_0], r15d

loc_14033D8C4:                          ; CODE XREF: sub_14033D7B8+13E6D6↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14047BE2C

loc_14033D8D4:                          ; CODE XREF: sub_14033D7B8+13E678↓j
                                        ; sub_14033D7B8+13E687↓j ...
                lock bts qword ptr [rbp+40h], 0
                jb      loc_14047BE53
                lea     rax, [rbx+18h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     short loc_14033D967
                cmp     [rcx], rax
                jnz     short loc_14033D967
                mov     [rcx], rdx
                mov     r13d, 2
                mov     [rdx+8], rcx
                test    [rbx+30h], r13b
                jnz     loc_14047BE93

loc_14033D90E:                          ; CODE XREF: sub_14033D7B8+13E6E6↓j
                                        ; sub_14033D7B8+13E6FA↓j
                mov     rcx, rbp
                call    sub_1403261B0
                lea     rax, [rbx+8]
                mov     [rbx+28h], r15
                mov     rsi, [rax]
                mov     r15d, 0FFFFFF7Fh
                cmp     rsi, rax
                jnz     loc_14047BEB7

loc_14033D930:                          ; CODE XREF: sub_14033D7B8+13E8AE↓j
                lock and [rbx], r15d
                mov     rcx, rbx
                call    sub_14033D974
                mov     rsi, [rsp+0B8h+var_70]
                mov     r12, [rsp+0B8h+var_88]
                mov     r13b, byte ptr [rsp+0B8h+arg_8]
                mov     edi, [rsp+0B8h+arg_10]
                jmp     loc_14033D84A
; ---------------------------------------------------------------------------

loc_14033D95A:                          ; CODE XREF: sub_14033D7B8+B4↑j
                test    edi, edi
                jz      loc_14033D872
                jmp     loc_14047C099
; ---------------------------------------------------------------------------

loc_14033D967:                          ; CODE XREF: sub_14033D7B8+138↑j
                                        ; sub_14033D7B8+13D↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D7B8   endp

; ---------------------------------------------------------------------------
byte_14033D96E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007F964↑o
                                        ; .pdata:00000001400D6F5C↑o

; =============== S U B R O U T I N E =======================================


sub_14033D974   proc near               ; CODE XREF: sub_14033D458+75↑p
                                        ; sub_14033D7B8+17F↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rax, unk_140D26A00
                shr     rbx, 4
                and     ebx, 3Fh
                shl     rbx, 6
                add     rbx, rax
                mov     rcx, rbx
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                mov     rcx, rbx
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033D974   endp

algn_14033D9A9:                         ; DATA XREF: .pdata:00000001400D6F68↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033D9B0   proc near               ; CODE XREF: sub_14033D2E8+13E↑p
                                        ; DATA XREF: .rdata:000000014007F990↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047C0A8 SIZE 00000064 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, [rcx+50h]
                mov     rdi, rcx
                add     rcx, 60h ; '`'
                mov     rbp, rdx
                call    KeAcquireSpinLockRaiseToDpc
                and     qword ptr [rdi+58h], 0
                lea     rcx, [rdi+60h]
                movzx   esi, al
                mov     byte ptr [rdi+68h], 0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047C0A8

loc_14033D9FF:                          ; CODE XREF: sub_14033D9B0+13E6FA↓j
                                        ; sub_14033D9B0+13E706↓j ...
                mov     cr8, rsi
                mov     ebx, 746C6644h
                mov     rcx, r14
                mov     edx, ebx
                call    ObfDereferenceObjectWithTag
                mov     edx, ebx
                mov     rcx, rbp
                call    ObfDereferenceObjectWithTag
                mov     edx, ebx
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033D9B0   endp

algn_14033DA42:                         ; DATA XREF: .rdata:000000014007F990↑o
                                        ; .pdata:00000001400D6F74↑o
                align 10h
; Exported entry 799. IoCsqRemoveNextIrp

; =============== S U B R O U T I N E =======================================


