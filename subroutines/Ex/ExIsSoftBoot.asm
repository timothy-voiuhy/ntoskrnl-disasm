ExIsSoftBoot    proc near               ; CODE XREF: sub_1406716E0:loc_140671893↓p
                                        ; sub_140799DE8+7F↓p ...
                mov     al, byte ptr cs:qword_140C19598
                shr     al, 2
                and     al, 1
                retn
ExIsSoftBoot    endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14039B45D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCFA4↑o

; =============== S U B R O U T I N E =======================================


sub_14039B464   proc near               ; CODE XREF: sub_140778068+3D↓p
                                        ; sub_1407811A4+3B↓p
                                        ; DATA XREF: ...
                shr     cl, 1
                not     cl
                and     cl, 1
                mov     al, cl
                retn
sub_14039B464   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14039B46F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCFB0↑o

; =============== S U B R O U T I N E =======================================


sub_14039B478   proc near               ; CODE XREF: sub_1405C3F94+23↓p
                                        ; sub_1407825AC+156↓p ...

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 000000014049986C SIZE 00000020 BYTES

                sub     rsp, 38h
                test    dl, dl
                mov     [rsp+38h+arg_8], 1
                lea     rdx, aFirmwaremodifi ; "FirmwareModified"
                lea     r8, aDescription ; "Description"
                jnz     loc_14049986C
                call    sub_140780F74

loc_14039B49F:                          ; CODE XREF: sub_14039B478+FE40F↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B478   endp

byte_14039B4A5  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400978CC↑o
                                        ; .pdata:00000001400DCFBC↑o

; =============== S U B R O U T I N E =======================================


sub_14039B4AC   proc near               ; CODE XREF: sub_140780A90+23↓p
                                        ; sub_1407825AC+12C↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049988C SIZE 00000017 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                lea     rax, [r11+10h]
                mov     [r11-10h], rax
                lea     r8, aDescription ; "Description"
                lea     rax, [r11+18h]
                mov     [r11+18h], rdi
                lea     rdx, aFirmwaremodifi ; "FirmwareModified"
                mov     [rsp+38h+arg_8], edi
                lea     r9d, [rdi+4]
                mov     [r11-18h], rax
                call    sub_140782B88
                test    eax, eax
                jns     loc_14049988C

loc_14039B4F1:                          ; CODE XREF: sub_14039B4AC+FE3F2↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     al, dil
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B4AC   endp

byte_14039B500  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140097A64↑o
                                        ; .pdata:00000001400DCFC8↑o

; =============== S U B R O U T I N E =======================================


sub_14039B508   proc near               ; CODE XREF: sub_1407822B8+1F0↓p
                                        ; DATA XREF: .pdata:00000001400DCFD4↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_28]
                xor     r8d, r8d
                mov     [rsp+38h+var_10], rax
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], eax
                call    ZwEnumerateKey
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B508   endp

byte_14039B52C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCFD4↑o

; =============== S U B R O U T I N E =======================================


sub_14039B534   proc near               ; CODE XREF: sub_140782B88+C5↓p
                                        ; sub_140782B88+118↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_28]
                mov     r8d, 2
                mov     [rsp+38h+var_10], rax
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], eax
                call    ZwQueryValueKey
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B534   endp

byte_14039B55B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCFE0↑o

; =============== S U B R O U T I N E =======================================


sub_14039B564   proc near               ; CODE XREF: sub_1407829A0+161↓p
                                        ; sub_140783194+B8↓p ...
                sub     rsp, 28h
                call    ZwOpenKey
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B564   endp

byte_14039B573  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCFEC↑o

; =============== S U B R O U T I N E =======================================


sub_14039B57C   proc near               ; CODE XREF: sub_140778068+12↓p
                                        ; sub_140779020+D↓p ...
                and     cl, 1
                mov     al, cl
                retn
sub_14039B57C   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14039B583  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCFF8↑o

; =============== S U B R O U T I N E =======================================


sub_14039B58C   proc near               ; CODE XREF: sub_1407829A0+146↓p
                                        ; sub_140783194+118↓p ...
                sub     rsp, 28h
                mov     edx, 4
                call    ZwSetSecurityObject
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B58C   endp

byte_14039B5A0  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD004↑o

; =============== S U B R O U T I N E =======================================


sub_14039B5A8   proc near               ; CODE XREF: sub_1407822B8+A1↓p
                                        ; sub_140783590+51↓p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                call    ZwQueryKey
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B5A8   endp

algn_14039B5C1:                         ; DATA XREF: .pdata:00000001400DD010↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14039B5C8   proc near               ; CODE XREF: sub_1407829A0+12A↓p
                                        ; DATA XREF: .pdata:00000001400DD01C↑o

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_30]
                xor     r9d, r9d
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], eax
                and     [rsp+48h+var_28], 0
                call    ZwCreateKey
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B5C8   endp

byte_14039B5F5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD01C↑o

; =============== S U B R O U T I N E =======================================


sub_14039B5FC   proc near               ; CODE XREF: sub_1407837F4+86↓p
                                        ; DATA XREF: .pdata:00000001400DD028↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                sub     rsp, 38h
                mov     eax, [rsp+38h+arg_28]
                xor     r8d, r8d
                mov     [rsp+38h+var_10], eax
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                call    ZwSetValueKey
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B5FC   endp

byte_14039B620  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD028↑o

; =============== S U B R O U T I N E =======================================


sub_14039B628   proc near               ; CODE XREF: sub_140780F74+65↓p
                                        ; DATA XREF: .pdata:00000001400DD034↑o
                sub     rsp, 28h
                call    ZwDeleteValueKey
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039B628   endp

algn_14039B637:                         ; DATA XREF: .pdata:00000001400DD034↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039B640   proc near               ; CODE XREF: sub_140362780+A8↑p
                                        ; sub_1408D9114+39↓p
                                        ; DATA XREF: ...

arg_10          = dword ptr  18h
arg_14          = dword ptr  1Ch

                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                lea     rdx, [rsp+28h+arg_10]
                call    sub_14039B678
                cmp     eax, 1
                jnz     short loc_14039B66A
                mov     eax, [rsp+28h+arg_10]
                mov     [rbx], rax
                mov     eax, [rsp+28h+arg_14]

loc_14039B663:                          ; CODE XREF: sub_14039B640+30↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039B66A:                          ; CODE XREF: sub_14039B640+16↑j
                and     qword ptr [rbx], 0
                xor     eax, eax
                jmp     short loc_14039B663
sub_14039B640   endp

; ---------------------------------------------------------------------------
algn_14039B672:                         ; DATA XREF: .pdata:00000001400DD040↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14039B678   proc near               ; CODE XREF: sub_14039B640+E↑p
                                        ; DATA XREF: .rdata:000000014009BDF8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404A15C4 SIZE 0000016E BYTES

                mov     [rsp+arg_8], rbx
                mov     byte ptr [rsp+arg_18], r9b
                mov     [rsp+arg_10], r8d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rax, [rcx]
                mov     r15d, 0
                mov     rcx, [rcx+8]
                mov     r13, rax
                and     r13d, 7
                mov     ebp, 0
                mov     ebx, ebp
                mov     r10, rdx
                setnz   r15b
                mov     [rsp+38h+arg_18], ebx
                shr     rax, 3
                mov     r8d, ebx
                mov     r9d, ebx
                add     r15, rax
                jz      loc_14039B76A
                xor     eax, eax
                lea     rdx, [r15-1]
                xor     r12d, r12d
                lea     r14, cs:140000000h

loc_14039B6DB:                          ; CODE XREF: sub_14039B678+EC↓j
                mov     r11b, [rcx]
                inc     rcx
                mov     [rsp+38h+arg_0], rcx
                cmp     rax, rdx
                jnz     short loc_14039B6F4
                test    r13, r13
                jnz     loc_1404A15C4

loc_14039B6F4:                          ; CODE XREF: sub_14039B678+71↑j
                                        ; sub_14039B678+105F54↓j
                test    r11b, r11b
                jz      loc_1404A16F6
                movzx   edi, r11b
                movzx   esi, byte ptr [rdi+r14+1DAF0h]
                add     r9d, esi
                jnz     loc_1404A15D1

