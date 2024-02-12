RtlDelete       proc near               ; CODE XREF: sub_140326284+29C↑p
                                        ; sub_140326284+2DD↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx+8]
                mov     rbx, rcx
                test    rax, rax
                jnz     short loc_140327856

loc_140327812:                          ; CODE XREF: RtlDelete+62↓j
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      short loc_14032782D

loc_14032781B:                          ; CODE XREF: RtlDelete+60↓j
                mov     rcx, [rbx]
                cmp     rcx, rbx
                jnz     short loc_14032787A
                mov     [rax], rax

loc_140327826:                          ; CODE XREF: RtlDelete+37↓j
                                        ; RtlDelete+54↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032782D:                          ; CODE XREF: RtlDelete+19↑j
                mov     rcx, [rbx]
                cmp     rcx, rbx
                jnz     short loc_140327839
                xor     eax, eax
                jmp     short loc_140327826
; ---------------------------------------------------------------------------

loc_140327839:                          ; CODE XREF: RtlDelete+33↑j
                cmp     [rcx+8], rbx
                mov     edx, 8
                lea     r8d, [rdx+8]
                cmovnz  edx, r8d
                and     qword ptr [rdx+rcx], 0

loc_14032784F:                          ; CODE XREF: RtlDelete+95↓j
                call    RtlSplay
                jmp     short loc_140327826
; ---------------------------------------------------------------------------

loc_140327856:                          ; CODE XREF: RtlDelete+10↑j
                cmp     qword ptr [rcx+10h], 0
                jnz     short loc_140327864

loc_14032785D:                          ; CODE XREF: RtlDelete+78↓j
                test    rax, rax
                jnz     short loc_14032781B
                jmp     short loc_140327812
; ---------------------------------------------------------------------------

loc_140327864:                          ; CODE XREF: RtlDelete+5B↑j
                call    RtlSubtreePredecessor
                mov     rdx, rbx
                mov     rcx, rax
                call    sub_140327B64
                mov     rax, [rbx+8]
                jmp     short loc_14032785D
; ---------------------------------------------------------------------------

loc_14032787A:                          ; CODE XREF: RtlDelete+21↑j
                cmp     [rcx+8], rbx
                mov     edx, 8
                lea     r8d, [rdx+8]
                cmovnz  edx, r8d
                mov     [rdx+rcx], rax
                mov     rcx, [rbx]
                mov     [rax], rcx
                jmp     short loc_14032784F
RtlDelete       endp

; ---------------------------------------------------------------------------
algn_140327897:                         ; DATA XREF: .pdata:00000001400D5D14↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403278A0   proc near               ; CODE XREF: sub_140326284+182↑p
                                        ; sub_140327074+122↑p ...
                mov     r8, rcx
                xor     ecx, ecx
                mov     rax, [r8+20h]
                test    rax, rax
                jz      short loc_1403278D3
                mov     rcx, [rax+8]

loc_1403278B2:                          ; CODE XREF: sub_1403278A0+72↓j
                test    rcx, rcx
                jnz     short loc_14032790B
                mov     rcx, [rax-18h]
                mov     rax, [r8+28h]
                test    rax, rax
                jnz     short loc_1403278DC
                add     rcx, 8

loc_1403278C8:                          ; CODE XREF: sub_1403278A0+63↓j
                mov     rdx, rcx

loc_1403278CB:                          ; CODE XREF: sub_1403278A0+55↓j
                                        ; sub_1403278A0+61↓j
                mov     rax, [rdx]

loc_1403278CE:                          ; CODE XREF: sub_1403278A0+69↓j
                mov     [r8], rax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403278D3:                          ; CODE XREF: sub_1403278A0+C↑j
                mov     rax, [r8+28h]
                test    rax, rax
                jz      short loc_140327905

loc_1403278DC:                          ; CODE XREF: sub_1403278A0+22↑j
                mov     rdx, [rax+8]
                jmp     short loc_1403278E9
