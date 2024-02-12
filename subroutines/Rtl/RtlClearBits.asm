RtlClearBits    proc near               ; CODE XREF: sub_14020A8C8+2AC↑p
                                        ; sub_14020C4F4+71D↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                test    r8d, r8d
                jz      short locret_14021E0A2
                push    rsi
                sub     rsp, 20h

loc_14021E05A:                          ; DATA XREF: .rdata:0000000140051618↑o
                                        ; .rdata:0000000140051628↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     ebx, edx
                and     edx, 7
                shr     rbx, 3
                add     rbx, [rcx+8]
                mov     esi, r8d
                mov     [rsp+28h+arg_8], rbp
                lea     rbp, cs:140000000h
                lea     ecx, [rdx+rsi]
                cmp     ecx, 8
                ja      short loc_14021E0A4
                movzx   eax, byte ptr [rsi+rbp+1DAE0h]
                mov     ecx, edx
                shl     al, cl
                not     al

loc_14021E091:                          ; CODE XREF: RtlClearBits+9C↓j
                and     [rbx], al

loc_14021E093:                          ; CODE XREF: RtlClearBits+92↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rsi

locret_14021E0A2:                       ; CODE XREF: RtlClearBits+3↑j
                retn
; ---------------------------------------------------------------------------
algn_14021E0A3:                         ; DATA XREF: .pdata:00000001400CA974↑o
                                        ; .pdata:00000001400CA980↑o
                align 4

loc_14021E0A4:                          ; CODE XREF: RtlClearBits+31↑j
                                        ; DATA XREF: .rdata:0000000140051654↑o ...
                test    edx, edx
                jz      short loc_14021E0B8
                movzx   eax, byte ptr [rdx+rbp+1DAE0h]
                lea     esi, [rcx-8]
                and     [rbx], al
                inc     rbx

loc_14021E0B8:                          ; CODE XREF: RtlClearBits+56↑j
                cmp     esi, 8
                jbe     short loc_14021E0E0

loc_14021E0BD:                          ; DATA XREF: .rdata:0000000140051654↑o
                                        ; .rdata:0000000140051664↑o ...
                mov     [rsp+28h+arg_10], rdi
                xor     edx, edx
                mov     edi, esi
                mov     rcx, rbx
                shr     rdi, 3
                mov     r8, rdi
                call    memset
                add     rbx, rdi
                mov     rdi, [rsp+28h+arg_10]
                and     esi, 7

loc_14021E0E0:                          ; CODE XREF: RtlClearBits+6B↑j
                                        ; DATA XREF: .pdata:00000001400CA998↑o ...
                test    esi, esi
                jz      short loc_14021E093
                movzx   eax, byte ptr [rsi+rbp+1A870h]
                jmp     short loc_14021E091
RtlClearBits    endp

; ---------------------------------------------------------------------------
algn_14021E0EE:                         ; DATA XREF: .pdata:00000001400CA9A4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021E100   proc near               ; CODE XREF: sub_1405CCFD8+13↓p
                                        ; sub_1405FAB94+5C5↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_8], edx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     r14d, [rcx+748h]
                mov     rdi, r8
                mov     ebp, edx
                mov     rsi, rcx
                test    r14d, r14d
                jnz     short loc_14021E139
                mov     [r8], r14d
                xor     al, al
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021E139:                          ; CODE XREF: sub_14021E100+23↑j
                movsxd  rdx, dword ptr [rcx+750h]
                test    edx, edx
                js      short loc_14021E16F
                cmp     edx, r14d
                jnb     short loc_14021E16F
                mov     rax, [rsi+758h]
                mov     rcx, rdx
                add     rcx, rcx
                cmp     [rax+rcx*8], ebp
                jnz     short loc_14021E16F
                mov     [r8], edx
                mov     al, 1
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021E16F:                          ; CODE XREF: sub_14021E100+42↑j
                                        ; sub_14021E100+47↑j ...
                mov     [rsp+48h+arg_0], rbx
                lea     rcx, [rsp+48h+arg_8]
                mov     rbx, [rsi+758h]
                mov     r8, r14
                mov     rdx, rbx
                call    sub_1403F0D30
                mov     rcx, rax
                sub     rcx, rbx
                mov     rbx, [rsp+48h+arg_0]
                shr     rcx, 4
                cmp     ecx, r14d
                jnb     short loc_14021E1BC

