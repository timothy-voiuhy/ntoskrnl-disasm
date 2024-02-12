IoCreateFile    proc near               ; CODE XREF: sub_1405D74B0+EA↑p
                                        ; sub_14070A400+139↑p ...

var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = dword ptr -48h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h
arg_50          = dword ptr  58h
arg_58          = dword ptr  60h
arg_60          = qword ptr  68h
arg_68          = dword ptr  70h

                mov     r11, rsp
                sub     rsp, 88h
                and     qword ptr [r11-10h], 0
                and     [rsp+88h+var_18], 0
                mov     eax, [rsp+88h+arg_68]
                mov     [rsp+88h+var_20], eax
                mov     rax, [rsp+88h+arg_60]
                mov     [r11-28h], rax
                mov     eax, [rsp+88h+arg_58]
                mov     [rsp+88h+var_30], eax
                mov     eax, [rsp+88h+arg_50]
                mov     [rsp+88h+var_38], eax
                mov     rax, [rsp+88h+arg_48]
                mov     [r11-40h], rax
                mov     eax, [rsp+88h+arg_40]
                mov     [rsp+88h+var_48], eax
                mov     eax, [rsp+88h+arg_38]
                mov     [rsp+88h+var_50], eax
                mov     eax, [rsp+88h+arg_30]
                mov     [rsp+88h+var_58], eax
                mov     eax, [rsp+88h+arg_28]
                mov     [rsp+88h+var_60], eax
                mov     rax, [rsp+88h+arg_20]
                mov     [r11-68h], rax
                call    sub_14063FB00
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateFile    endp

algn_14070A5F3:                         ; DATA XREF: .pdata:0000000140105DD4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070A600   proc near               ; DATA XREF: .rdata:0000000140001E08↑o
                                        ; .pdata:0000000140105DE0↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+10h]
                test    rcx, rcx
                jz      short loc_14070A627
                mov     rdx, [rbx+18h]
                mov     r8, rbx
                call    sub_14068F3DC
                and     qword ptr [rbx+10h], 0

loc_14070A627:                          ; CODE XREF: sub_14070A600+14↑j
                mov     rdi, [rbx+28h]
                test    rdi, rdi
                jz      short loc_14070A658
                mov     rcx, rbx
                call    sub_1406BE154
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14068F1F0
                and     qword ptr [rbx+28h], 0
                mov     rcx, rbx
                call    sub_1406173B0
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14070A658:                          ; CODE XREF: sub_14070A600+2E↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14070A600   endp

byte_14070A664  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140105DE0↑o

; =============== S U B R O U T I N E =======================================


sub_14070A66C   proc near               ; CODE XREF: sub_1406716E0+167↑p
                                        ; DATA XREF: .rdata:00000001400849C4↑o ...

arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_1C          = dword ptr  24h

; FUNCTION CHUNK AT 000000014082981A SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     [rsp+58h+arg_10], 0
                xor     eax, eax
                mov     r13, rdx
                mov     [rsp+58h+arg_1C], eax
                mov     rdi, rcx
                or      ebx, 0FFFFFFFFh
                mov     edx, 1000h
                mov     [rsp+58h+arg_18], ebx
                lea     ecx, [rax+1]
                mov     r8d, 317A6D43h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_14082981A
                mov     rax, [rdi+40h]
                xor     ebp, ebp
                mov     ecx, [rax+24h]
                and     [rsi+4], ebp
                mov     [rsi], ecx
                cmp     ecx, ebx
                jz      loc_14070A7C0
                mov     r12d, [rdi+68h]
                xor     r14d, r14d

loc_14070A6D4:                          ; CODE XREF: sub_14070A66C+E6↓j
                mov     edx, [rsi+rbp*8]
                lea     r8, [rsp+58h+arg_18]
                mov     rax, [rdi+8]
                mov     rcx, rdi
                call    sub_1404079D0
                mov     rbx, rax
                test    rax, rax
                jz      loc_140829824
                cmp     byte ptr [rax+0Ch], 0
                jnz     loc_14070A79F

loc_14070A6FE:                          ; CODE XREF: sub_14070A66C+14F↓j
                mov     r8d, [rsi+rbp*8+4]
                cmp     r8d, [rbx+14h]
                jb      short loc_14070A711

loc_14070A709:                          ; CODE XREF: sub_14070A66C+AB↓j
                test    ebp, ebp
                jz      short loc_14070A754
                dec     ebp
                jmp     short loc_14070A741
; ---------------------------------------------------------------------------

loc_14070A711:                          ; CODE XREF: sub_14070A66C+9B↑j
                cmp     ebp, 1FFh
                jz      short loc_14070A709
                lea     r9, [rsp+58h+arg_10]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406379E0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14070A76C
                inc     dword ptr [rsi+rbp*8+4]
                inc     ebp
                mov     eax, [rsp+58h+arg_10]
                and     dword ptr [rsi+rbp*8+4], 0
                mov     [rsi+rbp*8], eax

loc_14070A741:                          ; CODE XREF: sub_14070A66C+A3↑j
                mov     rax, [rdi+10h]
                lea     rdx, [rsp+58h+arg_18]
                mov     rcx, rdi
                call    sub_1404079D0
                jmp     short loc_14070A6D4
; ---------------------------------------------------------------------------

loc_14070A754:                          ; CODE XREF: sub_14070A66C+9F↑j
                mov     r8d, [rdi+68h]
                mov     edx, r14d
                sub     r8d, r12d
                mov     rcx, r13
                shr     r8d, 3
                call    sub_14070A7D4
                xor     ebx, ebx

loc_14070A76C:                          ; CODE XREF: sub_14070A66C+C1↑j
                                        ; sub_14070A66C+15D↓j
                mov     rax, [rdi+10h]
                lea     rdx, [rsp+58h+arg_18]
                mov     rcx, rdi
                call    sub_1404079D0

loc_14070A77D:                          ; CODE XREF: sub_14070A66C+156↓j
                                        ; sub_14070A66C+11F1BD↓j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     eax, ebx

loc_14070A789:                          ; CODE XREF: sub_14070A66C+11F1B3↓j
                mov     rbx, [rsp+58h+arg_0]
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

loc_14070A79F:                          ; CODE XREF: sub_14070A66C+8C↑j
                mov     edx, [rsi+rbp*8]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rcx, rdi
                call    sub_140601410
                test    al, al
                jz      short loc_14070A7C4
                mov     byte ptr [rbx+0Ch], 0
                inc     r14d
                jmp     loc_14070A6FE
; ---------------------------------------------------------------------------

loc_14070A7C0:                          ; CODE XREF: sub_14070A66C+5B↑j
                xor     ebx, ebx
                jmp     short loc_14070A77D
; ---------------------------------------------------------------------------

loc_14070A7C4:                          ; CODE XREF: sub_14070A66C+146↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_14070A76C
sub_14070A66C   endp

; ---------------------------------------------------------------------------
byte_14070A7CB  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400849C4↑o
                                        ; .pdata:0000000140105DEC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14070A7D4   proc near               ; CODE XREF: sub_14070A66C+F9↑p
                                        ; DATA XREF: .pdata:0000000140105DF8↑o

var_70          = qword ptr -70h
var_60          = word ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], r8d
                mov     [rsp-8+arg_8], edx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                mov     r8, rcx
                xor     r10d, r10d
                mov     rcx, cs:qword_140C197A0
                test    rcx, rcx
                jz      short loc_14070A86B
                movzx   edx, word ptr [r8]
                lea     r9d, [r10+4]
                movzx   eax, dx
                mov     [rbp+57h+var_38], edx
                shr     ax, 1
                lea     rdx, qword_14000AF78
                mov     [rbp+57h+var_60], ax
                lea     rax, [rbp+57h+var_60]
                mov     [rbp+57h+var_50], rax
                mov     rax, [r8+8]
                xor     r8d, r8d
                mov     [rbp+57h+var_40], rax
                lea     rax, [rbp+57h+arg_8]
                mov     [rbp+57h+var_30], rax
                lea     rax, [rbp+57h+arg_10]
                mov     [rbp+57h+var_20], rax
                lea     rax, [rbp+57h+var_50]
                mov     [rsp+90h+var_70], rax
                mov     [rbp+57h+var_48], 2
                mov     [rbp+57h+var_34], r10d
                mov     [rbp+57h+var_28], r9
                mov     [rbp+57h+var_18], r9
                call    EtwWrite

loc_14070A86B:                          ; CODE XREF: sub_14070A7D4+34↑j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 90h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14070A7D4
sub_14070A7D4   endp

algn_14070A881:                         ; DATA XREF: .pdata:0000000140105DF8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14070A888   proc near               ; CODE XREF: sub_1405EB770+2D3↑p
                                        ; DATA XREF: .pdata:0000000140105E04↑o

var_18          = dword ptr -18h

; __unwind { // __C_specific_handler
                sub     rsp, 38h
                mov     r10, rdx

loc_14070A88F:                          ; DATA XREF: .rdata:0000000140084A3C↑o
;   __try { // __except at loc_14070A942
                xor     r9d, r9d
                test    cl, cl
                jz      short loc_14070A8BB
                test    r10b, 3
                jnz     loc_14070A92F
                mov     rcx, 7FFFFFFF0000h
                cmp     rdx, rcx
                cmovb   rcx, rdx
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+57h]
                mov     [rcx+57h], al

loc_14070A8BB:                          ; CODE XREF: sub_14070A888+C↑j
                cmp     [rdx+8], r9d
                jnz     short loc_14070A935
                cmp     qword ptr [rdx], 58h ; 'X'
                jnz     short loc_14070A935
                mov     dl, [rdx+10h]
                shl     dl, 5
                xor     dl, [r8+8]
                and     dl, 7Fh
                mov     al, [r10+10h]
                shl     al, 5
                xor     dl, al
                mov     [r8+8], dl
                mov     al, [r10+10h]
                shr     al, 3
                xor     al, [r8+9]
                and     al, 1
                xor     [r8+9], al
                mov     eax, [r10+14h]
                mov     [r8+0A0h], eax
                mov     cl, [r10+10h]
                add     cl, cl
                xor     cl, dl
                and     cl, 2
                xor     cl, dl
                mov     [r8+8], cl
                mov     al, [r10+10h]
                shl     al, 3
                xor     al, cl
                and     al, 10h
                xor     al, cl
                mov     [r8+8], al
                movzx   eax, word ptr [r10+12h]
                mov     [r8+0Ah], ax
                mov     [r8+28h], r10
                jmp     short loc_14070A93B
; ---------------------------------------------------------------------------

loc_14070A92F:                          ; CODE XREF: sub_14070A888+12↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070A935:                          ; CODE XREF: sub_14070A888+37↑j
                                        ; sub_14070A888+3D↑j
                mov     r9d, 0C000000Dh

loc_14070A93B:                          ; CODE XREF: sub_14070A888+A5↑j
                mov     [rsp+38h+var_18], r9d
                jmp     short loc_14070A949
;   } // starts at 14070A88F
; ---------------------------------------------------------------------------

loc_14070A942:                          ; DATA XREF: .rdata:0000000140084A3C↑o
;   __except(1) // owned by 14070A88F
                mov     r9d, eax
                mov     [rsp+38h+var_18], eax

loc_14070A949:                          ; CODE XREF: sub_14070A888+B8↑j
                mov     eax, r9d
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14070A888
sub_14070A888   endp

algn_14070A952:                         ; DATA XREF: .pdata:0000000140105E04↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14070A958   proc near               ; CODE XREF: sub_14060DA00+E16↑p
                                        ; NtQueryInformationProcess+375↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = xmmword ptr -20h

; __unwind { // __C_specific_handler
                push    rbx
                sub     rsp, 40h
                mov     r10, r8
                mov     r8, rdx
                mov     rdx, [rcx+5C0h]
                mov     ecx, [r9]
                movzx   eax, word ptr [rdx+2]
                mov     [r9], eax
                movzx   eax, word ptr [rdx+2]
                cmp     eax, ecx
                ja      short loc_14070A9D3
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+48h+var_20], xmm0
                movq    rcx, xmm0
                shr     rcx, 10h
                xor     ebx, ebx
                mov     eax, ebx
                test    cx, cx
                cmovnz  rax, r10
                mov     qword ptr [rsp+48h+var_20+8], rax

