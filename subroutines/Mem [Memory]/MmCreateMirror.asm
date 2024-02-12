MmCreateMirror  proc near               ; CODE XREF: sub_140687200:loc_140687415↑p
                                        ; DATA XREF: .pdata:000000014011E6EC↑o

var_50          = qword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = dword ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h

                push    rbp
                mov     rbp, rsp
                sub     rsp, 70h
                and     [rbp+var_C], 0
                lea     rax, aKernelMemorymi ; "Kernel-MemoryMirroringSupported"
                and     [rbp+arg_10], 0
                lea     r8, [rbp+arg_0]
                and     [rbp+arg_0], 0
                lea     rdx, [rbp+arg_10]
                mov     [rbp+var_38], rax
                lea     rcx, [rbp+var_40]
                lea     rax, [rbp+arg_8]
                mov     [rbp+var_40], 40003Eh
                mov     r9d, 4
                mov     [rsp+70h+var_50], rax
                mov     [rbp+arg_8], r9d
                call    ZwQueryLicenseValue
                test    eax, eax
                js      loc_1408C8AD0
                cmp     [rbp+arg_0], 1
                jnz     loc_1408C8AD0
                mov     rax, gs:188h
                mov     dl, [rax+232h]
                test    dl, dl
                jz      short loc_1408C8A78
                mov     rcx, cs:qword_140D2E750
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     short loc_1408C8A78
                mov     eax, 0C0000061h
                jmp     short loc_1408C8AD5
; ---------------------------------------------------------------------------

loc_1408C8A78:                          ; CODE XREF: MmCreateMirror+6F↑j
                                        ; MmCreateMirror+7F↑j
                mov     ecx, cs:dword_140CFB184
                test    cl, 1
                jnz     short loc_1408C8A8A
                mov     eax, 0C00000BBh
                jmp     short loc_1408C8AD5
; ---------------------------------------------------------------------------

loc_1408C8A8A:                          ; CODE XREF: MmCreateMirror+91↑j
                mov     rax, cs:off_140C00AE0
                and     cl, 2
                mov     [rbp+var_30], rax
                neg     cl
                mov     rax, cs:off_140C00AE8
                lea     rcx, [rbp+var_30]
                mov     [rbp+var_28], rax
                mov     rax, cs:off_140C00AF0
                mov     [rbp+var_20], rax
                sbb     rax, rax
                and     rax, cs:off_140C00B00
                mov     [rbp+var_18], rax
                mov     [rbp+var_10], 2
                call    sub_140997B1C
                jmp     short loc_1408C8AD5
; ---------------------------------------------------------------------------

loc_1408C8AD0:                          ; CODE XREF: MmCreateMirror+4E↑j
                                        ; MmCreateMirror+58↑j
                mov     eax, 0C000026Ah

loc_1408C8AD5:                          ; CODE XREF: MmCreateMirror+86↑j
                                        ; MmCreateMirror+98↑j ...
                add     rsp, 70h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmCreateMirror  endp

byte_1408C8ADC  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014011E6EC↑o

; =============== S U B R O U T I N E =======================================


sub_1408C8AE4   proc near               ; CODE XREF: sub_1408C8B98+2F↓p
                                        ; DATA XREF: .pdata:000000014011E6F8↑o

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
                movzx   r9d, word ptr [rcx+1Eh]
                xor     ebp, ebp
                mov     r11, rdx
                test    r9w, r9w
                jz      short loc_1408C8B71
                movzx   r8d, word ptr [rcx+28h]
                lea     r10, [r8+rcx]
                lea     r8, [r8+r9*2]
                cmp     r8, rdx
                ja      short loc_1408C8B71
                movzx   edx, bp
                cmp     bp, r9w
                jnb     short loc_1408C8B71
                movzx   esi, word ptr [rcx+2Ah]
                lea     r14d, [rbp+1]

loc_1408C8B2C:                          ; CODE XREF: sub_1408C8AE4+8B↓j
                movzx   edi, word ptr [r10]
                add     edi, esi
                mov     ebx, edi
                cmp     rbx, r11
                jnb     short loc_1408C8B71
                movzx   r8d, byte ptr [rdi+rcx]
                test    r8b, r8b
                jz      short loc_1408C8B71
                lea     eax, [rdi+r8]
                cmp     rax, r11
                jnb     short loc_1408C8B71
                cmp     r8b, 8
                jnz     short loc_1408C8B63
                mov     r8, 534C4C4143534F44h
                cmp     [rdi+rcx+1], r8
                jz      short loc_1408C8B8B

loc_1408C8B63:                          ; CODE XREF: sub_1408C8AE4+6C↑j
                add     r10, 2
                add     dx, r14w
                cmp     dx, r9w
                jb      short loc_1408C8B2C

loc_1408C8B71:                          ; CODE XREF: sub_1408C8AE4+23↑j
                                        ; sub_1408C8AE4+35↑j ...
                xor     eax, eax

