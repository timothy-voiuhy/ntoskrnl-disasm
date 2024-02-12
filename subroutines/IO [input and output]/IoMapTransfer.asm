IoMapTransfer   proc near               ; CODE XREF: sub_1404CCD70+E8↓p
                                        ; DATA XREF: .rdata:0000000140005D20↑o ...

var_28          = qword ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 0000000140499CBE SIZE 0000005C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                cmp     dword ptr [rcx+200h], 2
                mov     rbx, r8
                mov     rdi, [rsp+48h+arg_20]
                mov     rsi, rcx
                mov     byte ptr [rcx+204h], 1
                jz      loc_140499CBE

loc_140388993:                          ; CODE XREF: IoMapTransfer+111366↓j
                                        ; IoMapTransfer+11136E↓j
                mov     al, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_20], al
                mov     [rsp+48h+var_28], rdi
                call    sub_1403889DC
                mov     ebp, eax
                and     ebp, 0FFFh
                cmp     dword ptr [rsi+200h], 2
                jz      loc_140499CD3

loc_1403889BF:                          ; CODE XREF: IoMapTransfer+1113B5↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoMapTransfer   endp

byte_1403889D5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140098238↑o
                                        ; .pdata:00000001400DBC00↑o

; =============== S U B R O U T I N E =======================================


sub_1403889DC   proc near               ; CODE XREF: IoMapTransfer+45↑p
                                        ; sub_1403A0350+10325B↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = byte ptr -20h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h

; FUNCTION CHUNK AT 0000000140499D1A SIZE 0000007C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 40h
                mov     rdi, r9
                mov     rsi, rdx
                mov     r11, rcx
                test    r8, r8
                jnz     loc_140499D3E
                mov     r15, [rsp+48h+arg_20]
                mov     rax, r9
                sub     rax, [rdx+20h]
                mov     r8d, edi
                shr     rax, 0Ch
                and     r8d, 0FFFh
                add     rax, 6
                mov     r10d, 1000h
                sub     r10d, r8d
                lea     r14, [rdx+rax*8]
                mov     edx, [r15]
                mov     rcx, [r14]
                mov     r9d, edx
                mov     rbx, rcx
                mov     eax, r8d
                shl     rbx, 0Ch
                add     rbx, rax
                cmp     r10d, edx
                jnb     short loc_140388A7D

loc_140388A4D:                          ; CODE XREF: sub_1403889DC+9A↓j
                lea     r14, [r14+8]
                mov     r8, [r14]
                lea     rax, [rcx+1]
                cmp     rax, r8
                jnz     short loc_140388A78
                xor     rcx, r8
                test    rcx, 0FFFFFFFFFFF00000h
                jnz     short loc_140388A78
                add     r10d, 1000h
                mov     rcx, r8
                cmp     r10d, edx
                jb      short loc_140388A4D

loc_140388A78:                          ; CODE XREF: sub_1403889DC+7F↑j
                                        ; sub_1403889DC+8B↑j
                cmp     r10d, edx
                jb      short loc_140388AAA

loc_140388A7D:                          ; CODE XREF: sub_1403889DC+6F↑j
                                        ; sub_1403889DC+D4↓j
                cmp     byte ptr [r11+1B5h], 0
                jz      loc_140499D1A

loc_140388A8B:                          ; CODE XREF: sub_1403889DC+11135D↓j
                mov     rax, rbx

loc_140388A8E:                          ; CODE XREF: sub_1403889DC+111398↓j
                                        ; sub_1403889DC+1113B5↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                mov     r14, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140388AAA:                          ; CODE XREF: sub_1403889DC+9F↑j
                mov     [r15], r10d
                mov     r9d, r10d
                jmp     short loc_140388A7D
sub_1403889DC   endp

; ---------------------------------------------------------------------------
algn_140388AB2:                         ; DATA XREF: .rdata:0000000140098264↑o
                                        ; .pdata:00000001400DBC0C↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140388AB8   proc near               ; CODE XREF: sub_140776FC8+C8↓p
                                        ; DATA XREF: .rdata:00000001400982AC↑o ...

var_30          = qword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 0000000140499D96 SIZE 000000B2 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xorps   xmm0, xmm0
                lea     rcx, qword_140C23B10
                xor     eax, eax
                xor     ebx, ebx
                movups  [rbp+var_20], xmm0
                mov     [rbp+var_10], rax
                call    KeAcquireSpinLockRaiseToDpc
                cmp     cs:dword_140C50430, ebx
                movzx   edi, al
                mov     cs:byte_140C50434, 1
                ja      loc_140499D96

loc_140388AFB:                          ; CODE XREF: sub_140388AB8+11130B↓j
                lea     rcx, qword_140C23B10
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140499DC8

loc_140388B15:                          ; CODE XREF: sub_140388AB8+111312↓j
                                        ; sub_140388AB8+11131E↓j ...
                mov     cr8, rdi
                test    rbx, rbx
                jnz     loc_140499E2C

loc_140388B22:                          ; CODE XREF: sub_140388AB8+11138B↓j
                mov     rbx, [rsp+50h+arg_0]
                mov     rdi, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140388AB8   endp

byte_140388B33  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400982AC↑o
                                        ; .pdata:00000001400DBC18↑o

; =============== S U B R O U T I N E =======================================


sub_140388B3C   proc near               ; CODE XREF: sub_140776F70+12↓p
                                        ; DATA XREF: .rdata:0000000140098338↑o ...

; FUNCTION CHUNK AT 0000000140499E48 SIZE 00000063 BYTES

                push    rbx
                sub     rsp, 20h
                lea     rcx, qword_140C23B10
                call    KeAcquireSpinLockRaiseToDpc
                lea     rcx, qword_140C23B10
                movzx   ebx, al
                mov     cs:byte_140C50434, 0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140499E48