loc_14039B713:                          ; CODE XREF: sub_14039B678+105F68↓j
                                        ; sub_14039B678+105FB9↓j
                movzx   r9d, byte ptr [rdi+r14+1DBF0h]
                lea     rax, qword_14001A878
                sub     rax, r9
                mov     ebp, r12d
                sub     ebp, r9d
                add     ebp, 8
                mov     [rsp+38h+arg_10], ebp
                mov     cl, [rax]
                mov     al, [rsi+r14+1DAE0h]
                or      al, cl
                or      r11b, al
                cmp     r11b, 0FFh
                jnz     loc_1404A1636

loc_14039B74C:                          ; CODE XREF: sub_14039B678+106079↓j
                mov     rcx, [rsp+38h+arg_0]
                lea     rdx, [r15-1]

loc_14039B755:                          ; CODE XREF: sub_14039B678+106082↓j
                inc     ebx
                add     r12d, 8
                mov     eax, ebx
                mov     [rsp+38h+arg_18], ebx
                cmp     rax, r15
                jb      loc_14039B6DB

loc_14039B76A:                          ; CODE XREF: sub_14039B678+4D↑j
                test    r9d, r9d
                jz      short loc_14039B7AC
                cmp     r8d, 1
                jnb     loc_1404A16FF

loc_14039B779:                          ; CODE XREF: sub_14039B678+106096↓j
                cmp     r8d, 1
                lea     eax, [r8+1]
                lea     rcx, [r10+8]
                cmovnb  eax, r8d
                mov     r8d, eax
                lea     edx, [rax-2]
                movsxd  r11, edx
                lea     rcx, [rcx+r11*8]

loc_14039B796:                          ; CODE XREF: sub_14039B678+1060B5↓j
                test    r11, r11
                jns     loc_1404A1713

loc_14039B79F:                          ; CODE XREF: sub_14039B678+10609F↓j
                movsxd  rcx, edx
                mov     [r10+rcx*8+0Ch], r9d
                mov     [r10+rcx*8+8], ebp

loc_14039B7AC:                          ; CODE XREF: sub_14039B678+F5↑j
                                        ; sub_14039B678+106090↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, r8d
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
sub_14039B678   endp

algn_14039B7C1:                         ; DATA XREF: .rdata:000000014009BDF8↑o
                                        ; .pdata:00000001400DD04C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14039B7D0   proc near               ; DATA XREF: .rdata:000000014009BE50↑o
                                        ; .rdata:000000014009BE60↑o ...

var_38          = dword ptr -38h
var_30          = dword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15, [rcx+0A8h]
                mov     r12d, r8d
                mov     r14, [rcx+18h]
                mov     rsi, rdx
                mov     rbx, [rdx]
                mov     rbp, rcx
                mov     rax, 0FFFFF6FB7DBED000h
                cmp     rdx, rax
                jb      loc_14039B896
                mov     rax, 0FFFFF6FB7DBED7F8h
                cmp     rdx, rax
                ja      short loc_14039B896
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14039B896
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14039B896
                test    bl, 1
                jz      short loc_14039B896
                test    bl, 20h
                jz      short loc_14039B84E
                test    bl, 42h
                jnz     short loc_14039B896

loc_14039B84E:                          ; CODE XREF: sub_14039B7D0+77↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14039B896
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14039B896
                or      rbx, 42h