loc_1408C8B73:                          ; CODE XREF: sub_1408C8AE4+AA↓j
                mov     rbx, [rsp+8+arg_0]
                mov     rbp, [rsp+8+arg_8]
                mov     rsi, [rsp+8+arg_10]
                mov     rdi, [rsp+8+arg_18]
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408C8B8B:                          ; CODE XREF: sub_1408C8AE4+7D↑j
                mov     eax, r14d
                jmp     short loc_1408C8B73
sub_1408C8AE4   endp

; ---------------------------------------------------------------------------
byte_1408C8B90  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014011E6F8↑o

; =============== S U B R O U T I N E =======================================


sub_1408C8B98   proc near               ; CODE XREF: sub_140693F08+181749↑p
                                        ; DATA XREF: .pdata:000000014011E704↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                movzx   eax, word ptr [rcx]
                mov     rbx, rcx
                mov     ecx, 454Eh
                mov     rsi, r8
                mov     rdi, rdx
                cmp     ax, cx
                jnz     loc_1408C8D96
                mov     rdx, r8
                mov     rcx, rbx
                call    sub_1408C8AE4
                test    eax, eax
                jnz     short loc_1408C8C0D
                mov     al, [rbx+36h]
                cmp     al, 2
                jz      short loc_1408C8BF9
                test    al, al
                jnz     short loc_1408C8C0D
                movzx   eax, word ptr [rbx+3Eh]
                mov     ecx, 0FF00h
                and     ax, cx
                mov     ecx, 200h
                sub     ax, cx
                mov     ecx, 0FEFFh
                test    cx, ax
                jnz     short loc_1408C8C0D

loc_1408C8BF9:                          ; CODE XREF: sub_1408C8B98+3D↑j
                mov     cs:dword_140C4CA98, 3Ch ; '<'
                mov     eax, 0C0000131h
                jmp     loc_1408C8DBB
; ---------------------------------------------------------------------------

loc_1408C8C0D:                          ; CODE XREF: sub_1408C8B98+36↑j
                                        ; sub_1408C8B98+41↑j ...
                mov     cl, [rbx+36h]
                cmp     cl, 5
                jz      loc_1408C8D8A
                movzx   eax, word ptr [rbx+2Ah]
                cmp     [rbx+4], ax
                jz      loc_1408C8D8A
                cmp     cl, 1
                jnz     short loc_1408C8C5B
                mov     ecx, [rdi+200h]
                sub     ecx, 54533631h
                jnz     short loc_1408C8C48
                movzx   ecx, word ptr [rdi+204h]
                mov     eax, 4255h
                sub     ecx, eax

loc_1408C8C48:                          ; CODE XREF: sub_1408C8B98+A0↑j
                test    ecx, ecx
                jnz     short loc_1408C8C5B
                mov     cs:dword_140C4CA98, 3Eh ; '>'
                jmp     loc_1408C8DB6
; ---------------------------------------------------------------------------

loc_1408C8C5B:                          ; CODE XREF: sub_1408C8B98+92↑j
                                        ; sub_1408C8B98+B2↑j
                movzx   ecx, word ptr [rdi+8]
                shl     rcx, 4
                cmp     rcx, 0FC6h
                ja      short loc_1408C8CDD
                mov     rax, [rcx+rdi+18h]
                mov     rdx, 70614C2072616850h
                sub     rax, rdx
                jnz     short loc_1408C8CA6
                mov     rax, [rcx+rdi+20h]
                mov     rdx, 72617774666F5320h
                sub     rax, rdx
                jnz     short loc_1408C8CA6
                mov     rax, [rcx+rdi+28h]
                mov     rdx, 2E636E49202C65h
                sub     rax, rdx

loc_1408C8CA6:                          ; CODE XREF: sub_1408C8B98+E6↑j
                                        ; sub_1408C8B98+FA↑j
                test    rax, rax
                jnz     short loc_1408C8CDD
                movzx   eax, word ptr [rcx+rdi+38h]
                mov     edx, 4B50h
                cmp     ax, dx
                jz      short loc_1408C8CCE
                mov     edx, 4F50h
                cmp     ax, dx
                jz      short loc_1408C8CCE
                mov     edx, 5650h
                cmp     ax, dx
                jnz     short loc_1408C8CDD

loc_1408C8CCE:                          ; CODE XREF: sub_1408C8B98+120↑j
                                        ; sub_1408C8B98+12A↑j
                mov     cs:dword_140C4CA98, 3Fh ; '?'
                jmp     loc_1408C8DB6
; ---------------------------------------------------------------------------

loc_1408C8CDD:                          ; CODE XREF: sub_1408C8B98+D2↑j
                                        ; sub_1408C8B98+111↑j ...
                lea     rax, [rcx+32h]
                cmp     rax, 1000h
                ja      short loc_1408C8D28
                lea     rdx, [rcx+rdi]
                movzx   eax, word ptr [rdx+30h]
                mov     r8d, eax
                add     rax, rcx
                cmp     rax, 0FDCh
                ja      short loc_1408C8D28
                lea     rcx, [r8+rdx]
                mov     r8d, 24h ; '$'
                lea     rdx, aCopyrightCRati ; "Copyright (C) Rational Systems, Inc."
                call    memcmp
                test    eax, eax
                jnz     short loc_1408C8D28
                mov     cs:dword_140C4CA98, 40h ; '@'
                jmp     loc_1408C8DB6