loc_140388B72:                          ; CODE XREF: sub_140388B3C+11130E↓j
                                        ; sub_140388B3C+11131A↓j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140388B3C   endp

byte_140388B7D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140098338↑o
                                        ; .pdata:00000001400DBC24↑o

; =============== S U B R O U T I N E =======================================


sub_140388B84   proc near               ; CODE XREF: sub_14022EAE0+18D↑p
                                        ; sub_140274000+1319↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     rbx, rcx
                xor     edx, edx
                call    sub_1402D6010
                xor     edx, edx
                mov     rcx, rbx
                lea     r8d, [rdx+1]
                call    sub_14026B590
                mov     rax, 7FFFFFFFFFFFFFFFh
                or      edi, 2
                and     [rbx+28h], rax
                mov     al, [rbx+22h]
                and     al, 0C7h
                mov     [rbx+22h], al
                mov     al, [rbx+23h]
                and     al, 0DFh
                mov     [rbx+23h], al
                mov     rax, 4000000000000000h
                or      [rbx+18h], rax
                mov     rax, 0FFFFFA8000000000h
                sub     rbx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rbx
                mov     rcx, rdx
                mov     edx, edi
                sar     rcx, 3
                mov     rax, rcx
                shr     rax, 3Fh
                add     rcx, rax
                call    sub_140292A50
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140388B84   endp

algn_140388C15:                         ; DATA XREF: .pdata:00000001400DBC30↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140388C20   proc near               ; CODE XREF: sub_140318DA0+6FE↑p
                                        ; sub_140318DA0+731↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     rbx, rcx
                mov     rcx, [rcx+8]
                mov     rdi, r8
                mov     rsi, rdx
                call    sub_1404079D0
                mov     eax, [rbx+10h]
                add     rax, rdi
                cmp     rsi, rax
                jb      short loc_140388C60

loc_140388C4F:                          ; CODE XREF: sub_140388C20+43↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140388C60:                          ; CODE XREF: sub_140388C20+2D↑j
                mov     rax, rsi
                jmp     short loc_140388C4F
sub_140388C20   endp

; ---------------------------------------------------------------------------
byte_140388C65  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DBC3C↑o

; =============== S U B R O U T I N E =======================================


sub_140388C6C   proc near               ; CODE XREF: sub_14037AED4+191↑p
                                        ; sub_140398808+62↓p ...
                sub     rsp, 28h
                mov     r10, rdx
                test    rcx, rcx
                jz      short loc_140388CA4
                mov     rax, [rcx+8]
                mov     r8, [rax+40h]
                test    r8, r8
                jz      short loc_140388CA4
                movzx   ecx, word ptr [rax+38h]
                test    cx, cx
                jz      short loc_140388CA4
                mov     r9d, ecx
                mov     edx, 80h
                mov     rcx, r10
                call    sub_1403112F8

loc_140388C9E:                          ; CODE XREF: sub_140388C6C+3D↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140388CA4:                          ; CODE XREF: sub_140388C6C+A↑j
                                        ; sub_140388C6C+17↑j ...
                mov     eax, 0C0000001h
                jmp     short loc_140388C9E
sub_140388C6C   endp