loc_14070A99E:                          ; DATA XREF: .rdata:0000000140084A60↑o
;   __try { // __except at loc_14070A9C4
                movups  xmm0, [rsp+48h+var_20]
                movdqu  xmmword ptr [r8], xmm0
                test    cx, cx
                jz      short loc_14070A9BE
                movzx   r8d, word ptr [rdx+2]
                mov     rdx, [rdx+8]
                mov     rcx, r10
                call    memmove

loc_14070A9BE:                          ; CODE XREF: sub_14070A958+53↑j
                mov     [rsp+48h+var_28], ebx
                jmp     short loc_14070A9CA
;   } // starts at 14070A99E
; ---------------------------------------------------------------------------

loc_14070A9C4:                          ; DATA XREF: .rdata:0000000140084A60↑o
;   __except(1) // owned by 14070A99E
                mov     ebx, eax
                mov     [rsp+48h+var_28], eax

loc_14070A9CA:                          ; CODE XREF: sub_14070A958+6A↑j
                                        ; sub_14070A958+80↓j
                mov     eax, ebx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070A9D3:                          ; CODE XREF: sub_14070A958+23↑j
                mov     ebx, 0C0000004h
                jmp     short loc_14070A9CA
; } // starts at 14070A958
sub_14070A958   endp

; ---------------------------------------------------------------------------
algn_14070A9DA:                         ; DATA XREF: .pdata:0000000140105E10↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070A9E0   proc near               ; CODE XREF: sub_1405E7874+119↑p
                                        ; sub_1405F8568+2A4↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+5C0h]
                xor     edi, edi
                test    rax, rax
                jz      short loc_14070AA5F
                movzx   ecx, word ptr [rax]
                test    cx, cx
                jz      short loc_14070AA5F
                mov     esi, ecx
                mov     rcx, [rax+8]
                shr     rsi, 1
                lea     rbx, [rcx+rsi*2]

loc_14070AA12:                          ; CODE XREF: sub_14070A9E0+42↓j
                cmp     rbx, rcx
                jz      short loc_14070AA27
                mov     rax, rbx
                sub     rbx, 2
                cmp     word ptr [rbx], 5Ch ; '\'
                jnz     short loc_14070AA12
                mov     rbx, rax

loc_14070AA27:                          ; CODE XREF: sub_14070A9E0+35↑j
                mov     rax, rbx
                lea     rdx, aSvchostExe ; "svchost.exe"
                sub     rax, rcx
                mov     rcx, rbx
                sar     rax, 1
                sub     rsi, rax
                mov     r8, rsi
                call    _wcsnicmp
                test    eax, eax
                jz      short loc_14070AA73
                mov     r8, rsi
                lea     rdx, aOemsvchostExe ; "oemsvchost.exe"
                mov     rcx, rbx
                call    _wcsnicmp
                test    eax, eax
                jz      short loc_14070AA73

loc_14070AA5F:                          ; CODE XREF: sub_14070A9E0+1B↑j
                                        ; sub_14070A9E0+23↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     al, dil
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070AA73:                          ; CODE XREF: sub_14070A9E0+67↑j
                                        ; sub_14070A9E0+7D↑j
                mov     dil, 1
                jmp     short loc_14070AA5F
sub_14070A9E0   endp

; ---------------------------------------------------------------------------
algn_14070AA78:                         ; DATA XREF: .pdata:0000000140105E1C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070AA80   proc near               ; CODE XREF: sub_140661DB0+7FF↑p
                                        ; DATA XREF: .pdata:0000000140105E28↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+48h]
                mov     rsi, rcx
                mov     rbx, [rax]
                mov     rax, [rbx+60h]
                cmp     qword ptr [rax+20h], 0
                jz      loc_14070ABA8
                mov     rax, [rbx]
                mov     ecx, 40h ; '@'
                mov     r8d, [rax+8]
                mov     eax, r8d
                and     al, 3Fh
                neg     al
                sbb     rdx, rdx
                shr     r8, 6
                neg     rdx
                add     rdx, 14h
                add     rdx, r8
                mov     r8d, 49646156h
                shl     rdx, 3
                call    sub_140268720
                mov     rdi, rax
                test    rax, rax
                jz      loc_14070ABA8
                movups  xmm0, xmmword ptr [rsi]
                mov     edx, 80h
                movups  xmmword ptr [rax], xmm0
                movups  xmm1, xmmword ptr [rsi+10h]
                movups  xmmword ptr [rax+10h], xmm1
                movups  xmm0, xmmword ptr [rsi+20h]
                movups  xmmword ptr [rax+20h], xmm0
                movups  xmm1, xmmword ptr [rsi+30h]
                movups  xmmword ptr [rax+30h], xmm1
                movups  xmm0, xmmword ptr [rsi+40h]
                movups  xmmword ptr [rax+40h], xmm0
                movups  xmm1, xmmword ptr [rsi+50h]
                movups  xmmword ptr [rax+50h], xmm1
                movups  xmm0, xmmword ptr [rsi+60h]
                movups  xmmword ptr [rax+60h], xmm0
                movups  xmm0, xmmword ptr [rsi+70h]
                movups  xmmword ptr [rax+rdx-10h], xmm0
                mov     rax, [rsi+rdx]
                mov     [rdi+rdx], rax
                mov     rdx, rbx
                mov     eax, [rsi+18h]
                mov     rcx, [rsi+50h]
                sub     rcx, [rbx+88h]
                movzx   r8d, byte ptr [rsi+20h]
                shl     r8, 20h
                or      r8, rax
                sar     rcx, 3
                imul    rax, rcx, 0FFFFFFFFFFFFF000h
                shl     r8, 0Ch
                lea     rcx, [rdi+90h]
                add     r8, rax
                mov     rax, [rbx]
                sub     r8, [rax+20h]
                mov     [rdi+88h], r8
                call    sub_14065E450
                mov     ecx, [rdi+34h]
                xor     ecx, eax
                shr     rax, 1Fh
                btr     ecx, 1Fh
                mov     [rdi+22h], al
                xor     [rdi+34h], ecx
                mov     rax, rdi
                bts     dword ptr [rdi+30h], 15h

loc_14070AB97:                          ; CODE XREF: sub_14070AA80+12A↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14070ABA8:                          ; CODE XREF: sub_14070AA80+22↑j
                                        ; sub_14070AA80+61↑j
                xor     eax, eax
                jmp     short loc_14070AB97
sub_14070AA80   endp

; ---------------------------------------------------------------------------
algn_14070ABAC:                         ; DATA XREF: .pdata:0000000140105E28↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070ABC0   proc near               ; DATA XREF: .pdata:0000000140105E34↑o
                                        ; PAGE:000000014098C0A8↓o
                sub     rsp, 28h
                mov     rax, gs:188h
                mov     cl, [rax+232h]
                call    KeTestAlertThread
                neg     al
                sbb     eax, eax
                and     eax, 101h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14070ABC0   endp

algn_14070ABE7:                         ; DATA XREF: .pdata:0000000140105E34↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14070ABF0   proc near               ; CODE XREF: sub_140672D8C+10↑p
                                        ; DATA XREF: .pdata:0000000140105E40↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     dword ptr [rax+8], 0
                mov     rdi, rcx
                mov     esi, [rcx+58h]
                xor     eax, eax
                mov     ebp, [rcx+68h]
                test    esi, esi
                jz      short loc_14070AC5D

loc_14070AC1B:                          ; CODE XREF: sub_14070ABF0+6B↓j
                lea     r8, [rsp+38h+arg_0]
                mov     edx, eax
                lea     rcx, [rdi+58h]
                call    sub_140354948
                mov     r14d, eax
                test    eax, eax
                jz      short loc_14070AC5D
                mov     ebx, [rsp+38h+arg_0]
                mov     r8d, eax
                mov     edx, ebx
                shl     r8d, 9
                shl     edx, 9
                mov     r9d, 2
                mov     rcx, rdi
                call    sub_1405FFE0C
                lea     eax, [r14+rbx]
                sub     ebp, r14d
                jz      short loc_14070AC5D
                cmp     eax, esi
                jb      short loc_14070AC1B

loc_14070AC5D:                          ; CODE XREF: sub_14070ABF0+29↑j
                                        ; sub_14070ABF0+40↑j ...
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14070ABF0   endp

algn_14070AC77:                         ; DATA XREF: .pdata:0000000140105E40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070AC80   proc near               ; DATA XREF: .pdata:0000000140105E4C↑o
                                        ; PAGE:000000014098B988↓o

var_18          = byte ptr -18h
var_10          = byte ptr -10h

                push    rbx
                sub     rsp, 30h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     [rsp+38h+var_10], 0
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                call    sub_14070ACC8
                mov     rcx, gs:188h
                mov     ebx, eax
                call    sub_14021E1F0
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14070AC80   endp

algn_14070ACC1:                         ; DATA XREF: .pdata:0000000140105E4C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14070ACC8   proc near               ; CODE XREF: sub_14070AC80+23↑p
                                        ; sub_140771CD0+23↓p ...

var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_48          = qword ptr -48h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014082982E SIZE 00000025 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_48], rax
                mov     r13d, r9d
                mov     rdi, r8
                mov     rbx, rdx
                mov     r12, rcx
                xor     edx, edx
                lea     r8d, [rdx+48h]
                lea     rcx, [rsp+0E8h+var_98]
                call    memset
                and     [rsp+0E8h+var_A0], 0
                and     [rsp+0E8h+var_A8], 0
                mov     rax, gs:188h
                mov     r9b, [rax+232h]
                test    r9b, r9b
                jz      loc_14070AF27

loc_14070AD2E:                          ; DATA XREF: .rdata:0000000140084C68↑o
;   __try { // __except at loc_14070AD8D
                mov     rcx, r12
                mov     rdx, 7FFFFFFF0000h
                cmp     r12, rdx
                cmovnb  rcx, rdx
                mov     rax, [rcx]
                mov     [rcx], rax
                test    rdi, rdi
                jz      short loc_14070AD8B
                mov     rax, rdi
                cmp     rdi, rdx
                cmovnb  rax, rdx
                movups  xmm0, xmmword ptr [rax]
                movaps  [rsp+0E8h+var_98], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movaps  [rsp+0E8h+var_88], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movaps  [rsp+0E8h+var_78], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movaps  [rsp+0E8h+var_68], xmm1
                movsd   xmm0, qword ptr [rax+40h]
                movsd   [rsp+0E8h+var_58], xmm0

loc_14070AD8B:                          ; CODE XREF: sub_14070ACC8+83↑j
                jmp     short loc_14070AD92
;   } // starts at 14070AD2E
; ---------------------------------------------------------------------------

loc_14070AD8D:                          ; DATA XREF: .rdata:0000000140084C68↑o
;   __except(1) // owned by 14070AD2E
                jmp     loc_14070AEF4
; ---------------------------------------------------------------------------

loc_14070AD92:                          ; CODE XREF: sub_14070ACC8:loc_14070AD8B↑j
                                        ; sub_14070ACC8+262↓j ...
                lea     r8, [rsp+0E8h+var_A0]
                mov     rdx, rbx
                mov     cl, r9b
                call    sub_1406C01D0
                test    eax, eax
                js      loc_14070AEF4
                mov     esi, 1
                test    rdi, rdi
                jz      short loc_14070ADCE
                test    dword ptr [rsp+0E8h+var_98], 40000h
                movzx   eax, [rsp+0E8h+arg_20]
                cmovnz  eax, esi
                mov     [rsp+0E8h+arg_20], al