; ---------------------------------------------------------------------------

loc_1408C8D28:                          ; CODE XREF: sub_1408C8B98+14F↑j
                                        ; sub_1408C8B98+165↑j ...
                mov     eax, [rbx+2Ch]
                mov     ecx, [rdi+3Ch]
                cmp     eax, ecx
                ja      short loc_1408C8D43
                mov     cs:dword_140C4CA98, 41h ; 'A'

loc_1408C8D3C:                          ; CODE XREF: sub_1408C8B98+1F0↓j
                mov     eax, 0C000011Bh
                jmp     short loc_1408C8DBB
; ---------------------------------------------------------------------------

loc_1408C8D43:                          ; CODE XREF: sub_1408C8B98+198↑j
                sub     eax, ecx
                movsxd  rcx, eax
                lea     rax, [rcx+10h]
                cmp     rax, rcx
                jbe     short loc_1408C8D7E
                cmp     rax, rsi
                jnb     short loc_1408C8D7E
                inc     rcx
                lea     rdx, a123Preloader ; "1-2-3 Preloader"
                add     rcx, rbx
                mov     r8d, 0Fh
                call    memcmp
                test    eax, eax
                jnz     short loc_1408C8D7E
                mov     cs:dword_140C4CA98, 42h ; 'B'
                jmp     short loc_1408C8DB6
; ---------------------------------------------------------------------------

loc_1408C8D7E:                          ; CODE XREF: sub_1408C8B98+1B7↑j
                                        ; sub_1408C8B98+1BC↑j ...
                mov     cs:dword_140C4CA98, 43h ; 'C'
                jmp     short loc_1408C8D3C
; ---------------------------------------------------------------------------

loc_1408C8D8A:                          ; CODE XREF: sub_1408C8B98+7B↑j
                                        ; sub_1408C8B98+89↑j
                mov     cs:dword_140C4CA98, 3Dh ; '='
                jmp     short loc_1408C8DB6
; ---------------------------------------------------------------------------

loc_1408C8D96:                          ; CODE XREF: sub_1408C8B98+23↑j
                mov     ecx, 454Ch
                cmp     ax, cx
                jnz     short loc_1408C8DAC
                mov     cs:dword_140C4CA98, 44h ; 'D'
                jmp     short loc_1408C8DB6
; ---------------------------------------------------------------------------

loc_1408C8DAC:                          ; CODE XREF: sub_1408C8B98+206↑j
                mov     cs:dword_140C4CA98, 45h ; 'E'

loc_1408C8DB6:                          ; CODE XREF: sub_1408C8B98+BE↑j
                                        ; sub_1408C8B98+140↑j ...
                mov     eax, 0C0000130h

loc_1408C8DBB:                          ; CODE XREF: sub_1408C8B98+70↑j
                                        ; sub_1408C8B98+1A9↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C8B98   endp

byte_1408C8DCC  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014011E704↑o

; =============== S U B R O U T I N E =======================================


sub_1408C8DD4   proc near               ; CODE XREF: sub_1406932DC+181DB3↑p
                                        ; DATA XREF: .pdata:000000014011E710↑o

var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = byte ptr -98h
var_78          = byte ptr -78h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     r10, cs:qword_140C4ED60
                mov     ebx, r8d
                mov     r11, rdx
                test    r10, r10
                jz      loc_1408C8F0E
                cmp     dword ptr [r10], 5
                jbe     loc_1408C8F0E
                mov     rdx, 400000000000h
                mov     rcx, r10
                call    sub_140209F38
                test    al, al
                jz      loc_1408C8F0E
                lea     rdx, aSectionalignme ; "SectionAlignmentIssue"
                lea     rcx, [rsp+0E8h+var_78]
                call    sub_1402B2E14
                and     [rsp+0E8h+var_5C], 0
                lea     rax, [rsp+0E8h+var_50]
                and     [rsp+0E8h+var_4C], 0
                lea     rdx, byte_140024EC8
                and     [rsp+0E8h+var_3C], 0
                mov     ecx, 4
                and     [rsp+0E8h+var_2C], 0
                and     [rsp+0E8h+var_1C], 0
                mov     [rsp+0E8h+var_68], rax
                mov     rax, [r11+60h]
                mov     [rsp+0E8h+var_58], rax
                movzx   eax, word ptr [r11+58h]
                mov     [rsp+0E8h+var_50], eax
                lea     rax, [rsp+0E8h+var_A8]
                mov     [rsp+0E8h+var_48], rax
                lea     rax, [rsp+0E8h+var_A4]
                mov     [rsp+0E8h+var_38], rax
                lea     rax, [rsp+0E8h+var_A0]
                mov     [rsp+0E8h+var_40], ecx
                mov     [rsp+0E8h+var_30], ecx
                mov     ecx, 8
                mov     [rsp+0E8h+var_28], rax
                lea     rax, [rsp+0E8h+var_98]
                mov     [rsp+0E8h+var_B0], rax
                mov     [rsp+0E8h+var_A4], r9d
                mov     [rsp+0E8h+var_B8], ecx
                lea     r9d, [rcx-7]
                mov     [rsp+0E8h+var_20], ecx
                mov     rcx, r10
                mov     [rsp+0E8h+var_60], 2
                mov     [rsp+0E8h+var_A8], ebx
                mov     [rsp+0E8h+var_A0], 1000000h
                call    sub_140363A0C