; ---------------------------------------------------------------------------
algn_140388CAB:                         ; DATA XREF: .pdata:00000001400DBC48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140388CC0   proc near               ; DATA XREF: .pdata:00000001400DBC54↑o
                                        ; sub_140386450+9↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                mov     [rax+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, [rcx+13A8h]
                xor     edi, edi
                mov     rbp, rcx
                test    rdx, rdx
                jnz     short loc_140388D5B
                mov     edx, cs:dword_140C4DD7C
                movzx   ecx, cs:word_140CFB000
                lea     eax, ds:1Bh[rdx*2]
                add     eax, ecx
                jz      short loc_140388D3D

loc_140388D09:                          ; CODE XREF: sub_140388CC0+7B↓j
                lea     eax, ds:1Ah[rdx*2]
                sub     eax, edi
                add     eax, ecx
                lea     rcx, [rax+rax*2]
                lea     rcx, [r14+rcx*8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     edx, cs:dword_140C4DD7C
                inc     edi
                movzx   ecx, cs:word_140CFB000
                lea     eax, ds:1Bh[rdx*2]
                add     eax, ecx
                cmp     edi, eax
                jb      short loc_140388D09

loc_140388D3D:                          ; CODE XREF: sub_140388CC0+47↑j
                                        ; sub_140388CC0+1F2↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140388D5B:                          ; CODE XREF: sub_140388CC0+2F↑j
                lea     rdx, [rcx+1020h]
                mov     [r14], rdi
                mov     rcx, r14
                mov     [r14+8], rdx
                call    sub_14024B3F0
                mov     esi, 1
                lea     rbx, [rbp+880h]
                lea     r12d, [rsi+1]
                lea     r15d, [rsi+7]

loc_140388D85:                          ; CODE XREF: sub_140388CC0+114↓j
                cmp     cs:dword_140C4DD7C, edi
                mov     r13d, edi
                mov     rbp, [rbx]
                jz      short loc_140388DCD

loc_140388D93:                          ; CODE XREF: sub_140388CC0+10B↓j
                mov     eax, esi
                lea     rcx, [rax+rax*2]
                mov     eax, r13d
                lea     rcx, [r14+rcx*8]
                mov     [rcx], rdi
                lea     rdx, [rax+1]
                lea     rdx, [rax+rdx*4]
                lea     rdx, ds:0[rdx*8]
                add     rdx, rbp
                mov     [rcx+8], rdx
                call    sub_14024B3F0
                inc     esi
                inc     r13d
                cmp     r13d, cs:dword_140C4DD7C
                jb      short loc_140388D93

loc_140388DCD:                          ; CODE XREF: sub_140388CC0+D1↑j
                add     rbx, r15
                sub     r12, 1
                jnz     short loc_140388D85
                mov     rbp, [rsp+48h+arg_0]
                lea     rbx, [rbp+9A0h]

loc_140388DE2:                          ; CODE XREF: sub_140388CC0+145↓j
                mov     eax, esi
                mov     rdx, rbx
                lea     rcx, [rax+rax*2]
                lea     rcx, [r14+rcx*8]
                mov     [rcx+8], rbx
                mov     [rcx], rdi
                call    sub_14024B3F0
                add     rbx, 28h ; '('
                inc     esi
                sub     r15, 1
                jnz     short loc_140388DE2
                lea     rdx, [rbp+1D60h]
                lea     rcx, [rsi+rsi*2]
                lea     rcx, [r14+rcx*8]
                mov     [rcx+8], rdx
                mov     [rcx], rdi
                call    sub_14024B3F0
                inc     esi
                lea     rbx, [rbp+0DA0h]
                mov     r15d, 10h

loc_140388E31:                          ; CODE XREF: sub_140388CC0+192↓j
                lea     rcx, [rsi+rsi*2]
                mov     rdx, rbx
                lea     rcx, [r14+rcx*8]
                mov     [rcx+8], rbx
                mov     [rcx], rdi
                call    sub_14024B3F0
                add     rbx, 28h ; '('
                inc     esi
                sub     r15, 1
                jnz     short loc_140388E31
                cmp     di, cs:word_140CFB000
                mov     ebx, edi
                mov     r15, [rbp+10h]
                jnb     short loc_140388E97
                add     r15, 10E8h

loc_140388E6A:                          ; CODE XREF: sub_140388CC0+1D5↓j
                lea     rcx, [rsi+rsi*2]
                mov     rdx, r15
                lea     rcx, [r14+rcx*8]
                mov     [rcx+8], r15
                mov     [rcx], rdi
                call    sub_14024B3F0
                movzx   eax, cs:word_140CFB000
                inc     esi
                add     r15, 11C0h
                inc     ebx
                cmp     ebx, eax
                jb      short loc_140388E6A

loc_140388E97:                          ; CODE XREF: sub_140388CC0+1A1↑j
                lea     rdx, [rbp+1DA0h]
                lea     rcx, [rsi+rsi*2]
                lea     rcx, [r14+rcx*8]
                mov     [rcx+8], rdx
                mov     [rcx], rdi
                call    sub_14024B3F0
                jmp     loc_140388D3D
sub_140388CC0   endp

; ---------------------------------------------------------------------------
algn_140388EB7:                         ; DATA XREF: .pdata:00000001400DBC54↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140388EC0   proc near               ; DATA XREF: .rdata:0000000140098388↑o
                                        ; .pdata:00000001400DBC60↑o ...

var_148         = qword ptr -148h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_12C         = dword ptr -12Ch
var_128         = byte ptr -128h
var_120         = qword ptr -120h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140499EAC SIZE 00000051 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 160h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+168h+var_18], rax
                mov     rsi, r8
                lea     rcx, [rsp+168h+var_128]
                mov     r8d, 110h
                xor     edx, edx
                call    memset
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                jnz     loc_140499EAC

loc_140388F09:                          ; CODE XREF: sub_140388EC0+111020↓j
                mov     rbx, gs:20h
                mov     rax, 0FFFFF78000000014h
                mov     rax, [rax]
                mov     [rsp+168h+var_120], rax
                cli
                mov     rdi, 0FFFFF78000000008h
                mov     rdi, [rdi]
                cmp     cs:dword_140CFB024, 0
                jz      loc_140499EE5
                cmp     byte ptr [rbx+21h], 0
                jz      short loc_140388F6B
                mov     rcx, rdi
                mov     edx, 7B50h
                shr     rcx, 12h
                mov     r8d, 2

loc_140388F57:                          ; CODE XREF: sub_140388EC0+A9↓j
                mov     rax, cs:qword_140CFDCC0
                mov     [rdx+rax], ecx
                lea     rdx, [rdx+4]
                sub     r8, 1
                jnz     short loc_140388F57

loc_140388F6B:                          ; CODE XREF: sub_140388EC0+83↑j
                                        ; sub_140388EC0+111038↓j
                sti
                lea     rax, [rsp+168h+var_128]
                mov     r9b, 1
                mov     r8, rdi
                mov     [rsp+168h+var_148], rax
                mov     edx, esi
                mov     rcx, rbx
                call    sub_140388FE0
                mov     qword ptr [rbx+30E0h], 0
                cmp     byte ptr [rbx+21h], 0
                jz      short loc_140388FB2
                mov     r9b, 1
                lea     rax, [rsp+168h+var_128]
                mov     r8b, r9b
                mov     [rsp+168h+var_148], rax
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402C38B0

loc_140388FB2:                          ; CODE XREF: sub_140388EC0+D5↑j
                mov     rcx, [rsp+168h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+168h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140388EC0
sub_140388EC0   endp

algn_140388FD8:                         ; DATA XREF: .rdata:0000000140098388↑o
                                        ; .pdata:00000001400DBC60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140388FE0   proc near               ; CODE XREF: sub_140388EC0+C1↑p
                                        ; DATA XREF: .rdata:00000001400983BC↑o ...

var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140499EFE SIZE 00000057 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_48], rax
                mov     rax, [rsp+0B8h+arg_20]
                mov     r15d, edx
                xorps   xmm0, xmm0
                mov     [rsp+0B8h+var_70], rax
                mov     dl, 1
                mov     [rsp+0B8h+var_78], r9b
                movups  [rsp+0B8h+var_68], xmm0
                mov     r12, r8
                mov     rdi, rcx
                call    sub_1402C1B10
                mov     r13, rax
                test    rax, rax
                jz      loc_140389158
                mov     ecx, [rcx+8B00h]
                mov     ebx, ecx
                add     rbx, rbx
                inc     ecx
                and     ecx, 0Fh
                mov     [rdi+8B00h], ecx
                xor     ecx, ecx
                mov     [rdi+rbx*8+8B08h], r8
                call    KeQueryPerformanceCounter
                mov     rbp, r12
                mov     [rdi+rbx*8+8B10h], rax
                shr     rbp, 12h
                test    dword ptr cs:xmmword_140CFC480+8, 20000h
                jnz     loc_140499EFE

loc_140389080:                          ; CODE XREF: sub_140388FE0+110F63↓j
                mov     ebx, ebp
                xor     esi, esi
                sub     ebx, r15d
                inc     ebx
                cmp     ebx, 100h
                jbe     short loc_1403890A0
                mov     eax, ebx
                mov     rsi, rbp
                sub     rsi, rax
                inc     rsi
                shl     rsi, 12h

loc_1403890A0:                          ; CODE XREF: sub_140388FE0+AF↑j
                mov     eax, 18h

loc_1403890A5:                          ; CODE XREF: sub_140388FE0+147↓j
                cmp     ebx, 100h
                jbe     loc_140389181
                add     rsi, 4000000h
                mov     r14d, 100h
                xor     ebp, ebp

loc_1403890C0:                          ; CODE XREF: sub_140388FE0+1B3↓j
                mov     rax, [rsp+0B8h+var_70]
                mov     r9d, r14d
                mov     [rsp+0B8h+var_80], rax
                mov     r8d, r15d
                and     [rsp+0B8h+var_88], 0
                mov     rdx, r13
                mov     [rsp+0B8h+var_90], rsi
                mov     rcx, rdi
                mov     [rsp+0B8h+var_98], ebp
                call    sub_1403891A0
                cmp     [rsp+0B8h+var_78], 0
                jz      short loc_14038911C
                mov     rax, [rsp+0B8h+var_70]
                mov     r9d, r14d
                mov     [rsp+0B8h+var_80], rax
                mov     r8d, r15d
                mov     [rsp+0B8h+var_88], 1
                mov     rdx, r13
                mov     [rsp+0B8h+var_90], rsi
                mov     rcx, rdi
                mov     [rsp+0B8h+var_98], ebp
                call    sub_1403891A0

loc_14038911C:                          ; CODE XREF: sub_140388FE0+10E↑j
                add     r15d, r14d
                mov     eax, 18h
                sub     ebx, r14d
                jnz     loc_1403890A5
                test    byte ptr [rdi+312Ch], 8
                jnz     short loc_140389158
                and     dword ptr [rdi+7EA4h], 0
                mov     ecx, cs:dword_140CFC468
                mov     eax, [rdi+7EA8h]
                cmp     eax, ecx
                jnb     loc_140499F48
                and     dword ptr [rdi+7EA8h], 0

loc_140389158:                          ; CODE XREF: sub_140388FE0+56↑j
                                        ; sub_140388FE0+154↑j ...
                mov     rcx, [rsp+0B8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_18]
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
; ---------------------------------------------------------------------------

loc_140389181:                          ; CODE XREF: sub_140388FE0+CB↑j
                mov     ebp, 100h
                mov     r14d, ebx
                sub     ebp, ebx
                mov     rsi, r12
                cmp     ebp, eax
                cmova   ebp, eax
                jmp     loc_1403890C0
; } // starts at 140388FE0
sub_140388FE0   endp