loc_14021E19F:                          ; DATA XREF: .pdata:00000001400CA9BC↑o
                                        ; .pdata:00000001400CA9C8↑o
                cmp     [rax], ebp
                jnz     short loc_14021E1BC
                mov     [rsi+750h], ecx
                mov     al, 1
                mov     [rdi], ecx
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021E1BC:                          ; CODE XREF: sub_14021E100+9D↑j
                                        ; sub_14021E100+A1↑j
                mov     [rdi], ecx
                xor     al, al
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021E100   endp

byte_14021E1CF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CA9C8↑o

; =============== S U B R O U T I N E =======================================


sub_14021E1D8   proc near               ; CODE XREF: sub_1405D6F44+27↓p
                                        ; sub_1405FAAE0+7C↓p ...
                sub     rsp, 28h
                call    ExFreePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021E1D8   endp

algn_14021E1E7:                         ; DATA XREF: .pdata:00000001400CA9D4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021E1F0   proc near               ; CODE XREF: sub_140202824+58↑p
                                        ; CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+2CC↑p ...
                sub     rsp, 28h
                add     word ptr [rcx+1E4h], 1
                jnz     short loc_14021E20A
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jnz     short loc_14021E210

loc_14021E20A:                          ; CODE XREF: sub_14021E1F0+C↑j
                                        ; sub_14021E1F0+28↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14021E210:                          ; CODE XREF: sub_14021E1F0+18↑j
                cmp     word ptr [rcx+1E6h], 0
                jnz     short loc_14021E20A
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14021E20A
sub_14021E1F0   endp

; ---------------------------------------------------------------------------
algn_14021E221:                         ; DATA XREF: .pdata:00000001400CA9E0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14021E230   proc near               ; CODE XREF: sub_140207C5C+F6↑p
                                        ; sub_14026DEF0+22B↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041C110 SIZE 00000281 BYTES

                mov     [rsp+arg_8], edx
                mov     r11, rsp
                push    rbp
                sub     rsp, 50h
                mov     rax, [rcx+20h]
                mov     ebp, edx
                cmp     rax, 1
                jz      loc_14021E3D2
                test    rax, rax
                jnz     loc_14021E3D9
                mov     rax, gs:188h

loc_14021E25E:                          ; DATA XREF: .rdata:0000000140051F60↑o
                                        ; .rdata:0000000140051F78↑o ...
                mov     [r11+20h], rbx
                mov     rbx, gs:188h
                mov     [r11-10h], rsi
                mov     esi, edx
                mov     [r11-18h], rdi
                mov     [r11-20h], r12
                mov     [r11-28h], r13
                mov     [r11-30h], r14
                mov     r14, [rbx+0B8h]
                mov     [r11-38h], r15
                lea     r15, [rax+258h]
                mov     eax, 2
                lea     r13, [rax-3]
                and     esi, eax
                jnz     loc_14021E3F5
                mov     r12, cr8
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041C110

loc_14021E2BA:                          ; CODE XREF: sub_14021E230+1FDEE2↓j
                                        ; sub_14021E230+1FDEEC↓j ...
                mov     rdi, gs:20h
                mov     [rsp+58h+arg_0], 0
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14041C151

loc_14021E2DB:                          ; CODE XREF: sub_14021E230+212↓j
                                        ; sub_14021E230+1FDF25↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_14021E415

loc_14021E2E8:                          ; CODE XREF: sub_14021E230+1C8↓j
                cmp     byte ptr [rbx+0C1h], 0
                jnz     loc_14021E3FD

loc_14021E2F5:                          ; CODE XREF: sub_14021E230+1E0↓j
                cmp     byte ptr [rbx+24Ah], 0
                jz      loc_14041C386
                test    byte ptr [rbx+0C0h], 1
                jnz     loc_14041C386
                lea     rdi, [rbx+98h]
                cmp     [rdi], rdi
                jnz     loc_14041C386
                lea     rax, [rbx+0A8h]
                cmp     [rax], rax
                jnz     loc_14041C386
                or      dword ptr [rbx+74h], 800h
                lea     rcx, [rbx+258h]
                mov     rdx, rdi
                cmp     r15, rcx
                jnz     loc_14041C315
                call    sub_14021EC30
                mov     qword ptr [rbx+278h], 0
                mov     byte ptr [rbx+24Ah], 0