loc_1408C8F0E:                          ; CODE XREF: sub_1408C8DD4+2B↑j
                                        ; sub_1408C8DD4+35↑j ...
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E0h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408C8DD4
sub_1408C8DD4   endp

algn_1408C8F28:                         ; DATA XREF: .pdata:000000014011E710↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1408C8F30   proc near               ; CODE XREF: sub_1406A13BC+935↑p
                                        ; sub_1406A11D0+176CE9↑p
                                        ; DATA XREF: ...

var_50          = dword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], rsi
                mov     [rsp-18h+arg_18], rdi
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     rsi, [rcx]
                lea     rbx, [rcx+80h]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rbp+var_40], xmm0
                mov     [rbp+var_30], rax
                mov     r14d, edx
                mov     r15d, [rsi+30h]

loc_1408C8F77:                          ; CODE XREF: sub_1408C8F30+10A↓j
                mov     rdi, [rbx+8]
                test    rdi, rdi
                jz      loc_1408C9030
                mov     eax, [rbx+2Ch]
                mov     edx, 1
                mov     qword ptr [rbp+var_40], rdi
                mov     r8d, 20400001h
                lea     rcx, [rdi+rax*8]
                mov     qword ptr [rbp+var_40+8], rcx
                lea     rax, [rbp+var_40]
                cmp     r14d, edx
                jnz     short loc_1408C9006
                and     [rbp+var_1C], 0
                lea     rcx, [rbp+var_28]
                mov     r9d, 249h
                mov     dword ptr [rbp+var_30], r15d
                mov     [rbp+var_28], rax
                mov     [rbp+var_20], 18h
                mov     [rsp+70h+var_50], 401902h
                call    sub_1402B8C20
                mov     ecx, 1000h
                test    [rsi+0Ch], cx
                jz      short loc_1408C9030
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                test    al, 1
                jz      short loc_1408C9030
                mov     edx, 2
                lea     ecx, [rdx-1]
                call    sub_140544C28
                mov     r9d, [rbx+2Ch]
                mov     r8d, eax
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1405317EC
                jmp     short loc_1408C9030
; ---------------------------------------------------------------------------

loc_1408C9006:                          ; CODE XREF: sub_1408C8F30+75↑j
                or      dword ptr [rbp+var_30], 0FFFFFFFFh
                lea     rcx, [rbp+var_18]
                and     [rbp+var_C], 0
                mov     r9d, 24Fh
                mov     [rbp+var_18], rax
                mov     [rbp+var_10], 18h
                mov     [rsp+70h+var_50], 1401902h
                call    sub_1402B8C20

loc_1408C9030:                          ; CODE XREF: sub_1408C8F30+4E↑j
                                        ; sub_1408C8F30+AA↑j ...
                mov     rax, [rbx+10h]
                mov     rbx, rax
                test    rax, rax
                jnz     loc_1408C8F77
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408C8F30
sub_1408C8F30   endp

algn_1408C9067:                         ; DATA XREF: .pdata:000000014011E71C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1408C9070   proc near               ; CODE XREF: sub_14061D310+1E1428↑p
                                        ; sub_1406579E0+1B0E06↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 48h
                mov     r8d, edx
                call    sub_140267410
                mov     [rsp+48h+var_18], rcx
                mov     r9d, 10h
                mov     edx, 20400001h
                mov     [rsp+48h+var_28], 401902h
                mov     rax, [rax]
                mov     rcx, [rax+40h]
                xor     eax, eax
                cmp     r8d, 1
                mov     [rsp+48h+var_10], rcx
                lea     r8, [rsp+48h+var_18]
                setnz   al
                lea     ecx, [rax+287h]
                call    sub_1405307D0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C9070   endp

byte_1408C90BF  db 11h dup(0CCh)        ; DATA XREF: .pdata:000000014011E728↑o

; =============== S U B R O U T I N E =======================================


sub_1408C90D0   proc near               ; DATA XREF: .pdata:000000014011E734↑o
                                        ; PAGE:000000014098C108↓o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h

                sub     rsp, 58h
                and     [rsp+58h+var_10], 0
                mov     eax, [rsp+58h+arg_40]
                mov     [rsp+58h+var_18], eax
                mov     rax, [rsp+58h+arg_38]
                mov     [rsp+58h+var_20], rax
                mov     rax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], rax
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], eax
                mov     eax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], eax
                call    sub_14061BAA0
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C90D0   endp

byte_1408C911F  db 11h dup(0CCh)        ; DATA XREF: .pdata:000000014011E734↑o