; ---------------------------------------------------------------------------
algn_140389198:                         ; DATA XREF: .rdata:00000001400983BC↑o
                                        ; .pdata:00000001400DBC6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403891A0   proc near               ; CODE XREF: sub_140388FE0+104↑p
                                        ; sub_140388FE0+137↑p
                                        ; DATA XREF: ...

var_58          = qword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  48h
arg_8           = dword ptr  50h
arg_10          = dword ptr  58h
arg_18          = dword ptr  60h
arg_20          = dword ptr  68h
arg_28          = qword ptr  70h
arg_30          = dword ptr  78h
arg_38          = qword ptr  80h

; FUNCTION CHUNK AT 0000000140499F56 SIZE 0000018A BYTES

                mov     [rsp-40h+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 78h
                and     [rbp+var_48], 0
                mov     r14d, r8d
                mov     ecx, [rbp+arg_30]
                lea     r8d, [r9-1]
                mov     r9d, [rbp+arg_20]
                add     r8d, r14d
                add     r9d, r8d
                mov     [rbp+arg_10], r8d
                xor     eax, eax
                mov     [rbp+arg_20], r9d
                xor     esi, esi
                mov     [rbp+var_28], rax
                dec     r14d
                mov     [rbp+arg_18], esi
                xor     r15d, r15d
                xorps   xmm0, xmm0
                shl     rcx, 8
                mov     r13, rdx
                movups  [rbp+var_38], xmm0
                mov     [rbp+var_40], rcx
                mov     byte ptr [rbp+var_38+3], 0C0h

loc_140389200:                          ; CODE XREF: sub_1403891A0+9F↓j
                mov     r12, [rbp+arg_28]
                lea     rdi, [rcx+10h]
                inc     r14d
                movzx   edx, r14b
                add     rdi, rdx
                mov     [rbp+arg_8], edx
                shl     rdi, 5
                add     rdi, r13
                cmp     esi, r8d
                ja      loc_140499F56

loc_140389225:                          ; CODE XREF: sub_1403891A0+110DC0↓j
                lea     rsi, [rdi+8]
                cmp     rsi, [rsi]
                jnz     short loc_140389241

loc_14038922E:                          ; CODE XREF: sub_1403891A0+115↓j
                mov     esi, [rbp+arg_18]
                inc     esi
                mov     [rbp+arg_18], esi

loc_140389236:                          ; CODE XREF: sub_1403891A0+110DBA↓j
                cmp     r14d, r9d
                jz      short loc_1403892BA
                mov     rcx, [rbp+var_40]
                jmp     short loc_140389200
; ---------------------------------------------------------------------------

loc_140389241:                          ; CODE XREF: sub_1403891A0+8C↑j
                                        ; sub_1403891A0+110ED9↓j
                mov     rbx, gs:20h
                and     [rbp+arg_30], 0

loc_14038924E:                          ; CODE XREF: sub_1403891A0+110E22↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140499F65

loc_14038925E:                          ; CODE XREF: sub_1403891A0+110DC9↓j
                                        ; sub_1403891A0+110DD8↓j ...
                lock bts qword ptr [rdi], 0
                jb      loc_140499F8C
                mov     [rbp+var_48], rdi

loc_14038926E:                          ; CODE XREF: sub_1403891A0+110E80↓j
                mov     rbx, [rsi]
                cmp     rsi, rbx
                jz      short loc_14038928B
                mov     rax, [rbx-8]
                add     rbx, 0FFFFFFFFFFFFFFE0h
                cmp     rax, r12
                jbe     loc_140499FC7
                mov     [rdi+18h], rax

loc_14038928B:                          ; CODE XREF: sub_1403891A0+D4↑j
                mov     rax, [rbp+var_48]
                lock and qword ptr [rax], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14049A084

loc_1403892AD:                          ; CODE XREF: sub_1403891A0+110EDF↓j
                                        ; sub_1403891A0+110EE8↓j ...
                mov     r8d, [rbp+arg_10]
                mov     r9d, [rbp+arg_20]
                jmp     loc_14038922E
; ---------------------------------------------------------------------------

loc_1403892BA:                          ; CODE XREF: sub_1403891A0+99↑j
                test    r15d, r15d
                jnz     loc_14049A0C4

loc_1403892C3:                          ; CODE XREF: sub_1403891A0+110F3B↓j
                add     rsp, 78h
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
                db 0CCh
sub_1403891A0   endp

byte_1403892D5  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400983E8↑o
                                        ; .pdata:00000001400DBC78↑o

; =============== S U B R O U T I N E =======================================


sub_1403892DC   proc near               ; CODE XREF: sub_1407770B0+15F↓p
                                        ; DATA XREF: .pdata:00000001400DBC84↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     rbp, rcx
                mov     rax, 7FFFFFFFF8h
                shr     rcx, 9
                mov     rsi, rdx
                and     rcx, rax
                mov     rax, 0FFFFF68000000000h
                add     rcx, rax
                call    sub_1402805F0
                lea     rcx, [rsp+58h+arg_0]
                mov     [rsp+58h+arg_0], rax
                call    sub_1402805F0
                mov     rcx, 0FFFFFFFFFh
                shr     rax, 0Ch
                and     rax, rcx
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, 0FFFFFA8000000000h
                add     rcx, rax
                call    sub_1403A78FC
                lea     rdi, [rbp+100h]
                mov     rcx, rdi
                call    sub_1402A8F70
                mov     rcx, rdi
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rbx+4], 0
                mov     r14b, al
                mov     ecx, [rbp+4]
                test    cl, 10h
                jz      short loc_14038938A
                mov     rcx, rdi
                call    sub_140207A08

