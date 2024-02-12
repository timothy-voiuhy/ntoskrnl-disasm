NtCreateFile    proc near               ; CODE XREF: sub_1405DAA5C+FD↑p
                                        ; sub_1405DDC14+AC↑p ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h
arg_50          = dword ptr  58h

                sub     rsp, 88h
                xor     eax, eax
                mov     [rsp+88h+var_10], rax
                mov     [rsp+88h+var_18], 20h ; ' '
                mov     [rsp+88h+var_20], eax
                mov     [rsp+88h+var_28], rax
                mov     [rsp+88h+var_30], eax
                mov     eax, [rsp+88h+arg_50]
                mov     [rsp+88h+var_38], eax
                mov     rax, [rsp+88h+arg_48]
                mov     [rsp+88h+var_40], rax
                mov     eax, [rsp+88h+arg_40]
                mov     [rsp+88h+var_48], eax
                mov     eax, [rsp+88h+arg_38]
                mov     [rsp+88h+var_50], eax
                mov     eax, [rsp+88h+arg_30]
                mov     [rsp+88h+var_58], eax
                mov     eax, [rsp+88h+arg_28]
                mov     [rsp+88h+var_60], eax
                mov     rax, [rsp+88h+arg_20]
                mov     [rsp+88h+var_68], rax
                call    sub_14063FB00
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtCreateFile    endp

algn_14063EF62:                         ; DATA XREF: .pdata:00000001400FEDF0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14063EF70   proc near               ; CODE XREF: PsImpersonateClient+121↓p
                                        ; DATA XREF: .rdata:0000000140053D3C↑o ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

                mov     rax, rsp
                push    rsi
                push    rdi
                sub     rsp, 58h
                mov     byte ptr [rax+10h], 0
                xorps   xmm0, xmm0
                mov     byte ptr [rax+8], 0
                xorps   xmm1, xmm1
                mov     byte ptr [rax+18h], 0
                mov     r11, r9
                mov     dword ptr [rax+20h], 0
                mov     rsi, rdx
                mov     byte ptr [r9], 0
                mov     rdi, rcx
                movups  xmmword ptr [rax-38h], xmm0
                movups  xmmword ptr [rax-48h], xmm1
                cmp     r8d, 2
                jge     short loc_14063EFB7
                xor     eax, eax
                add     rsp, 58h
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14063EFB7:                          ; CODE XREF: sub_14063EF70+3B↑j
                cmp     dword ptr [rdx+18h], 3E6h