; =============== S U B R O U T I N E =======================================


sub_1408C9130   proc near               ; DATA XREF: .pdata:000000014011E740↑o
                                        ; sub_1402CB390+18D1FE↑o ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     byte ptr [rcx+30h], 1
                mov     rbx, [rcx+20h]
                mov     edi, [rcx+28h]
                jnz     short loc_1408C9150
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1408C9155
; ---------------------------------------------------------------------------

loc_1408C9150:                          ; CODE XREF: sub_1408C9130+15↑j
                lock and dword ptr [rcx+2Ch], 0

loc_1408C9155:                          ; CODE XREF: sub_1408C9130+1E↑j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1404EA998
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C9130   endp

byte_1408C9173  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014011E740↑o

; =============== S U B R O U T I N E =======================================


sub_1408C917C   proc near               ; CODE XREF: sub_1403CA5F4+164↑p
                                        ; DATA XREF: .pdata:000000014011E74C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     rbp, rcx
                add     [rsi+1E6h], bx
                lea     r14, qword_140C4E488
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, cs:qword_140C4E4A8
                lea     edx, [rbx+2]
                xor     r8d, r8d
                call    RtlFindClearBitsAndSet
                mov     edi, eax
                mov     r13d, 0FFFFFFFFh
                cmp     rdi, r13
                jnz     short loc_1408C9206
                xor     r15d, r15d

loc_1408C91E3:                          ; CODE XREF: sub_1408C917C+88↓j
                call    sub_1408DC538
                test    eax, eax
                jz      short loc_1408C9267
                mov     rcx, cs:qword_140C4E4A8
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    RtlFindClearBitsAndSet
                mov     edi, eax
                cmp     rdi, r13
                jz      short loc_1408C91E3

loc_1408C9206:                          ; CODE XREF: sub_1408C917C+62↑j
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, di
                mov     cs:byte_140C4E4DC, 1
                mov     [rax+rcx*8], rbp
                lock xadd cs:qword_140C4E488, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1408C9234
                mov     rcx, r14
                call    ExfTryToWakePushLock

loc_1408C9234:                          ; CODE XREF: sub_1408C917C+AE↑j
                mov     rcx, r14
                call    sub_140243660
                mov     rcx, rsi
                call    sub_140245770
                movzx   eax, di

loc_1408C9247:                          ; CODE XREF: sub_1408C917C+118↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408C9267:                          ; CODE XREF: sub_1408C917C+6E↑j
                lock xadd cs:qword_140C4E488, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1408C9280
                mov     rcx, r14
                call    ExfTryToWakePushLock

loc_1408C9280:                          ; CODE XREF: sub_1408C917C+FA↑j
                mov     rcx, r14
                call    sub_140243660
                mov     rcx, rsi
                call    sub_140245770
                movzx   eax, r15w
                jmp     short loc_1408C9247
sub_1408C917C   endp

; ---------------------------------------------------------------------------
byte_1408C9296  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014011E74C↑o

; =============== S U B R O U T I N E =======================================


sub_1408C929C   proc near               ; CODE XREF: sub_1405358AC+20↑p
                                        ; DATA XREF: .pdata:000000014011E758↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                movzx   edi, cx
                add     [rsi+1E6h], bx
                xor     edx, edx
                lea     rcx, qword_140C4E488
                call    ExAcquirePushLockExclusiveEx
                mov     rax, cs:qword_140C4E4A8
                mov     rdx, [rax+8]
                btr     [rdx], edi
                mov     rax, cs:qword_140C4E4C8
                and     qword ptr [rax+rdi*8], 0
                lock xadd cs:qword_140C4E488, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1408C9307
                lea     rcx, qword_140C4E488
                call    ExfTryToWakePushLock

loc_1408C9307:                          ; CODE XREF: sub_1408C929C+5D↑j
                lea     rcx, qword_140C4E488
                call    sub_140243660
                mov     rcx, rsi
                call    sub_140245770
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C929C   endp

byte_1408C932C  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014011E758↑o

; =============== S U B R O U T I N E =======================================


sub_1408C9334   proc near               ; CODE XREF: sub_1403CA5F4+1F6↑p
                                        ; DATA XREF: .pdata:000000014011E764↑o

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_38          = qword ptr -38h
var_28          = byte ptr -28h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_38], rax
                and     qword ptr [r11-68h], 0
                lea     rax, sub_1403CA820
                and     [rsp+0B8h+var_60], 0
                lea     r15, [r11-50h]
                mov     [r11-50h], rax
                lea     rsi, [r11-60h]
                lea     rax, sub_1403C0640
                mov     [rsp+0B8h+var_5C], 1
                mov     [r11-48h], rax
                mov     rbx, rcx
                lea     rax, sub_140535910
                mov     [rsp+0B8h+var_58], 2
                mov     [r11-40h], rax
                xor     ebp, ebp
                mov     rax, [rcx+0B0h]
                mov     r12, [rax+70h]