; ---------------------------------------------------------------------------

loc_1403278E2:                          ; CODE XREF: sub_1403278A0+4C↓j
                mov     rax, rdx
                mov     rdx, [rdx+8]

loc_1403278E9:                          ; CODE XREF: sub_1403278A0+40↑j
                test    rdx, rdx
                jnz     short loc_1403278E2
                lea     rdx, [rax+18h]
                test    rcx, rcx
                jz      short loc_1403278CB
                add     rcx, 8
                mov     rax, [rcx]
                cmp     [rdx], rax
                jb      short loc_1403278CB
                jmp     short loc_1403278C8
; ---------------------------------------------------------------------------

loc_140327905:                          ; CODE XREF: sub_1403278A0+3A↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1403278CE
; ---------------------------------------------------------------------------

loc_14032790B:                          ; CODE XREF: sub_1403278A0+15↑j
                mov     rax, rcx
                mov     rcx, [rcx+8]
                jmp     short loc_1403278B2
sub_1403278A0   endp

; ---------------------------------------------------------------------------
byte_140327914  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D5D20↑o

; =============== S U B R O U T I N E =======================================


sub_14032791C   proc near               ; CODE XREF: sub_1403269F4+34↑p
                                        ; sub_140327074+A1↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140473EDC SIZE 00000026 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                xor     ebx, ebx
                mov     rdi, r8
                mov     rsi, rdx
                test    r9, r9
                jz      short loc_14032793B
                and     [r9], rbx

loc_14032793B:                          ; CODE XREF: sub_14032791C+1A↑j
                mov     rax, [rsp+arg_20]
                test    rax, rax
                jnz     short loc_1403279AF

loc_140327945:                          ; CODE XREF: sub_14032791C+95↓j
                xor     r8d, r8d

loc_140327948:                          ; CODE XREF: sub_14032791C+5A↓j
                                        ; sub_14032791C+A8↓j
                test    rcx, rcx
                jz      short loc_140327994
                mov     r11, [rcx+40h]
                mov     rbx, rcx
                mov     rdx, [rsi]
                cmp     r11, rdx
                jnb     short loc_140327978

loc_14032795C:                          ; CODE XREF: sub_14032791C+BB↓j
                cmp     r11, [rdi]
                jz      loc_140473EDC

loc_140327965:                          ; CODE XREF: sub_14032791C+14C5C4↓j
                test    r9, r9
                jz      short loc_14032796D
                mov     [r9], rcx

loc_14032796D:                          ; CODE XREF: sub_14032791C+4C↑j
                test    rax, rax
                jnz     short loc_1403279C6

loc_140327972:                          ; CODE XREF: sub_14032791C+AD↓j
                mov     rcx, [rcx+10h]
                jmp     short loc_140327948
; ---------------------------------------------------------------------------

loc_140327978:                          ; CODE XREF: sub_14032791C+3E↑j
                mov     r10, [rcx+18h]
                test    r10, r10
                jz      short loc_1403279D0

loc_140327981:                          ; CODE XREF: sub_14032791C+B9↓j
                mov     r11, [rdi]
                cmp     r10, r11
                ja      short loc_1403279B3
                cmp     r11, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1403279D9

loc_14032798F:                          ; CODE XREF: sub_14032791C+C2↓j
                cmp     r10, rdx
                ja      short loc_1403279E0

loc_140327994:                          ; CODE XREF: sub_14032791C+2F↑j
                mov     rsi, [rsp+arg_8]
                test    rcx, rcx
                mov     rdi, [rsp+arg_10]
                cmovnz  r8, rbx
                mov     rbx, [rsp+arg_0]
                mov     rax, r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403279AF:                          ; CODE XREF: sub_14032791C+27↑j
                mov     [rax], bl
                jmp     short loc_140327945
; ---------------------------------------------------------------------------

loc_1403279B3:                          ; CODE XREF: sub_14032791C+6B↑j
                                        ; sub_14032791C+C0↓j ...
                test    r9, r9
                jz      short loc_1403279BB
                mov     [r9], rcx