loc_14070ADCE:                          ; CODE XREF: sub_14070ACC8+EA↑j
                mov     r8b, [rsp+0E8h+arg_20]
                mov     edx, esi
                mov     rbx, [rsp+0E8h+var_A0]
                mov     rcx, rbx
                call    sub_1406C0044
                mov     r14d, eax
                mov     rcx, rbx
                test    eax, eax
                js      loc_14082982E
                neg     rdi
                sbb     r14, r14
                lea     rax, [rsp+0E8h+var_98]
                and     r14, rax
                mov     r15b, [rsp+0E8h+arg_28]
                mov     byte ptr [rsp+0E8h+var_B8], r15b
                mov     al, [rsp+0E8h+arg_20]
                mov     byte ptr [rsp+0E8h+var_C0], al
                mov     [rsp+0E8h+var_C8], r13d
                xor     r9d, r9d
                mov     r8, rbx
                mov     rdx, r14
                call    sub_1406BFE04
                mov     edi, eax
                xor     r13d, r13d
                test    eax, eax
                js      loc_140829844
                test    r15b, r15b
                jnz     loc_14070AF18

loc_14070AE42:                          ; CODE XREF: sub_14070ACC8+25A↓j
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1406BE01C
                mov     r8d, esi
                mov     edx, 50h ; 'P'
                lea     rcx, qword_140001DB0
                call    sub_1406BF6DC
                mov     [rbx+10h], rax
                test    rax, rax
                jz      loc_14082983B
                mov     [rax+10h], r13
                mov     rax, [rbx+10h]
                mov     [rax], rbx
                mov     rax, [rbx+10h]
                mov     [rax+8], r13
                mov     rax, [rbx+10h]
                mov     [rax+48h], r13
                mov     rax, [rbx+10h]
                add     rax, 18h
                mov     [rax+8], rax
                mov     [rax], rax
                mov     rcx, [rbx+10h]
                add     rcx, 28h ; '('
                call    sub_1406BFDB0
                test    eax, eax
                js      loc_140829842
                lea     rax, [rsp+0E8h+var_A8]
                mov     [rsp+0E8h+var_B8], rax
                mov     [rsp+0E8h+var_C0], r13
                mov     [rsp+0E8h+var_C8], r13d
                xor     r9d, r9d
                xor     edx, edx
                mov     r8d, 1F0001h
                mov     rcx, rbx
                call    sub_14061EFE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14070AEF2

loc_14070AEDA:                          ; DATA XREF: .rdata:0000000140084C78↑o
;   __try { // __except at loc_14070AEE5
                mov     rcx, [rsp+0E8h+var_A8]
                mov     [r12], rcx
                jmp     short loc_14070AEF2
;   } // starts at 14070AEDA
; ---------------------------------------------------------------------------

loc_14070AEE5:                          ; DATA XREF: .rdata:0000000140084C78↑o
;   __except(1) // owned by 14070AEDA
                mov     ebx, eax
                mov     rcx, [rsp+0E8h+var_A8]
                call    NtClose
                nop

loc_14070AEF2:                          ; CODE XREF: sub_14070ACC8+210↑j
                                        ; sub_14070ACC8+21B↑j
                mov     eax, ebx

loc_14070AEF4:                          ; CODE XREF: sub_14070ACC8:loc_14070AD8D↑j
                                        ; sub_14070ACC8+DC↑j ...
                mov     rcx, [rsp+0E8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0B0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14070AF18:                          ; CODE XREF: sub_14070ACC8+174↑j
                or      dword ptr [rbx+1A0h], 3000h
                jmp     loc_14070AE42
; ---------------------------------------------------------------------------

loc_14070AF27:                          ; CODE XREF: sub_14070ACC8+60↑j
                test    rdi, rdi
                jz      loc_14070AD92
                movups  xmm0, xmmword ptr [rdi]
                movaps  [rsp+0E8h+var_98], xmm0
                movups  xmm1, xmmword ptr [rdi+10h]
                movaps  [rsp+0E8h+var_88], xmm1
                movups  xmm0, xmmword ptr [rdi+20h]
                movaps  [rsp+0E8h+var_78], xmm0
                movups  xmm1, xmmword ptr [rdi+30h]
                movaps  [rsp+0E8h+var_68], xmm1
                movsd   xmm0, qword ptr [rdi+40h]
                movsd   [rsp+0E8h+var_58], xmm0
                jmp     loc_14070AD92
; } // starts at 14070ACC8
sub_14070ACC8   endp

; ---------------------------------------------------------------------------
algn_14070AF69:                         ; DATA XREF: .rdata:0000000140084C90↑o
                                        ; .pdata:0000000140105E58↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14070AF70   proc near               ; CODE XREF: sub_1406483B0+601↑p
                                        ; sub_1406C7D70:loc_14081D0B2↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140829854 SIZE 00000022 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, gs:188h
                xor     r14d, r14d
                xor     ebx, ebx
                mov     r15, [rax+0B8h]
                mov     rcx, r15
                call    PsReferencePrimaryToken
                mov     rsi, rax
                test    rax, rax
                jz      loc_140829854
                mov     rax, [rax+18h]
                xor     edi, edi
                mov     [rsp+48h+arg_8], rax
                cmp     eax, 3E7h
                jz      loc_14070B061

loc_14070AFBF:                          ; CODE XREF: sub_14070AF70+F5↓j
                and     [rsp+48h+arg_0], rbx
                lea     rdx, [rsp+48h+arg_0]
                mov     rcx, rsi
                call    sub_1406C8D48
                mov     edi, eax
                test    eax, eax
                js      loc_14082985E
                mov     rbp, [rsp+48h+arg_0]

loc_14070AFE0:                          ; CODE XREF: sub_14070AF70+106↓j
                test    rbp, rbp
                jz      loc_14082985E
                test    rbx, rbx
                jnz     short loc_14070AFF6
                call    sub_1402B95B0
                mov     rbx, rax