loc_14021E360:                          ; CODE XREF: sub_14021E230+1FE0EE↓j
                test    esi, esi
                jnz     short loc_14021E36C
                mov     rcx, rbx
                call    sub_1403261B0

loc_14021E36C:                          ; CODE XREF: sub_14021E230+132↑j
                mov     rcx, [rbx+0B8h]
                mov     rdx, r14
                call    sub_14021E460
                and     dword ptr [rbx+74h], 0FFFFF7FFh
                test    esi, esi
                jnz     short loc_14021E39C
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041C323

loc_14021E394:                          ; CODE XREF: sub_14021E230+1FE0F5↓j
                                        ; sub_14021E230+1FE101↓j ...
                movzx   eax, r12b
                mov     cr8, rax

loc_14021E39C:                          ; CODE XREF: sub_14021E230+154↑j
                test    bpl, 1
                jnz     short loc_14021E3AA
                mov     rcx, r14
                call    sub_14021ECB0

loc_14021E3AA:                          ; CODE XREF: sub_14021E230+170↑j
                cmp     [rdi], rdi
                jnz     short loc_14021E3E5

loc_14021E3AF:                          ; CODE XREF: sub_14021E230+1C3↓j
                mov     r14, [rsp+58h+var_30]
                mov     r13, [rsp+58h+var_28]
                mov     r12, [rsp+58h+var_20]
                mov     rdi, [rsp+58h+var_18]
                mov     rsi, [rsp+58h+var_10]
                mov     rbx, [rsp+58h+arg_18]
                mov     r15, [rsp+58h+var_38]

loc_14021E3D2:                          ; CODE XREF: sub_14021E230+16↑j
                                        ; DATA XREF: .pdata:00000001400CA9F8↑o ...
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021E3D9:                          ; CODE XREF: sub_14021E230+1F↑j
                call    sub_14021E830
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021E3E5:                          ; CODE XREF: sub_14021E230+17D↑j
                                        ; DATA XREF: .pdata:00000001400CAA04↑o ...
                mov     cl, 1
                mov     byte ptr [rbx+0C1h], 1
                call    HalRequestSoftwareInterrupt
                jmp     short loc_14021E3AF
; ---------------------------------------------------------------------------

loc_14021E3F5:                          ; CODE XREF: sub_14021E230+6E↑j
                mov     r12b, 0Fh
                jmp     loc_14021E2E8
; ---------------------------------------------------------------------------

loc_14021E3FD:                          ; CODE XREF: sub_14021E230+BF↑j
                mov     ebp, 2

loc_14021E402:                          ; CODE XREF: sub_14021E230+1FE0DA↓j
                cmp     r12b, 1
                jb      loc_14041C1BA

loc_14021E40C:                          ; CODE XREF: sub_14021E230+1FDF92↓j
                                        ; sub_14021E230+1FE0E0↓j
                mov     ebp, [rsp+58h+arg_8]
                jmp     loc_14021E2F5
; ---------------------------------------------------------------------------

loc_14021E415:                          ; CODE XREF: sub_14021E230+B2↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14041C178