loc_1403279BB:                          ; CODE XREF: sub_14032791C+9A↑j
                test    rax, rax
                jnz     short loc_1403279CB

loc_1403279C0:                          ; CODE XREF: sub_14032791C+B2↓j
                                        ; sub_14032791C+14C5D8↓j ...
                mov     rcx, [rcx+8]
                jmp     short loc_140327948
; ---------------------------------------------------------------------------

loc_1403279C6:                          ; CODE XREF: sub_14032791C+54↑j
                mov     byte ptr [rax], 0
                jmp     short loc_140327972
; ---------------------------------------------------------------------------

loc_1403279CB:                          ; CODE XREF: sub_14032791C+A2↑j
                mov     byte ptr [rax], 1
                jmp     short loc_1403279C0
; ---------------------------------------------------------------------------

loc_1403279D0:                          ; CODE XREF: sub_14032791C+63↑j
                cmp     qword ptr [rcx+20h], 0
                jnz     short loc_140327981
                jmp     short loc_14032795C
; ---------------------------------------------------------------------------

loc_1403279D9:                          ; CODE XREF: sub_14032791C+71↑j
                test    rdx, rdx
                jz      short loc_1403279B3
                jmp     short loc_14032798F
; ---------------------------------------------------------------------------

loc_1403279E0:                          ; CODE XREF: sub_14032791C+76↑j
                mov     r8, rcx
                jmp     short loc_1403279B3
sub_14032791C   endp

; ---------------------------------------------------------------------------
byte_1403279E5  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007B210↑o
                                        ; .pdata:00000001400D5D2C↑o

; =============== S U B R O U T I N E =======================================


sub_1403279EC   proc near               ; CODE XREF: FsRtlPrivateLock:loc_140326BB6↑p
                                        ; sub_140327DC8+14C2D5↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140473F02 SIZE 00000036 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                mov     rbx, rdx
                xor     ecx, ecx
                mov     [r11+8], rcx
                mov     rax, [rdi+8]
                test    rax, rax
                jz      short loc_140327A44
                and     [r11-18h], rcx
                lea     r9, [r11+8]
                mov     rcx, rax
                lea     r8, [rdx+28h]
                call    sub_140327424
                test    rax, rax
                jnz     short loc_140327A96

loc_140327A2A:                          ; CODE XREF: sub_1403279EC+BB↓j
                                        ; sub_1403279EC+14C537↓j
                mov     rcx, [rsp+38h+arg_0]
                test    rcx, rcx
                jz      short loc_140327A44
                call    RtlSplay
                xor     ecx, ecx
                mov     [rdi+8], rax
                mov     [rsp+38h+arg_0], rcx

loc_140327A44:                          ; CODE XREF: sub_1403279EC+23↑j
                                        ; sub_1403279EC+46↑j
                mov     rax, [rdi+10h]
                test    rax, rax
                jnz     short loc_140327A65

loc_140327A4D:                          ; CODE XREF: sub_1403279EC+9D↓j
                test    rcx, rcx
                jnz     short loc_140327A8B

loc_140327A52:                          ; CODE XREF: sub_1403279EC+A8↓j
                mov     al, 1

loc_140327A54:                          ; CODE XREF: sub_1403279EC+CA↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140327A65:                          ; CODE XREF: sub_1403279EC+5F↑j
                and     [rsp+38h+var_18], 0
                lea     r8, [rbx+28h]
                lea     r9, [rsp+38h+arg_0]
                mov     rdx, rbx
                mov     rcx, rax
                call    sub_14032791C
                test    rax, rax
                jnz     short loc_140327AB8

loc_140327A84:                          ; CODE XREF: sub_1403279EC+14C541↓j
                mov     rcx, [rsp+38h+arg_0]
                jmp     short loc_140327A4D
; ---------------------------------------------------------------------------