loc_14039B896:                          ; CODE XREF: sub_14039B7D0+35↑j
                                        ; sub_14039B7D0+48↑j ...
                mov     [rsp+58h+arg_8], rdi
                mov     [rsp+58h+arg_0], rbx
                test    bl, 20h
                jz      loc_14039BAFD
                lea     rcx, [rsp+58h+arg_0]
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14039B930
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14039B930
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14039B930
                test    bl, 1
                jz      short loc_14039B930
                test    bl, 42h
                jnz     short loc_14039B930
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14039B930
                lea     rax, [rsp+58h+arg_0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14039B930
                or      rbx, 42h

loc_14039B930:                          ; CODE XREF: sub_14039B7D0+E5↑j
                                        ; sub_14039B7D0+F1↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                lea     rdi, [rbx+rbx*2]
                shl     rdi, 4
                mov     rax, 0FFFFFA8000000000h
                add     rdi, rax
                test    r12d, r12d
                jz      short loc_14039B989
                mov     rax, [rdi+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, 1
                jnz     loc_14039BAFD
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_14034381C
                test    eax, eax
                jnz     loc_14039BAFD

loc_14039B989:                          ; CODE XREF: sub_14039B7D0+189↑j
                mov     rcx, 1000000000h
                test    [rdi+28h], rcx
                jnz     short loc_14039B9BC
                mov     r8, [rdi+8]
                test    r8, r8
                js      short loc_14039B9BC
                jz      short loc_14039B9BC
                mov     rax, 8000000000000000h
                mov     rdx, rsi
                or      r8, rax
                mov     rcx, r14
                call    sub_14036B290

loc_14039B9BC:                          ; CODE XREF: sub_14039B7D0+1C7↑j
                                        ; sub_14039B7D0+1D0↑j ...
                mov     rbx, rsi
                shl     rbx, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rcx, [r15+10h]
                shl     rax, 19h
                sub     rbx, rax
                sar     rbx, 10h
                test    rcx, rcx
                jz      short loc_14039BA0D
                mov     rax, 7FFFFFFEFFFFh
                cmp     rbx, rax
                ja      short loc_14039BA0D
                mov     rdx, rbx
                call    sub_14053B5D0
                test    eax, eax
                jz      loc_14039BAFD
                mov     rcx, rbp
                call    sub_14039E1F0
                jmp     loc_14039BAFF
; ---------------------------------------------------------------------------

loc_14039BA0D:                          ; CODE XREF: sub_14039B7D0+20F↑j
                                        ; sub_14039B7D0+21E↑j
                mov     rdx, rbx
                call    sub_14029EF30
                movzx   edx, al
                cmp     edx, 7
                jnz     short loc_14039BA31
                mov     rcx, rdi
                call    sub_14022FC60
                cmp     eax, cs:dword_140C4E6AC
                jnb     short loc_14039BA31
                xor     ebp, ebp
                jmp     short loc_14039BA4F
; ---------------------------------------------------------------------------

loc_14039BA31:                          ; CODE XREF: sub_14039B7D0+24B↑j
                                        ; sub_14039B7D0+25B↑j
                lea     eax, [rdx-1]
                mov     ebp, 1
                cmp     eax, 5
                ja      short loc_14039BA4F
                xor     r9d, r9d
                mov     r8d, ebp
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_14027FDE0

loc_14039BA4F:                          ; CODE XREF: sub_14039B7D0+25F↑j
                                        ; sub_14039B7D0+26C↑j
                mov     rbx, [r15+8]
                mov     r8, rsi
                mov     eax, [r15]
                mov     r9, rbx
                mov     [rsp+58h+var_30], 0
                mov     rdx, rdi
                mov     rcx, r14
                mov     [rsp+58h+var_38], eax
                call    sub_14028C600
                test    eax, eax
                jz      loc_14039BAFD
                cmp     ebp, 1
                jnz     short loc_14039BA98
                cmp     dword ptr [r15], 0
                jz      short loc_14039BA98
                test    rbx, rbx
                jnz     short loc_14039BA9D
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_14028CE50
                jmp     short loc_14039BAFD
; ---------------------------------------------------------------------------

loc_14039BA98:                          ; CODE XREF: sub_14039B7D0+2AE↑j
                                        ; sub_14039B7D0+2B4↑j
                test    rbx, rbx
                jz      short loc_14039BAFD

loc_14039BA9D:                          ; CODE XREF: sub_14039B7D0+2B9↑j
                test    byte ptr [rbx+4], 2
                mov     rdx, cs:qword_140C4DE10
                jnz     short loc_14039BAD2
                cmp     dword ptr [rbx], 1
                jnz     short loc_14039BAD2
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                cmp     qword ptr [rcx+8F0h], 0
                cmovnz  rdx, rax

loc_14039BAD2:                          ; CODE XREF: sub_14039B7D0+2D8↑j
                                        ; sub_14039B7D0+2DD↑j
                mov     eax, [rbx+8]
                cmp     [rbx+0Ch], eax
                jnb     short loc_14039BAE6
                cmp     byte ptr [rbx+5], 0
                jnz     short loc_14039BAE6
                cmp     [rbx+10h], rdx
                jbe     short loc_14039BAFD

loc_14039BAE6:                          ; CODE XREF: sub_14039B7D0+308↑j
                                        ; sub_14039B7D0+30E↑j
                cmp     rdx, 400h
                jb      short loc_14039BAFD
                cmp     byte ptr [rbx+5], 0
                jnz     short loc_14039BAFD
                mov     rcx, rbx
                call    sub_14028EDB0

loc_14039BAFD:                          ; CODE XREF: sub_14039B7D0+D3↑j
                                        ; sub_14039B7D0+1A0↑j ...
                xor     eax, eax

loc_14039BAFF:                          ; CODE XREF: sub_14039B7D0+238↑j
                mov     rdi, [rsp+58h+arg_8]
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
algn_14039BB16:                         ; DATA XREF: .pdata:00000001400DD064↑o
                                        ; .pdata:00000001400DD070↑o ...
                align 20h
sub_14039B7D0   endp


; =============== S U B R O U T I N E =======================================


sub_14039BB20   proc near               ; CODE XREF: sub_1403D0050+6↓p
                                        ; sub_1404FF950+22↓p ...

var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404A1756 SIZE 0000005D BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_18], rax
                xor     eax, eax
                xorps   xmm0, xmm0
                cmp     cs:byte_140C504D0, al
                movups  [rsp+78h+var_40], xmm0
                mov     [rsp+78h+var_20], rax
                movups  [rsp+78h+var_30], xmm0
                jnz     loc_14039BC17

loc_14039BB55:                          ; CODE XREF: sub_14039BB20+F9↓j
                cmp     cl, cs:byte_140C50A25
                jz      loc_14039BC03
                test    cl, cl
                jnz     loc_14039BC37
                test    rdx, rdx
                jnz     loc_1404A177F
                cmp     cs:qword_140C50A08, rax
                jz      loc_14039BCB7

loc_14039BB7F:                          ; CODE XREF: sub_14039BB20+105C66↓j
                call    sub_1409F3524
                lea     rcx, qword_140C112C8
                mov     cs:byte_140C505C5, 0
                mov     cs:byte_140C505C4, 0
                call    ExWaitForRundownProtectionRelease
                lea     rcx, qword_140C112C8
                call    ExRundownCompleted
                call    sub_1409F5ED0
                mov     ebx, eax
                test    eax, eax
                js      loc_1404A178B
                mov     rcx, cs:qword_140C50A00
                mov     cs:byte_140C50A25, 0
                mov     cs:byte_140C50A10, 0
                test    rcx, rcx
                jz      short loc_14039BBE0
                call    sub_1409F5F5C
                and     cs:qword_140C50A00, 0

loc_14039BBE0:                          ; CODE XREF: sub_14039BB20+B1↑j
                                        ; sub_14039BB20+105C7C↓j
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    Dns_LibHeapReset
                call    sub_1409F33F0
                mov     rax, cs:qword_140C50A18
                test    rax, rax
                jnz     loc_1404A17A1

loc_14039BC01:                          ; CODE XREF: sub_14039BB20+192↓j
                                        ; sub_14039BB20+105C8E↓j
                mov     eax, ebx

loc_14039BC03:                          ; CODE XREF: sub_14039BB20+3B↑j
                                        ; sub_14039BB20+115↓j ...
                mov     rcx, [rsp+78h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 70h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039BC17:                          ; CODE XREF: sub_14039BB20+2F↑j
                test    cl, cl
                jnz     loc_14039BB55
                call    sub_14099813C
                and     cs:qword_140C50A18, 0
                xor     eax, eax
                mov     cs:byte_140C50A25, 0
                jmp     short loc_14039BC03
; ---------------------------------------------------------------------------

loc_14039BC37:                          ; CODE XREF: sub_14039BB20+43↑j
                mov     rax, cs:qword_140C50A08
                test    rax, rax
                jz      loc_1404A1756
                and     [rsp+78h+var_48], 0
                lea     r8, [rsp+78h+var_48]
                lea     rdx, [rsp+78h+var_40]
                xor     ecx, ecx
                call    sub_1404079D0
                test    eax, eax
                js      short loc_14039BC03
                mov     rax, [rsp+78h+var_48]
                mov     cs:qword_140C50A18, rax
                call    sub_1409F5730
                xor     edx, edx
                lea     rcx, [rsp+78h+var_40]
                call    sub_14038D69C
                movzx   ecx, cs:byte_140C50A25
                mov     ebx, eax
                mov     eax, 1
                test    ebx, ebx
                cmovns  ecx, eax
                mov     cs:byte_140C50A25, cl
                call    sub_1409F3810
                mov     cs:qword_140C50A00, rax
                test    rax, rax
                jnz     loc_1404A1760

loc_14039BCAD:                          ; CODE XREF: sub_14039BB20+105C5A↓j
                call    sub_14039CA00
                jmp     loc_14039BC01
; ---------------------------------------------------------------------------

loc_14039BCB7:                          ; CODE XREF: sub_14039BB20+59↑j
                mov     eax, 0C00000F0h
                jmp     loc_14039BC03
; } // starts at 14039BB20
sub_14039BB20   endp

; ---------------------------------------------------------------------------
algn_14039BCC1:                         ; DATA XREF: .rdata:000000014009BE84↑o
                                        ; .pdata:00000001400DD07C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14039BCC8   proc near               ; CODE XREF: sub_1409F356C+75↓p
                                        ; sub_1409F3608+C7↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     r9, rcx
                test    rcx, rcx
                jz      short loc_14039BD1E
                mov     eax, [rcx+40h]
                test    al, 1
                jz      short loc_14039BD1E
                mov     rax, [rcx+18h]
                mov     r10d, 70h ; 'p'
                test    rax, rax
                jz      short loc_14039BCFB
                mov     ecx, [rax]
                mov     r8d, [rax+8]
                mov     edx, [rax+4]
                call    sub_1409F36F8
                add     r10d, eax

loc_14039BCFB:                          ; CODE XREF: sub_14039BCC8+20↑j
                mov     rax, [r9+20h]
                test    rax, rax
                jz      short loc_14039BD15
                mov     ecx, [rax]
                mov     r8d, [rax+8]
                mov     edx, [rax+4]
                call    sub_1409F36F8
                add     r10d, eax

loc_14039BD15:                          ; CODE XREF: sub_14039BCC8+3A↑j
                mov     eax, r10d

loc_14039BD18:                          ; CODE XREF: sub_14039BCC8+58↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039BD1E:                          ; CODE XREF: sub_14039BCC8+A↑j
                                        ; sub_14039BCC8+11↑j
                xor     eax, eax
                jmp     short loc_14039BD18
sub_14039BCC8   endp

; ---------------------------------------------------------------------------
algn_14039BD22:                         ; DATA XREF: .pdata:00000001400DD088↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14039BD28   proc near               ; CODE XREF: sub_1409F3608+A5↓p
                                        ; sub_1409F36F8+4↓p ...
                imul    ecx, edx
                imul    ecx, r8d
                lea     eax, [rcx+7]
                shr     eax, 3
                add     eax, 48h ; 'H'
                retn
sub_14039BD28   endp

; ---------------------------------------------------------------------------
                align 2
algn_14039BD3A:                         ; DATA XREF: .pdata:00000001400DD094↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039BD40   proc near               ; CODE XREF: sub_1403AD908+A↓p
                                        ; sub_14039C344+10590F↓p ...

; FUNCTION CHUNK AT 00000001404A17B4 SIZE 00000007 BYTES

                push    rbx
                sub     rsp, 20h
                lea     rax, [rcx-18h]
                mov     edx, [rax]
                cmp     edx, 4B434742h
                jz      short loc_14039BDC1
                cmp     edx, 4B424742h
                jnz     short loc_14039BD9F
                lea     rdx, [rax-10h]
                mov     r8, [rdx]
                cmp     [r8+8], rdx
                jnz     FatalListEntryError_44
                mov     r9, [rdx+8]
                cmp     [r9], rdx
                jnz     FatalListEntryError_44
                mov     [r9], r8
                mov     edx, 30h ; '0'
                mov     [r8+8], r9

loc_14039BD86:                          ; CODE XREF: sub_14039BD40+64↓j
                sub     rcx, rdx
                cmp     qword ptr [rax+8], 1000h
                jnb     short loc_14039BDA6

loc_14039BD93:                          ; CODE XREF: sub_14039BD40+7F↓j
                call    sub_14023C050

loc_14039BD98:                          ; CODE XREF: sub_14039BD40+A4↓j
                                        ; sub_14039BD40+AC↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039BD9F:                          ; CODE XREF: sub_14039BD40+1A↑j
                mov     edx, 20h ; ' '
                jmp     short loc_14039BD86
; ---------------------------------------------------------------------------

loc_14039BDA6:                          ; CODE XREF: sub_14039BD40+51↑j
                mov     rbx, [rax+10h]
                mov     rdx, rbx
                call    MmUnmapLockedPages
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402DABA8
                mov     rcx, rbx
                jmp     short loc_14039BD93
; ---------------------------------------------------------------------------

loc_14039BDC1:                          ; CODE XREF: sub_14039BD40+12↑j
                mov     r8d, [rax+8]
                lea     rcx, xmmword_140C505F8
                mov     ebx, eax
                sub     ebx, dword ptr cs:qword_140C505E8
                sub     ebx, 8
                mov     edx, ebx
                call    RtlClearBits
                cmp     ebx, cs:dword_140C505F0
                jnb     short loc_14039BD98
                mov     cs:dword_140C505F0, ebx
                jmp     short loc_14039BD98
sub_14039BD40   endp

; ---------------------------------------------------------------------------
byte_14039BDEE  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009BFF8↑o
                                        ; .pdata:00000001400DD0A0↑o

; =============== S U B R O U T I N E =======================================


sub_14039BDF4   proc near               ; CODE XREF: sub_1409F448C+D↓p
                                        ; DATA XREF: .pdata:00000001400DD0AC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     ebx, ecx
                mov     rax, cr8
                test    al, al
                jnz     short loc_14039BE43
                test    rdx, rdx
                jz      short loc_14039BE51
                cmp     ecx, 4
                jge     short loc_14039BE51
                call    sub_14039C2D8
                mov     eax, cs:dword_140C13390
                test    al, 1
                jz      short loc_14039BE4A
                mov     rdx, rdi
                mov     ecx, ebx
                call    sub_14039C344
                mov     ebx, eax

loc_14039BE30:                          ; CODE XREF: sub_14039BDF4+5B↓j
                call    sub_14039C288
                mov     eax, ebx

loc_14039BE37:                          ; CODE XREF: sub_14039BDF4+54↓j
                                        ; sub_14039BDF4+62↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039BE43:                          ; CODE XREF: sub_14039BDF4+15↑j
                mov     eax, 0C0000001h
                jmp     short loc_14039BE37
; ---------------------------------------------------------------------------

loc_14039BE4A:                          ; CODE XREF: sub_14039BDF4+2E↑j
                mov     ebx, 0C0000001h
                jmp     short loc_14039BE30
; ---------------------------------------------------------------------------

loc_14039BE51:                          ; CODE XREF: sub_14039BDF4+1A↑j
                                        ; sub_14039BDF4+1F↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14039BE37
sub_14039BDF4   endp

; ---------------------------------------------------------------------------
algn_14039BE58:                         ; DATA XREF: .pdata:00000001400DD0AC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039BE60   proc near               ; CODE XREF: sub_1409F3718+25↓p
                                        ; sub_1409F47D8+1D↓p ...
                sub     rsp, 28h
                call    KeQueryPerformanceCounter
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039BE60   endp

byte_14039BE6F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD0B8↑o

; =============== S U B R O U T I N E =======================================


sub_14039BE78   proc near               ; CODE XREF: sub_1403ACC88+DA↓p
                                        ; sub_1405C46D4+FF↓p ...

var_88          = qword ptr -88h
var_78          = byte ptr -78h
var_28          = qword ptr -28h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A17BC SIZE 00000064 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_28], rax
                mov     rbp, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_78]
                lea     r8d, [rdx+48h]
                call    memset
                xor     edi, edi
                mov     [rsp+0A8h+var_88], rdi
                call    sub_14039C260
                xor     esi, esi
                cmp     [rbx+8], eax
                jnz     loc_1404A17BC