loc_14070AFF6:                          ; CODE XREF: sub_14070AF70+7C↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                xor     edx, edx
                lea     rcx, [rbx+78h]
                call    ExAcquirePushLockExclusiveEx
                mov     r14, [r15+588h]
                mov     [r15+588h], rbp
                lock inc dword ptr [rbp+18h]
                xor     edx, edx
                lea     rcx, [rbx+78h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_140245770

loc_14070B03C:                          ; CODE XREF: sub_14070AF70+11E8F3↓j
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                test    r14, r14
                jnz     loc_140829868

loc_14070B04D:                          ; CODE XREF: sub_14070AF70+11E901↓j
                mov     eax, edi

loc_14070B04F:                          ; CODE XREF: sub_14070AF70+11E8E9↓j
                mov     rbx, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070B061:                          ; CODE XREF: sub_14070AF70+49↑j
                cmp     dword ptr [rsp+48h+arg_8+4], ebx
                jnz     loc_14070AFBF
                call    sub_1402B95B0
                mov     rbx, rax
                mov     rbp, [rax]
                jmp     loc_14070AFE0
sub_14070AF70   endp

; ---------------------------------------------------------------------------
byte_14070B07B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140084CD4↑o
                                        ; .pdata:0000000140105E64↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_14070B084   proc near               ; CODE XREF: sub_1406C9390+151↑p
                                        ; DATA XREF: .rdata:0000000140084D14↑o ...

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140829876 SIZE 00000058 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    rbp
                push    r13
                push    r15
                lea     rbp, [rax-4Fh]
                sub     rsp, 90h
                mov     r13, [rbp+47h+arg_28]
                xor     eax, eax
                and     [rbp+47h+var_50], eax
                xorps   xmm0, xmm0
                and     [rbp+47h+var_4C], eax
                mov     r15d, r9d
                and     dword ptr [rbp+47h+arg_28], eax
                lea     r9, [rbp+47h+var_48]
                and     [r13+0], eax
                mov     r12, r8
                mov     r8d, [rbp+47h+arg_20]
                xor     edi, edi
                movups  [rbp+47h+var_48], xmm0
                mov     [rbp+47h+var_18], rax
                movups  [rbp+47h+var_38], xmm0
                movups  [rbp+47h+var_28], xmm0
                call    sub_14070B3D8
                mov     ebx, eax
                test    eax, eax
                js      loc_14070B1F5
                cmp     qword ptr [rbp+47h+var_38], rdi
                jz      loc_1408298C4
                cmp     dword ptr [rbp+47h+var_48+4], edi
                jnz     loc_1408298C4
                cmp     qword ptr [rbp+47h+var_28+8], rdi
                jnz     loc_1408298C4
                cmp     dword ptr [rbp+47h+var_18], edi
                jnz     loc_1408298C4
                cmp     dword ptr [rbp+47h+var_28], edi
                jnz     loc_1408298C4
                test    r12, r12
                jz      loc_1408298BA
                cmp     r15d, 14h
                jb      loc_1408298BA
                lea     esi, [r15-14h]
                test    esi, esi
                jz      short loc_14070B152
                mov     edx, esi
                lea     ecx, [rdi+1]
                mov     r8d, 34706E50h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_140829876

loc_14070B152:                          ; CODE XREF: sub_14070B084+B0↑j
                                        ; sub_14070B084+11E7F7↓j
                test    ebx, ebx
                js      loc_14070B222
                mov     ecx, dword ptr [rbp+47h+var_38+0Ch]
                lea     rdx, [rbp+47h+var_4C]
                call    sub_14070B2A0
                mov     ebx, eax
                test    eax, eax
                js      loc_14070B222
                cmp     dword ptr [rbp+47h+var_48+8], 1
                mov     dword ptr [rbp+47h+arg_28], esi
                jnz     loc_140829880
                and     dword ptr [rsp+0A0h+var_68], 0
                lea     rax, [rbp+47h+arg_28]
                mov     r9d, [rbp+47h+var_4C]
                xor     r8d, r8d
                mov     rdx, qword ptr [rbp+47h+var_38]
                mov     rcx, cs:qword_140CF4378
                mov     qword ptr [rsp+0A0h+var_70], rax
                lea     rax, [rbp+47h+var_50]
                mov     [rsp+0A0h+var_78], rdi
                mov     [rsp+0A0h+var_80], rax
                call    sub_14062BA8C

loc_14070B1B0:                          ; CODE XREF: sub_14070B084+11E831↓j
                mov     ebx, eax

loc_14070B1B2:                          ; CODE XREF: sub_14070B084+11E845↓j
                test    ebx, ebx
                js      short loc_14070B222
                mov     eax, dword ptr [rbp+47h+var_18+4]
                mov     r9, rdi
                mov     edx, dword ptr [rbp+47h+arg_28]
                mov     [rsp+0A0h+var_60], r13
                mov     dword ptr [rsp+0A0h+var_68], r15d
                mov     qword ptr [rsp+0A0h+var_70], r12
                mov     dword ptr [rsp+0A0h+var_78], eax
                mov     dword ptr [rsp+0A0h+var_80], edx

loc_14070B1D6:                          ; CODE XREF: sub_14070B084+1BF↓j
                mov     r8d, [rbp+47h+var_50]
                mov     ecx, ebx
                call    sub_1406CC2C4
                mov     ebx, eax
                test    rdi, rdi
                jz      short loc_14070B1F5
                mov     edx, 34706E50h
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14070B1F5:                          ; CODE XREF: sub_14070B084+62↑j
                                        ; sub_14070B084+162↑j
                lea     rcx, [rbp+47h+var_48]
                call    sub_14070B24C
                lea     r11, [rsp+0A0h+var_10]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r13
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14070B222:                          ; CODE XREF: sub_14070B084+D0↑j
                                        ; sub_14070B084+E6↑j ...
                mov     eax, dword ptr [rbp+47h+var_18+4]
                mov     edx, dword ptr [rbp+47h+arg_28]
                mov     [rsp+0A0h+var_60], r13
                mov     dword ptr [rsp+0A0h+var_68], r15d
                mov     qword ptr [rsp+0A0h+var_70], r12
                mov     dword ptr [rsp+0A0h+var_78], eax
                and     dword ptr [rsp+0A0h+var_80], 0
                xor     r9d, r9d
                jmp     short loc_14070B1D6
sub_14070B084   endp

; ---------------------------------------------------------------------------
byte_14070B245  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140084D14↑o
                                        ; .pdata:0000000140105E70↑o

; =============== S U B R O U T I N E =======================================


sub_14070B24C   proc near               ; CODE XREF: sub_14070B084+175↑p
                                        ; sub_1408B26C0+18C↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rdi, rcx
                mov     rdx, [rcx+10h]
                mov     bl, [rax+232h]
                test    rdx, rdx
                jz      short loc_14070B278
                mov     cl, bl
                call    sub_1403109F0

loc_14070B278:                          ; CODE XREF: sub_14070B24C+23↑j
                mov     rdx, [rdi+28h]
                test    rdx, rdx
                jnz     short loc_14070B28F

loc_14070B281:                          ; CODE XREF: sub_14070B24C+4A↓j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070B28F:                          ; CODE XREF: sub_14070B24C+33↑j
                mov     cl, bl
                call    sub_1403109F0
                jmp     short loc_14070B281
sub_14070B24C   endp

; ---------------------------------------------------------------------------
algn_14070B298:                         ; DATA XREF: .pdata:0000000140105E7C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070B2A0   proc near               ; CODE XREF: sub_14070B084+DD↑p
                                        ; sub_1408B26C0+AF↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001408298CE SIZE 00000190 BYTES

                xor     r8d, r8d
                cmp     ecx, 13h
                jg      loc_14070B36F
                jz      loc_140829948
                cmp     ecx, 0Ah
                jle     short loc_14070B2D5
                sub     ecx, 0Bh
                jz      short loc_14070B2ED
                sub     ecx, 1
                jz      loc_14070B364
                sub     ecx, 1
                jnz     short loc_14070B2F5
                mov     dword ptr [rdx], 0Dh

loc_14070B2D0:                          ; CODE XREF: sub_14070B2A0+4B↓j
                                        ; sub_14070B2A0+53↓j ...
                mov     eax, r8d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070B2D5:                          ; CODE XREF: sub_14070B2A0+15↑j
                jz      loc_14070B3C4
                sub     ecx, 1
                jz      short loc_14070B359
                sub     ecx, 1
                jnz     short loc_14070B318
                mov     dword ptr [rdx], 2
                jmp     short loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B2ED:                          ; CODE XREF: sub_14070B2A0+1A↑j
                mov     dword ptr [rdx], 0Bh
                jmp     short loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B2F5:                          ; CODE XREF: sub_14070B2A0+28↑j
                sub     ecx, 1
                jz      loc_14082993D
                sub     ecx, 1
                jz      loc_140829932
                sub     ecx, 1
                jnz     loc_14082990E
                mov     dword ptr [rdx], 10h
                jmp     short loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B318:                          ; CODE XREF: sub_14070B2A0+43↑j
                sub     ecx, 1
                jz      loc_140829903
                sub     ecx, 1
                jz      loc_1408298F8
                sub     ecx, 1
                jz      loc_14070B3B9
                sub     ecx, 1
                jz      loc_1408298ED
                sub     ecx, 1
                jz      loc_1408298E2
                sub     ecx, 1
                jnz     loc_1408298CE
                mov     dword ptr [rdx], 8
                jmp     loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B359:                          ; CODE XREF: sub_14070B2A0+3E↑j
                mov     dword ptr [rdx], 1
                jmp     loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B364:                          ; CODE XREF: sub_14070B2A0+1F↑j
                mov     dword ptr [rdx], 0Ch
                jmp     loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B36F:                          ; CODE XREF: sub_14070B2A0+6↑j
                cmp     ecx, 1Dh
                jle     loc_140829953
                sub     ecx, 1Eh
                jz      loc_140829A53
                sub     ecx, 1
                jz      loc_140829A48
                sub     ecx, 1
                jz      loc_140829A3D
                sub     ecx, 1
                jz      loc_140829A32
                sub     ecx, 1
                jz      loc_140829A27
                sub     ecx, 1
                jnz     loc_1408299FC
                mov     dword ptr [rdx], 23h ; '#'
                jmp     loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B3B9:                          ; CODE XREF: sub_14070B2A0+8D↑j
                mov     dword ptr [rdx], 5
                jmp     loc_14070B2D0
; ---------------------------------------------------------------------------

loc_14070B3C4:                          ; CODE XREF: sub_14070B2A0:loc_14070B2D5↑j
                mov     dword ptr [rdx], 0Ah
                jmp     loc_14070B2D0
sub_14070B2A0   endp

; ---------------------------------------------------------------------------
byte_14070B3CF  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140105E88↑o

; =============== S U B R O U T I N E =======================================


sub_14070B3D8   proc near               ; CODE XREF: sub_14070B084+59↑p
                                        ; sub_1408B26C0+4C↓p
                                        ; DATA XREF: ...

var_58          = byte ptr -58h
var_50          = dword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140829A5E SIZE 00000188 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rdi, r9
                xor     ebx, ebx
                mov     [rsp+78h+var_44], ebx
                mov     [rsp+78h+var_40], ebx
                mov     rax, gs:188h
                mov     r13b, [rax+232h]
                mov     [rsp+78h+arg_0], r13b
                mov     esi, ebx
                mov     [rsp+78h+var_48], ebx
                test    rcx, rcx
                jz      loc_140829B9F
                test    edx, edx
                jz      loc_140829B9F
                test    r8d, r8d
                jnz     loc_140829A5E

loc_14070B433:                          ; DATA XREF: .rdata:0000000140084D40↑o
;   __try { // __except at loc_14070B4AB
                test    cl, 7
                jnz     short loc_14070B48F
                mov     r8d, edx
                add     r8, rcx
                mov     rax, 7FFFFFFF0000h
                cmp     r8, rax
                ja      short loc_14070B494
                cmp     r8, rcx
                jb      short loc_14070B494

loc_14070B452:                          ; CODE XREF: sub_14070B3D8+C7↓j
                mov     r14d, 0C000000Dh
                cmp     edx, 38h ; '8'
                jb      short loc_14070B4A1
                movups  xmm0, xmmword ptr [rcx]
                movups  xmmword ptr [r9], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [r9+10h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [r9+20h], xmm0
                movsd   xmm1, qword ptr [rcx+30h]
                movsd   qword ptr [r9+30h], xmm1
                cmp     dword ptr [r9], 38h ; '8'
                cmovnz  esi, r14d
                mov     [rsp+78h+var_48], esi
                jmp     short loc_14070B4A9
; ---------------------------------------------------------------------------

loc_14070B48F:                          ; CODE XREF: sub_14070B3D8+5E↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14070B494:                          ; CODE XREF: sub_14070B3D8+73↑j
                                        ; sub_14070B3D8+78↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14070B452
; ---------------------------------------------------------------------------

loc_14070B4A1:                          ; CODE XREF: sub_14070B3D8+83↑j
                mov     esi, r14d
                mov     [rsp+78h+var_48], r14d

loc_14070B4A9:                          ; CODE XREF: sub_14070B3D8+B5↑j
                jmp     short loc_14070B4D1
;   } // starts at 14070B433
; ---------------------------------------------------------------------------

loc_14070B4AB:                          ; DATA XREF: .rdata:0000000140084D40↑o
;   __except(1) // owned by 14070B433
                mov     esi, eax
                mov     [rsp+78h+var_48], eax
                xor     ebx, ebx
                mov     r14d, 0C000000Dh
                mov     rdi, [rsp+78h+arg_18]
                mov     [rsp+78h+var_44], ebx
                mov     [rsp+78h+var_40], ebx
                mov     r13b, [rsp+78h+arg_0]

loc_14070B4D1:                          ; CODE XREF: sub_14070B3D8:loc_14070B4A9↑j
                                        ; sub_14070B3D8+19D↓j ...
                test    esi, esi
                js      loc_140829BA9
                lea     r15, [rdi+10h]
                mov     rax, [r15]
                mov     [r15], rbx
                test    rax, rax
                jz      loc_140829B22
                mov     r8d, [rdi+18h]
                cmp     r8d, 2
                jb      loc_140829B1D
                mov     [rsp+78h+var_50], 1
                mov     [rsp+78h+var_58], r13b
                mov     r9d, 2
                mov     rdx, rax
                mov     rcx, r15
                call    sub_1406CA210
                mov     esi, eax
                test    eax, eax
                js      short loc_14070B57A
                mov     [rsp+78h+var_44], 1
                mov     edx, [rdi+18h]
                shr     rdx, 1
                mov     rcx, [r15]
                mov     [rcx+rdx*2-2], bx

loc_14070B534:                          ; CODE XREF: sub_14070B3D8+1A8↓j
                                        ; sub_14070B3D8+11E756↓j ...
                lea     r15, [rdi+28h]
                mov     rax, [r15]
                mov     [r15], rbx
                test    rax, rax
                jnz     loc_140829B43

loc_14070B547:                          ; CODE XREF: sub_14070B3D8+11E7B3↓j
                cmp     [rdi+30h], ebx
                ja      short loc_14070B582
                test    rax, rax
                jnz     loc_140829B91

loc_14070B555:                          ; CODE XREF: sub_14070B3D8+11E7A0↓j
                                        ; sub_14070B3D8+11E7AB↓j ...
                test    esi, esi
                js      loc_140829BA9

loc_14070B55D:                          ; CODE XREF: sub_14070B3D8+11E809↓j
                mov     eax, esi
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------
                jmp     loc_14070B4D1
; ---------------------------------------------------------------------------

loc_14070B57A:                          ; CODE XREF: sub_14070B3D8+144↑j
                mov     [r15], rbx
                mov     [rdi+18h], ebx
                jmp     short loc_14070B534
; ---------------------------------------------------------------------------

loc_14070B582:                          ; CODE XREF: sub_14070B3D8+172↑j
                                        ; sub_14070B3D8+11E74D↓j ...
                mov     esi, r14d
                jmp     loc_140829BA9
; } // starts at 14070B3D8
sub_14070B3D8   endp

; ---------------------------------------------------------------------------
algn_14070B58A:                         ; DATA XREF: .rdata:0000000140084D64↑o
                                        ; .pdata:0000000140105E94↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=170h

sub_14070B590   proc near               ; CODE XREF: sub_14060BC30+F2↑p
                                        ; sub_1406AFFC8+721↑p ...

var_250         = dword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_230         = byte ptr -230h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140829BE6 SIZE 000000AA BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-150h]
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+170h+var_30], rax
                xor     r15d, r15d
                mov     rbx, rcx
                mov     rcx, [r8+58h]
                mov     rsi, r8
                mov     dword ptr [rsp+270h+var_248+4], r15d
                mov     r14b, dl
                mov     edi, r15d
                test    rcx, rcx
                jz      loc_140829BE6
                test    byte ptr [r8+62h], 20h
                mov     r12d, 200h
                jnz     loc_140829BF0
                test    dword ptr [rbx+340h], 2000000h
                jnz     loc_140829BF0

loc_14070B604:                          ; CODE XREF: sub_14070B590+11E6B0↓j
                                        ; sub_14070B590+11E6BE↓j
                test    byte ptr [rsi+62h], 8
                jz      short loc_14070B66F
                mov     eax, [rbx+0Ch]
                test    al, al
                js      loc_14070B69D
                lea     rax, [rsp+270h+var_230]
                mov     [rsp+270h+var_250], r12d
                lea     r9, [rsp+270h+var_250]
                mov     [rsp+270h+var_248], rax
                lea     r8, [rsp+270h+var_248]
                mov     rdx, rsi
                mov     cl, r14b
                call    sub_14070B7DC
                mov     rsi, [rsp+270h+var_248]
                mov     edi, eax
                test    eax, eax
                js      short loc_14070B661
                mov     r8d, [rsp+270h+var_250]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14070B6AC
                test    dword ptr [rbx+0Ch], 80000h
                jnz     loc_140829C53

loc_14070B661:                          ; CODE XREF: sub_14070B590+B2↑j
                                        ; sub_14070B590+11E6DC↓j ...
                lea     rax, [rsp+270h+var_230]
                cmp     rsi, rax
                jnz     loc_140829C80