loc_1408C93B3:                          ; CODE XREF: sub_1408C9334+EF↓j
                mov     edi, [rsi]
                test    edi, edi
                jnz     short loc_1408C93CE
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1403AC088
                mov     [rbx+1928h], rax
                test    rax, rax
                jz      short loc_1408C9429

loc_1408C93CE:                          ; CODE XREF: sub_1408C9334+83↑j
                and     [rsp+0B8h+var_78], 0
                lea     rcx, [rsp+0B8h+var_68]
                and     [rsp+0B8h+var_80], 0
                mov     r9, r12
                mov     rax, [r15]
                xor     r8d, r8d
                mov     [rsp+0B8h+var_88], rbx
                mov     edx, 1FFFFFh
                mov     [rsp+0B8h+var_90], rax
                and     [rsp+0B8h+var_98], 0
                call    PsCreateSystemThreadEx
                mov     r14d, eax
                test    eax, eax
                js      short loc_1408C9430
                mov     rax, [rsp+0B8h+var_68]
                inc     ebp
                add     rsi, 4
                mov     [rbx+rdi*8+80h], rax
                add     r15, 8
                cmp     ebp, 3
                jb      short loc_1408C93B3
                xor     eax, eax
                jmp     short loc_1408C944B
; ---------------------------------------------------------------------------

loc_1408C9429:                          ; CODE XREF: sub_1408C9334+98↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1408C944B
; ---------------------------------------------------------------------------

loc_1408C9430:                          ; CODE XREF: sub_1408C9334+D3↑j
                test    edi, edi
                jnz     short loc_1408C9448
                mov     rcx, [rbx+1928h]
                call    sub_14054FE14
                and     qword ptr [rbx+1928h], 0

loc_1408C9448:                          ; CODE XREF: sub_1408C9334+FE↑j
                mov     eax, r14d

loc_1408C944B:                          ; CODE XREF: sub_1408C9334+F3↑j
                                        ; sub_1408C9334+FA↑j
                mov     rcx, [rsp+0B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B8h+var_28]
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
; } // starts at 1408C9334
sub_1408C9334   endp

algn_1408C9478:                         ; DATA XREF: .pdata:000000014011E764↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1408C9480   proc near               ; CODE XREF: sub_140757D1C+46B↑p
                                        ; sub_140759458+E6CDF↑p ...

var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = word ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_40], rax
                movzx   esi, word ptr [rcx]
                xor     r13d, r13d
                xorps   xmm0, xmm0
                add     esi, 2
                movups  [rbp+57h+var_90], xmm0
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     ebx, r9d
                xorps   xmm1, xmm1
                mov     r12d, r13d
                mov     r14d, r13d
                movups  xmm0, xmmword ptr [rcx]
                mov     ecx, 1
                mov     r15d, ecx
                movdqu  [rbp+57h+var_80], xmm0
                movups  [rbp+57h+var_A0], xmm1
                test    rdx, rdx
                jz      loc_1408C95A0
                cmp     ebx, 0C000007Ah
                jz      short loc_1408C9506
                cmp     ebx, 0C0000034h
                jz      short loc_1408C9506
                lea     eax, [r9+3FFFFD9Eh]
                cmp     eax, ecx
                ja      loc_1408C95A0

loc_1408C9506:                          ; CODE XREF: sub_1408C9480+6D↑j
                                        ; sub_1408C9480+75↑j
                lea     rax, aCannotFind ; "cannot find"
                mov     rcx, rdi
                mov     [rbp+57h+var_68], rax

loc_1408C9514:                          ; CODE XREF: sub_1408C9480+9C↓j
                inc     rcx
                cmp     [rax+rcx*2], r13w
                jnz     short loc_1408C9514
                movzx   eax, word ptr [rdx]
                add     rcx, rcx
                movups  xmm0, xmmword ptr [rdx]
                add     eax, ecx
                mov     [rbp+57h+var_70], cx
                add     esi, 4
                mov     r15d, 3
                add     esi, eax
                movdqu  [rbp+57h+var_60], xmm0
                test    r8, r8
                jz      loc_1408C95E3
                test    r8, 0FFFFFFFFFFFF0000h
                jz      short loc_1408C9593
                mov     rdx, r8
                lea     rcx, [rbp+57h+var_90]
                call    RtlInitString
                mov     r8d, 1
                lea     rdx, [rbp+57h+var_90]
                lea     rcx, [rbp+57h+var_A0]
                call    RtlAnsiStringToUnicodeString
                movups  xmm0, [rbp+57h+var_A0]
                test    eax, eax
                mov     r15d, 4
                movzx   eax, word ptr [rbp+57h+var_A0]
                mov     ecx, 1
                cmovs   r12d, ecx
                add     eax, 2
                add     esi, eax
                movdqu  [rbp+57h+var_50], xmm0
                jmp     short loc_1408C959B
; ---------------------------------------------------------------------------

loc_1408C9593:                          ; CODE XREF: sub_1408C9480+CD↑j
                mov     r14d, r8d
                mov     ecx, 1

loc_1408C959B:                          ; CODE XREF: sub_1408C9480+111↑j
                cmp     r12d, ecx
                jnz     short loc_1408C95E3