loc_140327A8B:                          ; CODE XREF: sub_1403279EC+64↑j
                call    RtlSplay
                mov     [rdi+10h], rax
                jmp     short loc_140327A52
; ---------------------------------------------------------------------------

loc_140327A96:                          ; CODE XREF: sub_1403279EC+3C↑j
                cmp     byte ptr [rax-10h], 0
                jnz     loc_140473F02
                mov     rax, [rax-18h]

loc_140327AA4:                          ; CODE XREF: sub_1403279EC+14C527↓j
                test    rax, rax
                jz      short loc_140327A2A
                cmp     qword ptr [rbx+8], 0
                jz      loc_140473F18

loc_140327AB4:                          ; CODE XREF: sub_1403279EC+D1↓j
                                        ; sub_1403279EC+14C531↓j ...
                xor     al, al
                jmp     short loc_140327A54
; ---------------------------------------------------------------------------

loc_140327AB8:                          ; CODE XREF: sub_1403279EC+96↑j
                cmp     qword ptr [rbx+8], 0
                jnz     short loc_140327AB4
                jmp     loc_140473F28
sub_1403279EC   endp

; ---------------------------------------------------------------------------
byte_140327AC4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007B234↑o
                                        ; .pdata:00000001400D5D38↑o

; =============== S U B R O U T I N E =======================================


sub_140327ACC   proc near               ; CODE XREF: RtlDeleteElementGenericTable+18↑p
                                        ; RtlInsertElementGenericTable+29↑p ...

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
                mov     rbx, [rcx]
                mov     r14, r8
                mov     rbp, rdx
                mov     rsi, rcx
                test    rbx, rbx
                jz      short loc_140327B58
                mov     edi, 1

loc_140327AFB:                          ; CODE XREF: sub_140327ACC+56↓j
                mov     rax, [rsi+28h]
                lea     r8, [rbx+28h]
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_140327B4A
                cmp     eax, edi
                jnz     short loc_140327B29
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      short loc_140327B24

loc_140327B1F:                          ; CODE XREF: sub_140327ACC+85↓j
                mov     rbx, rax
                jmp     short loc_140327AFB
; ---------------------------------------------------------------------------

loc_140327B24:                          ; CODE XREF: sub_140327ACC+51↑j
                mov     edi, 3

loc_140327B29:                          ; CODE XREF: sub_140327ACC+48↑j
                                        ; sub_140327ACC+8A↓j
                mov     [r14], rbx
                mov     eax, edi

loc_140327B2E:                          ; CODE XREF: sub_140327ACC+8E↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140327B4A:                          ; CODE XREF: sub_140327ACC+44↑j
                mov     rax, [rbx+8]
                test    rax, rax
                jnz     short loc_140327B1F
                lea     edi, [rax+2]
                jmp     short loc_140327B29
; ---------------------------------------------------------------------------

loc_140327B58:                          ; CODE XREF: sub_140327ACC+28↑j
                xor     eax, eax
                jmp     short loc_140327B2E
sub_140327ACC   endp

; ---------------------------------------------------------------------------
byte_140327B5C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D5D44↑o

; =============== S U B R O U T I N E =======================================


sub_140327B64   proc near               ; CODE XREF: RtlDeleteNoSplay+BF↑p
                                        ; RtlDelete+6F↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140473F38 SIZE 00000025 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     r8, rcx
                mov     r11, rdx
                mov     rcx, [rcx]
                cmp     rcx, r8
                jz      loc_140473F38
                mov     r9, [rdx]
                mov     r10, rcx
                cmp     r9, r8
                jz      loc_140473F38

loc_140327B94:                          ; CODE XREF: sub_140327B64+14C3E3↓j
                cmp     r10, rdx
                jz      loc_140327C26
                mov     rax, [r10+8]
                mov     ecx, 8
                lea     r11d, [rcx+8]
                cmp     r9, rdx
                jnz     loc_140327C6C
                cmp     rax, r8
                cmovnz  ecx, r11d
                mov     [rcx+r10], rdx
                mov     rax, [r8]
                mov     [rdx], rax
                mov     [r8], r8