loc_14070B66F:                          ; CODE XREF: sub_14070B590+78↑j
                                        ; sub_14070B590+11E6FB↓j
                mov     eax, edi

loc_14070B671:                          ; CODE XREF: sub_14070B590+112↓j
                                        ; sub_14070B590+11E65B↓j
                mov     rcx, [rbp+170h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+270h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070B69D:                          ; CODE XREF: sub_14070B590+7F↑j
                mov     eax, 0C00000BBh
                jmp     short loc_14070B671
; } // starts at 14070B590
sub_14070B590   endp

; ---------------------------------------------------------------------------
byte_14070B6A4  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140084D9C↑o
                                        ; .pdata:0000000140105EA0↑o

; =============== S U B R O U T I N E =======================================


sub_14070B6AC   proc near               ; CODE XREF: sub_14070B590+BF↑p
                                        ; DATA XREF: .rdata:0000000140084DCC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140829C90 SIZE 00000007 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                lea     rbp, [rcx+2C0h]
                mov     r15d, r8d
                mov     r12, rdx
                mov     rdi, rcx
                mov     rcx, rbp
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                cmp     r15d, 8000h
                ja      loc_14070B791
                mov     r9d, [rdi+154h]
                add     r9d, r15d
                cmp     r9d, [rdi+4]
                ja      loc_14070B791
                lea     r14, [rdi+70h]
                mov     rsi, [r14]

loc_14070B70B:                          ; CODE XREF: sub_14070B6AC+6D↓j
                cmp     rsi, r14
                jz      short loc_14070B731
                cmp     [rsi+14h], r15d
                jz      short loc_14070B71B

loc_14070B716:                          ; CODE XREF: sub_14070B6AC+83↓j
                mov     rsi, [rsi]
                jmp     short loc_14070B70B
; ---------------------------------------------------------------------------

loc_14070B71B:                          ; CODE XREF: sub_14070B6AC+68↑j
                lea     rcx, [rsi+18h]
                mov     r8, r15
                mov     rdx, r12
                call    RtlCompareMemory
                cmp     rax, r15
                jz      short loc_14070B791
                jmp     short loc_14070B716
; ---------------------------------------------------------------------------

loc_14070B731:                          ; CODE XREF: sub_14070B6AC+62↑j
                lea     edx, [r15+18h]
                mov     ecx, 200h
                mov     r8d, 62777445h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14070B791
                add     [rdi+154h], r15d
                lea     rcx, [rax+18h]
                mov     r8, r15
                mov     [rax+14h], r15d
                mov     rdx, r12
                call    memmove
                mov     rax, [r14]
                cmp     [rax+8], r14
                jnz     FatalListEntryError_93
                mov     [rbx], rax
                mov     [rbx+8], r14
                mov     [rax+8], rbx
                mov     [r14], rbx
                mov     byte ptr [rbx+10h], 0
                lock or dword ptr [rdi+344h], 8C0h

loc_14070B791:                          ; CODE XREF: sub_14070B6AC+3E↑j
                                        ; sub_14070B6AC+52↑j ...
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbp+0], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_14070B7C9

loc_14070B7A1:                          ; CODE XREF: sub_14070B6AC+125↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070B7C9:                          ; CODE XREF: sub_14070B6AC+F3↑j
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_14070B7A1
sub_14070B6AC   endp

; ---------------------------------------------------------------------------
byte_14070B7D3  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140084DCC↑o
                                        ; .pdata:0000000140105EAC↑o

; =============== S U B R O U T I N E =======================================


sub_14070B7DC   proc near               ; CODE XREF: sub_14070B590+A4↑p
                                        ; DATA XREF: .rdata:0000000140084E18↑o ...

var_38          = qword ptr -38h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140829C98 SIZE 0000001B BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 50h
                mov     rdi, r9
                mov     rsi, r8
                mov     bl, cl
                and     [rsp+58h+arg_8], 0
                and     qword ptr [r11-10h], 0
                and     qword ptr [r11-18h], 0
                and     qword ptr [r11-20h], 0
                mov     rcx, [rdx+58h]
                test    rcx, rcx
                jz      loc_140829C98
                test    bl, bl
                jz      loc_14070B8F4
                mov     rax, gs:188h
                mov     r10, [rax+0B8h]
                test    byte ptr [r10+3E0h], 1
                jnz     loc_140829CA2
                lea     r9, [r11+10h]
                lea     r8, [r11-20h]
                lea     rdx, [r11-18h]
                call    sub_1405CE758
                test    eax, eax
                js      loc_14070B8E3

loc_14070B854:                          ; CODE XREF: sub_14070B7DC+128↓j
                                        ; DATA XREF: .rdata:0000000140084DF4↑o
;   __try { // __except at loc_14070B877
                mov     rdx, [rsp+58h+var_18]
                and     rdx, 0FFFFFFFFFFFFFFFCh
                lea     r9, [rsp+58h+var_10]
                mov     r8, [rsp+58h+var_20]
                mov     ecx, 1
                call    RtlImageNtHeaderEx
                mov     [rsp+58h+var_28], eax
                jmp     short loc_14070B87D
;   } // starts at 14070B854
; ---------------------------------------------------------------------------

loc_14070B877:                          ; DATA XREF: .rdata:0000000140084DF4↑o
;   __except(1) // owned by 14070B854
                mov     [rsp+58h+var_28], eax
                jmp     short loc_14070B8E3
; ---------------------------------------------------------------------------

loc_14070B87D:                          ; CODE XREF: sub_14070B7DC+99↑j
                test    eax, eax
                js      short loc_14070B8E3
                mov     rdx, [rsp+58h+var_20]
                test    rdx, rdx
                jz      loc_14070B911

loc_14070B88F:                          ; CODE XREF: sub_14070B7DC+14D↓j
                test    eax, eax
                js      short loc_14070B8E3
                cmp     bl, 1
                jnz     short loc_14070B8CE

loc_14070B898:                          ; DATA XREF: .rdata:0000000140084E04↑o
;   __try { // __except at loc_14070B8CC
                test    rdx, rdx
                jz      short loc_14070B8CA
                mov     rax, [rsp+58h+var_18]
                lea     rcx, [rdx+rax]
                mov     r8, 7FFFFFFF0000h
                cmp     rcx, r8
                ja      short loc_14070B8BA
                cmp     rcx, rax
                jnb     short loc_14070B8CA

loc_14070B8BA:                          ; CODE XREF: sub_14070B7DC+D7↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                mov     rdx, [rsp+58h+var_20]

loc_14070B8CA:                          ; CODE XREF: sub_14070B7DC+BF↑j
                                        ; sub_14070B7DC+DC↑j
                jmp     short loc_14070B8CE
;   } // starts at 14070B898
; ---------------------------------------------------------------------------

loc_14070B8CC:                          ; DATA XREF: .rdata:0000000140084E04↑o
;   __except(1) // owned by 14070B898
                jmp     short loc_14070B8E3
; ---------------------------------------------------------------------------

loc_14070B8CE:                          ; CODE XREF: sub_14070B7DC+BA↑j
                                        ; sub_14070B7DC:loc_14070B8CA↑j
                mov     [rsp+58h+var_38], rdi
                mov     r9, rsi
                xor     r8d, r8d
                mov     rcx, [rsp+58h+var_18]
                call    sub_14070B934

loc_14070B8E3:                          ; CODE XREF: sub_14070B7DC+72↑j
                                        ; sub_14070B7DC+9F↑j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14070B8F4:                          ; CODE XREF: sub_14070B7DC+3B↑j
                lea     rdx, [rsp+58h+var_18]
                call    RtlPcToFileHeader
                cmp     [rsp+58h+var_18], 0
                jnz     loc_14070B854
                mov     eax, 0C0000225h
                jmp     short loc_14070B8E3
; ---------------------------------------------------------------------------

loc_14070B911:                          ; CODE XREF: sub_14070B7DC+AD↑j
                lea     rdx, [rsp+58h+var_20]
                mov     rcx, [rsp+58h+var_10]
                call    sub_140780854
                mov     [rsp+58h+var_28], eax
                mov     rdx, [rsp+58h+var_20]
                jmp     loc_14070B88F
; } // starts at 14070B7DC
sub_14070B7DC   endp

; ---------------------------------------------------------------------------
byte_14070B92E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140084E18↑o
                                        ; .pdata:0000000140105EB8↑o

; =============== S U B R O U T I N E =======================================


sub_14070B934   proc near               ; CODE XREF: sub_14070B7DC+102↑p
                                        ; sub_140944AE0+2F4↓p
                                        ; DATA XREF: ...

var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = byte ptr -78h
var_70          = byte ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8b
                mov     [rax+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     dil, r8b
                mov     r14, rdx
                mov     r15, rcx
                xor     esi, esi
                mov     [rax-78h], rsi
                mov     [rax-70h], rsi
                mov     r13d, 0C0000225h

loc_14070B96B:                          ; DATA XREF: .rdata:0000000140084E44↑o
;   __try { // __except at loc_14070BB36
                mov     dword ptr [rsp+0A8h+var_88], esi
                lea     r8d, [rsi+6]
                lea     r9, [rsp+0A8h+var_88]
                mov     dl, 1
                call    RtlImageDirectoryEntryToData
                mov     rbx, rax
                mov     [rsp+0A8h+var_68], rax
                test    rax, rax
                jz      loc_14070BB2F
                cmp     dword ptr [rsp+0A8h+var_88], 1Ch
                jb      loc_14070BB2F
                mov     r12d, dword ptr [rsp+0A8h+var_88]
                mov     rax, 2492492492492493h
                mul     r12
                sub     r12, rdx
                shr     r12, 1
                add     r12, rdx
                shr     r12, 4
                mov     [rsp+0A8h+var_80], esi

loc_14070B9BE:                          ; CODE XREF: sub_14070B934+1E6↓j
                cmp     esi, r12d
                jnb     loc_14070BB2D
                cmp     rbx, r15
                jb      loc_14070BB26
                lea     rcx, [rbx+1Ch]
                mov     [rsp+0A8h+var_88], rcx
                lea     rax, [r15+r14]
                cmp     rcx, rax
                ja      loc_14070BB26
                test    dil, dil
                jz      short loc_14070BA0B
                lea     r8, [rsp+0A8h+var_78]
                mov     edx, 1Ch
                mov     rcx, rbx
                call    sub_1405D101C
                test    al, al
                jnz     short loc_14070BA0B
                mov     eax, 0C0000903h
                jmp     loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BA0B:                          ; CODE XREF: sub_14070B934+B5↑j
                                        ; sub_14070B934+CB↑j
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+0A8h+var_60], xmm0
                movsd   xmm1, qword ptr [rbx+10h]
                movsd   [rsp+0A8h+var_50], xmm1
                mov     eax, [rbx+18h]
                mov     [rsp+0A8h+var_48], eax
                mov     rcx, [rsp+0A8h+var_50]
                shr     rcx, 20h
                cmp     rcx, r14
                ja      loc_14070BB1F
                mov     ebx, dword ptr [rsp+0A8h+var_50]
                cmp     rbx, r14
                ja      loc_14070BB1F
                mov     rax, r14
                sub     rax, rbx
                cmp     rcx, rax
                ja      loc_14070BB1F
                mov     rax, qword ptr [rsp+0A8h+var_60+8]
                shr     rax, 20h
                cmp     eax, 2
                jnz     loc_14070BB02
                lea     r14, [rcx+r15]
                cmp     [rsp+0A8h+arg_10], 0
                jz      short loc_14070BA90
                lea     r8, [rsp+0A8h+var_70]
                mov     edx, ebx
                mov     rcx, r14
                call    sub_1405D101C
                test    al, al
                jnz     short loc_14070BA90
                mov     eax, 0C0000903h
                jmp     loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BA90:                          ; CODE XREF: sub_14070B934+13D↑j
                                        ; sub_14070B934+150↑j
                cmp     dword ptr [r14], 53445352h
                jnz     short loc_14070BAFA
                cmp     ebx, 1Ch
                jnb     short loc_14070BAA8
                mov     eax, 0C000007Bh
                jmp     loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BAA8:                          ; CODE XREF: sub_14070B934+168↑j
                mov     rsi, [rsp+0A8h+arg_20]
                cmp     [rsi], ebx
                jnb     short loc_14070BADE
                mov     r8d, 62777445h
                mov     rdx, rbx
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rcx, [rsp+0A8h+arg_18]
                mov     [rcx], rax
                test    rax, rax
                jnz     short loc_14070BAE6
                mov     eax, 0C0000017h
                jmp     short loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BADE:                          ; CODE XREF: sub_14070B934+17E↑j
                mov     rcx, [rsp+0A8h+arg_18]

loc_14070BAE6:                          ; CODE XREF: sub_14070B934+1A1↑j
                mov     [rsi], ebx
                mov     r8, rbx
                mov     rdx, r14
                mov     rcx, [rcx]
                call    memmove
                xor     eax, eax
                jmp     short loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BAFA:                          ; CODE XREF: sub_14070B934+163↑j
                mov     r14, [rsp+0A8h+arg_8]

loc_14070BB02:                          ; CODE XREF: sub_14070B934+12B↑j
                mov     rbx, [rsp+0A8h+var_88]
                mov     [rsp+0A8h+var_68], rbx
                inc     esi
                mov     [rsp+0A8h+var_80], esi
                mov     dil, [rsp+0A8h+arg_10]
                jmp     loc_14070B9BE
; ---------------------------------------------------------------------------

loc_14070BB1F:                          ; CODE XREF: sub_14070B934+FD↑j
                                        ; sub_14070B934+10A↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BB26:                          ; CODE XREF: sub_14070B934+96↑j
                                        ; sub_14070B934+AC↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14070BB3F
; ---------------------------------------------------------------------------

loc_14070BB2D:                          ; CODE XREF: sub_14070B934+8D↑j
                jmp     short loc_14070BB3C
; ---------------------------------------------------------------------------

loc_14070BB2F:                          ; CODE XREF: sub_14070B934+56↑j
                                        ; sub_14070B934+61↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14070BB3F
;   } // starts at 14070B96B
; ---------------------------------------------------------------------------