loc_1408C95A0:                          ; CODE XREF: sub_1408C9480+61↑j
                                        ; sub_1408C9480+80↑j
                lea     rax, aFailedToLoad ; "failed to load"
                mov     r14d, ebx
                mov     [rbp+57h+var_68], rax

loc_1408C95AE:                          ; CODE XREF: sub_1408C9480+136↓j
                inc     rdi
                cmp     [rax+rdi*2], r13w
                jnz     short loc_1408C95AE
                add     rdi, rdi
                add     r15d, ecx
                add     esi, 2
                mov     [rbp+57h+var_70], di
                mov     ecx, ebx
                mov     edx, 1000h
                add     esi, edi
                call    sub_14033ADF4
                neg     eax
                sbb     ebx, ebx
                and     ebx, 0FFFFFE2Eh
                add     ebx, 0C000026Ch

loc_1408C95E3:                          ; CODE XREF: sub_1408C9480+C0↑j
                                        ; sub_1408C9480+11E↑j
                add     esi, 30h ; '0'
                cmp     esi, 0FFh
                jnb     loc_1408C9672
                mov     cl, sil
                call    sub_140505998
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1408C9672
                mov     dword ptr [rax+0Ch], 4000001Ah
                lea     rsi, [rdi+30h]
                mov     [rax+14h], ebx
                mov     [rax+10h], r14d
                mov     eax, 30h ; '0'
                mov     [rdi+6], ax
                test    r15d, r15d
                jz      short loc_1408C965C
                lea     r14, [rbp+57h+var_80+8]
                lea     r13d, [rax-2Fh]

loc_1408C962A:                          ; CODE XREF: sub_1408C9480+1D7↓j
                movzx   ebx, word ptr [r14-8]
                mov     rcx, rsi
                mov     rdx, [r14]
                mov     r8d, ebx
                call    memmove
                shr     rbx, 1
                lea     r14, [r14+10h]
                mov     eax, 20h ; ' '
                lea     rsi, [rsi+rbx*2]
                mov     [rsi], ax
                add     rsi, 2
                sub     r15, r13
                jnz     short loc_1408C962A
                xor     r13d, r13d

loc_1408C965C:                          ; CODE XREF: sub_1408C9480+1A0↑j
                mov     eax, 1
                mov     [rsi-2], r13w
                mov     rcx, rdi
                mov     [rdi+4], ax
                call    IoWriteErrorLogEntry

loc_1408C9672:                          ; CODE XREF: sub_1408C9480+16C↑j
                                        ; sub_1408C9480+180↑j
                lea     rcx, [rbp+57h+var_A0]
                call    RtlFreeUnicodeString
                mov     rcx, [rbp+57h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0C0h+arg_10]
                add     rsp, 90h
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
; } // starts at 1408C9480
sub_1408C9480   endp

byte_1408C96A3  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014011E770↑o

; =============== S U B R O U T I N E =======================================


sub_1408C96AC   proc near               ; CODE XREF: sub_140757D1C+59F↑p
                                        ; sub_1407591C0+E6B7C↑p ...

var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = qword ptr -0B0h
var_A8          = byte ptr -0A8h
var_88          = byte ptr -88h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_28], rax
                mov     r10, cs:qword_140C4ED60
                mov     rsi, rdx
                mov     r14, rcx
                test    r10, r10
                jz      loc_1408C97F6
                cmp     dword ptr [r10], 5
                jbe     loc_1408C989D
                mov     rdx, 400000000000h
                mov     rcx, r10
                call    sub_140209F38
                test    al, al
                jz      loc_1408C989D
                mov     rdx, r14
                lea     rcx, [rsp+0F8h+var_88]
                call    sub_1402B2E14
                and     [rsp+0F8h+var_6C], 0
                lea     rax, [rsp+0F8h+var_60]
                and     [rsp+0F8h+var_5C], 0
                lea     rdx, word_140024F2A
                and     [rsp+0F8h+var_4C], 0
                mov     ecx, 4
                and     [rsp+0F8h+var_3C], 0
                and     [rsp+0F8h+var_2C], 0
                mov     [rsp+0F8h+var_78], rax
                mov     rax, [rsi+60h]
                mov     [rsp+0F8h+var_68], rax
                movzx   eax, word ptr [rsi+58h]
                mov     [rsp+0F8h+var_60], eax
                mov     eax, [rsi+78h]
                mov     [rsp+0F8h+var_B8], eax
                lea     rax, [rsp+0F8h+var_B8]
                mov     [rsp+0F8h+var_58], rax
                mov     eax, [rsi+9Ch]
                mov     [rsp+0F8h+var_B4], eax
                lea     rax, [rsp+0F8h+var_B4]
                mov     [rsp+0F8h+var_48], rax
                mov     eax, 81000000h
                mov     [rsp+0F8h+var_B0], rax
                lea     rax, [rsp+0F8h+var_B0]
                mov     [rsp+0F8h+var_50], ecx
                mov     [rsp+0F8h+var_40], ecx
                mov     ecx, 8
                mov     [rsp+0F8h+var_38], rax
                lea     rax, [rsp+0F8h+var_A8]
                mov     [rsp+0F8h+var_C0], rax
                mov     [rsp+0F8h+var_C8], ecx
                mov     [rsp+0F8h+var_30], ecx
                lea     r9d, [rcx-7]
                mov     rcx, r10
                mov     [rsp+0F8h+var_70], 2
                call    sub_140363A0C
                jmp     loc_1408C989D