loc_14038938A:                          ; CODE XREF: sub_1403892DC+A4↑j
                mov     dl, r14b
                mov     rcx, rdi
                call    sub_140234180
                call    sub_1403F53C4
                test    eax, eax
                jz      short loc_1403893B4
                lea     rcx, [rbp+370h]
                mov     rdx, [rcx+48h]
                mov     r8, [rcx]
                sub     r8, rdx
                call    sub_1402438A0

loc_1403893B4:                          ; CODE XREF: sub_1403892DC+C0↑j
                mov     r8, cs:qword_140C4DC58
                mov     r9, 7FFFFFFFFFh
                mov     [rsp+58h+var_28], rsi
                add     r9, r8
                and     [rsp+58h+var_30], 0
                mov     dl, 11h
                and     [rsp+58h+var_38], 0
                mov     rcx, rdi
                call    sub_140289B60
                mov     rcx, rbp
                call    sub_1403F3D58
                dec     qword ptr [rsi+8]
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403892DC   endp

algn_140389401:                         ; DATA XREF: .pdata:00000001400DBC84↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140389408   proc near               ; CODE XREF: sub_1407770B0+14A↓p
                                        ; DATA XREF: .rdata:0000000140098444↑o ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049A0E0 SIZE 00000067 BYTES

                push    rbx
                sub     rsp, 40h
                mov     rbx, rdx
                lea     rcx, qword_140C4ECC0
                xorps   xmm0, xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     eax, eax
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                add     rbx, 4A0h
                mov     rcx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     short loc_140389479
                cmp     [rax], rbx
                jnz     short loc_140389479
                mov     [rax], rcx
                mov     [rcx+8], rax
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14049A0E0

loc_14038946E:                          ; CODE XREF: sub_140389408+110CDA↓j
                                        ; sub_140389408+110CE6↓j ...
                mov     cr8, rbx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140389479:                          ; CODE XREF: sub_140389408+3B↑j
                                        ; sub_140389408+40↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140389408   endp

; ---------------------------------------------------------------------------
byte_140389480  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140098444↑o
                                        ; .pdata:00000001400DBC90↑o

; =============== S U B R O U T I N E =======================================


sub_140389488   proc near               ; CODE XREF: sub_140347CEC+137E0B↓p
                                        ; sub_140777280+AF↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049A148 SIZE 00000098 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     eax, cs:dword_140CFB0F8
                mov     rbx, rdx
                mov     rdi, rcx
                cmp     eax, 6C6F6F50h
                jnz     loc_14049A148
                int     3               ; Trap to Debugger
                jmp     loc_14049A148
; ---------------------------------------------------------------------------