loc_14070BB36:                          ; DATA XREF: .rdata:0000000140084E44↑o
;   __except(1) // owned by 14070B96B
                mov     r13d, 0C0000903h

loc_14070BB3C:                          ; CODE XREF: sub_14070B934:loc_14070BB2D↑j
                mov     eax, r13d

loc_14070BB3F:                          ; CODE XREF: sub_14070B934+D2↑j
                                        ; sub_14070B934+157↑j ...
                add     rsp, 70h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14070B934
sub_14070B934   endp

byte_14070BB50  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140105EC4↑o

; =============== S U B R O U T I N E =======================================


sub_14070BB58   proc near               ; CODE XREF: sub_1405EE8F4+2D9↑p
                                        ; DATA XREF: .pdata:0000000140105ED0↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                lea     rbx, [rcx+70h]
                mov     r15d, r8d
                mov     rbp, rdx
                xor     r12d, r12d
                mov     rcx, rbx
                xor     r8d, r8d
                xor     edx, edx
                mov     r14d, r9d
                mov     edi, r12d
                call    sub_140244C10
                mov     rsi, rax
                lea     r13d, [r12+11h]
                xor     eax, eax
                lock cmpxchg [rbx], r13
                jz      short loc_14070BBB3
                mov     r8, rbx
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402F6140

loc_14070BBB3:                          ; CODE XREF: sub_14070BB58+4B↑j
                test    rsi, rsi
                jnz     short loc_14070BC36

loc_14070BBB8:                          ; CODE XREF: sub_14070BB58+E2↓j
                cmp     [rbp+30h], r12
                jz      short loc_14070BBD1
                mov     edx, r15d
                mov     rcx, rbp
                call    sub_1405F0800
                test    eax, eax
                jz      short loc_14070BBD1
                mov     rdi, [rbp+28h]

loc_14070BBD1:                          ; CODE XREF: sub_14070BB58+64↑j
                                        ; sub_14070BB58+73↑j
                mov     rax, r13
                lock cmpxchg [rbx], r12
                jz      short loc_14070BBE3
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_14070BBE3:                          ; CODE XREF: sub_14070BB58+81↑j
                mov     rcx, rbx
                call    sub_140243660
                test    rdi, rdi
                jz      short loc_14070BC18
                cmp     cs:PsInitialSystemProcess, rdi
                jz      short loc_14070BC3F
                mov     rax, [rdi+868h]
                mov     rcx, [rax+80h]
                test    rcx, rcx
                jz      short loc_14070BC18
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    KeSetEvent

loc_14070BC18:                          ; CODE XREF: sub_14070BB58+96↑j
                                        ; sub_14070BB58+B2↑j ...
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
                align 2

loc_14070BC36:                          ; CODE XREF: sub_14070BB58+5E↑j
                or      byte ptr [rsi+1Ah], 1
                jmp     loc_14070BBB8
; ---------------------------------------------------------------------------

loc_14070BC3F:                          ; CODE XREF: sub_14070BB58+9F↑j
                mov     ecx, r14d
                call    sub_14070BC50
                jmp     short loc_14070BC18
sub_14070BB58   endp

; ---------------------------------------------------------------------------
algn_14070BC49:                         ; DATA XREF: .pdata:0000000140105ED0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14070BC50   proc near               ; CODE XREF: sub_1405F068C+163↑p
                                        ; sub_14070BB58+EA↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    ecx, ecx
                jnz     short loc_14070BC94
                mov     rcx, cs:qword_140CDAF80
                mov     eax, 2
                lock or [rcx+28h], eax
                mov     rcx, cs:qword_140CDAF80
                lea     edx, [rax+1]
                lock cmpxchg [rcx+28h], edx
                jnz     short loc_14070BC8E
                mov     rcx, cs:qword_140CDAF80
                mov     edx, 1
                add     rcx, 8
                call    ExQueueWorkItem

loc_14070BC8E:                          ; CODE XREF: sub_14070BC50+27↑j
                                        ; sub_14070BC50+49↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14070BC94:                          ; CODE XREF: sub_14070BC50+6↑j
                call    sub_14070BD04
                jmp     short loc_14070BC8E
sub_14070BC50   endp

; ---------------------------------------------------------------------------
byte_14070BC9B  db 15h dup(0CCh)        ; DATA XREF: .pdata:0000000140105EDC↑o

; =============== S U B R O U T I N E =======================================


sub_14070BCB0   proc near               ; DATA XREF: .pdata:0000000140105EE8↑o
                                        ; sub_140A3E42C+1B9↓o
                sub     rsp, 28h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]

loc_14070BCC4:                          ; CODE XREF: sub_14070BCB0+36↓j
                mov     rax, cs:qword_140CDAF80
                lock and dword ptr [rax+28h], 0FFFFFFFDh
                call    sub_14070BD04
                mov     rcx, cs:qword_140CDAF80
                xor     edx, edx
                lea     eax, [rdx+1]
                lock cmpxchg [rcx+28h], edx
                jnz     short loc_14070BCC4
                mov     rcx, gs:188h
                call    sub_14021E1F0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14070BCB0   endp

byte_14070BCFC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140105EE8↑o

; =============== S U B R O U T I N E =======================================


sub_14070BD04   proc near               ; CODE XREF: sub_14070BC50:loc_14070BC94↑p
                                        ; sub_14070BCB0+20↑p
                                        ; DATA XREF: ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h

; FUNCTION CHUNK AT 0000000140829CB4 SIZE 00000036 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                mov     rax, cs:PsInitialSystemProcess
                xor     ebp, ebp
                mov     [r11-40h], rbp
                xor     r8d, r8d
                xor     edx, edx
                mov     r13, [rax+868h]
                lea     rdi, [r13+68h]
                mov     rcx, rdi
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rbx, rax
                jnb     short loc_14070BD6D
                mov     r8, rdi
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1402F5F10

loc_14070BD6D:                          ; CODE XREF: sub_14070BD04+59↑j
                test    rbx, rbx
                jnz     loc_14070BFB5

loc_14070BD76:                          ; CODE XREF: sub_14070BD04+2B5↓j
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_14070BD7A:                          ; CODE XREF: sub_14070BD04+25C↓j
                lea     rax, [r13+70h]
                mov     rsi, [rax]
                cmp     rsi, rax
                jz      loc_14070BF65
                lea     r14, [rsi-68h]
                lea     rcx, [r14+8]
                call    sub_14024C840
                mov     dword ptr [r14+78h], 2
                mov     rcx, [rsi]
                cmp     [rcx+8], rsi
                jnz     loc_140829CE3
                mov     rax, [rsi+8]
                cmp     [rax], rsi
                jnz     loc_140829CE3
                mov     [rax], rcx
                lea     r12, [r13+50h]
                mov     [rcx+8], rax
                mov     r15d, [r14+7Ch]

loc_14070BDC8:                          ; CODE XREF: sub_14070BD04+249↓j
                mov     [r14+7Ch], ebp
                mov     rax, rbx
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_14070BFBE

loc_14070BDDE:                          ; CODE XREF: sub_14070BD04+2C2↓j
                mov     rcx, rdi
                call    sub_140243660
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r12
                call    sub_140244C10
                mov     rsi, rax
                xor     eax, eax
                lea     ecx, [rax+11h]
                lock cmpxchg [r12], rcx
                jz      short loc_14070BE11
                mov     r8, r12
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_1402F6140

loc_14070BE11:                          ; CODE XREF: sub_14070BD04+FD↑j
                test    rsi, rsi
                jnz     loc_14070BFA6

loc_14070BE1A:                          ; CODE XREF: sub_14070BD04+2A6↓j
                mov     rsi, [r14+30h]
                test    rsi, rsi
                jz      short loc_14070BE34
                lea     rcx, [rsi+8]
                call    sub_14024C840
                neg     al
                sbb     rcx, rcx
                and     rsi, rcx

loc_14070BE34:                          ; CODE XREF: sub_14070BD04+11D↑j
                xor     ecx, ecx
                mov     ebp, r15d
                mov     edx, 0FFFFFFFEh
                and     ebp, edx
                test    rsi, rsi
                cmovnz  ebp, r15d
                test    bpl, 1
                jz      short loc_14070BE5E
                mov     eax, [rsi+60h]
                cmp     eax, [r14+60h]
                jbe     loc_140829CB4
                mov     [r14+60h], eax

loc_14070BE5E:                          ; CODE XREF: sub_14070BD04+147↑j
                                        ; sub_14070BD04+11DFB2↓j
                mov     eax, 11h
                test    ebp, ebp
                jz      loc_140829CBB
                lock cmpxchg [r12], rcx
                jz      short loc_14070BE7B
                mov     rcx, r12
                call    ExfReleasePushLockShared

loc_14070BE7B:                          ; CODE XREF: sub_14070BD04+16D↑j
                mov     rcx, r12
                call    sub_140243660
                mov     rax, [r14+38h]
                mov     rcx, 41C64E6DA3BC0074h
                xor     rax, rcx
                mov     [rsp+88h+var_40], rax
                xor     eax, eax
                test    rsi, rsi
                jz      loc_140829CDB
                mov     rdx, [rsi+40h]

loc_14070BEA8:                          ; CODE XREF: sub_14070BD04+11DFDA↓j
                mov     r15d, ebp
                and     r15d, 1
                test    rsi, rsi
                jz      loc_14070BFD5
                test    r15d, r15d
                jz      loc_14070BFD5
                mov     r9d, [rsi+60h]