loc_14021E425:                          ; CODE XREF: sub_14021E230+206↓j
                                        ; sub_14021E230+1FDF4C↓j ...
                lea     rcx, [rsp+58h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_14021E425
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      loc_14021E2DB
                jmp     loc_14041C19F
sub_14021E230   endp

; ---------------------------------------------------------------------------
algn_14021E44D:                         ; DATA XREF: .pdata:00000001400CAA10↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021E460   proc near               ; CODE XREF: sub_14021E230+146↑p
                                        ; DATA XREF: .rdata:0000000140051FF8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041C392 SIZE 00000045 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     r8, gs:20h
                mov     rbp, rdx
                movzx   eax, byte ptr [r8+0D0h]
                movzx   esi, byte ptr [r8+0D1h]
                lea     rdi, ds:178h[rax*8]
                lock bts [rdi+rcx], rsi
                cmp     cs:byte_140E01840, 0
                mov     rbx, [rcx+28h]
                jz      short loc_14021E4D5
                mov     rax, rbx
                test    bl, 2
                jz      short loc_14021E4C0
                mov     rdx, 8000000000000000h
                or      rax, rdx

loc_14021E4C0:                          ; CODE XREF: sub_14021E460+51↑j
                mov     gs:9000h, rax
                movzx   ecx, byte ptr [rcx+390h]
                call    sub_14021EC00

loc_14021E4D5:                          ; CODE XREF: sub_14021E460+49↑j
                mov     eax, cs:dword_140CFC41C
                test    al, 1
                jnz     loc_14041C392
                mov     cr3, rbx

loc_14021E4E6:                          ; CODE XREF: sub_14021E460+1FDF3B↓j
                cmp     cs:byte_140CFC409, 0
                jz      loc_14041C3A0

loc_14021E4F3:                          ; CODE XREF: sub_14021E460+1FDF47↓j
                                        ; sub_14021E460+1FDF67↓j ...
                lock btr [rdi+rbp], rsi
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14021E460   endp

algn_14021E50F:                         ; DATA XREF: .rdata:0000000140051FF8↑o
                                        ; .pdata:00000001400CAA1C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021E520   proc near               ; CODE XREF: sub_14063A690+169↓p
                                        ; DATA XREF: .pdata:00000001400CAA28↑o

; FUNCTION CHUNK AT 00000001404284FE SIZE 00000035 BYTES

                xor     eax, eax
                mov     r8d, eax
                mov     r9d, eax
                cmp     edx, 10h
                jnz     short loc_14021E542
                mov     r8d, 1000000h
                lea     r9, [rcx+460h]

loc_14021E53A:                          ; CODE XREF: sub_14021E520+209FE9↓j
                                        ; sub_14021E520+209FFC↓j ...
                test    [r9], r8d
                setnz   al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021E542:                          ; CODE XREF: sub_14021E520+B↑j
                cmp     edx, 20h ; ' '
                jnz     loc_1404284FE
                mov     r8d, 2000000h
                lea     r9, [rcx+460h]
                test    [r9], r8d
                setnz   al
                retn
sub_14021E520   endp

; ---------------------------------------------------------------------------
                align 20h
byte_14021E560  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400CAA28↑o

; =============== S U B R O U T I N E =======================================


sub_14021E570   proc near               ; CODE XREF: sub_1402D3C90+2F3↓p
                                        ; KeStackAttachProcess+CF↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014041C3D8 SIZE 000001A6 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, [rsp+48h+arg_20]
                lea     r10, [rcx+98h]
                mov     rax, [r10+20h]
                mov     rbx, rcx
                mov     ebp, r9d
                movzx   r13d, r8b
                mov     rsi, rdx
                mov     [rdi+20h], rax
                movzx   eax, byte ptr [r10+28h]
                mov     [rdi+28h], al
                movzx   eax, byte ptr [r10+29h]
                mov     [rdi+29h], al
                movzx   eax, byte ptr [r10+2Ah]
                mov     [rdi+2Ah], al
                mov     rcx, [r10]
                cmp     rcx, r10
                jnz     loc_14021E7D1
                mov     [rdi+8], rdi
                mov     [rdi], rdi
                mov     byte ptr [rdi+29h], 0

loc_14021E5DC:                          ; CODE XREF: sub_14021E570+273↓j
                mov     rdx, [r10+10h]
                lea     rax, [r10+10h]
                cmp     rdx, rax
                lea     rax, [rdi+10h]
                jnz     loc_14021E7BA
                mov     [rax+8], rax
                mov     [rax], rax
                mov     byte ptr [rdi+2Ah], 0

loc_14021E5FC:                          ; CODE XREF: sub_14021E570+25C↓j
                lea     rax, [rbx+0A8h]
                mov     [r10+8], r10
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+258h]
                mov     [r10], r10
                mov     word ptr [rbx+0C0h], 0
                mov     byte ptr [rbx+0C2h], 0
                cmp     rdi, rax
                jnz     short loc_14021E634
                mov     byte ptr [rbx+24Ah], 1