loc_1403894AF:                          ; CODE XREF: sub_140389488+110D0E↓j
                                        ; sub_140389488+110D2B↓j ...
                mov     eax, r8d
                imul    rcx, rax, 38h ; '8'
                mov     eax, [rcx+rdx]
                cmp     eax, 6C6F6F50h
                jnz     loc_14049A19B
                lock inc qword ptr [rcx+rdx+18h]
                neg     rbx
                lock xadd [rcx+rdx+8], rbx

loc_1403894D4:                          ; CODE XREF: sub_140389488+110D53↓j
                mov     rcx, rdi
                call    sub_1402A327C
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rax
                call    sub_1402A2F40
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140389488   endp

byte_1403894FF  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140098464↑o
                                        ; .pdata:00000001400DBC9C↑o

; =============== S U B R O U T I N E =======================================


sub_140389508   proc near               ; CODE XREF: sub_14039E234:loc_14039E3AB↓p
                                        ; sub_1407770B0+D0↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+558h]
                mov     rbx, [rax+2A0h]
                mov     rcx, [rbx+38E0h]
                test    rcx, rcx
                jz      short loc_140389546
                call    sub_1403895B4

loc_140389546:                          ; CODE XREF: sub_140389508+37↑j
                mov     rcx, [rbx+38E8h]
                test    rcx, rcx
                jz      short loc_140389557
                call    sub_1403895B4

loc_140389557:                          ; CODE XREF: sub_140389508+48↑j
                lea     rdi, [rbx+3898h]
                mov     esi, 3

loc_140389563:                          ; CODE XREF: sub_140389508+6B↓j
                mov     rcx, [rdi]
                test    rcx, rcx
                jnz     short loc_1403895A5

loc_14038956B:                          ; CODE XREF: sub_140389508+A2↓j
                add     rdi, 10h
                sub     rsi, 1
                jnz     short loc_140389563
                lea     rcx, [rbx+10h]
                call    sub_14038C9D0
                lea     rcx, [rbx+78h]
                call    sub_14038C9D0
                mov     edx, 65537048h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403895A5:                          ; CODE XREF: sub_140389508+61↑j
                call    sub_1403895B4
                jmp     short loc_14038956B
sub_140389508   endp

; ---------------------------------------------------------------------------
byte_1403895AC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DBCA8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403895B4   proc near               ; CODE XREF: sub_140389508+39↑p
                                        ; sub_140389508+4A↑p ...

var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

; FUNCTION CHUNK AT 000000014049A1E0 SIZE 00000032 BYTES

                mov     [rsp-18h+arg_10], rbx
                mov     [rsp-18h+arg_18], rsi
                mov     [rsp-18h+arg_0], rcx
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 40h
                and     [rbp+arg_8], 0
                lea     rbx, [rcx+48h]
                test    byte ptr [rbx+8], 1
                mov     r14, rcx
                mov     rcx, [rbx]
                jnz     loc_14049A1E0

loc_1403895E7:                          ; CODE XREF: sub_1403895B4+110C34↓j
                                        ; sub_1403895B4:loc_14049A1ED↓j
                movzx   eax, byte ptr [rbx+8]
                mov     esi, eax
                and     esi, 1
                test    rcx, rcx
                jz      short loc_140389652

loc_1403895F5:                          ; CODE XREF: sub_1403895B4+78↓j
                                        ; sub_1403895B4+194↓j ...
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_140389609
                mov     rdx, rcx
                test    esi, esi
                jnz     short loc_140389625
                mov     rcx, rax
                jmp     short loc_140389628
; ---------------------------------------------------------------------------

loc_140389609:                          ; CODE XREF: sub_1403895B4+47↑j
                mov     rax, [rcx+8]
                test    rax, rax
                jz      short loc_14038962E
                mov     rdx, rcx
                test    esi, esi
                jnz     loc_140389740
                mov     rcx, rax
                jmp     loc_140389743
; ---------------------------------------------------------------------------

loc_140389625:                          ; CODE XREF: sub_1403895B4+4E↑j
                xor     rcx, rax

loc_140389628:                          ; CODE XREF: sub_1403895B4+53↑j
                and     qword ptr [rdx], 0
                jmp     short loc_1403895F5
; ---------------------------------------------------------------------------