loc_14070BEC5:                          ; CODE XREF: sub_14070BD04+2D4↓j
                mov     rcx, [r14+58h]
                mov     r8d, ebp
                mov     rax, [r14+50h]
                mov     [rsp+88h+var_60], rcx
                mov     rcx, r14
                mov     [rsp+88h+var_68], rdx
                lea     rdx, [rsp+88h+var_40]
                call    sub_1404079D0
                xor     ebp, ebp
                test    r15d, r15d
                jz      short loc_14070BF0D
                mov     eax, ebx
                lock xadd [rsi+0A4h], eax
                add     eax, ebx
                jnz     short loc_14070BF0D
                xor     r9d, r9d
                lea     edx, [rbp+8]
                xor     r8d, r8d
                mov     rcx, rsi
                call    sub_1405F068C

loc_14070BF0D:                          ; CODE XREF: sub_14070BD04+1E8↑j
                                        ; sub_14070BD04+1F6↑j ...
                test    rsi, rsi
                jz      short loc_14070BF1B
                lea     rcx, [rsi+8]
                call    sub_14024C380

loc_14070BF1B:                          ; CODE XREF: sub_14070BD04+20C↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rsi, rax
                jnb     short loc_14070BF41
                mov     r8, rdi
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1402F5F10

loc_14070BF41:                          ; CODE XREF: sub_14070BD04+22D↑j
                test    rsi, rsi
                jnz     short loc_14070BFAF

loc_14070BF46:                          ; CODE XREF: sub_14070BD04+2AF↓j
                mov     r15d, [r14+7Ch]
                test    r15d, r15d
                jnz     loc_14070BDC8
                lea     rcx, [r14+8]
                mov     [r14+78h], ebp
                call    sub_14024C380
                jmp     loc_14070BD7A
; ---------------------------------------------------------------------------

loc_14070BF65:                          ; CODE XREF: sub_14070BD04+80↑j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_14070BFCB

loc_14070BF72:                          ; CODE XREF: sub_14070BD04+2CF↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14070BFA6:                          ; CODE XREF: sub_14070BD04+110↑j
                or      byte ptr [rsi+1Ah], 1
                jmp     loc_14070BE1A
; ---------------------------------------------------------------------------

loc_14070BFAF:                          ; CODE XREF: sub_14070BD04+240↑j
                or      byte ptr [rsi+1Ah], 1
                jmp     short loc_14070BF46
; ---------------------------------------------------------------------------

loc_14070BFB5:                          ; CODE XREF: sub_14070BD04+6C↑j
                or      byte ptr [rbx+1Ah], 1
                jmp     loc_14070BD76
; ---------------------------------------------------------------------------

loc_14070BFBE:                          ; CODE XREF: sub_14070BD04+D4↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     loc_14070BDDE
; ---------------------------------------------------------------------------

loc_14070BFCB:                          ; CODE XREF: sub_14070BD04+26C↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_14070BF72
; ---------------------------------------------------------------------------

loc_14070BFD5:                          ; CODE XREF: sub_14070BD04+1AE↑j
                                        ; sub_14070BD04+1B7↑j
                mov     r9d, eax
                jmp     loc_14070BEC5
; } // starts at 14070BD04
sub_14070BD04   endp

; ---------------------------------------------------------------------------
byte_14070BFDD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140084EA0↑o
                                        ; .pdata:0000000140105EF4↑o

; =============== S U B R O U T I N E =======================================


sub_14070BFE4   proc near               ; CODE XREF: sub_1406628F0+162↑p
                                        ; DATA XREF: .rdata:0000000140084EC4↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140829CEA SIZE 0000001C BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                movzx   eax, word ptr [rcx+2]
                xor     ebx, ebx
                test    al, 10h
                jz      short loc_14070C06F
                test    ax, ax
                jns     loc_140829CEA
                mov     eax, [rcx+0Ch]
                test    eax, eax
                jz      short loc_14070C06F
                lea     rdi, [rcx+rax]

loc_14070C011:                          ; CODE XREF: sub_14070BFE4+8E↓j
                                        ; sub_14070BFE4+11DD0A↓j
                mov     rsi, cs:qword_140C4C430
                mov     [rsp+28h+arg_0], ebx

loc_14070C01C:                          ; CODE XREF: sub_14070BFE4+5A↓j
                lea     r8, [rsp+28h+arg_0]
                mov     edx, 11h
                mov     rcx, rdi
                call    RtlFindAceByType
                test    rax, rax
                jnz     loc_140829CF3

loc_14070C037:                          ; CODE XREF: sub_14070BFE4+11DD13↓j
                inc     [rsp+28h+arg_0]
                test    rax, rax
                jnz     short loc_14070C01C

loc_14070C040:                          ; CODE XREF: sub_14070BFE4+11DD1D↓j
                mov     rcx, rsi
                call    RtlSubAuthorityCountSid
                movzx   ecx, byte ptr [rax]
                test    cl, cl
                jz      short loc_14070C05C
                lea     edx, [rcx-1]
                mov     rcx, rsi
                call    RtlSubAuthoritySid
                mov     ebx, [rax]

loc_14070C05C:                          ; CODE XREF: sub_14070BFE4+69↑j
                mov     rsi, [rsp+28h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070C06F:                          ; CODE XREF: sub_14070BFE4+17↑j
                                        ; sub_14070BFE4+27↑j
                mov     rdi, rbx
                jmp     short loc_14070C011
sub_14070BFE4   endp

; ---------------------------------------------------------------------------
byte_14070C074  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140084EC4↑o
                                        ; .pdata:0000000140105F00↑o

; =============== S U B R O U T I N E =======================================


sub_14070C07C   proc near               ; CODE XREF: sub_140603630+509↑p
                                        ; DATA XREF: .pdata:0000000140105F0C↑o

var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001407E87E4 SIZE 00000034 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], rsi
                mov     [rax+8], rcx
                push    rdi
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r15, r9
                mov     ebx, r8d
                mov     r14, rdx
                mov     rdi, rcx
                and     dword ptr [rax-24h], 0
                mov     rsi, gs:188h
                mov     [rsp+78h+arg_8], rsi
                mov     rdx, rsi
                call    sub_14060554C
                lea     rax, [r14+8]
                mov     [rsp+78h+var_38], rax
                lea     eax, [rbx-8]
                mov     [rsp+78h+var_30], eax
                and     [rsp+78h+var_2C], 0
                mov     eax, [rdi+0D8h]
                mov     [rsp+78h+var_28], eax
                mov     [rsp+78h+var_50], 1
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_58], rax
                lea     r9, sub_1407130B0
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140604DA0
                mov     ebx, eax
                mov     eax, 80000000h
                lea     ecx, [rbx+rax]
                test    eax, ecx
                jz      short loc_14070C169

loc_14070C110:                          ; CODE XREF: sub_14070C07C+F3↓j
                mov     ecx, [rdi+0D8h]
                lea     ecx, ds:8[rcx*8]
                mov     [r15], ecx

loc_14070C120:                          ; DATA XREF: .rdata:0000000140084EF0↑o
;   __try { // __except at loc_14070C133
                mov     eax, [rdi+0D8h]
                mov     [r14], eax
                mov     eax, [rsp+78h+var_2C]
                mov     [r14+4], eax
                jmp     short loc_14070C145
;   } // starts at 14070C120
; ---------------------------------------------------------------------------

loc_14070C133:                          ; DATA XREF: .rdata:0000000140084EF0↑o
;   __except(loc_1407E87E4) // owned by 14070C120
                mov     ebx, eax
                mov     rdi, [rsp+78h+arg_0]
                mov     rsi, [rsp+78h+arg_8]

loc_14070C145:                          ; CODE XREF: sub_14070C07C+B5↑j
                                        ; sub_14070C07C+F5↓j
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1406054E0
                mov     eax, ebx
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070C169:                          ; CODE XREF: sub_14070C07C+92↑j
                cmp     ebx, 80000005h
                jz      short loc_14070C110
                jmp     short loc_14070C145
; } // starts at 14070C07C
sub_14070C07C   endp

; ---------------------------------------------------------------------------
byte_14070C173  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140105F0C↑o

; =============== S U B R O U T I N E =======================================


sub_14070C17C   proc near               ; CODE XREF: sub_1405EB770+707↑p
                                        ; sub_140794038+DC↓p
                                        ; DATA XREF: ...

var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140829D06 SIZE 0000002A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r10d, [rsp+0A8h+arg_28]
                xor     r13d, r13d
                mov     r11d, r10d
                mov     [rax-30h], r13
                and     r11d, 1
                mov     [rax-38h], r13
                mov     rsi, rcx
                mov     eax, r11d
                mov     rcx, gs:188h
                neg     eax
                mov     edi, r11d
                mov     bpl, r9b
                sbb     ebx, ebx
                mov     r14, r8
                and     ebx, 0FEC00000h
                or      edi, 8
                mov     rcx, [rcx+0B8h]
                add     ebx, 2400000h
                and     r10b, 4
                mov     r15, rdx
                cmovz   edi, r11d
                call    sub_140245840
                mov     [rsp+0A8h+var_48], r13
                mov     r12d, eax
                mov     [rsp+0A8h+var_50], eax
                mov     [rsp+0A8h+var_58], r13b
                mov     [rsp+0A8h+var_60], r13
                mov     r13, [rsp+0A8h+arg_20]

loc_14070C215:                          ; CODE XREF: sub_14070C17C+11DBAF↓j
                mov     [rsp+0A8h+var_68], r13
                lea     rcx, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_70], bpl
                mov     r9d, 10h
                mov     [rsp+0A8h+var_78], r14
                xor     r8d, r8d
                mov     dword ptr [rsp+0A8h+var_80], edi
                mov     rdx, r15
                mov     [rsp+0A8h+var_88], ebx
                call    sub_14061D310
                test    eax, eax
                js      loc_14070C2CD
                mov     rcx, [rsp+0A8h+var_38]
                call    sub_140267410
                mov     rcx, rax
                mov     rdi, rax
                call    sub_14026F920
                mov     rcx, rax
                mov     rbx, rax
                call    sub_1402D49E8
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402D4998
                mov     rcx, [rsp+0A8h+var_38]
                lea     rax, [rsp+0A8h+var_30]
                mov     [rsp+0A8h+var_78], rax
                xor     r9d, r9d
                and     [rsp+0A8h+var_80], 0
                xor     edx, edx
                and     [rsp+0A8h+var_88], 0
                mov     r8d, 0F001Fh
                call    sub_14061EFE0
                test    eax, eax
                js      short loc_14070C2AB
                mov     rcx, [rsp+0A8h+var_30]
                mov     [rsi], rcx

loc_14070C2AB:                          ; CODE XREF: sub_14070C17C+125↑j
                                        ; sub_14070C17C+156↓j
                lea     r11, [rsp+0A8h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
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

loc_14070C2CD:                          ; CODE XREF: sub_14070C17C+C8↑j
                cmp     eax, 0C0000054h
                jnz     short loc_14070C2AB
                jmp     loc_140829D06
sub_14070C17C   endp

; ---------------------------------------------------------------------------
algn_14070C2D9:                         ; DATA XREF: .rdata:0000000140084F30↑o
                                        ; .pdata:0000000140105F18↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14070C2E0   proc near               ; CODE XREF: sub_140A7188C+1A3↓p
                                        ; sub_140A7188C+24C↓p ...

var_108         = qword ptr -108h
var_F8          = word ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = dword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = xmmword ptr -0B0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_38          = qword ptr -38h

; FUNCTION CHUNK AT 0000000140829D30 SIZE 00000021 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+128h+var_38], rax
                mov     rdi, r9
                mov     rbx, r8
                mov     r14d, edx
                mov     rsi, rcx
                xorps   xmm0, xmm0
                movups  [rsp+128h+var_F0], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+128h+var_D0], xmm1
                xor     edx, edx
                lea     rcx, [rsp+128h+var_D0]
                call    RtlInitUnicodeString
                xor     edx, edx
                lea     rcx, [rsp+128h+var_F0]
                call    RtlInitUnicodeString
                mov     rax, gs:188h
                mov     r8b, [rax+232h]
                xor     r15d, r15d
                test    r8b, r8b
                jnz     loc_14070C50C
                movups  xmm1, xmmword ptr [rdi]
                movups  [rsp+128h+var_F0], xmm1
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      short loc_14070C36B
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rsp+128h+var_D0], xmm0