loc_14039BEC6:                          ; CODE XREF: sub_14039BE78+105987↓j
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_14039BF08
                mov     ebx, eax
                test    rsi, rsi
                jnz     loc_1404A1804

loc_14039BEDC:                          ; CODE XREF: sub_14039BE78+105994↓j
                                        ; sub_14039BE78+1059A3↓j
                mov     eax, ebx

loc_14039BEDE:                          ; CODE XREF: sub_14039BE78+105976↓j
                mov     rcx, [rsp+0A8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_10]
                add     rsp, 90h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14039BE78
sub_14039BE78   endp

algn_14039BF02:                         ; DATA XREF: .rdata:000000014009C0AC↑o
                                        ; .pdata:00000001400DD0C4↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=70h

sub_14039BF08   proc near               ; CODE XREF: sub_14039BE78+54↑p
                                        ; DATA XREF: .rdata:000000014009C0E4↑o ...

var_150         = qword ptr -150h
var_148         = byte ptr -148h
var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_118         = dword ptr -118h
var_110         = dword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = byte ptr -90h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A1820 SIZE 000001C1 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-40h]
                sub     rsp, 140h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+70h+var_40], rax
                xor     eax, eax
                mov     [rbp+70h+var_E0], rdx
                mov     r14, rdx
                mov     [rbp+70h+var_F0], rcx
                mov     rdi, rcx
                mov     [rbp+70h+var_A0], rax
                xor     edx, edx
                mov     [rbp+70h+var_B8], rax
                lea     r8d, [rax+48h]
                mov     [rsp+170h+var_130], rax
                lea     rcx, [rbp+70h+var_90]
                mov     [rsp+170h+var_128], eax
                call    memset
                xor     r13d, r13d
                xor     eax, eax
                mov     [rsp+170h+var_100], rax
                mov     [rsp+170h+var_108], r13
                mov     [rsp+170h+var_140], r13
                mov     [rsp+170h+var_138], r13d
                call    sub_14039C260
                mov     r15d, eax
                mov     eax, dword ptr cs:xmmword_140C13320+8
                mov     dword ptr [rsp+170h+var_120], eax
                mov     eax, dword ptr cs:xmmword_140C13320+4
                mov     dword ptr [rsp+170h+var_120+4], eax
                mov     eax, dword ptr cs:xmmword_140C13320+0Ch
                mov     [rsp+170h+var_118], eax
                test    rdi, rdi
                jz      loc_1404A19D7
                cmp     [rdi+4], r13d
                jz      loc_1404A19D7
                cmp     [rdi], r13d
                jz      loc_1404A19D7
                cmp     [rdi+8], r15d
                jnz     loc_1404A19D7
                test    r14, r14
                jz      loc_1404A19D7
                mov     eax, cs:dword_140C13390
                test    al, 2
                jz      loc_1404A1820
                lea     rax, [rsp+170h+var_108]
                mov     rdx, r14
                lea     ebx, [r13+1]
                mov     rcx, rdi
                mov     [rsp+170h+var_148], bl
                lea     r9, [rsp+170h+var_100]
                lea     r8, [rsp+170h+var_120]
                mov     [rsp+170h+var_150], rax
                call    sub_14039C134
                test    eax, eax
                js      loc_14039C0F4
                cmp     byte ptr cs:xmmword_140C13320, r13b
                jz      loc_1404A182A
                mov     esi, [r14+4]
                movzx   r9d, byte ptr cs:xmmword_140C13320+2
                mov     r11d, [rsp+170h+var_118]
                mov     ecx, r9d
                mov     r10d, dword ptr [rsp+170h+var_100]
                mov     rax, [rdi+18h]
                imul    esi, r11d
                shr     r15d, 3
                imul    r10d, r15d
                mov     [rbp+70h+var_A8], rax
                add     esi, [r14]
                imul    esi, r15d
                mov     [rsp+170h+var_110], r10d
                add     rsi, cs:qword_140C13340
                test    r9b, r9b
                jnz     loc_1404A18E3

loc_14039C063:                          ; CODE XREF: sub_14039BF08+1059E1↓j
                mov     r8d, [rdi+4]
                mov     eax, r8d
                mov     ebx, [rdi]
                mov     ecx, ebx

loc_14039C06E:                          ; CODE XREF: sub_14039BF08+1059FF↓j
                imul    eax, r15d
                mov     edx, r11d
                imul    edx, r15d
                mov     dword ptr [rsp+170h+var_130+4], ebx
                mov     dword ptr [rsp+170h+var_130], eax
                mov     [rsp+170h+var_128], edx
                test    r9b, r9b
                jnz     loc_1404A190C
                test    ebx, ebx
                jz      short loc_14039C0CA
                mov     rdi, [rbp+70h+var_A8]
                mov     r12d, eax
                mov     eax, edx
                mov     [rsp+170h+var_140], rax
                mov     r13d, r10d
                mov     r14d, edx