loc_14063EFBE:                          ; DATA XREF: .rdata:0000000140053D3C↑o
                                        ; .rdata:0000000140053D4C↑o ...
                mov     [rsp+68h+var_18], rbx
                jnz     short loc_14063F025
                cmp     dword ptr [rdx+1Ch], 0
                jnz     short loc_14063F025
                test    dword ptr [rcx+0C8h], 4000h
                jz      loc_14063F05D
                test    dword ptr [rdx+0C8h], 4000h
                jz      short loc_14063F013
                mov     rbx, [rdx+310h]
                mov     rdi, [rcx+310h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    RtlEqualSid
                test    al, al
                jnz     short loc_14063F05D
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140679848
                test    al, al
                jnz     short loc_14063F05D

loc_14063F013:                          ; CODE XREF: sub_14063EF70+75↑j
                mov     rbx, [rsp+68h+var_18]
                mov     eax, 0C0000061h
                add     rsp, 58h
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
byte_14063F024  db 0CCh                 ; DATA XREF: .pdata:00000001400FEE08↑o
                                        ; .pdata:00000001400FEE14↑o
; ---------------------------------------------------------------------------

loc_14063F025:                          ; CODE XREF: sub_14063EF70+53↑j
                                        ; sub_14063EF70+59↑j
                                        ; DATA XREF: ...
                mov     rdx, [rdx+450h]
                lea     r8, [rsp+68h+arg_0]
                mov     rcx, [rcx+450h]
                call    sub_140219E70
                test    eax, eax
                js      loc_14063F25B
                cmp     [rsp+68h+arg_0], 0
                jnz     short loc_14063F050
                mov     byte ptr [r11], 1

loc_14063F050:                          ; CODE XREF: sub_14063EF70+DA↑j
                mov     ecx, [rdi+48h]
                and     ecx, [rdi+40h]
                bt      rcx, 1Dh
                jnb     short loc_14063F06C

loc_14063F05D:                          ; CODE XREF: sub_14063EF70+65↑j
                                        ; sub_14063EF70+92↑j ...
                mov     rbx, [rsp+68h+var_18]
                xor     eax, eax
                add     rsp, 58h
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
algn_14063F06B:                         ; DATA XREF: .pdata:00000001400FEE20↑o
                                        ; .pdata:00000001400FEE2C↑o
                align 4

loc_14063F06C:                          ; CODE XREF: sub_14063EF70+EB↑j
                                        ; DATA XREF: .pdata:00000001400FEE2C↑o ...
                mov     [rsp+68h+var_20], rbp
                mov     rdx, rsi
                mov     rcx, rdi
                mov     [rsp+68h+var_28], r14
                call    sub_140311758
                lea     rdx, [rsp+68h+var_38]
                mov     rcx, rdi
                call    sub_14021C07C
                mov     rcx, rsi
                lea     rdx, [rsp+68h+var_48]
                call    sub_14021C07C
                mov     rcx, [rsp+68h+var_38]
                lea     r8, [rsp+68h+arg_8]
                mov     rdx, [rsp+68h+var_48]
                call    sub_14021BF70
                mov     ebx, eax
                test    eax, eax
                js      loc_14063F244
                cmp     [rsp+68h+arg_8], 0
                jz      loc_14063F23F
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1407015D0
                test    al, al
                jz      short loc_14063F0DA

loc_14063F0D3:                          ; CODE XREF: sub_14063EF70+17E↓j
                xor     ebx, ebx
                jmp     loc_14063F244
; ---------------------------------------------------------------------------

loc_14063F0DA:                          ; CODE XREF: sub_14063EF70+161↑j
                mov     eax, [rsi+0E0h]
                cmp     [rdi+18h], eax
                jnz     short loc_14063F0F0
                mov     eax, [rsi+0E4h]
                cmp     [rdi+1Ch], eax
                jz      short loc_14063F0D3

loc_14063F0F0:                          ; CODE XREF: sub_14063EF70+173↑j
                mov     rdx, [rsi+98h]
                mov     rcx, [rdi+98h]
                mov     rdx, [rdx]
                mov     rcx, [rcx]
                call    RtlEqualSid
                test    al, al
                jz      loc_14063F23F
                lea     rcx, [rsp+68h+arg_18]
                call    RtlQueryElevationFlags
                test    eax, eax
                js      loc_14063F1BD
                test    [rsp+68h+arg_18], 1
                jz      loc_14063F1BD
                lea     rdx, [rsp+68h+arg_10]
                mov     rcx, rsi
                call    sub_140704DD0
                mov     ebx, eax
                test    eax, eax
                js      loc_14063F244
                cmp     [rsp+68h+arg_10], 0
                jz      short loc_14063F18F
                lea     rdx, [rsp+68h+arg_10]
                mov     rcx, rdi
                call    sub_140704DD0
                mov     ebx, eax
                test    eax, eax
                js      loc_14063F244
                cmp     [rsp+68h+arg_10], 0
                jnz     short loc_14063F18F
                mov     rax, [rdi+0D8h]
                mov     ecx, [rax+20h]
                test    cl, 4
                jnz     loc_14063F23F

loc_14063F18F:                          ; CODE XREF: sub_14063EF70+1E6↑j
                                        ; sub_14063EF70+20A↑j
                mov     rax, [rdi+0D8h]
                mov     ecx, [rax+20h]
                test    cl, 4
                jz      short loc_14063F1BD
                mov     rax, [rsi+0D8h]
                mov     ecx, [rax+20h]
                test    cl, 4
                jnz     short loc_14063F1BD
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140597558
                jmp     loc_14063F23F
; ---------------------------------------------------------------------------

loc_14063F1BD:                          ; CODE XREF: sub_14063EF70+1B0↑j
                                        ; sub_14063EF70+1BE↑j ...
                xor     ebx, ebx
                test    dword ptr [rdi+0C8h], 4000h
                jz      short loc_14063F203
                test    dword ptr [rsi+0C8h], 4000h
                jz      short loc_14063F23F
                mov     rbp, [rsi+310h]
                mov     r14, [rdi+310h]
                mov     rdx, rbp
                mov     rcx, r14
                call    RtlEqualSid
                test    al, al
                jnz     short loc_14063F203
                mov     rdx, rbp
                mov     rcx, r14
                call    sub_140679848
                test    al, al
                jz      short loc_14063F23F

loc_14063F203:                          ; CODE XREF: sub_14063EF70+259↑j
                                        ; sub_14063EF70+282↑j
                mov     rcx, rdi
                call    SeTokenIsRestricted
                test    al, al
                jz      short loc_14063F233
                mov     rcx, rsi
                call    SeTokenIsRestricted
                test    al, al
                jz      short loc_14063F23F
                mov     rcx, rdi
                call    SeTokenIsWriteRestricted
                test    al, al
                jnz     short loc_14063F233
                mov     rcx, rsi
                call    SeTokenIsWriteRestricted
                test    al, al
                jnz     short loc_14063F23F

loc_14063F233:                          ; CODE XREF: sub_14063EF70+29D↑j
                                        ; sub_14063EF70+2B5↑j
                mov     eax, [rsi+78h]
                cmp     [rdi+78h], eax
                jz      short loc_14063F244
                test    eax, eax
                jnz     short loc_14063F244

loc_14063F23F:                          ; CODE XREF: sub_14063EF70+14E↑j
                                        ; sub_14063EF70+19B↑j ...
                mov     ebx, 0C0000061h

loc_14063F244:                          ; CODE XREF: sub_14063EF70+143↑j
                                        ; sub_14063EF70+165↑j ...
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140311724
                mov     r14, [rsp+68h+var_28]
                mov     eax, ebx
                mov     rbp, [rsp+68h+var_20]

loc_14063F25B:                          ; CODE XREF: sub_14063EF70+CF↑j
                                        ; DATA XREF: .rdata:0000000140053D8C↑o ...
                mov     rbx, [rsp+68h+var_18]
                add     rsp, 58h
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
algn_14063F267:                         ; DATA XREF: .rdata:0000000140053D8C↑o
                                        ; .pdata:00000001400FEE44↑o ...
                align 10h
sub_14063EF70   endp


; =============== S U B R O U T I N E =======================================


sub_14063F270   proc near               ; CODE XREF: sub_140641024+15↓p
                                        ; sub_1406EA7F0+1D4↓p ...

var_8           = qword ptr -8
arg_0           = qword ptr  8

                sub     rsp, 28h
                mov     eax, [rcx+4]
                test    eax, 3F0h
                jnz     loc_14063F304
                test    al, 1
                jnz     short loc_14063F293
                call    FsRtlFreeExtraCreateParameterList
                mov     al, 1

loc_14063F28D:                          ; CODE XREF: sub_14063F270+5B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14063F293:                          ; CODE XREF: sub_14063F270+14↑j
                                        ; DATA XREF: .rdata:0000000140053F5C↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     rbx, [rcx+8]
                mov     [rsp+28h+var_8], rdi
                lea     rdi, [rcx+8]
                cmp     rbx, rdi
                jz      short loc_14063F2BF

loc_14063F2AA:                          ; CODE XREF: sub_14063F270+4D↓j
                mov     rcx, rbx
                mov     rdx, rbx
                mov     rbx, [rbx]
                mov     eax, [rcx+28h]
                test    al, 1
                jz      short loc_14063F2CD

loc_14063F2BA:                          ; CODE XREF: sub_14063F270+92↓j
                cmp     rbx, rdi
                jnz     short loc_14063F2AA

loc_14063F2BF:                          ; CODE XREF: sub_14063F270+38↑j
                mov     rbx, [rsp+28h+arg_0]
                xor     al, al
                mov     rdi, [rsp+28h+var_8]
                jmp     short loc_14063F28D
; ---------------------------------------------------------------------------

loc_14063F2CD:                          ; CODE XREF: sub_14063F270+48↑j
                                        ; DATA XREF: .pdata:00000001400FEE68↑o ...
                cmp     [rbx+8], rdx
                jz      short loc_14063F2DA

loc_14063F2D3:                          ; CODE XREF: sub_14063F270+71↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14063F2DA:                          ; CODE XREF: sub_14063F270+61↑j
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     short loc_14063F2D3
                mov     [rax], rbx
                mov     [rbx+8], rax
                mov     qword ptr [rcx+8], 0
                add     rcx, 40h ; '@'
                mov     qword ptr [rdx], 0
                call    FsRtlFreeExtraCreateParameter
                jmp     short loc_14063F2BA
; ---------------------------------------------------------------------------

loc_14063F304:                          ; CODE XREF: sub_14063F270+C↑j
                                        ; DATA XREF: .pdata:00000001400FEE74↑o ...
                add     eax, 0FFFFFFF0h
                mov     [rcx+4], eax
                mov     al, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14063F270   endp

algn_14063F312:                         ; DATA XREF: .pdata:00000001400FEE80↑o
                align 20h
; Exported entry 432. FsRtlFreeExtraCreateParameterList

; =============== S U B R O U T I N E =======================================