loc_14021E634:                          ; CODE XREF: sub_14021E570+BB↑j
                xor     r15d, r15d
                mov     r10, 0FFFFFFFFFFFFFFFFh
                test    bpl, 1
                jnz     short loc_14021E659
                mov     eax, 8
                lock xadd [rsi+348h], eax
                test    al, 7
                jnz     loc_14021E751

loc_14021E659:                          ; CODE XREF: sub_14021E570+D2↑j
                                        ; sub_14021E570+245↓j
                or      dword ptr [rbx+74h], 800h
                mov     [rbx+0B8h], rsi
                and     ebp, 2
                jnz     short loc_14021E689
                mov     [rbx+40h], r15
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041C4A8

loc_14021E689:                          ; CODE XREF: sub_14021E570+FA↑j
                                        ; sub_14021E570+1FDF3C↓j ...
                mov     rcx, gs:20h
                mov     r12, [rdi+20h]
                movzx   eax, byte ptr [rcx+0D0h]
                movzx   r15d, byte ptr [rcx+0D1h]
                lea     r14, ds:178h[rax*8]
                lock bts [r14+rsi], r15
                cmp     cs:byte_140E01840, 0
                mov     rdi, [rsi+28h]
                jz      short loc_14021E6F2
                mov     rax, rdi
                test    dil, 2
                jz      short loc_14021E6D6
                mov     rcx, 8000000000000000h
                or      rax, rcx

loc_14021E6D6:                          ; CODE XREF: sub_14021E570+157↑j
                mov     gs:9000h, rax
                movzx   ecx, byte ptr [rsi+390h]
                call    sub_14021EC00
                mov     r10, 0FFFFFFFFFFFFFFFFh

loc_14021E6F2:                          ; CODE XREF: sub_14021E570+14E↑j
                mov     eax, cs:dword_140CFC41C
                test    al, 1
                jnz     loc_14041C4D2
                mov     cr3, rdi

loc_14021E703:                          ; CODE XREF: sub_14021E570+1FDF71↓j
                cmp     cs:byte_140CFC409, 0
                jz      loc_14041C4E6

loc_14021E710:                          ; CODE XREF: sub_14021E570+1FDF7D↓j
                                        ; sub_14021E570+1FDF9D↓j ...
                lock btr [r14+r12], r15
                and     dword ptr [rbx+74h], 0FFFFF7FFh
                test    ebp, ebp
                jnz     short loc_14021E733
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041C51D

loc_14021E72F:                          ; CODE XREF: sub_14021E570+1FDFAF↓j
                                        ; sub_14021E570+1FDFBB↓j ...
                mov     cr8, r13

loc_14021E733:                          ; CODE XREF: sub_14021E570+1AF↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
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

loc_14021E751:                          ; CODE XREF: sub_14021E570+E3↑j
                mov     rcx, rbx
                call    sub_1403261B0
                movzx   r8d, r13b
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140328BE0
                mov     rcx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041C3D8

loc_14021E783:                          ; CODE XREF: sub_14021E570+1FDE6A↓j
                                        ; sub_14021E570+1FDE73↓j ...
                mov     r14, gs:20h
                mov     [rsp+48h+arg_18], r15d
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_14041C41B

loc_14021E7A1:                          ; CODE XREF: sub_14021E570+1FDEB0↓j
                                        ; sub_14021E570+1FDEBF↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_14041C443
                mov     r10, 0FFFFFFFFFFFFFFFFh
                jmp     loc_14021E659
; ---------------------------------------------------------------------------

loc_14021E7BA:                          ; CODE XREF: sub_14021E570+7B↑j
                mov     rcx, [r10+18h]
                mov     [rax], rdx
                mov     [rdi+18h], rcx
                mov     [rdx+8], rax
                mov     [rcx], rax
                jmp     loc_14021E5FC
; ---------------------------------------------------------------------------

loc_14021E7D1:                          ; CODE XREF: sub_14021E570+5B↑j
                mov     rax, [r10+8]
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rcx+8], rdi
                mov     [rax], rdi
                jmp     loc_14021E5DC
sub_14021E570   endp

; ---------------------------------------------------------------------------
algn_14021E7E8:                         ; DATA XREF: .rdata:00000001400520B4↑o
                                        ; .pdata:00000001400CAA34↑o
                align 10h
; Exported entry 1354. KeUnstackDetachProcess

; =============== S U B R O U T I N E =======================================