loc_14039C0A6:                          ; CODE XREF: sub_14039BF08+1B5↓j
                mov     r8, r12
                mov     rdx, rdi
                mov     rcx, rsi
                call    memmove
                add     rdi, r13
                add     rsi, r14
                add     ebx, 0FFFFFFFFh
                jnz     short loc_14039C0A6
                mov     rdi, [rbp+70h+var_F0]
                xor     r13d, r13d
                mov     r14, [rbp+70h+var_E0]

loc_14039C0CA:                          ; CODE XREF: sub_14039BF08+188↑j
                                        ; sub_14039BF08+105A15↓j ...
                cmp     cs:qword_140C134F0, r13
                jnz     short loc_14039C11C

loc_14039C0D3:                          ; CODE XREF: sub_14039BF08+224↓j
                                        ; sub_14039BF08+1059D6↓j
                mov     ebx, r13d

loc_14039C0D6:                          ; CODE XREF: sub_14039BF08+1059D0↓j
                                        ; sub_14039BF08+1059F0↓j ...
                mov     eax, dword ptr [rsp+170h+var_100+4]
                mov     [rdi], eax
                mov     eax, dword ptr [rsp+170h+var_100]
                mov     [rdi+4], eax
                mov     eax, dword ptr [rsp+170h+var_108]
                mov     [r14], eax
                mov     eax, dword ptr [rsp+170h+var_108+4]
                mov     [r14+4], eax
                mov     eax, ebx

loc_14039C0F4:                          ; CODE XREF: sub_14039BF08+FF↑j
                                        ; sub_14039BF08+10591D↓j ...
                mov     rcx, [rbp+70h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+170h+arg_10]
                add     rsp, 140h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14039C11C:                          ; CODE XREF: sub_14039BF08+1C9↑j
                mov     r8d, r15d
                lea     rcx, [rsp+170h+var_130]
                mov     rdx, r14
                call    sub_1403C04D8
                jmp     short loc_14039C0D3
; } // starts at 14039BF08
sub_14039BF08   endp

; ---------------------------------------------------------------------------
byte_14039C12E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009C0E4↑o
                                        ; .pdata:00000001400DD0D0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14039C134   proc near               ; CODE XREF: sub_14039BF08+F8↑p
                                        ; sub_1409F3A40+F7↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  48h
arg_8           = dword ptr  50h
arg_10          = qword ptr  58h
arg_18          = qword ptr  60h
arg_20          = qword ptr  68h
arg_28          = byte ptr  70h

; FUNCTION CHUNK AT 00000001404A19E2 SIZE 000000D4 BYTES

                mov     [rsp-40h+arg_18], r9
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
                sub     rsp, 28h
                mov     rax, [rdx]
                mov     r13, r8
                mov     r12d, [rcx]
                mov     rdi, rdx
                mov     r14d, [rcx+4]
                mov     r11d, r12d
                mov     ecx, [r8+8]
                mov     ebx, r14d
                movsd   xmm0, qword ptr [r8]
                mov     esi, [r8]
                mov     r8d, eax
                mov     r10b, byte ptr cs:xmmword_140C13320+2
                mov     [rbp+arg_8], ecx
                xor     ecx, ecx
                mov     [rbp+var_28], rax
                mov     [rbp+arg_10], rax
                movsd   [rbp+var_20], xmm0
                cmp     esi, eax
                jb      loc_14039C250
                mov     r9d, [r13+4]
                mov     rdx, rax
                shr     rdx, 20h
                cmp     r9d, edx
                jb      loc_14039C250
                mov     r15d, dword ptr [rbp+var_20]
                mov     eax, r15d
                sub     eax, r8d
                cmp     r14d, eax
                ja      loc_1404A19E2

loc_14039C1BE:                          ; CODE XREF: sub_14039C134+1058B9↓j
                mov     rax, [rbp+var_20]
                shr     rax, 20h
                sub     eax, edx
                cmp     r12d, eax
                ja      loc_1404A19F2

loc_14039C1D1:                          ; CODE XREF: sub_14039C134+1058CA↓j
                mov     al, r10b
                mov     dl, 2
                sub     al, dl
                cmp     al, 1
                jbe     loc_1404A1A03

loc_14039C1E0:                          ; CODE XREF: sub_14039C134+1058D5↓j
                mov     edx, dword ptr [rbp+arg_10+4]

loc_14039C1E3:                          ; CODE XREF: sub_14039C134+10591A↓j
                lea     eax, [r10-1]
                test    al, 0FDh
                jz      loc_1404A1A53

loc_14039C1EF:                          ; CODE XREF: sub_14039C134+105909↓j
                                        ; sub_14039C134+105925↓j ...
                cmp     r15d, r8d
                jb      short loc_14039C250
                cmp     dword ptr [rbp+var_20+4], edx
                jb      short loc_14039C250
                mov     rax, [rbp+arg_18]
                test    rax, rax
                jz      short loc_14039C209
                mov     [rax+4], r12d
                mov     [rax], r14d

loc_14039C209:                          ; CODE XREF: sub_14039C134+CC↑j
                mov     rax, [rbp+arg_20]
                test    rax, rax
                jz      short loc_14039C219
                mov     rdx, [rbp+var_28]
                mov     [rax], rdx

loc_14039C219:                          ; CODE XREF: sub_14039C134+DC↑j
                mov     eax, [rbp+arg_8]
                movsd   xmm0, [rbp+var_20]
                movsd   qword ptr [r13+0], xmm0
                mov     [r13+8], eax
                mov     rax, [rbp+arg_10]
                mov     [rdi], rax
                mov     rax, [rbp+arg_0]
                mov     [rax], r11d
                mov     [rax+4], ebx

loc_14039C23C:                          ; CODE XREF: sub_14039C134+121↓j
                mov     eax, ecx
                add     rsp, 28h
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
                align 10h

loc_14039C250:                          ; CODE XREF: sub_14039C134+5D↑j
                                        ; sub_14039C134+71↑j ...
                mov     ecx, 0C000000Dh
                jmp     short loc_14039C23C
sub_14039C134   endp

; ---------------------------------------------------------------------------
algn_14039C257:                         ; DATA XREF: .rdata:000000014009C110↑o
                                        ; .pdata:00000001400DD0DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039C260   proc near               ; CODE XREF: sub_14039BE78+3E↑p
                                        ; sub_14039BF08+73↑p ...
                mov     ecx, dword ptr cs:xmmword_140C13330
                cmp     ecx, 4
                jz      short loc_14039C27B
                mov     eax, 1
                cmp     ecx, 5
                lea     edx, [rax+1Fh]
                cmovz   eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039C27B:                          ; CODE XREF: sub_14039C260+9↑j
                mov     eax, 18h
                retn
sub_14039C260   endp

; ---------------------------------------------------------------------------
                align 2
algn_14039C282:                         ; DATA XREF: .pdata:00000001400DD0E8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14039C288   proc near               ; CODE XREF: sub_14038D69C:loc_14038D6DB↑p
                                        ; sub_14039BDF4:loc_14039BE30↑p ...

; FUNCTION CHUNK AT 00000001404A1AB6 SIZE 00000054 BYTES

                push    rbx
                sub     rsp, 20h
                mov     eax, cs:dword_140C13390
                mov     ecx, 0C00h
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_14039C2C9
                movzx   ebx, cs:byte_140C54128
                lea     rcx, qword_140CEC0F0
                call    KeReleaseSpinLockFromDpcLevel
                cmp     bl, 2
                ja      short loc_14039C2C9
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A1AB6

loc_14039C2C5:                          ; CODE XREF: sub_14039C288+105830↓j
                                        ; sub_14039C288+10583E↓j ...
                mov     cr8, rbx

loc_14039C2C9:                          ; CODE XREF: sub_14039C288+15↑j
                                        ; sub_14039C288+2D↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039C288   endp

byte_14039C2D0  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009C12C↑o
                                        ; .pdata:00000001400DD0F4↑o

; =============== S U B R O U T I N E =======================================


sub_14039C2D8   proc near               ; CODE XREF: sub_14038D69C:loc_14038D6C2↑p
                                        ; sub_14039BDF4+21↑p ...