; ---------------------------------------------------------------------------

loc_1408C97F6:                          ; CODE XREF: sub_1408C96AC+32↑j
                or      rdi, 0FFFFFFFFFFFFFFFFh

loc_1408C97FA:                          ; CODE XREF: sub_1408C96AC+155↓j
                inc     rdi
                cmp     byte ptr [rcx+rdi], 0
                jnz     short loc_1408C97FA
                movzx   edx, word ptr [rdx+58h]
                mov     ecx, 100h
                add     rdx, 31h ; '1'
                mov     r8d, 46446D4Dh
                add     rdx, rdi
                call    sub_140268720
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1408C989D
                lea     rcx, [rax+30h]
                mov     rdx, r14
                lea     r8, [rdi+1]
                mov     [rax+10h], rcx
                call    memmove
                lea     rcx, [rdi+31h]
                add     rcx, rbx
                mov     [rbx+20h], rcx
                movzx   r8d, word ptr [rsi+58h]
                mov     rdx, [rsi+60h]
                call    memmove
                movzx   eax, word ptr [rsi+58h]
                lea     rcx, qword_140C4CB88
                mov     [rbx+18h], ax
                movzx   eax, word ptr [rsi+58h]
                mov     [rbx+1Ah], ax
                mov     eax, [rsi+78h]
                mov     [rbx+28h], eax
                mov     eax, [rsi+9Ch]
                mov     [rbx+2Ch], eax
                mov     rax, cs:qword_140C4CB90
                cmp     [rax], rcx
                jz      short loc_1408C988C
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1408C988C:                          ; CODE XREF: sub_1408C96AC+1D7↑j
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C4CB90, rbx

loc_1408C989D:                          ; CODE XREF: sub_1408C96AC+3C↑j
                                        ; sub_1408C96AC+56↑j ...
                mov     rcx, [rsp+0F8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F8h+arg_10]
                add     rsp, 0E0h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408C96AC
sub_1408C96AC   endp

algn_1408C98C2:                         ; DATA XREF: .pdata:000000014011E77C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1408C98C8   proc near               ; CODE XREF: PoSetHiberRange+111705↑p
                                        ; DATA XREF: .pdata:000000014011E788↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, gs:188h
                mov     r14, r8
                mov     r15, rdx
                mov     rdi, rcx
                mov     ebx, 0C0000225h
                dec     word ptr [rsi+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033EE44
                mov     rbp, rax
                test    rax, rax
                jz      short loc_1408C997E
                mov     rcx, [rax+30h]
                sub     rdi, rcx
                call    RtlImageNtHeader
                xor     r9d, r9d
                movzx   edx, word ptr [rax+14h]
                movzx   r11d, word ptr [rax+6]
                add     rdx, 20h ; ' '
                test    r11d, r11d
                jz      short loc_1408C997E
                add     rdx, rax

loc_1408C9942:                          ; CODE XREF: sub_1408C98C8+A3↓j
                mov     r8d, [rdx+8]
                mov     eax, [rdx]
                cmp     r8d, eax
                mov     r10d, [rdx+4]
                cmovb   r8d, eax
                cmp     rdi, r10
                jb      short loc_1408C9961
                lea     ecx, [r8+r10]
                cmp     rdi, rcx
                jb      short loc_1408C996F

loc_1408C9961:                          ; CODE XREF: sub_1408C98C8+8E↑j
                add     rdx, 28h ; '('
                inc     r9d
                cmp     r9d, r11d
                jb      short loc_1408C9942
                jmp     short loc_1408C997E
; ---------------------------------------------------------------------------

loc_1408C996F:                          ; CODE XREF: sub_1408C98C8+97↑j
                mov     rax, r10
                mov     [r14], r8d
                add     rax, [rbp+30h]
                mov     [r15], rax
                xor     ebx, ebx

loc_1408C997E:                          ; CODE XREF: sub_1408C98C8+54↑j
                                        ; sub_1408C98C8+75↑j ...
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rsi
                call    sub_14021E1F0
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C98C8   endp

byte_1408C99AE  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014011E788↑o

; =============== S U B R O U T I N E =======================================


sub_1408C99B4   proc near               ; CODE XREF: KeRegisterBoundCallback+14↑p
                                        ; DATA XREF: .pdata:000000014011E794↑o
                sub     rsp, 28h
                mov     edx, 20h ; ' '
                call    sub_1403AF6A0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1408C99B4   endp

algn_1408C99C8:                         ; DATA XREF: .pdata:000000014011E794↑o
                align 10h
; Exported entry 1502. MmSetPermanentCacheAttribute

; =============== S U B R O U T I N E =======================================