loc_14038962E:                          ; CODE XREF: sub_1403895B4+5C↑j
                mov     rdi, [rcx+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                test    esi, esi
                jnz     loc_14049A1F2

loc_14038963E:                          ; CODE XREF: sub_1403895B4+110C41↓j
                                        ; sub_1403895B4+110C4A↓j
                mov     rdx, r14
                call    sub_140595888
                test    rdi, rdi
                jnz     loc_14038974D
                mov     al, [rbx+8]

loc_140389652:                          ; CODE XREF: sub_1403895B4+3F↑j
                and     qword ptr [rbx], 0
                and     qword ptr [rbx+8], 0
                test    al, 1
                jnz     loc_140389755

loc_140389663:                          ; CODE XREF: sub_1403895B4+1A5↓j
                mov     rdi, [rbp+arg_0]
                lea     rsi, [rdi+2A0h]

loc_14038966E:                          ; CODE XREF: sub_1403895B4+E9↓j
                mov     rbx, [rsi]
                test    rbx, rbx
                jz      short loc_14038969F
                xor     rbx, rsi
                lea     rcx, [rdi+280h]
                mov     rdx, rbx
                call    sub_140318520
                mov     r8d, 1
                lea     rcx, [rdi+280h]
                mov     rdx, rbx
                call    sub_1403185CC
                jmp     short loc_14038966E
; ---------------------------------------------------------------------------

loc_14038969F:                          ; CODE XREF: sub_1403895B4+C0↑j
                mov     rcx, [rbp+arg_0]
                add     rcx, 340h
                call    sub_1403898C8
                mov     rcx, [rbp+arg_0]
                add     rcx, 100h
                call    sub_140389764
                mov     rcx, [rbp+arg_0]
                add     rcx, 1C0h
                call    sub_140389764
                mov     rcx, [rbp+arg_0]
                movups  xmm0, xmmword ptr [rcx]
                mov     rax, [rcx+0F8h]
                sub     rax, rcx
                mov     [rbp+arg_8], rax
                test    byte ptr [rcx+1Eh], 1
                movdqu  [rbp+var_20], xmm0
                movups  xmm0, xmmword ptr [rcx]
                movdqu  [rbp+var_10], xmm0
                jnz     loc_14049A203
                cmp     byte ptr [rbp+var_20+1], 2
                lea     r9, [rbp+var_10]
                lea     rdx, [rbp+arg_8]
                sbb     r8d, r8d
                lea     rcx, [rbp+arg_0]
                and     r8d, 1000000h
                add     r8d, 8000h
                call    sub_1402A4368

loc_140389721:                          ; CODE XREF: sub_1403895B4+110C59↓j
                xor     edx, edx
                lea     rcx, [rbp+var_20]
                call    sub_14037BE38
                mov     rbx, [rsp+40h+arg_10]
                mov     rsi, [rsp+40h+arg_18]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140389740:                          ; CODE XREF: sub_1403895B4+63↑j
                xor     rcx, rax

loc_140389743:                          ; CODE XREF: sub_1403895B4+6C↑j
                and     qword ptr [rdx+8], 0
                jmp     loc_1403895F5
; ---------------------------------------------------------------------------

loc_14038974D:                          ; CODE XREF: sub_1403895B4+95↑j
                mov     rcx, rdi
                jmp     loc_1403895F5
; ---------------------------------------------------------------------------

loc_140389755:                          ; CODE XREF: sub_1403895B4+A9↑j
                mov     byte ptr [rbx+8], 1
                jmp     loc_140389663
sub_1403895B4   endp

; ---------------------------------------------------------------------------
byte_14038975E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009848C↑o
                                        ; .pdata:00000001400DBCB4↑o

; =============== S U B R O U T I N E =======================================


sub_140389764   proc near               ; CODE XREF: sub_1403895B4+106↑p
                                        ; sub_1403895B4+116↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                lea     rbx, [rcx+48h]

loc_140389775:                          ; CODE XREF: sub_140389764+43↓j
                cmp     [rbx], rbx
                jz      short loc_1403897A9
                mov     rdx, [rbx+8]
                cmp     [rdx], rbx
                jnz     short loc_1403897B5
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     short loc_1403897B5
                mov     [rbx+8], rax
                mov     r9d, 1
                mov     r8d, 7FFFFFFFh
                mov     [rax], rbx
                mov     rcx, rdi
                call    sub_1403897C4
                jmp     short loc_140389775
; ---------------------------------------------------------------------------

loc_1403897A9:                          ; CODE XREF: sub_140389764+14↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403897B5:                          ; CODE XREF: sub_140389764+1D↑j
                                        ; sub_140389764+26↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140389764   endp

; ---------------------------------------------------------------------------
byte_1403897BC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DBCC0↑o

; =============== S U B R O U T I N E =======================================


sub_1403897C4   proc near               ; CODE XREF: sub_140389764+3E↑p
                                        ; sub_14029D090+1ABBEE↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014049A212 SIZE 0000004B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 30h
                mov     ebx, r8d
                mov     rsi, rdx
                mov     r8d, [rcx]
                mov     rdi, rcx
                not     r8d
                inc     r8d
                test    r9d, r9d
                jz      short loc_140389818
                movups  xmm0, xmmword ptr [rcx+28h]
                lea     rcx, [rax-18h]
                movdqu  xmmword ptr [rax-18h], xmm0
                call    sub_14029E158
                shr     r8, 14h
                add     r8, r8
                sub     rdx, [rax+8]
                lea     rcx, [rax+10h]
                shr     rdx, 14h
                add     rdx, rdx
                call    sub_1403139DC

loc_140389818:                          ; CODE XREF: sub_1403897C4+25↑j
                mov     al, [rdi+0Dh]
                and     al, 7
                cmp     al, 1
                jnb     loc_14049A212

loc_140389825:                          ; CODE XREF: sub_1403897C4+110A54↓j
                                        ; sub_1403897C4+110A94↓j
                mov     r8d, ebx
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14038984C
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403897C4   endp

byte_140389844  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400984B0↑o
                                        ; .pdata:00000001400DBCCC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14038984C   proc near               ; CODE XREF: sub_1403897C4+6A↑p
                                        ; sub_140314FDC+159C89↓p
                                        ; DATA XREF: ...

var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 000000014049A25E SIZE 000000D7 BYTES

                mov     [rsp-28h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                mov     eax, [rcx]
                mov     rbx, rdx
                and     [rbp+arg_8], 0
                not     eax
                inc     eax
                mov     [rbp+arg_18], rdx
                mov     edi, eax
                mov     rsi, rcx
                mov     al, [rcx+0Dh]
                and     al, 7
                mov     [rbp+arg_0], rdi
                cmp     al, 1
                jnb     loc_14049A25E

loc_140389887:                          ; CODE XREF: sub_14038984C+110A93↓j
                                        ; sub_14038984C+110AE4↓j
                test    rbx, rbx
                jz      short loc_1403898AC
                movups  xmm0, xmmword ptr [rsi+28h]
                lea     r9, [rbp+var_10]
                mov     r8d, 8000h
                lea     rdx, [rbp+arg_0]
                lea     rcx, [rbp+arg_18]
                movdqu  [rbp+var_10], xmm0
                call    sub_1402A4368

loc_1403898AC:                          ; CODE XREF: sub_14038984C+3E↑j
                                        ; sub_14038984C+110A5C↓j
                mov     rbx, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14038984C   endp

algn_1403898C1:                         ; DATA XREF: .rdata:00000001400984D8↑o
                                        ; .pdata:00000001400DBCD8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403898C8   proc near               ; CODE XREF: sub_1403895B4+F6↑p
                                        ; DATA XREF: .pdata:00000001400DBCE4↑o

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
                mov     rsi, rcx
                lea     rbx, [rcx+80h]
                mov     ebp, 81h

loc_1403898EF:                          ; CODE XREF: sub_1403898C8+36↓j
                mov     rax, [rbx]
                test    al, 1
                jz      short loc_14038991A

loc_1403898F6:                          ; CODE XREF: sub_1403898C8+88↓j
                add     rbx, 8
                sub     rbp, 1
                jnz     short loc_1403898EF
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14038991A:                          ; CODE XREF: sub_1403898C8+2C↑j
                mov     rdi, [rbx]
                movzx   eax, byte ptr [rdi+2]
                test    al, al
                jz      short loc_140389945
                xor     r14d, r14d
                mov     r15d, eax

loc_14038992B:                          ; CODE XREF: sub_1403898C8+7B↓j
                mov     rdx, [rdi+60h]
                mov     rcx, rsi
                mov     rdx, [r14+rdx]
                call    sub_140389958
                lea     r14, [r14+8]
                sub     r15, 1
                jnz     short loc_14038992B

loc_140389945:                          ; CODE XREF: sub_1403898C8+5B↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140389958
                jmp     short loc_1403898F6
sub_1403898C8   endp

; ---------------------------------------------------------------------------
algn_140389952:                         ; DATA XREF: .pdata:00000001400DBCE4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140389958   proc near               ; CODE XREF: sub_1403898C8+6E↑p
                                        ; sub_1403898C8+83↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049A336 SIZE 00000074 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                movzx   eax, byte ptr [rdx+1]
                mov     rsi, rcx
                mov     rdi, rdx
                mov     rbp, [rcx+rax*8+80h]
                lea     rcx, [rdx+28h]
                mov     rax, [rcx]
                cmp     rax, rcx
                jnz     loc_14049A336

loc_14038998E:                          ; CODE XREF: sub_140389958+110A4D↓j
                lea     rbx, [rdi+18h]

loc_140389992:                          ; CODE XREF: sub_140389958+A0↓j
                mov     rdx, [rbx]
                cmp     rdx, rbx
                jnz     short loc_1403899B0
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1403899B0:                          ; CODE XREF: sub_140389958+40↑j
                cmp     [rdx+8], rbx
                jnz     short loc_1403899FA
                mov     rax, [rdx]
                cmp     [rax+8], rdx
                jnz     short loc_1403899FA
                mov     [rbx], rax
                mov     [rax+8], rbx
                cmp     word ptr [rdx+20h], 0
                jbe     short loc_1403899D1
                dec     qword ptr [rdi+8]

loc_1403899D1:                          ; CODE XREF: sub_140389958+73↑j
                movzx   eax, word ptr [rdx+22h]
                mov     ecx, 1
                mov     [rdx+20h], ax
                xor     r9d, r9d
                movzx   eax, word ptr [rdx+2Eh]
                mov     r8, rbp
                mov     byte ptr [rdx+26h], 2
                mov     [rax+rdx], cx
                mov     rcx, rsi
                call    sub_14034421C
                jmp     short loc_140389992
; ---------------------------------------------------------------------------

loc_1403899FA:                          ; CODE XREF: sub_140389958+5C↑j
                                        ; sub_140389958+65↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_140389958   endp

; ---------------------------------------------------------------------------
algn_140389A01:                         ; DATA XREF: .rdata:000000014009851C↑o
                                        ; .pdata:00000001400DBCF0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140389A08   proc near               ; CODE XREF: sub_1407770B0+C4↓p
                                        ; DATA XREF: .rdata:0000000140098538↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049A3AA SIZE 0000001E BYTES

                sub     rsp, 38h
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+558h]
                cmp     qword ptr [rax+0D0h], 0
                jnz     loc_14049A3AA
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140389A08   endp

algn_140389A37:                         ; DATA XREF: .rdata:0000000140098538↑o
                                        ; .pdata:00000001400DBCFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140389A40   proc near               ; CODE XREF: sub_1407770B0+8E↓p
                                        ; DATA XREF: .rdata:0000000140098554↑o ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049A3C8 SIZE 00000067 BYTES

                push    rbx
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rdx, [rsp+48h+var_28]
                xorps   xmm0, xmm0
                lea     rcx, qword_140C4ECC0
                xor     eax, eax
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                lea     rcx, [rbx+100h]
                lea     rdx, [rsp+48h+var_28]
                call    sub_14020805C
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14049A3C8

loc_140389A97:                          ; CODE XREF: sub_140389A40+11098A↓j
                                        ; sub_140389A40+110996↓j ...
                mov     cr8, rbx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140389A40   endp

algn_140389AA2:                         ; DATA XREF: .rdata:0000000140098554↑o
                                        ; .pdata:00000001400DBD08↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140389AA8   proc near               ; CODE XREF: sub_1407770B0+4B↓p
                                        ; DATA XREF: .rdata:0000000140098574↑o ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049A430 SIZE 00000138 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rdx, [rsp+48h+var_28]
                xorps   xmm0, xmm0
                lea     rcx, qword_140C4ECC0
                xor     eax, eax
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                or      dword ptr [rbx+4], 2
                cmp     dword ptr [rbx+64h], 0
                jnz     loc_14049A430
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14049A501

loc_140389B00:                          ; CODE XREF: sub_140389AA8+110A5B↓j
                                        ; sub_140389AA8+110A67↓j ...
                mov     cr8, rbx

loc_140389B04:                          ; CODE XREF: sub_140389AA8+110A3C↓j
                                        ; sub_140389AA8+110A54↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140389AA8   endp

algn_140389B10:                         ; DATA XREF: .rdata:0000000140098574↑o
                                        ; .pdata:00000001400DBD14↑o
                align 20h
; Exported entry 818. IoFlushAdapterBuffers

; =============== S U B R O U T I N E =======================================