; FUNCTION CHUNK AT 00000001404A1B0A SIZE 0000004C BYTES

                push    rbx
                sub     rsp, 20h
                mov     eax, cs:dword_140C13390
                mov     ecx, 0C00h
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_14039C330
                mov     rbx, cr8
                mov     ecx, 2
                cmp     bl, cl
                ja      short loc_14039C31E

loc_14039C2FC:                          ; CODE XREF: sub_14039C2D8+61↓j
                mov     rax, cs:qword_140CEC0F0
                test    rax, rax
                jnz     short loc_14039C337
                mov     rbx, cr8
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A1B0A

loc_14039C31E:                          ; CODE XREF: sub_14039C2D8+22↑j
                                        ; sub_14039C2D8+10583B↓j ...
                lea     rcx, qword_140CEC0F0
                call    KeAcquireSpinLockAtDpcLevel
                mov     cs:byte_140C54128, bl

loc_14039C330:                          ; CODE XREF: sub_14039C2D8+15↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039C337:                          ; CODE XREF: sub_14039C2D8+2E↑j
                pause
                jmp     short loc_14039C2FC
sub_14039C2D8   endp

; ---------------------------------------------------------------------------
byte_14039C33B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009C148↑o
                                        ; .pdata:00000001400DD100↑o

; =============== S U B R O U T I N E =======================================


sub_14039C344   proc near               ; CODE XREF: sub_14039BDF4+35↑p
                                        ; DATA XREF: .rdata:000000014009C178↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A1B56 SIZE 00000108 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                xor     edi, edi
                xor     esi, esi
                mov     rbx, rdx
                test    ecx, ecx
                jnz     short loc_14039C3D6
                movups  xmm0, cs:xmmword_140C13370
                lea     r15d, [rdi+1]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, cs:xmmword_140C13380
                movups  xmmword ptr [rdx+10h], xmm1
                and     [rdx+14h], esi
                test    byte ptr cs:dword_140C13390, 2
                mov     eax, [rdx+14h]
                cmovnz  eax, r15d
                mov     [rdx+14h], eax
                mov     al, byte ptr cs:xmmword_140C13320+2
                sub     al, r15b
                test    al, 0FDh
                jz      loc_1404A1B56

loc_14039C3AA:                          ; CODE XREF: sub_14039C344+10581E↓j
                movzx   eax, byte ptr cs:xmmword_140C13320+2
                mov     [rdx+1Ch], eax

loc_14039C3B4:                          ; CODE XREF: sub_14039C344+FB↓j
                                        ; sub_14039C344+105834↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039C3D6:                          ; CODE XREF: sub_14039C344+26↑j
                cmp     ecx, 2
                jz      loc_1404A1B67
                cmp     ecx, 3
                jnz     loc_1404A1B7D
                movups  xmm0, cs:xmmword_140C13470
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, cs:xmmword_140C13480
                movups  xmmword ptr [rdx+10h], xmm1
                movups  xmm0, cs:xmmword_140C13490
                movups  xmmword ptr [rdx+20h], xmm0
                movups  xmm1, cs:xmmword_140C134A0
                movups  xmmword ptr [rdx+30h], xmm1
                movups  xmm0, cs:xmmword_140C134B0
                movups  xmmword ptr [rdx+40h], xmm0
                movups  xmm1, cs:xmmword_140C134C0
                movups  xmmword ptr [rdx+50h], xmm1
                movups  xmm0, cs:xmmword_140C134D0
                movups  xmmword ptr [rdx+60h], xmm0
                movups  xmm1, cs:xmmword_140C134E0
                movups  xmmword ptr [rdx+70h], xmm1
                jmp     loc_14039C3B4
sub_14039C344   endp

; ---------------------------------------------------------------------------
byte_14039C444  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009C178↑o
                                        ; .pdata:00000001400DD10C↑o

; =============== S U B R O U T I N E =======================================


sub_14039C44C   proc near               ; CODE XREF: sub_1403ACC88+1DC↓p
                                        ; sub_1403CE3FC+24↓p ...