loc_14070C36B:                          ; CODE XREF: sub_14070C2E0+80↑j
                                        ; sub_14070C2E0+2FB↓j
                movq    rax, xmm1
                shr     rax, 10h
                test    al, 1
                jnz     loc_140829D30

loc_14070C37C:                          ; CODE XREF: sub_14070C2E0+11DA62↓j
                movzx   eax, word ptr [rsp+128h+var_F0+2]
                test    ax, ax
                jz      loc_140829D47
                movd    edi, xmm1
                cmp     di, ax
                ja      loc_140829D47
                movd    eax, xmm1
                test    al, 1
                jnz     loc_140829D47
                mov     [rsp+128h+var_B8], r15
                movdqu  [rsp+128h+var_B0], xmm1
                mov     byte ptr [rsp+128h+var_108], r8b
                lea     r9, [rsp+128h+var_B8]
                mov     r8, rbx
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_14070C5EC
                mov     ebx, eax
                mov     [rsp+128h+var_D8], eax
                mov     [rsp+128h+var_E0], r14d
                mov     r10, cs:qword_140C19DD0
                test    r10, r10
                jz      loc_14070C4EA
                mov     [rsp+128h+var_F8], r15w
                mov     r9d, r15d
                mov     rcx, qword ptr [rsp+128h+var_D0+8]
                test    rcx, rcx
                jz      short loc_14070C416
                mov     [rsp+128h+var_98], rcx
                movzx   eax, word ptr [rsp+128h+var_D0]
                mov     dword ptr [rsp+128h+var_90], eax
                mov     dword ptr [rsp+128h+var_90+4], r15d
                mov     r9d, 1

loc_14070C416:                          ; CODE XREF: sub_14070C2E0+112↑j
                mov     eax, r9d
                add     rax, rax
                lea     rcx, [rsp+128h+var_F8]
                mov     [rsp+rax*8+128h+var_98], rcx
                mov     [rsp+rax*8+128h+var_90], 2
                inc     r9d
                mov     rax, qword ptr [rsp+128h+var_F0+8]
                test    rax, rax
                jz      short loc_14070C465
                mov     ecx, r9d
                add     rcx, rcx
                mov     [rsp+rcx*8+128h+var_98], rax
                movzx   eax, di
                mov     dword ptr [rsp+rcx*8+128h+var_90], eax
                mov     dword ptr [rsp+rcx*8+128h+var_90+4], r15d
                inc     r9d

loc_14070C465:                          ; CODE XREF: sub_14070C2E0+160↑j
                mov     eax, r9d
                add     rax, rax
                lea     rcx, [rsp+128h+var_F8]
                mov     [rsp+rax*8+128h+var_98], rcx
                mov     [rsp+rax*8+128h+var_90], 2
                inc     r9d
                mov     eax, r9d
                add     rax, rax
                lea     rcx, [rsp+128h+var_E0]
                mov     [rsp+rax*8+128h+var_98], rcx
                mov     [rsp+rax*8+128h+var_90], 4
                inc     r9d
                mov     eax, r9d
                add     rax, rax
                lea     rcx, [rsp+128h+var_D8]
                mov     [rsp+rax*8+128h+var_98], rcx
                mov     [rsp+rax*8+128h+var_90], 4
                inc     r9d
                lea     rax, [rsp+128h+var_98]
                mov     [rsp+128h+var_108], rax
                xor     r8d, r8d
                lea     rdx, qword_14000AF88
                mov     rcx, r10
                call    EtwWrite

loc_14070C4EA:                          ; CODE XREF: sub_14070C2E0+FB↑j
                mov     eax, ebx

loc_14070C4EC:                          ; CODE XREF: sub_14070C2E0:loc_14070C5E0↓j
                                        ; sub_14070C2E0+11DA6C↓j
                mov     rcx, [rsp+128h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14070C50C:                          ; CODE XREF: sub_14070C2E0+6B↑j
                                        ; DATA XREF: .rdata:0000000140085008↑o
;   __try { // __except at loc_14070C5E0
                test    bl, 3
                jnz     loc_14070C5B3
                mov     rax, rbx
                mov     r9, 7FFFFFFF0000h
                cmp     rbx, r9
                cmovnb  rax, r9
                mov     al, [rax]
                mov     rax, [rbx+10h]
                mov     [rsp+128h+var_C0], rax
                test    rax, rax
                jz      short loc_14070C56D
                cmp     rax, r9
                cmovnb  rax, r9
                mov     al, [rax]
                mov     rax, [rsp+128h+var_C0]
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+128h+var_D0], xmm0
                movd    eax, xmm0
                test    ax, ax
                jz      short loc_14070C56D
                movzx   edx, ax
                mov     rcx, qword ptr [rsp+128h+var_D0+8]
                add     rdx, rcx
                cmp     rdx, r9
                ja      short loc_14070C5B9
                cmp     rdx, rcx
                jb      short loc_14070C5B9

loc_14070C56D:                          ; CODE XREF: sub_14070C2E0+257↑j
                                        ; sub_14070C2E0+276↑j ...
                mov     rax, rdi
                cmp     rdi, r9
                cmovnb  rax, r9
                mov     al, [rax]
                movups  xmm0, xmmword ptr [rdi]
                movups  [rsp+128h+var_F0], xmm0
                movq    rax, xmm0
                shr     rax, 10h
                test    ax, ax
                jz      short loc_14070C5C6
                movzx   edx, word ptr [rsp+128h+var_F0+2]
                mov     rcx, qword ptr [rsp+128h+var_F0+8]
                add     rdx, rcx
                cmp     rdx, r9
                ja      short loc_14070C5A6
                cmp     rdx, rcx
                jnb     short loc_14070C5C6

loc_14070C5A6:                          ; CODE XREF: sub_14070C2E0+2BF↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14070C5C6
; ---------------------------------------------------------------------------

loc_14070C5B3:                          ; CODE XREF: sub_14070C2E0+22F↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070C5B9:                          ; CODE XREF: sub_14070C2E0+286↑j
                                        ; sub_14070C2E0+28B↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14070C56D
; ---------------------------------------------------------------------------

loc_14070C5C6:                          ; CODE XREF: sub_14070C2E0+2AD↑j
                                        ; sub_14070C2E0+2C4↑j ...
                mov     rcx, rsi
                cmp     rsi, r9
                cmovnb  rcx, r9
                mov     rax, [rcx]
                mov     [rcx], rax
                movups  xmm1, [rsp+128h+var_F0]
                jmp     loc_14070C36B
;   } // starts at 14070C50C
; ---------------------------------------------------------------------------

loc_14070C5E0:                          ; DATA XREF: .rdata:0000000140085008↑o
;   __except(1) // owned by 14070C50C
                jmp     loc_14070C4EC
; } // starts at 14070C2E0
sub_14070C2E0   endp

; ---------------------------------------------------------------------------
byte_14070C5E5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140085020↑o
                                        ; .pdata:0000000140105F24↑o

; =============== S U B R O U T I N E =======================================


sub_14070C5EC   proc near               ; CODE XREF: sub_14070C2E0+E1↑p
                                        ; sub_1407A04A0+123↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 0000000140829D52 SIZE 00000022 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], r12
                mov     [r11+20h], r13
                push    r14
                sub     rsp, 60h
                mov     r14, r9
                mov     r13d, edx
                mov     r12, rcx
                and     qword ptr [r11-10h], 0
                and     qword ptr [r11-18h], 0
                mov     rdx, cs:qword_140C259E8
                and     qword ptr [r11-20h], 0
                lea     rax, [r11-18h]
                mov     [r11-28h], rax
                and     [rsp+68h+var_30], 0
                and     dword ptr [rsp+68h+var_38], 0
                mov     dword ptr [rsp+68h+var_40], 28h ; '('
                mov     r9b, [rsp+68h+arg_20]
                mov     cl, r9b
                call    sub_14061EDD0
                mov     esi, eax
                test    eax, eax
                js      loc_140829D5C
                mov     rax, ds:0FFFFF78000000014h
                mov     rbx, [rsp+68h+var_18]
                mov     [rbx], rax
                and     dword ptr [rbx+18h], 0
                and     dword ptr [rbx+1Ch], 0
                mov     eax, [r14]
                mov     ecx, 1
                test    cl, al
                jnz     loc_14070C750
                movzx   eax, word ptr [r14+0Ah]
                mov     [rbx+0Ah], ax
                movzx   eax, word ptr [r14+8]
                mov     [rbx+8], ax
                movzx   edx, word ptr [r14+0Ah]
                mov     r8d, 746D7953h
                call    ExAllocatePoolWithTag
                mov     [rbx+10h], rax
                test    rax, rax
                jz      loc_140829D52

loc_14070C6B1:                          ; DATA XREF: .rdata:0000000140085050↑o
;   __try { // __except at loc_14070C6C4
                movzx   r8d, word ptr [r14+0Ah]
                mov     rdx, [r14+10h]
                mov     rcx, rax
                call    memmove
                jmp     short loc_14070C6CD
;   } // starts at 14070C6B1
; ---------------------------------------------------------------------------

loc_14070C6C4:                          ; DATA XREF: .rdata:0000000140085050↑o
;   __except(1) // owned by 14070C6B1
                mov     esi, eax
                mov     rbx, [rsp+68h+var_18]
                jmp     short loc_14070C723
; ---------------------------------------------------------------------------

loc_14070C6CD:                          ; CODE XREF: sub_14070C5EC+D6↑j
                                        ; sub_14070C5EC+17B↓j
                mov     dl, [rsp+68h+arg_20]
                xor     ecx, ecx
                call    RtlIsSandboxedToken
                test    al, al
                jnz     short loc_14070C74A

loc_14070C6DF:                          ; CODE XREF: sub_14070C5EC+162↓j
                lea     rax, [rsp+68h+var_10]
                mov     [rsp+68h+var_38], rax
                and     [rsp+68h+var_40], 0
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                mov     r8d, r13d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14061EFE0
                mov     esi, eax
                xor     ebx, ebx
                mov     [rsp+68h+var_18], rbx
                test    eax, eax
                js      short loc_14070C723

loc_14070C711:                          ; DATA XREF: .rdata:0000000140085060↑o
;   __try { // __except at loc_14070C71C
                mov     rax, [rsp+68h+var_10]
                mov     [r12], rax
                jmp     short loc_14070C721
;   } // starts at 14070C711
; ---------------------------------------------------------------------------

loc_14070C71C:                          ; DATA XREF: .rdata:0000000140085060↑o
;   __except(1) // owned by 14070C711
                mov     rbx, [rsp+68h+var_18]

loc_14070C721:                          ; CODE XREF: sub_14070C5EC+12E↑j
                xor     esi, esi

loc_14070C723:                          ; CODE XREF: sub_14070C5EC+DF↑j
                                        ; sub_14070C5EC+123↑j ...
                test    rbx, rbx
                jnz     loc_140829D66

loc_14070C72C:                          ; CODE XREF: sub_14070C5EC+11D783↓j
                mov     eax, esi
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     r12, [r11+20h]
                mov     r13, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14070C74A:                          ; CODE XREF: sub_14070C5EC+F1↑j
                or      dword ptr [rbx+1Ch], 2
                jmp     short loc_14070C6DF
; ---------------------------------------------------------------------------

loc_14070C750:                          ; CODE XREF: sub_14070C5EC+90↑j
                mov     dword ptr [rbx+1Ch], 10h
                mov     rax, [r14+8]
                mov     [rbx+8], rax
                mov     rax, [r14+10h]
                mov     [rbx+10h], rax
                jmp     loc_14070C6CD
; } // starts at 14070C5EC
sub_14070C5EC   endp

; ---------------------------------------------------------------------------
algn_14070C76C:                         ; DATA XREF: .rdata:0000000140085074↑o
                                        ; .pdata:0000000140105F30↑o
                align 20h
; Exported entry 534. FsRtlOplockFsctrlEx

; =============== S U B R O U T I N E =======================================