loc_140327BC7:                          ; CODE XREF: sub_140327B64+13E↓j
                mov     rax, [rdx+8]
                mov     rcx, [r8+8]
                mov     [r8+8], rax
                mov     rax, [rdx+10h]
                mov     [rdx+8], rcx
                mov     rcx, [r8+10h]
                mov     [r8+10h], rax
                mov     [rdx+10h], rcx
                mov     rax, [r8+8]

loc_140327BEB:                          ; CODE XREF: sub_140327B64+101↓j
                                        ; sub_140327B64+14C3EC↓j
                test    rax, rax
                jz      short loc_140327BF3
                mov     [rax], r8

loc_140327BF3:                          ; CODE XREF: sub_140327B64+8A↑j
                mov     rax, [r8+10h]
                test    rax, rax
                jz      short loc_140327BFF
                mov     [rax], r8

loc_140327BFF:                          ; CODE XREF: sub_140327B64+96↑j
                mov     rax, [rdx+8]
                test    rax, rax
                jnz     short loc_140327C67

loc_140327C08:                          ; CODE XREF: sub_140327B64+106↓j
                mov     rax, [rdx+10h]
                test    rax, rax
                jnz     loc_140473F55

loc_140327C15:                          ; CODE XREF: sub_140327B64+14C3F4↓j
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140327C26:                          ; CODE XREF: sub_140327B64+33↑j
                cmp     r9, rdx
                jnz     short loc_140327CA7
                mov     rax, r8

loc_140327C2E:                          ; CODE XREF: sub_140327B64+15B↓j
                mov     [r8], rax
                mov     rax, [rdx+8]
                mov     rcx, [r8+8]
                mov     [r8+8], rax
                mov     rax, [rdx+10h]
                mov     [rdx+8], rcx
                mov     rcx, [r8+10h]
                mov     [r8+10h], rax
                mov     [rdx+10h], rcx
                mov     rax, [r8+8]
                cmp     rax, r8
                jnz     loc_140473F4C
                mov     [r8+8], rdx
                mov     rax, rdx
                jmp     short loc_140327BEB
; ---------------------------------------------------------------------------

loc_140327C67:                          ; CODE XREF: sub_140327B64+A2↑j
                mov     [rax], rdx
                jmp     short loc_140327C08
; ---------------------------------------------------------------------------

loc_140327C6C:                          ; CODE XREF: sub_140327B64+49↑j
                mov     rdi, [r9+8]
                cmp     rax, r8
                mov     rsi, rcx
                mov     rbx, rdi
                cmovnz  rsi, r11
                cmp     rdi, rdx
                jz      short loc_140327C86
                mov     rbx, [r9+10h]

loc_140327C86:                          ; CODE XREF: sub_140327B64+11C↑j
                mov     rax, [rsi+r10]
                cmovnz  rcx, r11
                mov     [rsi+r10], rbx
                mov     [rcx+r9], rax
                mov     rax, [rdx]
                mov     rcx, [r8]
                mov     [r8], rax
                mov     [rdx], rcx
                jmp     loc_140327BC7
; ---------------------------------------------------------------------------

loc_140327CA7:                          ; CODE XREF: sub_140327B64+C5↑j
                cmp     [r9+8], rdx
                mov     ecx, 8
                lea     r11d, [rcx+8]
                cmovnz  ecx, r11d
                mov     [rcx+r9], r8
                mov     rax, [rdx]
                jmp     loc_140327C2E
sub_140327B64   endp

; ---------------------------------------------------------------------------
algn_140327CC4:                         ; DATA XREF: .rdata:000000014007B258↑o
                                        ; .pdata:00000001400D5D50↑o
                align 10h
; Exported entry 2404. RtlSubtreePredecessor

; =============== S U B R O U T I N E =======================================