var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404A1C5E SIZE 0000014D BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], r8
                mov     [r11+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xor     r12d, r12d
                mov     r15, r8
                mov     [r11-50h], r12d
                mov     esi, edx
                mov     rdi, rcx
                mov     bpl, r12b
                test    r9b, 1
                jnz     loc_1404A1C5E
                mov     eax, [rcx]
                lea     r8, [r11-48h]
                mov     [rsp+88h+var_54], eax
                mov     r14b, r12b
                mov     eax, [rcx+4]
                lea     rcx, [r11-58h]
                mov     [rsp+88h+arg_18], r12b
                mov     [rsp+88h+var_58], eax
                mov     [r11-48h], r12
                call    sub_1409F52C0
                test    eax, eax
                js      short loc_14039C4ED
                mov     rbx, [rsp+88h+var_48]

loc_14039C4B8:                          ; CODE XREF: sub_14039C44C+10584E↓j
                mov     eax, [rdi+8]
                mov     r11d, eax
                mov     r9, [rbx+18h]
                mov     r10, [rdi+18h]
                shr     r11d, 3
                mov     dword ptr [rsp+88h+var_48], r11d
                cmp     eax, esi
                jnz     short loc_14039C506
                test    r14b, r14b
                jnz     short loc_14039C4EA
                mov     r8d, [rdi+0Ch]
                mov     rdx, r10
                mov     rcx, r9
                call    memmove

loc_14039C4E7:                          ; CODE XREF: sub_14039C44C+108↓j
                                        ; sub_14039C44C+10595A↓j
                mov     [r15], rbx

loc_14039C4EA:                          ; CODE XREF: sub_14039C44C+8A↑j
                mov     eax, r12d

loc_14039C4ED:                          ; CODE XREF: sub_14039C44C+65↑j
                                        ; sub_14039C44C+105827↓j
                mov     rbx, [rsp+88h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039C506:                          ; CODE XREF: sub_14039C44C+85↑j
                cmp     esi, 4
                jz      loc_1404A1C9F
                mov     eax, [rbx+4]
                mov     ecx, esi
                imul    eax, [rbx]
                shr     ecx, 3
                test    eax, eax
                jz      short loc_14039C551
                mov     r8d, ecx
                mov     ecx, eax
                mov     edx, r11d

loc_14039C526:                          ; CODE XREF: sub_14039C44C+103↓j
                mov     al, [r10+2]
                mov     [r9+2], al
                mov     al, [r10+1]
                mov     [r9+1], al
                mov     al, [r10]
                mov     [r9], al
                cmp     esi, 20h ; ' '
                jnz     short loc_14039C545
                mov     [r9+3], r12b

loc_14039C545:                          ; CODE XREF: sub_14039C44C+F3↑j
                add     r10, rdx
                add     r9, r8
                sub     rcx, 1
                jnz     short loc_14039C526

loc_14039C551:                          ; CODE XREF: sub_14039C44C+D0↑j
                                        ; sub_14039C44C+105859↓j ...
                test    r14b, r14b
                jz      short loc_14039C4E7
                jmp     loc_1404A1DA2
sub_14039C44C   endp

; ---------------------------------------------------------------------------
byte_14039C55B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009C210↑o
                                        ; .pdata:00000001400DD118↑o

; =============== S U B R O U T I N E =======================================


sub_14039C564   proc near               ; CODE XREF: sub_1403AEE08+30↓p
                                        ; sub_1403BC9BC+47↓p ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A1DAC SIZE 0000002F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                test    rcx, rcx
                jz      loc_1404A1DAC
                mov     ebp, cs:dword_140C13390
                bt      ebp, 0Bh
                jb      loc_14039C6C3
                and     ebp, 8000h
                xor     edi, edi
                xor     ebx, ebx
                mov     eax, ebp
                neg     eax
                mov     eax, ebp
                sbb     r14d, r14d
                and     r14d, 0FFF90000h
                add     r14d, 4B494742h
                neg     eax
                sbb     r15, r15
                and     r15d, 10h
                add     r15, 20h ; ' '
                lea     rsi, [r15+rcx]
                cmp     rsi, rcx
                jb      short loc_14039C647
                mov     eax, 0FFFFEFFFh
                cmp     rsi, rax
                jnb     short loc_14039C647
                cmp     rsi, 1000h
                jnb     loc_14039C664
                mov     r8d, r14d
                mov     rdx, rsi
                mov     ecx, 200h
                call    ExAllocatePoolWithTag

loc_14039C5F3:                          ; CODE XREF: sub_14039C564+15A↓j
                                        ; sub_14039C564+16A↓j
                test    rax, rax
                jz      loc_1404A1DBA
                lea     rdi, [r15+rax]
                test    ebp, ebp
                jz      short loc_14039C632
                mov     rcx, cs:qword_140C13460
                lea     rdx, qword_140C13460
                lea     rax, [rdi-28h]
                cmp     [rcx+8], rdx
                jnz     loc_1404A1DB3
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rcx+8], rax
                mov     cs:qword_140C13460, rax

loc_14039C632:                          ; CODE XREF: sub_14039C564+9E↑j
                mov     [rdi-18h], r14d
                mov     [rdi-10h], rsi
                mov     [rdi-8], rbx
                test    rdi, rdi
                jz      loc_1404A1DBA

loc_14039C647:                          ; CODE XREF: sub_14039C564+66↑j
                                        ; sub_14039C564+70↑j ...
                mov     rax, rdi

loc_14039C64A:                          ; CODE XREF: sub_14039C564+164↓j
                                        ; sub_14039C564+10584A↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14039C664:                          ; CODE XREF: sub_14039C564+79↑j
                add     rsi, 0FFFh
                mov     [rsp+48h+var_20], 5
                and     rsi, 0FFFFFFFFFFFFF000h
                mov     [rsp+48h+var_28], 1
                mov     r9, rsi
                xor     r8d, r8d
                or      rdx, 0FFFFFFFFFFFFFFFFh
                xor     ecx, ecx
                call    MmAllocatePagesForMdlEx
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14039C647
                test    byte ptr [rax+0Ah], 5
                jnz     short loc_14039C6CA
                xor     r9d, r9d
                mov     [rsp+48h+var_20], 40000010h
                and     [rsp+48h+var_28], edi
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                jmp     loc_14039C5F3
; ---------------------------------------------------------------------------

loc_14039C6C3:                          ; CODE XREF: sub_14039C564+2B↑j
                call    sub_14039C6EC
                jmp     short loc_14039C64A
; ---------------------------------------------------------------------------

loc_14039C6CA:                          ; CODE XREF: sub_14039C564+13B↑j
                mov     rax, [rax+18h]
                jmp     loc_14039C5F3
sub_14039C564   endp

; ---------------------------------------------------------------------------
byte_14039C6D3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009C23C↑o
                                        ; .pdata:00000001400DD124↑o

; =============== S U B R O U T I N E =======================================


sub_14039C6DC   proc near               ; CODE XREF: sub_1409F52C0+2C↓p
                                        ; DATA XREF: .pdata:00000001400DD130↑o
                lea     eax, [rcx+7]
                shr     eax, 3
                retn
sub_14039C6DC   endp

; ---------------------------------------------------------------------------
                align 4
byte_14039C6E4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD130↑o

; =============== S U B R O U T I N E =======================================


sub_14039C6EC   proc near               ; CODE XREF: sub_14039C564:loc_14039C6C3↑p
                                        ; DATA XREF: .rdata:000000014009C258↑o ...

; FUNCTION CHUNK AT 00000001404A1DDC SIZE 00000026 BYTES

                push    rbx
                sub     rsp, 20h
                mov     r8d, cs:dword_140C505F0
                lea     rbx, [rcx+0Fh]
                and     rbx, 0FFFFFFFFFFFFFFF0h
                lea     rcx, xmmword_140C505F8
                add     rbx, 20h ; ' '
                mov     edx, ebx
                call    RtlFindClearBitsAndSet
                mov     r8d, eax
                mov     eax, cs:dword_140C50608
                lea     edx, [rax-10h]
                cmp     r8d, edx
                ja      loc_1404A1DDC

loc_14039C728:                          ; CODE XREF: sub_14039C6EC+105711↓j
                add     eax, 0FFFFFFF0h
                cmp     r8d, eax
                ja      short loc_14039C762
                lea     eax, [rbx+r8]
                mov     ecx, r8d
                mov     cs:dword_140C505F0, eax
                mov     rax, cs:qword_140C505E8
                add     rax, 20h ; ' '
                add     rax, rcx
                and     qword ptr [rax-8], 0
                mov     dword ptr [rax-18h], 4B434742h
                mov     [rax-10h], rbx

loc_14039C75B:                          ; CODE XREF: sub_14039C6EC+78↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039C762:                          ; CODE XREF: sub_14039C6EC+42↑j
                xor     eax, eax
                jmp     short loc_14039C75B
sub_14039C6EC   endp

; ---------------------------------------------------------------------------
byte_14039C766  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014009C258↑o
                                        ; .pdata:00000001400DD13C↑o

; =============== S U B R O U T I N E =======================================


sub_14039C76C   proc near               ; CODE XREF: sub_1403BCA64+52↓p
                                        ; sub_1403BCA64+A2↓p ...
                sub     rsp, 28h
                mov     r8, rdx
                test    rcx, rcx
                jz      short loc_14039C78E
                test    rdx, rdx
                jz      short loc_14039C78E
                add     rdx, 4
                call    sub_14039C79C
                xor     eax, eax

loc_14039C788:                          ; CODE XREF: sub_14039C76C+27↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039C78E:                          ; CODE XREF: sub_14039C76C+A↑j
                                        ; sub_14039C76C+F↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14039C788
sub_14039C76C   endp

; ---------------------------------------------------------------------------
byte_14039C795  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD148↑o

; =============== S U B R O U T I N E =======================================


sub_14039C79C   proc near               ; CODE XREF: sub_14039C76C+15↑p
                                        ; DATA XREF: .pdata:00000001400DD154↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r10, [rcx+8]
                mov     rdi, rdx
                mov     r9d, [rcx+10h]
                mov     rsi, r8
                movzx   eax, word ptr [r10+78h]
                mov     r11d, [r10+60h]
                movsx   ecx, word ptr [r10+54h]
                lea     rbx, [rax+rax*8]
                movsx   rax, word ptr [r10+50h]
                imul    rax, r9
                shl     rbx, 3
                imul    rax, r11
                shl     rax, 6
                cqo
                idiv    rbx
                mov     r8, rax
                movsx   eax, word ptr [r10+52h]
                sub     eax, ecx
                cdqe
                imul    rax, r9
                imul    rax, r11
                shl     rax, 6
                cqo
                idiv    rbx
                mov     rcx, rax
                call    sub_14039C848
                mov     rbx, [rsp+28h+arg_0]
                add     eax, 2
                mov     [rdi], eax
                mov     eax, r8d
                sar     eax, 6
                mov     ecx, eax
                or      ecx, 0FC000000h
                test    r8d, r8d
                cmovns  ecx, eax
                test    r8b, 20h
                lea     eax, [rcx+1]
                cmovz   eax, ecx
                mov     [rsi], eax
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039C79C   endp

byte_14039C840  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD154↑o

; =============== S U B R O U T I N E =======================================


sub_14039C848   proc near               ; CODE XREF: sub_14039C79C+69↑p
                                        ; sub_1403ACF48+21C↓p ...
                mov     eax, ecx
                sar     eax, 6
                test    ecx, ecx
                js      short loc_14039C85A
                test    cl, 3Fh
                jz      short locret_14039C858
                inc     eax

locret_14039C858:                       ; CODE XREF: sub_14039C848+C↑j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039C85A:                          ; CODE XREF: sub_14039C848+7↑j
                or      eax, 0FC000000h
                retn
sub_14039C848   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14039C861:                         ; DATA XREF: .pdata:00000001400DD160↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14039C868   proc near               ; CODE XREF: sub_14038D69C+38↑p
                                        ; sub_1409F49E8+70↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A1E02 SIZE 00000126 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140C13390
                mov     ebp, 0C00h
                mov     ebx, eax
                mov     rdi, rcx
                and     ebx, ebp
                test    al, 2
                jnz     loc_1404A1E02

loc_14039C896:                          ; CODE XREF: sub_14039C868+1055A2↓j
                xor     esi, esi
                cmp     [rcx], sil
                jz      short loc_14039C8BB
                cmp     [rcx+1], sil
                jnz     short loc_14039C8BB
                cmp     ebx, ebp
                jnz     short loc_14039C914
                cmp     byte ptr cs:xmmword_140C13348, sil
                jnz     loc_1404A1E93

loc_14039C8B4:                          ; CODE XREF: sub_14039C868+10563B↓j
                                        ; sub_14039C868+10564A↓j ...
                mov     eax, 0C00000BBh
                jmp     short loc_14039C8FE
; ---------------------------------------------------------------------------

loc_14039C8BB:                          ; CODE XREF: sub_14039C868+33↑j
                                        ; sub_14039C868+39↑j ...
                cmp     ebx, ebp
                jz      short loc_14039C8C6

loc_14039C8BF:                          ; CODE XREF: sub_14039C868+12A↓j
                xor     ecx, ecx
                call    sub_1409F5408

loc_14039C8C6:                          ; CODE XREF: sub_14039C868+55↑j
                movups  xmm0, xmmword ptr [rdi]
                movups  cs:xmmword_140C13320, xmm0
                movups  xmm1, xmmword ptr [rdi+10h]
                movd    eax, xmm1
                movups  cs:xmmword_140C13330, xmm1
                movsd   xmm0, qword ptr [rdi+20h]
                movsd   cs:qword_140C13340, xmm0
                cmp     eax, 1
                jz      loc_1404A1F12

loc_14039C8F5:                          ; CODE XREF: sub_14039C868+1056BB↓j
                or      cs:dword_140C13390, 2

loc_14039C8FC:                          ; CODE XREF: sub_14039C868+10559C↓j
                xor     eax, eax

loc_14039C8FE:                          ; CODE XREF: sub_14039C868+51↑j
                                        ; sub_14039C868+1055D3↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14039C914:                          ; CODE XREF: sub_14039C868+3D↑j
                mov     al, [rdi+2]
                mov     ecx, [rcx+10h]
                dec     al
                test    al, 0FDh
                mov     eax, [rdi+0Ch]
                jz      loc_1404A1E0F
                imul    eax, [rdi+4]

loc_14039C92B:                          ; CODE XREF: sub_14039C868+1055AB↓j
                mov     rbx, [rdi+20h]
                cmp     ecx, 4
                mov     rbp, rsi
                mov     r8d, 404h
                setnz   bpl
                mov     rcx, rbx
                add     rbp, 3
                imul    rbp, rax
                mov     rdx, rbp
                call    MmMapIoSpaceEx
                mov     [rdi+20h], rax
                test    rax, rax
                jz      loc_1404A1E18

loc_14039C95F:                          ; CODE XREF: sub_14039C868+1055C8↓j
                mov     byte ptr [rdi+1], 1
                cmp     byte ptr cs:xmmword_140C13348, sil
                jnz     loc_1404A1E40

loc_14039C970:                          ; CODE XREF: sub_14039C868+1055DF↓j
                                        ; sub_14039C868+105626↓j
                movups  xmm0, xmmword ptr [rdi]
                movups  cs:xmmword_140C13348, xmm0
                movups  xmm1, xmmword ptr [rdi+10h]
                movups  cs:xmmword_140C13358, xmm1
                movsd   xmm0, qword ptr [rdi+20h]
                movsd   cs:qword_140C13368, xmm0
                jmp     loc_14039C8BF
sub_14039C868   endp

; ---------------------------------------------------------------------------
algn_14039C997:                         ; DATA XREF: .rdata:000000014009C2B0↑o
                                        ; .pdata:00000001400DD16C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039C9A0   proc near               ; CODE XREF: sub_1403ACC88+145↓p
                                        ; sub_1403AD2BC+44↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     eax, [rcx+4]
                imul    eax, [rcx]
                mov     r8, [rcx+18h]
                mov     [rsp+arg_8], edx
                test    eax, eax
                jz      short loc_14039C9EF
                mov     r10b, byte ptr [rsp+arg_8+3]
                mov     r11b, byte ptr [rsp+arg_8+2]
                mov     bl, byte ptr [rsp+arg_8+1]
                mov     r9d, eax

loc_14039C9C8:                          ; CODE XREF: sub_14039C9A0+4D↓j
                mov     [r8+2], r11b
                mov     [r8+1], bl
                mov     [r8], dl
                mov     eax, [rcx+8]
                cmp     eax, 20h ; ' '
                jnz     short loc_14039C9E2
                mov     [r8+3], r10b
                mov     eax, [rcx+8]

loc_14039C9E2:                          ; CODE XREF: sub_14039C9A0+39↑j
                shr     rax, 3
                add     r8, rax
                sub     r9, 1
                jnz     short loc_14039C9C8

loc_14039C9EF:                          ; CODE XREF: sub_14039C9A0+15↑j
                and     dword ptr [rcx+10h], 0FFFFFFEFh
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14039C9A0   endp

algn_14039C9FA:                         ; DATA XREF: .pdata:00000001400DD178↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14039CA00   proc near               ; CODE XREF: sub_14039BB20:loc_14039BCAD↑p
                                        ; sub_140A99104+CB↓p
                                        ; DATA XREF: ...
                xor     eax, eax
                cmp     cs:qword_140C50A00, rax
                jz      short locret_14039CA1A
                cmp     cs:byte_140C50A25, al
                jz      short locret_14039CA1A
                xchg    rax, cs:qword_140C112C8

locret_14039CA1A:                       ; CODE XREF: sub_14039CA00+9↑j
                                        ; sub_14039CA00+11↑j
                retn
sub_14039CA00   endp

; ---------------------------------------------------------------------------
                align 4
byte_14039CA1C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DD184↑o

; =============== S U B R O U T I N E =======================================


sub_14039CA24   proc near               ; CODE XREF: sub_1402E1600+3BB↑p
                                        ; sub_140384790+5F1↑p ...

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
                mov     rdi, rcx
                call    sub_14022FC60
                mov     rsi, [rcx]
                mov     r14, [rcx+18h]
                movzx   edx, byte ptr [rcx+27h]
                mov     ebx, eax
                mov     rax, 0FFFFFFF00h
                shr     rsi, 1Ch
                and     rsi, rax
                shr     r14, 14h
                mov     rax, 0FFFFF0000h
                mov     r15, 0FFFFFA8000000000h
                and     r14, rax
                or      rsi, rdx
                movzx   eax, word ptr [rcx+24h]
                or      r14, rax
                mov     rax, r15
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                sar     rdx, 3
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rcx, rdx
                call    sub_14027DEC0
                mov     rcx, cs:qword_140C4E4C8
                mov     rdx, [rdi+28h]
                shr     rdx, 27h
                mov     eax, [rax+8]
                and     edx, 3FFh
                imul    rbp, rax, 11C0h
                mov     rdx, [rcx+rdx*8]
                mov     rcx, rdi
                add     rbp, [rdx+10h]
                call    sub_1402DA7F4
                mov     ecx, eax
                mov     rdi, 0FFFFFFFFFh
                lea     rcx, [rbx+rcx*8]
                lea     rbx, [rcx+rcx*2]
                cmp     rsi, rdi
                jz      short loc_14039CB46
                lea     rcx, [rsi+rsi*2]
                shl     rcx, 4
                mov     rax, r15
                add     rcx, rax
                mov     rdx, r14
                shr     rdx, 10h
                xor     r8d, r8d
                mov     [rcx+24h], r14w
                call    sub_1402E46D4

loc_14039CB17:                          ; CODE XREF: sub_14039CA24+12A↓j
                cmp     r14, rdi
                jnz     short loc_14039CB50
                mov     [rbp+rbx*8+0CC0h], rsi

loc_14039CB24:                          ; CODE XREF: sub_14039CA24+155↓j
                dec     qword ptr [rbp+rbx*8+0CB8h]
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

loc_14039CB46:                          ; CODE XREF: sub_14039CA24+CF↑j
                mov     [rbp+rbx*8+0CC8h], r14
                jmp     short loc_14039CB17
; ---------------------------------------------------------------------------

loc_14039CB50:                          ; CODE XREF: sub_14039CA24+F6↑j
                lea     rcx, [r14+r14*2]
                shl     rcx, 4
                mov     rax, r15
                add     rcx, rax
                mov     rax, rsi
                shl     rax, 1Ch
                xor     rax, [rcx]
                mov     [rcx+27h], sil
                and     rax, rdi
                shl     rsi, 1Ch
                xor     rax, rsi
                mov     [rcx], rax
                jmp     short loc_14039CB24
sub_14039CA24   endp

; ---------------------------------------------------------------------------
byte_14039CB7B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400DD190↑o
; Exported entry 1733. PoFxReportDevicePoweredOn

; =============== S U B R O U T I N E =======================================


