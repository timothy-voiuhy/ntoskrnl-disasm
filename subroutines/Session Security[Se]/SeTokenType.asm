SeTokenType     proc near               ; DATA XREF: .pdata:00000001401003F8↑o
                mov     eax, [rcx+0C0h]
                retn
SeTokenType     endp

; ---------------------------------------------------------------------------
                align 8
algn_14066A218:                         ; DATA XREF: .pdata:00000001401003F8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066A220   proc near               ; CODE XREF: sub_140715D4C+7C↓p
                                        ; DATA XREF: .pdata:0000000140100404↑o
                push    rbx
                sub     rsp, 20h
                mov     r8, [rcx+38h]
                mov     rbx, rcx
                test    r8, r8
                jz      short loc_14066A23B
                mov     rdx, [rdx+18h]
                call    sub_1402AFFF4

loc_14066A23B:                          ; CODE XREF: sub_14066A220+10↑j
                mov     rcx, rbx
                call    SeFreePrivileges
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066A220   endp

algn_14066A24A:                         ; DATA XREF: .pdata:0000000140100404↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=2D0h

sub_14066A250   proc near               ; CODE XREF: sub_1406323F0+802↑p
                                        ; sub_140637F00+42C↑p ...

var_3B0         = qword ptr -3B0h
var_3A8         = qword ptr -3A8h
var_3A0         = qword ptr -3A0h
var_390         = byte ptr -390h
var_38F         = byte ptr -38Fh
var_38E         = byte ptr -38Eh
var_388         = xmmword ptr -388h
var_378         = qword ptr -378h
var_370         = qword ptr -370h
var_368         = qword ptr -368h
var_360         = xmmword ptr -360h
var_350         = xmmword ptr -350h
var_340         = xmmword ptr -340h
var_330         = xmmword ptr -330h
var_320         = dword ptr -320h
var_2D8         = qword ptr -2D8h
var_2C0         = dword ptr -2C0h
var_290         = xmmword ptr -290h
var_248         = byte ptr -248h
var_1F0         = xmmword ptr -1F0h
var_1E0         = xmmword ptr -1E0h
var_1D0         = xmmword ptr -1D0h
var_1C0         = byte ptr -1C0h
var_120         = byte ptr -120h
var_40          = qword ptr -40h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014080B7AE SIZE 000001E1 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-2A0h]
                sub     rsp, 3A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+2D0h+var_40], rax
                mov     r13, [rbp+2D0h+arg_20]
                xorps   xmm0, xmm0
                and     [rsp+3D0h+var_378], 0
                mov     r12d, r8d
                mov     [rsp+3D0h+var_38E], dl
                mov     rbx, rcx
                mov     [rsp+3D0h+var_368], rcx
                xor     edx, edx
                mov     r8d, 0A0h
                mov     [rsp+3D0h+var_390], 0
                lea     rcx, [rbp+2D0h+var_1C0]
                mov     [rsp+3D0h+var_38F], 0
                movups  [rsp+3D0h+var_388], xmm0
                mov     rsi, r9
                movups  [rbp+2D0h+var_1F0], xmm0
                movups  [rbp+2D0h+var_1E0], xmm0
                movups  [rbp+2D0h+var_1D0], xmm0
                movups  [rsp+3D0h+var_360], xmm0
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+2D0h+var_120]
                mov     r8d, 0E0h
                call    memset
                xorps   xmm0, xmm0
                lea     rcx, [rsp+3D0h+var_388]
                xor     edx, edx
                xor     r15b, r15b
                movups  [rbp+2D0h+var_350], xmm0
                movups  [rbp+2D0h+var_340], xmm0
                movups  [rbp+2D0h+var_330], xmm0
                call    RtlInitUnicodeString
                mov     r14, [rbx]
                lea     rcx, [rbp+2D0h+var_320]
                xor     edx, edx
                mov     r8d, 128h
                call    memset
                or      [rbp+2D0h+var_2C0], 0FFFFFFFFh
                lea     rax, [rbp+2D0h+var_290]
                xorps   xmm0, xmm0
                lea     rcx, [rbp+2D0h+var_248]
                movups  [rbp+2D0h+var_290], xmm0
                xor     edx, edx
                mov     qword ptr [rbp+2D0h+var_290+8], rax
                lea     rax, [rbp+2D0h+var_290]
                mov     qword ptr [rbp+2D0h+var_290], rax
                lea     r8d, [rdx+50h]
                call    memset
                and     [rsp+3D0h+var_370], 0
                lea     rcx, [rsp+3D0h+var_360]
                call    InitializeListHead
                lea     rcx, [rbp+2D0h+var_1F0]
                call    sub_14063A890

loc_14066A36E:                          ; CODE XREF: sub_14066A250+1A15C2↓j
                test    r15b, r15b
                jnz     loc_14080B7AE
                call    sub_14064A3A0

loc_14066A37C:                          ; CODE XREF: sub_14066A250+1A1564↓j
                mov     rdi, [r14+8]
                mov     rcx, rdi
                call    sub_14062DDF4
                mov     rcx, [r14+8]
                mov     r8, r13
                mov     rdx, rsi
                call    sub_1402B0024
                test    al, al
                jz      short loc_14066A3D1
                xor     edx, edx
                mov     rcx, r14
                call    sub_140638C00
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066A3D6
                lea     r9, [rsp+3D0h+var_388]
                mov     r8, rsi
                mov     rcx, rdi
                call    sub_14066A43C
                test    al, al
                jnz     loc_14080B898
                mov     eax, [rdi+0B8h]
                test    al, 20h
                jz      loc_14080B7B9

loc_14066A3D1:                          ; CODE XREF: sub_14066A250+149↑j
                                        ; sub_14066A250+1A1590↓j
                mov     ebx, 0C0000022h

loc_14066A3D6:                          ; CODE XREF: sub_14066A250+159↑j
                                        ; sub_14066A250+1A1585↓j ...
                mov     rcx, rdi
                call    sub_140646FD0
                call    sub_14064A360

loc_14066A3E3:                          ; CODE XREF: sub_14066A250+1A169D↓j
                                        ; sub_14066A250+1A172A↓j
                xor     edx, edx
                lea     rcx, [rbp+2D0h+var_320]
                call    sub_140651820
                cmp     qword ptr [rsp+3D0h+var_388+8], 0
                jnz     loc_14080B97F

loc_14066A3FA:                          ; CODE XREF: sub_14066A250+1A173A↓j
                lea     rcx, [rbp+2D0h+var_1F0]
                call    sub_14063A63C
                mov     eax, ebx
                mov     rcx, [rbp+2D0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+3D0h+arg_8]
                add     rsp, 3A0h
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
; } // starts at 14066A250
sub_14066A250   endp

byte_14066A433  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400631E4↑o
                                        ; .pdata:0000000140100410↑o

; =============== S U B R O U T I N E =======================================


sub_14066A43C   proc near               ; CODE XREF: sub_140651450+1F9↑p
                                        ; sub_14066A250+166↑p ...

var_18          = xmmword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014080B990 SIZE 0000005A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rax-18h]
                xor     edx, edx
                movups  xmmword ptr [rax-18h], xmm0
                mov     rdi, r9
                mov     rsi, r8
                call    RtlInitUnicodeString
                test    dword ptr [rbx+0B8h], 800000h
                jnz     loc_14080B990

loc_14066A477:                          ; CODE XREF: sub_14066A43C+1A1568↓j
                xor     bl, bl

loc_14066A479:                          ; CODE XREF: sub_14066A43C+1A157C↓j
                                        ; sub_14066A43C+1A1599↓j
                cmp     qword ptr [rsp+38h+var_18+8], 0
                jnz     loc_14080B9DA

loc_14066A485:                          ; CODE XREF: sub_14066A43C+1A15A9↓j
                mov     rsi, [rsp+38h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066A43C   endp

algn_14066A498:                         ; DATA XREF: .rdata:0000000140063208↑o
                                        ; .pdata:000000014010041C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14066A4A0   proc near               ; CODE XREF: sub_14064D600+194C↑p
                                        ; DATA XREF: .pdata:0000000140100428↑o

var_20          = byte ptr -20h
var_18          = qword ptr -18h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = byte ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h
arg_20          = byte ptr  50h
arg_28          = dword ptr  58h
arg_30          = qword ptr  60h
arg_38          = qword ptr  68h
arg_40          = qword ptr  70h

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                xor     r13d, r13d
                mov     r12, rdx
                mov     rsi, rcx
                mov     [rbp+arg_0], r13b
                xorps   xmm0, xmm0
                mov     [rbp+var_18], r13
                xor     edx, edx
                mov     [rbp+var_20], r13b
                lea     rcx, [rbp+var_10]
                mov     r14, r9
                movups  [rbp+var_10], xmm0
                mov     r15, r8
                call    RtlInitUnicodeString
                cmp     [rsi+42h], r13w
                jz      short loc_14066A4FD

loc_14066A4F3:                          ; CODE XREF: sub_14066A4A0+66↓j
                                        ; sub_14066A4A0+7D↓j ...
                mov     ebx, 0C0000271h
                jmp     loc_14066A69B
; ---------------------------------------------------------------------------

loc_14066A4FD:                          ; CODE XREF: sub_14066A4A0+51↑j
                mov     rdi, [rbp+arg_38]
                mov     eax, [rdi+18h]
                test    al, 10h
                jnz     short loc_14066A4F3
                add     r14, 20h ; ' '
                lea     r8, [rdi+10h]
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1402B0024
                test    al, al
                jz      short loc_14066A4F3
                mov     eax, [rdi+0A0h]
                test    al, 1
                jnz     short loc_14066A53C
                lea     rcx, [rdi+0A8h]
                call    sub_14063A890
                or      dword ptr [rdi+0A0h], 1

loc_14066A53C:                          ; CODE XREF: sub_14066A4A0+87↑j
                lea     r9, [rbp+var_10]
                mov     r8, r14
                mov     rcx, rsi
                call    sub_14066A43C
                test    al, al
                jz      short loc_14066A56A
                mov     rcx, qword ptr [rbp+var_10+8]
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     edx, edx
                lea     rcx, [rbp+var_10]
                call    RtlInitUnicodeString
                jmp     loc_14066A654
; ---------------------------------------------------------------------------

loc_14066A56A:                          ; CODE XREF: sub_14066A4A0+AD↑j
                mov     eax, [rsi+0B8h]
                test    al, 20h
                jnz     loc_14066A4F3
                mov     ebx, [rbp+arg_28]
                mov     rcx, rsi
                mov     r9b, [rbp+arg_20]
                or      ebx, 4
                mov     rdx, [rbp+arg_30]
                mov     r8d, ebx
                call    sub_14087167C
                test    al, al
                jnz     loc_14066A4F3
                mov     r9b, [rbp+arg_20]
                mov     r8d, 20019h
                mov     rdx, [rbp+arg_30]
                mov     rcx, rsi
                call    sub_14087167C
                test    al, al
                jnz     short loc_14066A5BD

loc_14066A5B3:                          ; CODE XREF: sub_14066A4A0+141↓j
                mov     ebx, 0C0000022h
                jmp     loc_14066A69B
; ---------------------------------------------------------------------------

loc_14066A5BD:                          ; CODE XREF: sub_14066A4A0+111↑j
                mov     rdx, [rsi+58h]
                lea     r9, [rbp+arg_0]
                add     rdx, 20h ; ' '
                mov     r8, r14
                mov     ecx, ebx
                call    sub_1406EE088
                mov     ebx, eax
                test    eax, eax
                js      loc_14066A69B
                cmp     [rbp+arg_0], r13b
                jz      short loc_14066A5B3
                mov     rcx, r12
                call    sub_140646FD0
                mov     r8d, [rdi]
                lea     r9, [rbp+var_18]
                shr     r8d, 0Ah
                mov     rdx, r14
                and     r8b, 1
                mov     rcx, rsi
                call    sub_140872234
                mov     rcx, r12
                mov     ebx, eax
                call    sub_14062DDF4
                test    ebx, ebx
                js      loc_14066A69B
                mov     rcx, [rsi+58h]
                lea     r8, [rbp+var_20]
                add     rcx, 20h ; ' '
                mov     rdx, r14
                call    sub_1408734E0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066A69B
                cmp     [rbp+var_20], r13b
                jz      short loc_14066A648
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1408735F8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066A69B

loc_14066A648:                          ; CODE XREF: sub_14066A4A0+195↑j
                mov     rax, [rbp+var_18]
                or      dword ptr [rdi+64h], 2
                mov     [rdi+70h], rax

loc_14066A654:                          ; CODE XREF: sub_14066A4A0+C5↑j
                lea     r9, [rbp+var_10]
                mov     r8, r14
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1406D4D38
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066A69B
                mov     rbx, [rbp+arg_40]
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14066A680
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14066A680:                          ; CODE XREF: sub_14066A4A0+1D7↑j
                movups  xmm0, [rbp+var_10]
                xor     edx, edx
                lea     rcx, [rbp+var_10]
                movdqu  xmmword ptr [rbx], xmm0
                call    RtlInitUnicodeString
                or      dword ptr [rdi], 8
                mov     ebx, 104h

loc_14066A69B:                          ; CODE XREF: sub_14066A4A0+58↑j
                                        ; sub_14066A4A0+118↑j ...
                mov     rcx, qword ptr [rbp+var_10+8]
                test    rcx, rcx
                jz      short loc_14066A6AB
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14066A6AB:                          ; CODE XREF: sub_14066A4A0+202↑j
                lea     r11, [rsp+40h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066A4A0   endp

algn_14066A6CC:                         ; DATA XREF: .pdata:0000000140100428↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066A6E0   proc near               ; DATA XREF: .rdata:0000000140063234↑o
                                        ; .pdata:0000000140100434↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080B9EA SIZE 00000022 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_10], rax
                xorps   xmm0, xmm0
                mov     ebx, edx
                movups  [rsp+78h+var_40], xmm0
                mov     rdi, rcx
                movups  [rsp+78h+var_30], xmm0
                movups  [rsp+78h+var_20], xmm0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C47FA8
                call    sub_14024C840
                xor     esi, esi
                test    al, al
                jz      loc_14080B9EA
                test    ebx, ebx
                jnz     loc_14080BA02
                mov     rax, gs:188h
                lea     edx, [rsi+8]
                mov     r8, cs:qword_140C47C10
                mov     rcx, rdi
                mov     [rsp+78h+var_50], rsi
                mov     [rsp+78h+var_48], rsi
                mov     r9b, [rax+232h]
                lea     rax, [rsp+78h+var_48]
                mov     [rsp+78h+var_58], rax
                call    ObReferenceObjectByHandle
                mov     rdi, [rsp+78h+var_48]
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066A7A9
                lea     rcx, [rsp+78h+var_40]
                call    sub_14063A890
                mov     rcx, rdi
                call    sub_14066A7F8
                xor     edx, edx
                lea     rcx, [rsp+78h+var_40]
                mov     ebx, eax
                call    sub_14021E230
                test    ebx, ebx
                cmovns  ebx, esi

loc_14066A7A9:                          ; CODE XREF: sub_14066A6E0+A2↑j
                test    rdi, rdi
                jz      short loc_14066A7B6
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14066A7B6:                          ; CODE XREF: sub_14066A6E0+CC↑j
                                        ; sub_14066A6E0+1A1327↓j
                lea     rcx, qword_140C47FA8
                call    sub_14024C380
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14066A7D0:                          ; CODE XREF: sub_14066A6E0+1A131D↓j
                mov     eax, ebx
                mov     rcx, [rsp+78h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066A6E0
sub_14066A6E0   endp

algn_14066A7F2:                         ; DATA XREF: .rdata:0000000140063234↑o
                                        ; .pdata:0000000140100434↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14066A7F8   proc near               ; CODE XREF: sub_14066A6E0+B1↑p
                                        ; sub_140767BC0+F7↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r15
                sub     rsp, 30h
                mov     rdi, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rax-28h]
                xor     bpl, bpl
                movups  xmmword ptr [rax-28h], xmm0
                call    InitializeListHead
                xor     eax, eax
                lea     r15d, [rax+1]
                lock cmpxchg [rdi], r15d
                jz      short loc_14066A844
                mov     ebx, 0C0190003h
                lea     ecx, [r15+2]
                cmp     eax, ecx
                lea     edx, [rbx+12h]
                cmovz   ebx, edx
                jmp     loc_14066A954
; ---------------------------------------------------------------------------

loc_14066A844:                          ; CODE XREF: sub_14066A7F8+34↑j
                mov     rsi, [rdi+10h]
                test    rsi, rsi
                jz      short loc_14066A855
                mov     bpl, r15b
                call    sub_1405FA03C

loc_14066A855:                          ; CODE XREF: sub_14066A7F8+53↑j
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rsi
                call    sub_1406E0A14
                mov     ebx, eax
                test    eax, eax
                mov     eax, r15d
                jns     short loc_14066A8B5
                mov     ecx, 3
                lock cmpxchg [rdi], ecx
                jnz     short loc_14066A88D
                cmp     byte ptr [rdi+18h], 0
                jnz     loc_14066A93E
                mov     rcx, rdi
                call    sub_14076FB94
                jmp     loc_14066A93E
; ---------------------------------------------------------------------------

loc_14066A88D:                          ; CODE XREF: sub_14066A7F8+7C↑j
                mov     eax, 4
                lock cmpxchg [rdi], ecx
                lea     rcx, [rdi+8]
                lock or [rsp+48h+var_48], 0
                cmp     qword ptr [rcx], 0
                jz      loc_14066A93E
                xor     edx, edx
                call    ExfUnblockPushLock
                jmp     loc_14066A93E
; ---------------------------------------------------------------------------

loc_14066A8B5:                          ; CODE XREF: sub_14066A7F8+71↑j
                mov     ecx, 2
                lock cmpxchg [rdi], ecx
                mov     rcx, rsi
                cmp     eax, 4
                jnz     short loc_14066A8F9
                lea     r8, [rsp+48h+var_28]
                call    sub_1406E0AF0
                mov     ecx, 3
                lea     eax, [rcx+1]
                lock cmpxchg [rdi], ecx
                lea     rcx, [rdi+8]
                lock or [rsp+48h+var_48], 0
                cmp     qword ptr [rcx], 0
                jz      short loc_14066A8F2
                xor     edx, edx
                call    ExfUnblockPushLock

loc_14066A8F2:                          ; CODE XREF: sub_14066A7F8+F1↑j
                mov     ebx, 0C0190003h
                jmp     short loc_14066A93E
; ---------------------------------------------------------------------------

loc_14066A8F9:                          ; CODE XREF: sub_14066A7F8+CC↑j
                lea     rdx, [rsp+48h+var_28]
                call    sub_1406E08E4
                test    bpl, bpl
                jz      short loc_14066A93C
                lea     r8, [rsp+48h+var_28]
                mov     rcx, rsi
                call    sub_1406E0AF0
                xor     edx, edx
                lea     rcx, [rsp+48h+var_28]
                call    sub_14024BB80
                call    sub_14064A360
                xor     bpl, bpl
                cmp     [rdi+18h], bpl
                jnz     short loc_14066A93C
                mov     edx, 4
                mov     rcx, rsi
                call    sub_14066A970

loc_14066A93C:                          ; CODE XREF: sub_14066A7F8+10E↑j
                                        ; sub_14066A7F8+135↑j
                xor     ebx, ebx

loc_14066A93E:                          ; CODE XREF: sub_14066A7F8+82↑j
                                        ; sub_14066A7F8+90↑j ...
                test    bpl, bpl
                jz      short loc_14066A954
                xor     edx, edx
                lea     rcx, [rsp+48h+var_28]
                call    sub_14024BB80
                call    sub_14064A360

loc_14066A954:                          ; CODE XREF: sub_14066A7F8+47↑j
                                        ; sub_14066A7F8+149↑j
                mov     rbp, [rsp+48h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066A7F8   endp

algn_14066A96A:                         ; DATA XREF: .pdata:0000000140100440↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14066A970   proc near               ; CODE XREF: sub_14066A7F8+13F↑p
                                        ; sub_14076FB94+63↓p
                                        ; DATA XREF: ...

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                xorps   xmm0, xmm0
                mov     rdi, rcx
                lea     rcx, [rsp+68h+var_48]
                mov     ebx, edx
                movups  [rsp+68h+var_48], xmm0
                movups  [rsp+68h+var_38], xmm0
                movups  [rsp+68h+var_28], xmm0
                call    sub_14063A890
                call    sub_1405FA03C
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14066E11C
                call    sub_14064A360
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                call    sub_14021E230
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140C47C20
                call    ExAcquireFastMutexUnsafe
                mov     rdx, [rdi]
                cmp     [rdx+8], rdi
                jnz     short loc_14066AA42
                mov     rax, [rdi+8]
                cmp     [rax], rdi
                jnz     short loc_14066AA42
                mov     [rax], rdx
                lea     rcx, dword_140C47C20
                mov     [rdx+8], rax
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     qword ptr [rdi+38h], 0
                jz      short loc_14066AA29
                mov     rcx, [rdi+38h]
                call    sub_14066AE40

loc_14066AA29:                          ; CODE XREF: sub_14066A970+AE↑j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066AA42:                          ; CODE XREF: sub_14066A970+7D↑j
                                        ; sub_14066A970+86↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 14066A970
sub_14066A970   endp

; ---------------------------------------------------------------------------
algn_14066AA49:                         ; DATA XREF: .pdata:000000014010044C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14066AA50   proc near               ; CODE XREF: sub_140869DD0+C↓p
                                        ; DATA XREF: .rdata:0000000140063290↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014080BA0C SIZE 0000000F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, gs:188h
                mov     esi, r9d
                mov     rbp, r8
                mov     r14d, edx
                mov     r15, rcx
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C47FA8
                call    sub_14024C840
                mov     rcx, gs:188h
                test    al, al
                jz      loc_14080BA0C
                mov     r9b, [rcx+232h]
                lea     rax, [rsp+58h+var_28]
                mov     rcx, [rsp+58h+arg_20]
                mov     edx, 4
                mov     r8, cs:qword_140C47C10
                and     [rsp+58h+var_30], 0
                and     [rsp+58h+var_28], 0
                mov     [rsp+58h+var_38], rax
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+58h+var_28]
                mov     edi, eax
                cmp     eax, 0C0000024h
                jnz     loc_14066AB8E
                mov     rax, gs:188h
                mov     edx, 4
                and     [rsp+58h+var_30], 0
                mov     r8, cs:TmTransactionObjectType
                and     [rsp+58h+var_20], 0
                mov     r9b, [rax+232h]
                lea     rax, [rsp+58h+var_20]
                mov     rcx, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+58h+var_20]
                mov     edi, eax

loc_14066AB2F:                          ; CODE XREF: sub_14066AA50+146↓j
                test    edi, edi
                js      short loc_14066AB4B
                mov     r9d, esi
                mov     [rsp+58h+var_38], rbx
                mov     r8, rbp
                mov     edx, r14d
                mov     rcx, r15
                call    sub_1406510D0
                mov     edi, eax

loc_14066AB4B:                          ; CODE XREF: sub_14066AA50+E1↑j
                                        ; sub_14066AA50+140↓j
                test    rbx, rbx
                jz      short loc_14066AB58
                mov     rcx, rbx
                call    sub_14066AE40

loc_14066AB58:                          ; CODE XREF: sub_14066AA50+FE↑j
                lea     rcx, qword_140C47FA8
                call    sub_14024C380
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14066AB72:                          ; CODE XREF: sub_14066AA50+1A0FC6↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066AB8E:                          ; CODE XREF: sub_14066AA50+93↑j
                test    eax, eax
                js      short loc_14066AB4B
                or      rbx, 1
                jmp     short loc_14066AB2F
sub_14066AA50   endp

; ---------------------------------------------------------------------------
algn_14066AB98:                         ; DATA XREF: .rdata:0000000140063290↑o
                                        ; .pdata:0000000140100458↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066ABA0   proc near               ; CODE XREF: sub_14064D600+855↑p
                                        ; sub_14064D600+894↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     r11d, r9d
                mov     rax, rdx
                mov     r10, rcx
                test    rcx, rcx
                jz      short loc_14066ABE7
                test    al, 1
                jz      short loc_14066ABCF
                mov     r9, [rsp+38h+arg_20]
                mov     rdx, rcx
                mov     rcx, rax
                mov     r8d, r11d
                call    sub_14066AC94

loc_14066ABC9:                          ; CODE XREF: sub_14066ABA0+45↓j
                                        ; sub_14066ABA0+4C↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14066ABCF:                          ; CODE XREF: sub_14066ABA0+14↑j
                mov     rcx, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rcx
                mov     rcx, [r10+1060h]
                call    sub_140765784
                jmp     short loc_14066ABC9
; ---------------------------------------------------------------------------

loc_14066ABE7:                          ; CODE XREF: sub_14066ABA0+10↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14066ABC9
sub_14066ABA0   endp

; ---------------------------------------------------------------------------
byte_14066ABEE  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140100464↑o

; =============== S U B R O U T I N E =======================================


sub_14066ABF4   proc near               ; CODE XREF: sub_1405FA578+150↑p
                                        ; DoScreenSave+452↑p ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014080BA1C SIZE 00000015 BYTES

                push    rbx
                sub     rsp, 30h
                and     [rsp+38h+arg_0], 0
                mov     rbx, rdx
                mov     r8, [rcx+38h]
                mov     r10, rcx
                test    r8, r8
                jz      loc_14080BA1C

loc_14066AC13:                          ; CODE XREF: sub_14066ABF4+1A0E2D↓j
                mov     rdx, [rcx+8]
                mov     cl, dl
                mov     rax, rdx
                xor     rax, 1
                and     cl, 1
                cmovz   rax, rdx
                mov     rcx, [rax+20h]
                test    r8b, 1
                jz      short loc_14066AC5A
                mov     rdx, rcx
                lea     r9, [rsp+38h+arg_0]
                mov     rcx, [r10+38h]
                xor     r8d, r8d
                call    sub_14066AC94

loc_14066AC45:                          ; CODE XREF: sub_14066ABF4+91↓j
                test    eax, eax
                js      short loc_14066AC53
                mov     rax, [rsp+38h+arg_0]
                mov     [rbx], rax
                xor     eax, eax

loc_14066AC53:                          ; CODE XREF: sub_14066ABF4+53↑j
                                        ; sub_14066ABF4+98↓j ...
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066AC5A:                          ; CODE XREF: sub_14066ABF4+3B↑j
                mov     r8, [rcx+1060h]
                test    r8, r8
                jz      short loc_14066AC87
                mov     rdx, [r10+40h]
                lea     rax, [rsp+38h+arg_0]
                mov     [rsp+38h+var_10], rax
                mov     r9, rcx
                and     [rsp+38h+var_18], 0
                mov     rcx, [r10+38h]
                call    sub_1407657FC
                jmp     short loc_14066AC45
; ---------------------------------------------------------------------------

loc_14066AC87:                          ; CODE XREF: sub_14066ABF4+70↑j
                mov     eax, 0C0190005h
                jmp     short loc_14066AC53
sub_14066ABF4   endp

; ---------------------------------------------------------------------------
byte_14066AC8E  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400632B8↑o
                                        ; .pdata:0000000140100470↑o

; =============== S U B R O U T I N E =======================================


sub_14066AC94   proc near               ; CODE XREF: sub_14066ABA0+24↑p
                                        ; sub_14066ABF4+4C↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080BA32 SIZE 0000007F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rcx
                mov     r15, r9
                and     rbp, 0FFFFFFFFFFFFFFFEh
                mov     esi, r8d
                mov     r12, rdx
                mov     rbx, rcx
                xor     r14d, r14d
                call    sub_14066ADE0
                mov     edi, eax
                test    eax, eax
                js      short loc_14066ACF6
                mov     rax, [rbp+10h]
                test    rax, rax
                jz      short loc_14066AD18
                mov     [r15], rax
                xor     edi, edi

loc_14066ACE0:                          ; CODE XREF: sub_14066AC94+8D↓j
                                        ; sub_14066AC94+13B↓j ...
                test    rbx, rbx
                jz      short loc_14066ACED
                mov     rcx, rbx
                call    sub_14066AE40

loc_14066ACED:                          ; CODE XREF: sub_14066AC94+4F↑j
                test    r14d, r14d
                jnz     loc_14080BA77

loc_14066ACF6:                          ; CODE XREF: sub_14066AC94+3C↑j
                                        ; sub_14066AC94+1A0DFE↓j
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
                align 8

loc_14066AD18:                          ; CODE XREF: sub_14066AC94+45↑j
                test    esi, esi
                jnz     short loc_14066AD23
                mov     edi, 0C0190002h
                jmp     short loc_14066ACE0
; ---------------------------------------------------------------------------

loc_14066AD23:                          ; CODE XREF: sub_14066AC94+86↑j
                mov     r9, r12
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14066AE5C
                mov     rsi, rax
                test    rax, rax
                jz      loc_14080BA32
                xor     eax, eax
                lock cmpxchg [rbp+10h], rsi
                mov     rcx, gs:188h
                mov     rdi, rax
                jnz     loc_14080BA3C
                mov     rdi, rsi
                xor     ebx, ebx
                xor     esi, esi
                dec     word ptr [rcx+1E4h]
                lea     rcx, dword_140C47C20
                call    ExAcquireFastMutexUnsafe
                mov     eax, [rdi+30h]
                test    al, 7
                jnz     loc_14080BA72
                mov     dword ptr [rdi+30h], 80h
                lea     rcx, qword_140C47C60
                mov     rax, cs:qword_140C47C68
                cmp     [rax], rcx
                jnz     loc_14080BA97
                mov     [rdi], rcx
                lea     rcx, dword_140C47C20
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     cs:qword_140C47C68, rdi
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     [r15], rdi
                xor     edi, edi

loc_14066ADCC:                          ; CODE XREF: sub_14066AC94+1A0DD9↓j
                test    rsi, rsi
                jz      loc_14066ACE0
                jmp     loc_14080BA9E
sub_14066AC94   endp

; ---------------------------------------------------------------------------
algn_14066ADDA:                         ; DATA XREF: .rdata:00000001400632E8↑o
                                        ; .pdata:000000014010047C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066ADE0   proc near               ; CODE XREF: sub_140650BA0+67↑p
                                        ; sub_14066AC94+33↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014080BAB2 SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                and     rbx, 0FFFFFFFFFFFFFFFEh
                test    cl, 1
                mov     rcx, rbx
                jz      short loc_14066AE18
                call    ObfReferenceObject
                mov     eax, [rbx]
                neg     eax
                sbb     edi, edi
                and     edi, 0C0190003h

loc_14066AE0A:                          ; CODE XREF: sub_14066ADE0+50↓j
                                        ; sub_14066ADE0+1A0CDF↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14066AE18:                          ; CODE XREF: sub_14066ADE0+17↑j
                xor     edi, edi
                call    ObfReferenceObject
                mov     rcx, rbx
                call    cs:TmIsTransactionActive_0
                nop     dword ptr [rax+rax+00h]
                test    al, al
                jnz     short loc_14066AE0A
                jmp     loc_14080BAB2
sub_14066ADE0   endp

; ---------------------------------------------------------------------------
algn_14066AE37:                         ; DATA XREF: .rdata:0000000140063308↑o
                                        ; .pdata:0000000140100488↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066AE40   proc near               ; CODE XREF: sub_140650BA0+4A3↑p
                                        ; sub_140653530+1E9↑p ...
                sub     rsp, 28h
                and     rcx, 0FFFFFFFFFFFFFFFEh
                call    PsDereferenceSiloContext
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066AE40   endp

byte_14066AE53  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140100494↑o

; =============== S U B R O U T I N E =======================================


sub_14066AE5C   proc near               ; CODE XREF: sub_14066AC94+9A↑p
                                        ; sub_1407657FC+150↓p
                                        ; DATA XREF: ...

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
                mov     r14, r8
                mov     rsi, rdx
                mov     rdi, rcx
                mov     edx, 0B8h
                mov     ecx, 1
                mov     r8d, 72544D43h
                mov     rbp, r9
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14066AF27
                xor     edx, edx
                mov     r8d, 0B8h
                mov     rcx, rax
                call    memset
                mov     [rbx+38h], rdi
                mov     edx, 88h
                mov     rcx, cs:qword_14001CEB8
                mov     [rbx+68h], rcx
                mov     rcx, rdi
                and     ecx, 1
                mov     dword ptr [rbx+30h], 8
                mov     eax, [rbx+30h]
                cmovnz  eax, edx
                mov     [rbx+40h], r14
                mov     [rbx+30h], eax
                test    rsi, rsi
                jz      short loc_14066AEEA
                movups  xmm0, xmmword ptr [rsi]
                jmp     short loc_14066AEFA
; ---------------------------------------------------------------------------

loc_14066AEEA:                          ; CODE XREF: sub_14066AE5C+87↑j
                test    rcx, rcx
                jnz     short loc_14066AEFF
                and     rdi, 0FFFFFFFFFFFFFFFEh
                movups  xmm0, xmmword ptr [rdi+0B0h]

loc_14066AEFA:                          ; CODE XREF: sub_14066AE5C+8C↑j
                movdqu  xmmword ptr [rbx+58h], xmm0

loc_14066AEFF:                          ; CODE XREF: sub_14066AE5C+91↑j
                lea     rax, [rbx+10h]
                mov     [rbx+8], rbx
                mov     [rax+8], rax
                mov     rdx, rbx
                mov     [rax], rax
                mov     rcx, rbp
                lea     rax, [rbx+20h]
                mov     [rbx], rbx
                mov     [rax+8], rax
                mov     [rax], rax
                call    sub_14066AF4C

loc_14066AF27:                          ; CODE XREF: sub_14066AE5C+40↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066AE5C   endp

byte_14066AF46  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001401004A0↑o

; =============== S U B R O U T I N E =======================================


sub_14066AF4C   proc near               ; CODE XREF: sub_14066AE5C+C6↑p
                                        ; sub_1407657FC+B0↓p ...

; FUNCTION CHUNK AT 000000014080BAC4 SIZE 0000000D BYTES

                mov     eax, [rdx+30h]
                xor     r8d, r8d
                mov     r9d, 1
                test    al, al
                js      short loc_14066AF8C
                test    rcx, rcx
                jz      short loc_14066AF74
                mov     r10d, [rdx+70h]
                test    r10d, r10d
                jz      short loc_14066AF81

loc_14066AF6A:                          ; CODE XREF: sub_14066AF4C+33↓j
                mov     eax, r8d
                cmp     rcx, [rdx+rax*8+78h]
                jnz     short loc_14066AF79

loc_14066AF74:                          ; CODE XREF: sub_14066AF4C+13↑j
                                        ; sub_14066AF4C+3E↓j ...
                mov     eax, r9d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14066AF79:                          ; CODE XREF: sub_14066AF4C+26↑j
                add     r8d, r9d
                cmp     r8d, r10d
                jb      short loc_14066AF6A

loc_14066AF81:                          ; CODE XREF: sub_14066AF4C+1C↑j
                mov     [rdx+r10*8+78h], rcx
                add     [rdx+70h], r9d
                jmp     short loc_14066AF74
; ---------------------------------------------------------------------------

loc_14066AF8C:                          ; CODE XREF: sub_14066AF4C+E↑j
                cmp     [rdx+70h], r8d
                jnz     loc_14080BAC4
                mov     [rdx+78h], rcx
                jmp     short loc_14066AF74
sub_14066AF4C   endp

; ---------------------------------------------------------------------------
byte_14066AF9C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401004AC↑o

; =============== S U B R O U T I N E =======================================


sub_14066AFA4   proc near               ; CODE XREF: sub_14066B960:loc_14066BA3C↓p
                                        ; sub_14086BFB8+4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                lea     rdi, unk_140C479A0

loc_14066AFB7:                          ; CODE XREF: sub_14066AFA4+24↓j
                xor     edx, edx
                xchg    edx, [rdi]
                test    edx, edx
                jnz     short loc_14066AFD6

loc_14066AFBF:                          ; CODE XREF: sub_14066AFA4+39↓j
                inc     ebx
                add     rdi, 4
                cmp     ebx, 1Ch
                jl      short loc_14066AFB7
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066AFD6:                          ; CODE XREF: sub_14066AFA4+19↑j
                mov     ecx, ebx
                call    sub_140877E2C
                jmp     short loc_14066AFBF
sub_14066AFA4   endp

; ---------------------------------------------------------------------------
byte_14066AFDF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401004B8↑o

; =============== S U B R O U T I N E =======================================


sub_14066AFE8   proc near               ; CODE XREF: sub_1402B0230+353↑p
                                        ; sub_1407A6D60+222↓p ...

var_48          = dword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014080BAD2 SIZE 000000CA BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_10], rax
                and     [rsp+68h+var_48], 0
                xorps   xmm0, xmm0
                movups  [rsp+68h+var_40], xmm0
                mov     rdi, rcx
                movups  [rsp+68h+var_30], xmm0
                movups  [rsp+68h+var_20], xmm0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140C47C20
                call    ExAcquireFastMutexUnsafe
                add     rdi, 10h

loc_14066B03B:                          ; CODE XREF: sub_14066AFE8+1A0BA8↓j
                mov     rbx, [rdi]
                cmp     rbx, rdi
                jnz     loc_14080BAD2
                lea     rcx, dword_140C47C20
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax
                mov     rcx, [rsp+68h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066AFE8
sub_14066AFE8   endp

byte_14066B07C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140063330↑o
                                        ; .pdata:00000001401004C4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1A0h

sub_14066B084   proc near               ; CODE XREF: sub_14066B110+106↓p
                                        ; sub_1407997C4+114↓p ...

var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_260         = dword ptr -260h
var_258         = qword ptr -258h
var_250         = xmmword ptr -250h
var_240         = xmmword ptr -240h
var_230         = xmmword ptr -230h
var_220         = xmmword ptr -220h
var_210         = byte ptr -210h
var_204         = byte ptr -204h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014080BB9C SIZE 000000DF BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rdi
                push    rbp
                lea     rbp, [rsp-1A0h]
                sub     rsp, 2A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1A0h+var_10], rax
                and     [rsp+2A0h+var_258], 0
                xorps   xmm1, xmm1
                cmp     cs:dword_140CF4A58, 0
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     rdi, rcx
                movups  [rsp+2A0h+var_250], xmm0
                movups  [rsp+2A0h+var_240], xmm1
                movups  [rsp+2A0h+var_230], xmm1
                movups  [rbp+1A0h+var_220], xmm1
                jnz     loc_14080BB9C
                xor     al, al

loc_14066B0E3:                          ; CODE XREF: sub_14066B084+1A0BF2↓j
                mov     rcx, [rbp+1A0h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2A0h+var_s0]
                mov     rbx, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066B084
sub_14066B084   endp

algn_14066B108:                         ; DATA XREF: .rdata:0000000140063360↑o
                                        ; .pdata:00000001401004D0↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=280h

sub_14066B110   proc near               ; CODE XREF: sub_14066C7CC+A20↓p
                                        ; DATA XREF: .rdata:0000000140063394↑o ...

var_360         = qword ptr -360h
var_358         = qword ptr -358h
var_350         = qword ptr -350h
var_348         = qword ptr -348h
var_340         = qword ptr -340h
var_338         = byte ptr -338h
var_330         = qword ptr -330h
var_320         = byte ptr -320h
var_31F         = byte ptr -31Fh
var_31C         = word ptr -31Ch
var_318         = word ptr -318h
var_314         = word ptr -314h
var_310         = word ptr -310h
var_30C         = word ptr -30Ch
var_308         = word ptr -308h
var_300         = qword ptr -300h
var_2F8         = dword ptr -2F8h
var_2F4         = dword ptr -2F4h
var_2F0         = dword ptr -2F0h
var_2EC         = dword ptr -2ECh
var_2E8         = qword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D8         = qword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = qword ptr -2A8h
var_2A0         = xmmword ptr -2A0h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = xmmword ptr -270h
var_260         = xmmword ptr -260h
var_250         = xmmword ptr -250h
var_240         = byte ptr -240h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = dword ptr -1B8h
var_1B4         = dword ptr -1B4h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = dword ptr -198h
var_194         = dword ptr -194h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = dword ptr -178h
var_174         = dword ptr -174h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = byte ptr -160h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = byte ptr -0A0h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = byte ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = byte ptr  50h
arg_48          = qword ptr  58h
arg_50          = qword ptr  60h

; FUNCTION CHUNK AT 000000014080BC7C SIZE 000005C6 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-248h]
                sub     rsp, 348h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+280h+var_50], rax
                mov     rax, [rbp+280h+arg_20]
                xor     edi, edi
                mov     [rbp+280h+var_2A8], rax
                xorps   xmm0, xmm0
                mov     rax, [rbp+280h+arg_30]
                mov     r14, rcx
                mov     [rbp+280h+var_2C8], rax
                mov     r15d, r8d
                mov     rax, [rbp+280h+arg_38]
                lea     ebx, [rdi+2]
                mov     [rbp+280h+var_2B8], rax
                mov     rsi, rdx
                mov     rax, [rbp+280h+arg_48]
                mov     [rbp+280h+var_2B0], rax
                mov     rax, [rbp+280h+arg_50]
                mov     [rbp+280h+var_2D0], rax
                mov     rax, [rcx+10h]
                mov     [rsp+380h+var_320], dil
                movups  [rbp+280h+var_270], xmm0
                mov     [rbp+280h+var_2C0], r9
                movups  [rbp+280h+var_260], xmm0
                mov     [rbp+280h+var_300], rdi
                movups  [rbp+280h+var_250], xmm0
                movzx   ecx, word ptr [rax]
                mov     [rbp+280h+var_2E8], rdi
                mov     [rbp+280h+var_2F8], edi
                cmp     cx, bx
                jb      short loc_14066B1CC
                mov     edx, ecx
                shr     edx, 1
                jz      short loc_14066B1CC

loc_14066B1B7:                          ; CODE XREF: sub_14066B110+1A0B77↓j
                mov     r8, [r14+10h]
                dec     edx
                mov     rax, [r8+8]
                cmp     word ptr [rax+rdx*2], 5Ch ; '\'
                jz      loc_14080BC7C

loc_14066B1CC:                          ; CODE XREF: sub_14066B110+9F↑j
                                        ; sub_14066B110+A5↑j ...
                mov     rax, [r14+10h]
                cmp     [rax], bx
                jb      loc_14080BC92
                mov     r13d, 104h
                mov     r8d, 62534D43h
                mov     edx, r13d
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     r12, rax
                test    rax, rax
                jz      loc_14080BC9C
                mov     rcx, [r14+10h]
                lea     rdx, [rbp+280h+var_2A0]
                xorps   xmm0, xmm0
                movups  [rbp+280h+var_2A0], xmm0
                mov     word ptr [rbp+280h+var_2A0+2], r13w
                mov     qword ptr [rbp+280h+var_2A0+8], rax
                call    sub_14066B084
                test    al, al
                jnz     loc_14080BCA6

loc_14066B223:                          ; CODE XREF: sub_14066B110+1A0BA5↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C47FA8
                call    sub_14024C840
                test    al, al
                jz      loc_14080BCBA
                mov     r13d, r15d
                mov     edx, 1B0h
                and     r13d, 2000h
                mov     r8d, 33394D43h
                mov     eax, r13d
                neg     eax
                mov     eax, r15d
                sbb     ecx, ecx
                and     ecx, 3
                mov     ebx, ecx
                or      ebx, 8
                and     eax, 4000h
                cmovz   ebx, ecx
                mov     ecx, 1
                call    sub_14020A4B0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14080BCDC
                xor     edx, edx
                mov     r8d, 1B0h
                mov     rcx, rax
                call    memset
                mov     [rsp+380h+var_340], rdi
                lea     r9, [rbp+280h+var_300]
                mov     edx, ebx
                mov     [rsp+380h+var_31F], 1
                or      edx, 4
                lea     r8, [rsp+380h+var_31F]
                cmp     [rbp+280h+var_2A8], 0
                mov     ecx, r15d
                mov     eax, r15d
                cmovz   edx, ebx
                and     ecx, 4
                shl     ecx, 6
                and     eax, 20h
                or      ecx, eax
                mov     eax, r15d
                add     ecx, ecx
                and     eax, 480h
                or      ecx, eax
                mov     eax, r15d
                add     ecx, ecx
                and     eax, 0FFFFF223h
                or      ecx, eax
                lea     rax, [rsp+380h+var_320]
                mov     [rsp+380h+var_348], rax
                mov     rax, [rbp+280h+var_2B8]
                shl     ecx, 13h
                mov     [rsp+380h+var_350], rax
                or      ecx, 1190001h
                mov     dword ptr [rsp+380h+var_358], edx
                mov     dl, 1
                mov     dword ptr [rsp+380h+var_360], ecx
                mov     rcx, rsi
                call    sub_1405E7548
                mov     ebx, eax
                test    eax, eax
                js      loc_14080BCE9
                mov     rsi, [rbp+280h+var_300]
                test    r13d, r13d
                jnz     loc_14080BE36
                mov     r13b, [rbp+280h+arg_40]

loc_14066B331:                          ; CODE XREF: sub_14066B110+1A0DD7↓j
                cmp     [rbp+280h+arg_28], 0
                jnz     loc_14066B4A1

loc_14066B33E:                          ; CODE XREF: sub_14066B110+399↓j
                mov     al, [rsp+380h+var_320]
                mov     r8d, r15d
                mov     r9, [rbp+280h+var_2C0]
                mov     rdx, r14
                mov     [rsp+380h+var_330], rdi
                mov     rcx, rsi
                mov     [rsp+380h+var_338], al
                mov     al, [rsp+380h+var_31F]
                mov     byte ptr [rsp+380h+var_340], al
                mov     rax, [rbp+280h+var_2D0]
                mov     [rsp+380h+var_348], rax
                mov     rax, [rbp+280h+var_2C8]
                mov     byte ptr [rsp+380h+var_350], r13b
                mov     [rsp+380h+var_358], rax
                mov     rax, [rbp+280h+var_2A8]
                mov     [rsp+380h+var_360], rax
                call    sub_1402B0230
                xor     r13d, r13d
                mov     ebx, eax
                mov     esi, r13d
                test    eax, eax
                js      loc_14080BEF2

loc_14066B395:                          ; CODE XREF: sub_14066B110+1A0D21↓j
                                        ; sub_14066B110+1A0DCC↓j
                mov     ebx, r13d

loc_14066B398:                          ; CODE XREF: sub_14066B110+1A0C1B↓j
                                        ; sub_14066B110+1A0C88↓j ...
                test    rsi, rsi
                jnz     loc_14080BF11

loc_14066B3A1:                          ; CODE XREF: sub_14066B110+1A0BD4↓j
                                        ; sub_14066B110+1A0DFC↓j ...
                lea     rcx, qword_140C47FA8
                call    sub_14024C380
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag
                test    ebx, ebx
                js      loc_14080BF33
                cmp     cs:dword_140C02130, 5
                jbe     short loc_14066B3F3
                lea     rsi, dword_140C02130
                mov     rdx, 400000000008h
                mov     rcx, rsi
                call    sub_140209F38
                test    al, al
                jnz     short loc_14066B426

loc_14066B3F3:                          ; CODE XREF: sub_14066B110+2C4↑j
                                        ; sub_14066B110+38C↓j ...
                test    rdi, rdi
                jz      short loc_14066B400
                mov     rcx, rdi
                call    SeFreePrivileges

loc_14066B400:                          ; CODE XREF: sub_14066B110+2E6↑j
                mov     eax, ebx

loc_14066B402:                          ; CODE XREF: sub_14066B110+1A0B87↓j
                                        ; sub_14066B110+1A0B91↓j ...
                mov     rcx, [rbp+280h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 348h
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

loc_14066B426:                          ; CODE XREF: sub_14066B110+2E1↑j
                lea     rax, [rbp+280h+var_280]
                mov     [rbp+280h+var_280], 1
                mov     [rbp+280h+var_80], rax
                lea     rdx, byte_140021EB1
                lea     rax, [rbp+280h+var_2EC]
                mov     [rbp+280h+var_78], 8
                mov     [rbp+280h+var_70], rax
                mov     r9d, 5
                lea     rax, [rbp+280h+var_278]
                mov     [rbp+280h+var_2EC], ebx
                mov     [rbp+280h+var_60], rax
                mov     rcx, rsi
                lea     rax, [rbp+280h+var_A0]
                mov     [rbp+280h+var_68], 4
                mov     [rsp+380h+var_360], rax
                mov     [rbp+280h+var_278], 1000000h
                mov     [rbp+280h+var_58], 8
                call    sub_1403761E4
                jmp     loc_14066B3F3
; ---------------------------------------------------------------------------

loc_14066B4A1:                          ; CODE XREF: sub_14066B110+228↑j
                bts     dword ptr [rsi+1038h], 0Dh
                jmp     loc_14066B33E
; } // starts at 14066B110
sub_14066B110   endp

; ---------------------------------------------------------------------------
byte_14066B4AE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140063394↑o
                                        ; .pdata:00000001401004DC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14066B4B4   proc near               ; CODE XREF: sub_1402B0230+321↑p
                                        ; sub_1407A6D60+3D5↓p ...

var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_8           = word ptr  38h
arg_10          = dword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 000000014080C242 SIZE 00000019 BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 80h
                xor     r14d, r14d
                xorps   xmm0, xmm0
                cmp     cs:qword_140CDB388, r14
                mov     rsi, rcx
                movups  [rbp+var_40], xmm0
                mov     [rbp+arg_10], r14d
                mov     [rbp+arg_8], r14w
                movups  [rbp+var_30], xmm0
                mov     [rbp+arg_18], r14
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                jz      loc_14066B5B2

loc_14066B4F8:                          ; CODE XREF: sub_14066B4B4+16C↓j
                                        ; sub_14066B4B4+1A0D98↓j
                mov     edx, 202h
                mov     ecx, 1
                mov     r8d, 62714D43h
                call    sub_14020A4B0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14080C251
                mov     eax, [rsi+0A0h]
                test    al, 1
                jnz     loc_14066B62B
                mov     rcx, [rsi+600h]
                lea     rax, [rbp+arg_10]
                mov     r9d, 200h
                mov     [rsp+80h+var_60], rax
                mov     r8, rdi
                mov     edx, 1
                call    ZwQueryObject
                mov     ebx, eax
                mov     eax, [rbp+arg_10]
                add     eax, 0FFFFFFF0h
                mov     edx, eax
                mov     [rbp+arg_10], eax
                test    ebx, ebx
                js      short loc_14066B599
                mov     rcx, [rdi+8]
                mov     eax, edx
                shr     rax, 1
                mov     [rcx+rax*2], r14w
                mov     eax, [rbp+arg_10]
                add     eax, 2

loc_14066B56F:                          ; CODE XREF: sub_14066B4B4+180↓j
                mov     [rsp+80h+var_58], eax
                lea     rdx, [rsi+738h]
                mov     [rsp+80h+var_60], rcx
                mov     r9d, 1
                mov     rcx, cs:qword_140CDB388
                xor     r8d, r8d
                mov     [rbp+arg_10], eax
                call    ZwSetValueKey
                mov     ebx, eax

loc_14066B599:                          ; CODE XREF: sub_14066B4B4+A5↑j
                mov     rcx, rdi
                call    SeFreePrivileges

loc_14066B5A1:                          ; CODE XREF: sub_14066B4B4+15B↓j
                                        ; sub_14066B4B4+1A0DA2↓j
                mov     eax, ebx
                add     rsp, 80h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066B5B2:                          ; CODE XREF: sub_14066B4B4+3E↑j
                lea     rdx, aRegistryMachin_30 ; "\\registry\\machine\\system\\currentcon"...
                lea     rcx, [rbp+var_40]
                call    RtlInitUnicodeString
                lea     rax, [rbp+var_40]
                mov     [rsp+80h+var_50], r14
                xorps   xmm0, xmm0
                mov     [rsp+80h+var_58], 1
                xor     r9d, r9d
                mov     qword ptr [rbp+var_20], rax
                lea     r8, [rbp+var_30]
                mov     dword ptr [rbp+var_30], 30h ; '0'
                mov     edx, 2001Fh
                mov     qword ptr [rbp+var_30+8], r14
                lea     rcx, [rbp+arg_18]
                mov     dword ptr [rbp+var_20+8], 240h
                movdqu  [rbp+var_10], xmm0
                mov     [rsp+80h+var_60], r14
                call    ZwCreateKey
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066B5A1
                mov     rcx, [rbp+arg_18]
                xor     eax, eax
                lock cmpxchg cs:qword_140CDB388, rcx
                jz      loc_14066B4F8
                jmp     loc_14080C242
; ---------------------------------------------------------------------------

loc_14066B62B:                          ; CODE XREF: sub_14066B4B4+6D↑j
                lea     rcx, [rbp+arg_8]
                mov     eax, 2
                jmp     loc_14066B56F
sub_14066B4B4   endp

; ---------------------------------------------------------------------------
algn_14066B639:                         ; DATA XREF: .rdata:00000001400633B8↑o
                                        ; .pdata:00000001401004E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066B640   proc near               ; CODE XREF: sub_1405F8E80+761↑p
                                        ; sub_1405F8E80+7A5↑p ...

var_38          = dword ptr -38h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080C25C SIZE 000000A6 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 50h
                and     dword ptr [rax-24h], 0
                mov     ebx, r9d
                and     dword ptr [rax-14h], 0
                mov     bpl, r8b
                cmp     qword ptr [rcx+600h], 0
                mov     r14b, dl
                mov     rsi, rcx
                jz      loc_14066B72F
                and     ebx, 1
                test    r8b, r8b
                jz      loc_14080C25C
                mov     rdi, [rcx+6E8h]

loc_14066B68E:                          ; CODE XREF: sub_14066B640+1A0CAD↓j
                mov     ecx, [rsi+0A8h]
                test    r14b, r14b
                lea     eax, [rcx-1]
                cmovnz  eax, ecx
                mov     [rdi+8], eax
                mov     [rdi+4], ecx
                mov     rcx, rdi
                call    sub_14066E894
                mov     [rdi+1FCh], eax
                lea     r8, [rsp+58h+var_28]
                mov     rax, [rsi+28h]
                mov     r9d, 1
                and     [rsp+58h+var_28], 0
                xor     edx, edx
                mov     rcx, rsi
                mov     [rsp+58h+var_20], rdi
                mov     [rsp+58h+var_18], 1000h
                mov     [rsp+58h+var_38], ebx
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066B708
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140670004
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066B708
                mov     [rsi+0BEh], r14b
                xor     ebx, ebx
                mov     eax, [rdi+8]
                mov     [rsi+0B4h], eax

loc_14066B708:                          ; CODE XREF: sub_14066B640+A4↑j
                                        ; sub_14066B640+B4↑j
                test    bpl, bpl
                jz      loc_14080C2F2

loc_14066B711:                          ; CODE XREF: sub_14066B640+F1↓j
                                        ; sub_14066B640+1A0C3E↓j ...
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14066B72F:                          ; CODE XREF: sub_14066B640+35↑j
                xor     ebx, ebx
                jmp     short loc_14066B711
sub_14066B640   endp

; ---------------------------------------------------------------------------
byte_14066B733  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400633E4↑o
                                        ; .pdata:00000001401004F4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=10h

sub_14066B73C   proc near               ; CODE XREF: sub_1405F8E80+713↑p
                                        ; sub_1405F8E80+7F8↑p
                                        ; DATA XREF: ...

var_F0          = qword ptr -0F0h
var_E8          = byte ptr -0E8h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = byte ptr -0B0h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                lea     rbp, [rax-18h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+10h+var_10], rax
                mov     r10b, dl
                mov     rdi, rcx
                call    sub_14066ED80
                mov     ecx, [rdi+0A4h]
                mov     r11d, eax
                call    sub_14066EDEC
                mov     edx, [rdi+0A8h]
                mov     rbx, 0FFFFF78000000014h
                sub     edx, [rdi+0ACh]
                mov     r14d, 4
                mov     r8d, eax
                mov     rbx, [rbx]
                cmp     cs:dword_140C02130, 5
                mov     r9d, [rdi+r8*8+708h]
                jbe     loc_14066B8B1
                lea     rax, [rsp+110h+var_E0]
                mov     [rsp+110h+var_CC], r9d
                mov     [rbp+10h+var_90], rax
                lea     rcx, dword_140C02130
                mov     eax, [rdi+110h]
                test    r10b, r10b
                mov     [rsp+110h+var_DC], eax
                lea     rax, [rsp+110h+var_DC]
                mov     [rbp+10h+var_80], rax
                setz    byte ptr [rsp+110h+var_E0]
                mov     eax, [rdi+0B8h]
                xor     r9d, r9d
                and     [rbp+10h+var_84], 0
                xor     r8d, r8d
                and     [rbp+10h+var_74], 0
                and     [rbp+10h+var_64], 0
                and     [rbp+10h+var_54], 0
                and     [rbp+10h+var_44], 0
                and     [rbp+10h+var_34], 0
                and     [rbp+10h+var_24], 0
                and     [rbp+10h+var_14], 0
                mov     [rsp+110h+var_D8], eax
                lea     rax, [rsp+110h+var_D8]
                mov     [rbp+10h+var_70], rax
                lea     rax, [rsp+110h+var_D4]
                mov     [rbp+10h+var_60], rax
                mov     eax, [rdi+0B0h]
                mov     [rsp+110h+var_D0], eax
                lea     rax, [rsp+110h+var_D0]
                mov     [rbp+10h+var_50], rax
                lea     rax, [rsp+110h+var_CC]
                mov     [rbp+10h+var_40], rax
                lea     rax, [rsp+110h+var_C8]
                mov     [rbp+10h+var_30], rax
                mov     rax, rbx
                sub     rax, [rdi+0C0h]
                mov     [rsp+110h+var_C0], rax
                lea     rax, [rsp+110h+var_C0]
                mov     [rbp+10h+var_20], rax
                lea     rax, [rsp+110h+var_B0]
                mov     dword ptr [rsp+110h+var_C8], edx
                lea     rdx, dword_140022D87+3
                mov     qword ptr [rsp+110h+var_E8], rax
                mov     dword ptr [rsp+110h+var_F0], 0Ah
                mov     [rbp+10h+var_88], 1
                mov     [rbp+10h+var_78], r14d
                mov     [rbp+10h+var_68], r14d
                mov     [rsp+110h+var_D4], r11d
                mov     [rbp+10h+var_58], r14d
                mov     [rbp+10h+var_48], r14d
                mov     [rbp+10h+var_38], r14d
                mov     [rbp+10h+var_28], r14d
                mov     [rbp+10h+var_18], 8
                call    sub_140209DB8

loc_14066B8B1:                          ; CODE XREF: sub_14066B73C+73↑j
                mov     eax, [rdi+0A4h]
                sub     eax, r14d
                neg     eax
                sbb     eax, eax
                add     eax, 5
                mov     [rdi+0A4h], eax
                mov     eax, [rdi+0A8h]
                and     dword ptr [rdi+0B0h], 0
                mov     [rdi+0ACh], eax
                mov     [rdi+0C0h], rbx
                mov     rcx, [rbp+10h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+110h+var_s0]
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066B73C
sub_14066B73C   endp

algn_14066B907:                         ; DATA XREF: .pdata:0000000140100500↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14066B910   proc near               ; CODE XREF: sub_1405F8E80+7E6↑p
                                        ; sub_14066E8C4+1AD↓p ...
                sub     rsp, 28h
                mov     edx, [rcx+0A4h]
                mov     r8, rcx
                lea     eax, [rdx-4]
                cmp     eax, 1
                ja      short loc_14066B948
                sub     edx, 4
                neg     edx
                sbb     ecx, ecx
                add     ecx, 5
                call    sub_14066EDEC
                mov     ecx, eax
                cmp     byte ptr [rcx+r8+0BCh], 0
                setz    al

loc_14066B942:                          ; CODE XREF: sub_14066B910+3A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14066B948:                          ; CODE XREF: sub_14066B910+13↑j
                xor     al, al
                jmp     short loc_14066B942
sub_14066B910   endp

; ---------------------------------------------------------------------------
algn_14066B94C:                         ; DATA XREF: .pdata:000000014010050C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066B960   proc near               ; DATA XREF: .rdata:0000000140063438↑o
                                        ; .pdata:0000000140100518↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080C302 SIZE 0000001A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, cs:dword_140C004C4
                xor     bpl, bpl
                imul    rsi, rax, 989680h
                cmp     cs:byte_140D2D002, bpl
                mov     r15, rdx
                mov     r12, rcx
                jnz     loc_14066BA49
                xor     ecx, ecx

loc_14066B9A2:                          ; CODE XREF: sub_14066B960+83↓j
                call    sub_1405F9DD0
                mov     rbx, rax
                test    rax, rax
                jz      loc_14066BA3C
                mov     cl, 1
                or      rdi, 0FFFFFFFFFFFFFFFFh
                call    sub_140212F34
                mov     rcx, rbx
                mov     r14, rax
                call    sub_14066BA74
                test    al, al
                jnz     short loc_14066BA15
                cmp     dword ptr [rbx+80h], 0
                jnz     short loc_14066B9E5

loc_14066B9D6:                          ; CODE XREF: sub_14066B960+8F↓j
                                        ; sub_14066B960+AB↓j ...
                cmp     rdi, rsi
                mov     rcx, rbx
                cmovnb  rdi, rsi
                mov     rsi, rdi
                jmp     short loc_14066B9A2
; ---------------------------------------------------------------------------

loc_14066B9E5:                          ; CODE XREF: sub_14066B960+74↑j
                test    dword ptr [rbx+0A0h], 8001h
                jnz     short loc_14066B9D6
                mov     eax, cs:dword_140C004C0
                mov     bpl, 1
                imul    rcx, rax, 989680h
                add     rcx, [rbx+1058h]
                cmp     r14, rcx
                jnb     short loc_14066B9D6
                mov     rdi, rcx
                sub     rdi, r14
                jmp     short loc_14066B9D6
; ---------------------------------------------------------------------------

loc_14066BA15:                          ; CODE XREF: sub_14066B960+6B↑j
                mov     rcx, rbx
                call    sub_14066ED80
                cmp     [rbx+0B0h], eax
                mov     rcx, rbx
                sbb     edx, edx
                and     edx, 10h
                add     edx, 6
                call    sub_1405F8E80
                test    eax, eax
                jns     short loc_14066B9D6
                jmp     loc_14080C302
; ---------------------------------------------------------------------------

loc_14066BA3C:                          ; CODE XREF: sub_14066B960+4D↑j
                call    sub_14066AFA4
                test    bpl, bpl
                jz      short loc_14066BA49
                mov     [r15], rsi

loc_14066BA49:                          ; CODE XREF: sub_14066B960+3A↑j
                                        ; sub_14066B960+E4↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     al, bpl
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
sub_14066B960   endp

byte_14066BA6C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140063438↑o
                                        ; .pdata:0000000140100518↑o

; =============== S U B R O U T I N E =======================================


sub_14066BA74   proc near               ; CODE XREF: sub_14066B960+64↑p
                                        ; DATA XREF: .pdata:0000000140100524↑o
                sub     rsp, 28h
                test    dword ptr [rcx+0A0h], 8001h
                mov     r11, rcx
                jnz     loc_14066BB0D
                xor     r10d, r10d
                cmp     [rcx+80h], r10d
                jz      short loc_14066BB0D
                mov     eax, cs:dword_140C112C0
                test    eax, eax
                jnz     short loc_14066BB0D
                cmp     cs:byte_140C47B60, r10b
                jz      short loc_14066BB15
                call    sub_14066ED80
                cmp     [r11+0B0h], eax
                jnb     short loc_14066BB15
                mov     r8d, [r11+0A4h]
                mov     ecx, r10d
                cmp     r8d, 1
                jz      short loc_14066BB15
                mov     eax, r10d
                mov     edx, r10d

loc_14066BACE:                          ; CODE XREF: sub_14066BA74+73↓j
                cmp     eax, r8d
                jz      short loc_14066BADF
                cmp     [rdx+r11+0BCh], r10b
                jnz     short loc_14066BADF
                inc     ecx

loc_14066BADF:                          ; CODE XREF: sub_14066BA74+5D↑j
                                        ; sub_14066BA74+67↑j
                inc     eax
                inc     rdx
                cmp     eax, 2
                jb      short loc_14066BACE
                test    ecx, ecx
                jz      short loc_14066BB15
                mov     cl, 1
                call    sub_140212F34
                mov     ecx, cs:dword_140C004C0
                imul    rdx, rcx, 989680h
                add     rdx, [r11+1058h]
                cmp     rax, rdx
                jnb     short loc_14066BB15

loc_14066BB0D:                          ; CODE XREF: sub_14066BA74+11↑j
                                        ; sub_14066BA74+21↑j ...
                xor     al, al

loc_14066BB0F:                          ; CODE XREF: sub_14066BA74+A3↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14066BB15:                          ; CODE XREF: sub_14066BA74+34↑j
                                        ; sub_14066BA74+42↑j ...
                mov     al, 1
                jmp     short loc_14066BB0F
sub_14066BA74   endp

; ---------------------------------------------------------------------------
algn_14066BB19:                         ; DATA XREF: .pdata:0000000140100524↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066BB20   proc near               ; CODE XREF: sub_14066C04C+82↓p
                                        ; DATA XREF: .rdata:000000014006345C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014080C31C SIZE 00000008 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r10, r8
                xor     r11d, r11d
                xor     r8d, r8d
                xor     sil, sil
                mov     rbx, r9
                mov     edi, edx
                cmp     r10, r9
                jz      loc_14080C31C
                test    edx, edx
                jz      short loc_14066BBAB
                lea     eax, [rdx-4]
                cmp     eax, 1
                ja      loc_14066BBEA

loc_14066BB59:                          ; CODE XREF: sub_14066BB20+D3↓j
                call    sub_14066ED80
                mov     r8d, eax

loc_14066BB61:                          ; CODE XREF: sub_14066BB20+B2↓j
                                        ; sub_14066BB20+CD↓j
                test    r10, r10
                jz      short loc_14066BB8F
                cmp     rbx, r8
                ja      short loc_14066BB8F
                cmp     r10, rbx
                jnb     short loc_14066BB8F
                test    sil, sil
                jnz     short loc_14066BB8F
                test    edi, edi
                mov     eax, 1000h
                cmovz   r11d, eax

loc_14066BB80:                          ; CODE XREF: sub_14066BB20+6B↓j
                add     r10, r10
                cmp     r10, r8
                ja      short loc_14066BBE5
                cmp     r10, rbx
                jb      short loc_14066BB80
                jmp     short loc_14066BB92
; ---------------------------------------------------------------------------

loc_14066BB8F:                          ; CODE XREF: sub_14066BB20+44↑j
                                        ; sub_14066BB20+49↑j ...
                mov     r10, rbx

loc_14066BB92:                          ; CODE XREF: sub_14066BB20+6D↑j
                                        ; sub_14066BB20+C8↓j
                test    r11d, r11d
                jnz     short loc_14066BBD4

loc_14066BB97:                          ; CODE XREF: sub_14066BB20+C3↓j
                mov     rax, r10

loc_14066BB9A:                          ; CODE XREF: sub_14066BB20+1A07FF↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14066BBAB:                          ; CODE XREF: sub_14066BB20+2B↑j
                mov     eax, [rcx+1038h]
                mov     r8d, 40000h
                test    al, al
                js      short loc_14066BBFD
                test    r10, r10
                jz      short loc_14066BBF8

loc_14066BBC0:                          ; CODE XREF: sub_14066BB20+DB↓j
                                        ; sub_14066BB20+E0↓j
                mov     al, sil
                neg     al
                sbb     r11d, r11d
                and     r11d, 0FFFC1000h
                add     r11d, r8d
                jmp     short loc_14066BB61
; ---------------------------------------------------------------------------

loc_14066BBD4:                          ; CODE XREF: sub_14066BB20+75↑j
                dec     r10d
                add     r10d, r11d
                neg     r11d
                mov     ecx, r11d
                and     r10, rcx
                jmp     short loc_14066BB97
; ---------------------------------------------------------------------------

loc_14066BBE5:                          ; CODE XREF: sub_14066BB20+66↑j
                mov     r10, r8
                jmp     short loc_14066BB92
; ---------------------------------------------------------------------------

loc_14066BBEA:                          ; CODE XREF: sub_14066BB20+33↑j
                cmp     edi, 1
                jnz     loc_14066BB61
                jmp     loc_14066BB59
; ---------------------------------------------------------------------------

loc_14066BBF8:                          ; CODE XREF: sub_14066BB20+9E↑j
                cmp     rbx, r8
                ja      short loc_14066BBC0

loc_14066BBFD:                          ; CODE XREF: sub_14066BB20+99↑j
                mov     sil, 1
                jmp     short loc_14066BBC0
sub_14066BB20   endp

; ---------------------------------------------------------------------------
algn_14066BC02:                         ; DATA XREF: .rdata:000000014006345C↑o
                                        ; .pdata:0000000140100530↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14066BC08   proc near               ; CODE XREF: sub_14066F3A8+1FF↓p
                                        ; sub_14087590C+EB↓p
                                        ; DATA XREF: ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                lea     edi, [rdx+1000h]
                mov     rbx, rcx
                cmp     [rcx+8], rdi
                jge     short loc_14066BC7F
                cmp     rdi, [rcx+10h]
                jle     short loc_14066BC3A
                mov     rcx, [rcx]
                mov     edx, edi
                call    sub_1402B005C
                test    eax, eax
                js      short loc_14066BC81

loc_14066BC3A:                          ; CODE XREF: sub_14066BC08+22↑j
                mov     rcx, rbx
                call    sub_14066BCB0
                test    rax, rax
                jz      short loc_14066BC76
                mov     r8, [rax+30h]
                mov     rsi, [rax+20h]
                cmp     r8, rsi
                jge     short loc_14066BC76
                cmp     rsi, rdi
                mov     [rsp+38h+var_18], 0
                mov     rdx, rax
                mov     rcx, rbx
                cmovg   rsi, rdi
                mov     r9, rsi
                call    sub_140671EF4
                test    eax, eax
                js      short loc_14066BC81
                mov     [rbx+8], rsi

loc_14066BC76:                          ; CODE XREF: sub_14066BC08+3D↑j
                                        ; sub_14066BC08+4A↑j
                mov     rdx, [rbx+8]
                cmp     rdx, rdi
                jl      short loc_14066BC92

loc_14066BC7F:                          ; CODE XREF: sub_14066BC08+1C↑j
                                        ; sub_14066BC08+A0↓j
                xor     eax, eax

loc_14066BC81:                          ; CODE XREF: sub_14066BC08+30↑j
                                        ; sub_14066BC08+68↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066BC92:                          ; CODE XREF: sub_14066BC08+75↑j
                xor     r9d, r9d
                mov     r8, rdi
                mov     rcx, rbx
                call    sub_140671B68
                test    eax, eax
                js      short loc_14066BC81
                mov     [rbx+8], rdi
                jmp     short loc_14066BC7F
sub_14066BC08   endp

; ---------------------------------------------------------------------------
algn_14066BCAA:                         ; DATA XREF: .pdata:000000014010053C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14066BCB0   proc near               ; CODE XREF: sub_14066BC08+35↑p
                                        ; DATA XREF: .pdata:0000000140100548↑o
                mov     rax, [rcx+8]
                test    rax, rax
                jz      short locret_14066BD08
                add     rcx, 28h ; '('
                lea     r8, [rax-1]
                test    byte ptr [rcx+8], 1
                mov     rax, [rcx]
                jz      short loc_14066BCD2
                test    rax, rax
                jz      short loc_14066BCD2
                xor     rax, rcx

loc_14066BCD2:                          ; CODE XREF: sub_14066BCB0+18↑j
                                        ; sub_14066BCB0+1D↑j
                movzx   edx, byte ptr [rcx+8]
                and     edx, 1
                jmp     short loc_14066BCDE
; ---------------------------------------------------------------------------

loc_14066BCDB:                          ; CODE XREF: sub_14066BCB0+3E↓j
                                        ; sub_14066BCB0+43↓j
                mov     rax, rcx

loc_14066BCDE:                          ; CODE XREF: sub_14066BCB0+29↑j
                                        ; sub_14066BCB0+48↓j
                test    rax, rax
                jz      short locret_14066BD00
                cmp     r8, [rax+28h]
                jge     short loc_14066BCFA
                mov     rcx, [rax]

loc_14066BCEC:                          ; CODE XREF: sub_14066BCB0+56↓j
                test    edx, edx
                jz      short loc_14066BCDB
                test    rcx, rcx
                jz      short loc_14066BCDB
                xor     rax, rcx
                jmp     short loc_14066BCDE
; ---------------------------------------------------------------------------

loc_14066BCFA:                          ; CODE XREF: sub_14066BCB0+37↑j
                cmp     r8, [rax+30h]
                jge     short loc_14066BD02

locret_14066BD00:                       ; CODE XREF: sub_14066BCB0+31↑j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066BD02:                          ; CODE XREF: sub_14066BCB0+4E↑j
                mov     rcx, [rax+8]
                jmp     short loc_14066BCEC
; ---------------------------------------------------------------------------

locret_14066BD08:                       ; CODE XREF: sub_14066BCB0+7↑j
                retn
sub_14066BCB0   endp

; ---------------------------------------------------------------------------
                align 2
algn_14066BD0A:                         ; DATA XREF: .pdata:0000000140100548↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14066BD10   proc near               ; CODE XREF: sub_140600188+10F↑p
                                        ; sub_14066F3A8+381↓p ...

var_30          = byte ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 000000014080C324 SIZE 0000011E BYTES

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_18], r9
                mov     [rsp-38h+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                and     [rbp+var_20], 0
                lea     rax, [rbp+var_18]
                lea     r14, [rcx+28h]
                mov     r13d, r8d
                mov     rdi, [r14]
                lea     r12d, [rdx+1000h]
                add     r13, r12
                mov     [rbp+var_10], rax
                test    byte ptr [r14+8], 1
                lea     rax, [rbp+var_18]
                mov     [rbp+var_18], rax
                mov     rbx, rcx
                jz      short loc_14066BD6C
                test    rdi, rdi
                jz      short loc_14066BD6C
                xor     rdi, r14

loc_14066BD6C:                          ; CODE XREF: sub_14066BD10+52↑j
                                        ; sub_14066BD10+57↑j
                movzx   ecx, byte ptr [r14+8]
                and     ecx, 1
                jmp     short loc_14066BD79
; ---------------------------------------------------------------------------

loc_14066BD76:                          ; CODE XREF: sub_14066BD10+79↓j
                                        ; sub_14066BD10+7E↓j
                mov     rdi, rax

loc_14066BD79:                          ; CODE XREF: sub_14066BD10+64↑j
                                        ; sub_14066BD10+83↓j
                test    rdi, rdi
                jz      short loc_14066BD9B
                cmp     r12, [rdi+28h]
                jge     short loc_14066BD95
                mov     rax, [rdi]

loc_14066BD87:                          ; CODE XREF: sub_14066BD10+C0↓j
                test    ecx, ecx
                jz      short loc_14066BD76
                test    rax, rax
                jz      short loc_14066BD76
                xor     rdi, rax
                jmp     short loc_14066BD79
; ---------------------------------------------------------------------------

loc_14066BD95:                          ; CODE XREF: sub_14066BD10+72↑j
                cmp     r12, [rdi+30h]
                jge     short loc_14066BDCC

loc_14066BD9B:                          ; CODE XREF: sub_14066BD10+6C↑j
                cmp     [rdi+30h], r13
                jl      short loc_14066BDD2
                mov     rcx, [rdi+38h]
                sub     rcx, [rdi+18h]
                add     rcx, r12
                mov     [r9], rcx
                xor     esi, esi

loc_14066BDB1:                          ; CODE XREF: sub_14066BD10+329↓j
                                        ; sub_14066BD10+1A072D↓j
                mov     rbx, [rsp+50h+arg_8]
                mov     eax, esi
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
                align 4

loc_14066BDCC:                          ; CODE XREF: sub_14066BD10+89↑j
                mov     rax, [rdi+8]
                jmp     short loc_14066BD87
; ---------------------------------------------------------------------------

loc_14066BDD2:                          ; CODE XREF: sub_14066BD10+8F↑j
                call    sub_1402B1A48
                neg     rax
                lea     r9, [rbp+var_20]
                and     rax, r12
                mov     r8, r13
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140671E04
                mov     r15, [rbp+var_20]
                mov     esi, eax
                test    eax, eax
                js      loc_14066C036
                mov     r9, r13
                mov     [rsp+50h+var_30], 0
                mov     r8, r12
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_140671EF4
                mov     esi, eax
                test    eax, eax
                js      loc_14066C036
                mov     rdx, r12
                cmp     r12, r13
                jnb     short loc_14066BE88

loc_14066BE25:                          ; CODE XREF: sub_14066BD10+176↓j
                test    byte ptr [r14+8], 1
                mov     rbx, [r14]
                jz      short loc_14066BE37
                test    rbx, rbx
                jz      short loc_14066BEAA
                xor     rbx, r14

loc_14066BE37:                          ; CODE XREF: sub_14066BD10+11D↑j
                                        ; sub_14066BD10:loc_14066BEAA↓j
                movzx   ecx, byte ptr [r14+8]
                and     ecx, 1
                jmp     short loc_14066BE44
; ---------------------------------------------------------------------------

loc_14066BE41:                          ; CODE XREF: sub_14066BD10+144↓j
                                        ; sub_14066BD10+149↓j
                mov     rbx, rax

loc_14066BE44:                          ; CODE XREF: sub_14066BD10+12F↑j
                                        ; sub_14066BD10+14E↓j
                test    rbx, rbx
                jz      short loc_14066BE66
                cmp     rdx, [rbx+28h]
                jge     short loc_14066BE60
                mov     rax, [rbx]

loc_14066BE52:                          ; CODE XREF: sub_14066BD10+198↓j
                test    ecx, ecx
                jz      short loc_14066BE41
                test    rax, rax
                jz      short loc_14066BE41
                xor     rbx, rax
                jmp     short loc_14066BE44
; ---------------------------------------------------------------------------

loc_14066BE60:                          ; CODE XREF: sub_14066BD10+13D↑j
                cmp     rdx, [rbx+30h]
                jge     short loc_14066BEA4

loc_14066BE66:                          ; CODE XREF: sub_14066BD10+137↑j
                mov     rcx, [rbp+arg_0]
                mov     r8, rbx
                mov     rdx, r15
                call    sub_140731E0C
                mov     esi, eax
                test    eax, eax
                js      loc_14066C032
                mov     rdx, [rbx+30h]
                cmp     rdx, r13
                jl      short loc_14066BE25

loc_14066BE88:                          ; CODE XREF: sub_14066BD10+113↑j
                test    byte ptr [r14+8], 1
                lea     rdx, [r13-1]
                mov     rbx, [r14]
                jnz     loc_14080C324

loc_14066BE9A:                          ; CODE XREF: sub_14066BD10+1A061C↓j
                                        ; sub_14066BD10:loc_14080C331↓j
                movzx   ecx, byte ptr [r14+8]
                and     ecx, 1
                jmp     short loc_14066BEAF
; ---------------------------------------------------------------------------

loc_14066BEA4:                          ; CODE XREF: sub_14066BD10+154↑j
                mov     rax, [rbx+8]
                jmp     short loc_14066BE52
; ---------------------------------------------------------------------------

loc_14066BEAA:                          ; CODE XREF: sub_14066BD10+122↑j
                jmp     short loc_14066BE37
; ---------------------------------------------------------------------------

loc_14066BEAC:                          ; CODE XREF: sub_14066BD10+1AF↓j
                                        ; sub_14066BD10+1B4↓j
                mov     rbx, rax

loc_14066BEAF:                          ; CODE XREF: sub_14066BD10+192↑j
                                        ; sub_14066BD10+1B9↓j
                test    rbx, rbx
                jz      short loc_14066BED5
                cmp     rdx, [rbx+28h]
                jge     short loc_14066BECB
                mov     rax, [rbx]

loc_14066BEBD:                          ; CODE XREF: sub_14066BD10+279↓j
                test    ecx, ecx
                jz      short loc_14066BEAC
                test    rax, rax
                jz      short loc_14066BEAC
                xor     rbx, rax
                jmp     short loc_14066BEAF
; ---------------------------------------------------------------------------

loc_14066BECB:                          ; CODE XREF: sub_14066BD10+1A8↑j
                cmp     rdx, [rbx+30h]
                jge     loc_14066BF85

loc_14066BED5:                          ; CODE XREF: sub_14066BD10+1A2↑j
                mov     rcx, [rdi+30h]

loc_14066BED9:                          ; CODE XREF: sub_14066BD10+1A069F↓j
                cmp     rcx, [rbx+28h]
                jl      loc_14080C336
                mov     rdx, rdi
                cmp     [rdi+28h], r12
                jz      loc_14080C3B4
                mov     r9, [rdi+30h]
                mov     r8, r12
                mov     rdi, [rbp+arg_0]
                mov     rcx, rdi
                call    sub_140732FF4

loc_14066BF03:                          ; CODE XREF: sub_14066BD10+1A06CF↓j
                mov     rdx, rbx
                cmp     [rbx+30h], r13
                jnz     loc_14080C3E4
                mov     rcx, r14
                call    RtlRbRemoveNode
                mov     rax, [rbp+var_10]
                lea     rcx, [rbp+var_18]
                cmp     [rax], rcx
                jnz     loc_14080C41B
                mov     [rbx+8], rax
                lea     rcx, [rbp+var_18]
                mov     [rbx], rcx
                mov     [rax], rbx
                mov     [rbp+var_10], rbx

loc_14066BF3B:                          ; CODE XREF: sub_14066BD10+1A06E4↓j
                test    byte ptr [r14+8], 1
                mov     rdx, [r14]
                jnz     loc_14080C3F9

loc_14066BF49:                          ; CODE XREF: sub_14066BD10+1A06F1↓j
                                        ; sub_14066BD10:loc_14080C406↓j
                movzx   ecx, byte ptr [r14+8]
                xor     r8b, r8b
                and     ecx, 1
                test    rdx, rdx
                jz      short loc_14066BFAB
                mov     r8, [r15+28h]

loc_14066BF5D:                          ; CODE XREF: sub_14066BD10+273↓j
                cmp     r8, [rdx+28h]
                jl      short loc_14066BF8E
                mov     rax, [rdx+8]
                test    ecx, ecx
                jz      short loc_14066BF77
                test    rax, rax
                jz      loc_14080C40B
                xor     rax, rdx

loc_14066BF77:                          ; CODE XREF: sub_14066BD10+259↑j
                test    rax, rax
                jz      loc_14080C40B

loc_14066BF80:                          ; CODE XREF: sub_14066BD10+294↓j
                mov     rdx, rax
                jmp     short loc_14066BF5D
; ---------------------------------------------------------------------------

loc_14066BF85:                          ; CODE XREF: sub_14066BD10+1BF↑j
                mov     rax, [rbx+8]
                jmp     loc_14066BEBD
; ---------------------------------------------------------------------------

loc_14066BF8E:                          ; CODE XREF: sub_14066BD10+251↑j
                mov     rax, [rdx]
                test    ecx, ecx
                jz      short loc_14066BFA1
                test    rax, rax
                jz      loc_14080C413
                xor     rax, rdx

loc_14066BFA1:                          ; CODE XREF: sub_14066BD10+283↑j
                test    rax, rax
                jnz     short loc_14066BF80
                jmp     loc_14080C413
; ---------------------------------------------------------------------------

loc_14066BFAB:                          ; CODE XREF: sub_14066BD10+247↑j
                                        ; sub_14066BD10+1A06FE↓j ...
                mov     r9, r15
                mov     rcx, r14
                call    RtlRbInsertNodeEx
                mov     rbx, [rbp+var_18]
                lea     rcx, [rbp+var_18]
                mov     rax, [rbx]
                cmp     [rbx+8], rcx
                jnz     loc_14080C41B

loc_14066BFCB:                          ; CODE XREF: sub_14066BD10+309↓j
                cmp     [rax+8], rbx
                jnz     loc_14080C41B
                mov     [rbp+var_18], rax
                lea     rcx, [rbp+var_18]
                mov     [rax+8], rcx
                lea     rax, [rbp+var_18]
                cmp     rbx, rax
                jz      short loc_14066C01B
                mov     r8, [rbx+38h]
                test    r8, r8
                jz      short loc_14066BFFC
                mov     rdx, [rdi+18h]
                call    sub_1402AFFF4

loc_14066BFFC:                          ; CODE XREF: sub_14066BD10+2E1↑j
                mov     rcx, rbx
                call    SeFreePrivileges
                mov     rbx, [rbp+var_18]
                lea     rax, [rbp+var_18]
                cmp     [rbx+8], rax
                jnz     loc_14080C41B
                mov     rax, [rbx]
                jmp     short loc_14066BFCB
; ---------------------------------------------------------------------------

loc_14066C01B:                          ; CODE XREF: sub_14066BD10+2D8↑j
                mov     rcx, [r15+38h]
                xor     esi, esi
                sub     rcx, [r15+18h]
                mov     rax, [rbp+arg_18]
                add     rcx, r12
                xor     r15d, r15d
                mov     [rax], rcx

loc_14066C032:                          ; CODE XREF: sub_14066BD10+169↑j
                mov     rbx, [rbp+arg_0]

loc_14066C036:                          ; CODE XREF: sub_14066BD10+E7↑j
                                        ; sub_14066BD10+107↑j
                test    r15, r15
                jz      loc_14066BDB1
                jmp     loc_14080C422
sub_14066BD10   endp

; ---------------------------------------------------------------------------
byte_14066C044  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140063494↑o
                                        ; .pdata:0000000140100554↑o

; =============== S U B R O U T I N E =======================================


sub_14066C04C   proc near               ; CODE XREF: sub_14066EB78+73↓p
                                        ; sub_14066F3A8+188↓p ...

var_48          = dword ptr -48h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_18          = byte ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014080C442 SIZE 0000001C BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                and     qword ptr [rax-38h], 0
                xorps   xmm0, xmm0
                and     qword ptr [rax+8], 0
                mov     rsi, rcx
                mov     ebx, edx
                movups  xmmword ptr [rax-30h], xmm0
                mov     r14, [rcx+rbx*8+600h]
                test    r14, r14
                jz      short loc_14066C0A6
                test    edx, edx
                jnz     loc_14066C148
                mov     rdi, [rcx+700h]

loc_14066C096:                          ; CODE XREF: sub_14066C04C+115↓j
                                        ; sub_14066C04C+13E↓j
                test    r9b, 1
                jz      short loc_14066C0C3
                test    rdi, rdi
                jz      short loc_14066C0C3
                cmp     r8, rdi
                ja      short loc_14066C0C3

loc_14066C0A6:                          ; CODE XREF: sub_14066C04C+39↑j
                xor     eax, eax

loc_14066C0A8:                          ; CODE XREF: sub_14066C04C+F7↓j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14066C0C3:                          ; CODE XREF: sub_14066C04C+4E↑j
                                        ; sub_14066C04C+53↑j ...
                mov     r9, r8
                mov     edx, ebx
                mov     r8, rdi
                mov     rcx, rsi
                call    sub_14066BB20
                xor     ecx, ecx
                mov     rbp, rax
                call    IoSetThreadHardErrorMode
                lea     rdx, [rsp+68h+var_30]
                mov     r15b, al
                mov     r9d, 8
                mov     rcx, r14
                cmp     rbp, rdi
                jb      short loc_14066C16F
                mov     [rsp+68h+var_38], rbp
                lea     r8, [rsp+68h+var_38]
                mov     [rsp+68h+var_48], 14h

loc_14066C105:                          ; CODE XREF: sub_14066C04C+135↓j
                call    ZwSetInformationFile
                mov     edi, eax
                test    eax, eax
                js      loc_14080C442
                test    ebx, ebx
                jz      short loc_14066C166
                lea     eax, [rbx-4]
                cmp     eax, 1
                ja      short loc_14066C18F

loc_14066C120:                          ; CODE XREF: sub_14066C04C+148↓j
                mov     ecx, ebx
                call    sub_14066EDEC
                mov     ecx, eax
                mov     [rsi+rcx*8+708h], rbp

loc_14066C131:                          ; CODE XREF: sub_14066C04C+121↓j
                                        ; sub_14066C04C+146↓j
                test    edi, edi
                js      loc_14080C442

loc_14066C139:                          ; CODE XREF: sub_14066C04C+1A040D↓j
                mov     cl, r15b
                call    IoSetThreadHardErrorMode
                mov     eax, edi
                jmp     loc_14066C0A8
; ---------------------------------------------------------------------------

loc_14066C148:                          ; CODE XREF: sub_14066C04C+3D↑j
                lea     eax, [rbx-4]
                cmp     eax, 1
                ja      short loc_14066C183

loc_14066C150:                          ; CODE XREF: sub_14066C04C+13A↓j
                mov     ecx, ebx
                call    sub_14066EDEC
                mov     ecx, eax
                mov     rdi, [rsi+rcx*8+708h]
                jmp     loc_14066C096
; ---------------------------------------------------------------------------

loc_14066C166:                          ; CODE XREF: sub_14066C04C+CA↑j
                mov     [rsi+700h], rbp
                jmp     short loc_14066C131
; ---------------------------------------------------------------------------

loc_14066C16F:                          ; CODE XREF: sub_14066C04C+A5↑j
                mov     [rsp+68h+arg_0], rbp
                lea     r8, [rsp+68h+arg_0]
                mov     [rsp+68h+var_48], 13h
                jmp     short loc_14066C105
; ---------------------------------------------------------------------------

loc_14066C183:                          ; CODE XREF: sub_14066C04C+102↑j
                cmp     ebx, 1
                jz      short loc_14066C150
                xor     edi, edi
                jmp     loc_14066C096
; ---------------------------------------------------------------------------

loc_14066C18F:                          ; CODE XREF: sub_14066C04C+D2↑j
                cmp     ebx, 1
                jnz     short loc_14066C131
                jmp     short loc_14066C120
sub_14066C04C   endp

; ---------------------------------------------------------------------------
byte_14066C196  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400634F0↑o
                                        ; .pdata:0000000140100560↑o

; =============== S U B R O U T I N E =======================================


sub_14066C19C   proc near               ; CODE XREF: sub_14066F3A8+24B↓p
                                        ; sub_14066F3A8+5D7↓p ...

arg_20          = qword ptr  28h

                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx+18h]
                mov     r10d, edx
                xor     ebx, ebx
                mov     ecx, r10d
                test    r8d, r8d
                mov     r8d, r9d
                setz    dl
                call    sub_1404079D0
                test    rax, rax
                jz      short loc_14066C1D2
                mov     rcx, [rsp+28h+arg_20]
                mov     [rcx], rax

loc_14066C1C9:                          ; CODE XREF: sub_14066C19C+3B↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066C1D2:                          ; CODE XREF: sub_14066C19C+23↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_14066C1C9
sub_14066C19C   endp

; ---------------------------------------------------------------------------
algn_14066C1D9:                         ; DATA XREF: .pdata:000000014010056C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066C1E0   proc near               ; CODE XREF: sub_14066F3A8+310↓p
                                        ; sub_140672A24+19B9BA↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014080C45E SIZE 0000007C BYTES

                sub     rsp, 28h
                cmp     rcx, cs:qword_140C01170
                mov     r9d, edx
                jz      short loc_14066C1F6

loc_14066C1F0:                          ; CODE XREF: sub_14066C1E0+1E↓j
                                        ; sub_14066C1E0+40↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066C1F6:                          ; CODE XREF: sub_14066C1E0+E↑j
                cmp     cs:qword_140C50988, 0
                jz      short loc_14066C1F0
                lea     eax, [rdx+1000h]
                xor     edx, edx
                imul    eax, 64h ; 'd'
                div     cs:dword_140C509A0
                cmp     r9d, r8d
                jbe     loc_14080C496
                cmp     eax, cs:dword_140C50998
                jbe     short loc_14066C1F0
                jmp     loc_14080C45E
sub_14066C1E0   endp

; ---------------------------------------------------------------------------
algn_14066C227:                         ; DATA XREF: .rdata:000000014006350C↑o
                                        ; .pdata:0000000140100578↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14066C230   proc near               ; CODE XREF: sub_1402B0230+AE↑p
                                        ; DATA XREF: .pdata:0000000140100584↑o
                sub     rsp, 28h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C48618
                call    ExAcquirePushLockSharedEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066C230   endp

algn_14066C258:                         ; DATA XREF: .pdata:0000000140100584↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=170h

sub_14066C260   proc near               ; CODE XREF: sub_1402B0230+1D9↑p
                                        ; sub_1407A6D60+2EE↓p ...

var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_230         = byte ptr -230h
var_22F         = byte ptr -22Fh
var_22E         = byte ptr -22Eh
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = xmmword ptr -1E8h
var_1D8         = dword ptr -1D8h
var_1D4         = dword ptr -1D4h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1BC         = dword ptr -1BCh
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A0         = dword ptr -1A0h
var_178         = dword ptr -178h
var_170         = qword ptr -170h
var_150         = qword ptr -150h
var_140         = dword ptr -140h
var_110         = xmmword ptr -110h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = xmmword ptr -88h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = dword ptr  30h
arg_28          = byte ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h
arg_50          = byte ptr  60h
arg_58          = qword ptr  68h

; FUNCTION CHUNK AT 000000014080C4DA SIZE 00000134 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-140h]
                sub     rsp, 240h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+170h+var_40], rax
                mov     rax, [rbp+170h+arg_30]
                xorps   xmm0, xmm0
                mov     rsi, [rbp+170h+arg_58]
                mov     rbx, r8
                mov     [rsp+270h+var_1F8], rax
                mov     r8d, 128h
                mov     rax, [rbp+170h+arg_38]
                mov     [rsp+270h+var_200], rax
                mov     rax, [rbp+170h+arg_40]
                mov     [rsp+270h+var_210], rax
                mov     rax, [rbp+170h+arg_48]
                mov     [rbp+170h+var_1F0], rax
                xor     eax, eax
                mov     [rsp+270h+var_208], rdx
                mov     r12d, eax
                mov     [rsp+270h+var_218], rcx
                xor     edx, edx
                lea     rcx, [rbp+170h+var_1A0]
                mov     [rbp+170h+var_1D4], eax
                mov     [rbp+170h+var_1BC], eax
                mov     r13b, al
                mov     [rsp+270h+var_228], rax
                mov     [rsp+270h+var_22F], al
                mov     [rsp+270h+var_22E], r9b
                movups  [rbp+170h+var_1E8], xmm0
                movups  [rbp+170h+var_70], xmm0
                movups  [rbp+170h+var_60], xmm0
                movups  [rbp+170h+var_50], xmm0
                call    memset
                or      [rbp+170h+var_140], 0FFFFFFFFh
                lea     rax, [rbp+170h+var_110]
                xorps   xmm0, xmm0
                lea     r8d, [r12+50h]
                movups  [rbp+170h+var_110], xmm0
                mov     qword ptr [rbp+170h+var_110+8], rax
                lea     rcx, [rbp+170h+var_C8]
                lea     rax, [rbp+170h+var_110]
                xor     edx, edx
                mov     qword ptr [rbp+170h+var_110], rax
                call    memset
                lea     rcx, [rbp+170h+var_1E8]
                call    InitializeListHead
                mov     eax, [rbx+0A0h]
                lea     r14d, [r12+1]
                test    al, 20h
                jz      loc_14066C603

loc_14066C366:                          ; CODE XREF: sub_14066C260+3C1↓j
                mov     edx, [rbp+170h+arg_20]
                mov     rcx, rbx
                call    sub_14066C648
                mov     r15b, [rbp+170h+arg_50]
                xor     edx, edx
                mov     edi, eax
                test    eax, eax
                js      loc_14080C4DA
                mov     r13b, [rbp+170h+arg_28]
                lea     eax, [rdx+43h]
                test    r13b, r13b
                mov     [rbp+170h+var_170], rbx
                mov     ecx, 843h
                cmovnz  eax, ecx
                mov     [rbp+170h+var_1A0], eax
                cmp     [rsp+270h+var_22E], dl
                jnz     loc_14066C636
                mov     rax, [rbx+40h]
                mov     ecx, [rax+24h]
                mov     [rbp+170h+var_178], ecx

loc_14066C3B7:                          ; CODE XREF: sub_14066C260+3DA↓j
                mov     rax, [rsp+270h+var_210]
                lea     rcx, [rbp+170h+var_1D8]
                mov     [rbp+170h+var_150], rax
                xor     r9d, r9d
                mov     rax, [rsp+270h+var_208]
                xor     r8d, r8d
                mov     [rbp+170h+var_1D0], rax
                mov     rax, [rsp+270h+var_218]
                mov     [rbp+170h+var_1C8], rax
                mov     rax, [rsp+270h+var_200]
                mov     [rbp+170h+var_1B8], rax
                lea     rax, [rsp+270h+var_228]
                mov     [rsp+270h+var_240], rax
                lea     rax, [rbp+170h+var_1A0]
                mov     [rbp+170h+var_1B0], rdx
                mov     rdx, cs:CmKeyObjectType
                mov     [rsp+270h+var_248], rax
                mov     dword ptr [rsp+270h+var_250], 2001Fh
                mov     [rbp+170h+var_1D8], 30h ; '0'
                mov     [rbp+170h+var_1C0], 240h
                call    ObOpenObjectByName
                xor     edx, edx
                mov     edi, eax
                test    eax, eax
                js      loc_14080C4F5
                mov     r8, cs:CmKeyObjectType
                lea     rax, [rsp+270h+var_220]
                mov     rcx, [rsp+270h+var_228]
                xor     edi, edi
                mov     [rsp+270h+var_248], rdi
                xor     r9d, r9d
                mov     [rsp+270h+var_250], rax
                mov     [rsp+270h+var_220], rdi
                call    ObReferenceObjectByHandle
                mov     rcx, [rsp+270h+var_228]
                mov     rsi, [rsp+270h+var_220]
                call    ZwClose
                lea     rcx, [rbp+170h+var_70]
                mov     [rsp+270h+var_230], r14b
                call    sub_14063A890
                test    r15b, r15b
                jnz     short loc_14066C47E
                call    sub_14064A3A0

loc_14066C47E:                          ; CODE XREF: sub_14066C260+217↑j
                mov     rcx, [rsi+8]
                call    sub_1406374AC
                mov     r12, rax
                test    r15b, r15b
                jnz     short loc_14066C494
                call    sub_14064A360

loc_14066C494:                          ; CODE XREF: sub_14066C260+22D↑j
                test    r12, r12
                jz      loc_14080C55F
                movzx   edx, word ptr [r12]
                mov     r8d, 70684D43h
                mov     ecx, r14d
                call    ExAllocatePoolWithTag
                mov     [rbx+740h], rax
                test    rax, rax
                jz      loc_14080C55F
                lea     rcx, [rbx+738h]
                mov     rdx, r12
                mov     [rcx], di
                movzx   eax, word ptr [r12]
                mov     [rbx+73Ah], ax
                call    sub_14021D7F0
                mov     eax, r14d
                mov     [rbx+8Dh], dil
                lock xadd cs:dword_140CDB1B0, eax
                add     eax, r14d
                mov     [rbx+684h], eax
                test    r15b, r15b
                jnz     short loc_14066C503
                call    sub_14064A3A0

loc_14066C503:                          ; CODE XREF: sub_14066C260+29C↑j
                test    r13b, r13b
                jz      short loc_14066C52C
                mov     rcx, [rsi+8]
                call    sub_14062FC50
                mov     rdi, [rsp+270h+var_1F8]
                mov     rax, [rsi+8]
                mov     [rbx+0B70h], rax
                test    rdi, rdi
                jnz     loc_14080C566

loc_14066C52A:                          ; CODE XREF: sub_14066C260+1A031A↓j
                xor     edi, edi

loc_14066C52C:                          ; CODE XREF: sub_14066C260+2A6↑j
                cmp     cs:qword_140D2D008, rdi
                jnz     loc_14080C57F

loc_14066C539:                          ; CODE XREF: sub_14066C260+1A032B↓j
                lea     rcx, [rbp+170h+var_70]
                call    sub_14063A63C
                test    r15b, r15b
                jnz     short loc_14066C54F
                call    sub_14064A360

loc_14066C54F:                          ; CODE XREF: sub_14066C260+2E8↑j
                mov     rdi, [rbp+170h+var_1F0]
                test    rdi, rdi
                jz      short loc_14066C568
                mov     rcx, [rsi+8]
                call    sub_14062FC50
                mov     rax, [rsi+8]
                mov     [rdi], rax

loc_14066C568:                          ; CODE XREF: sub_14066C260+2F6↑j
                mov     rcx, [rsp+270h+var_220]
                call    PsDereferenceSiloContext
                test    r13b, r13b
                jz      short loc_14066C57E
                mov     [rbx+0B78h], r14b

loc_14066C57E:                          ; CODE XREF: sub_14066C260+315↑j
                mov     r13b, [rsp+270h+var_230]
                xor     r14d, r14d
                mov     edi, r14d

loc_14066C589:                          ; CODE XREF: sub_14066C260+1A02FA↓j
                mov     rsi, r14
                test    edi, edi
                js      loc_14080C590

loc_14066C594:                          ; CODE XREF: sub_14066C260+1A0333↓j
                                        ; sub_14066C260+1A0388↓j
                test    r12, r12
                jz      short loc_14066C5A6
                mov     edx, 624E4D43h
                mov     rcx, r12
                call    sub_14021E1D8

loc_14066C5A6:                          ; CODE XREF: sub_14066C260+337↑j
                test    rsi, rsi
                jnz     loc_14080C5ED

loc_14066C5AF:                          ; CODE XREF: sub_14066C260+1A0396↓j
                cmp     [rsp+270h+var_22F], r14b
                jnz     short loc_14066C626

loc_14066C5B6:                          ; CODE XREF: sub_14066C260+3D4↓j
                test    edi, edi
                js      short loc_14066C5CA
                test    dword ptr cs:xmmword_140CFC480+8, 1000000h
                jnz     loc_14080C5FB

loc_14066C5CA:                          ; CODE XREF: sub_14066C260+358↑j
                                        ; sub_14066C260+1A03A9↓j
                mov     dl, r15b
                lea     rcx, [rbp+170h+var_1A0]
                call    sub_140651820
                mov     eax, edi
                mov     rcx, [rbp+170h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+270h+arg_18]
                add     rsp, 240h
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

loc_14066C603:                          ; CODE XREF: sub_14066C260+100↑j
                or      eax, 20h
                mov     [rsp+270h+var_22F], r14b
                mov     [rbx+0A0h], eax
                mov     rax, gs:188h
                mov     [rbx+1070h], rax
                jmp     loc_14066C366
; ---------------------------------------------------------------------------

loc_14066C626:                          ; CODE XREF: sub_14066C260+354↑j
                and     dword ptr [rbx+0A0h], 0FFFFFFDFh
                mov     [rbx+1070h], r14
                jmp     short loc_14066C5B6
; ---------------------------------------------------------------------------

loc_14066C636:                          ; CODE XREF: sub_14066C260+147↑j
                or      [rbp+170h+var_178], 0FFFFFFFFh
                jmp     loc_14066C3B7
; } // starts at 14066C260
sub_14066C260   endp

; ---------------------------------------------------------------------------
byte_14066C63F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140063544↑o
                                        ; .pdata:0000000140100590↑o

; =============== S U B R O U T I N E =======================================


sub_14066C648   proc near               ; CODE XREF: sub_14066C260+10F↑p
                                        ; sub_140A5C16C+2EF↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080C60E SIZE 00000022 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebx, edx
                xor     r14d, r14d
                mov     rsi, rcx
                mov     edi, 0C000009Ah
                lea     eax, [rbx-1]
                test    edx, eax
                jnz     loc_14080C60E
                xor     ebp, ebp
                cmp     ebx, 0AAAAAAAh
                ja      loc_14080C618
                lea     eax, [rbx+rbx*2]
                mov     r8d, 61434D43h
                shl     eax, 3
                lea     ecx, [rbp+1]
                mov     edx, eax
                mov     r15d, eax
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      short loc_14066C717
                mov     r8d, r15d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     r15d, 300h
                lea     ecx, [rbp+1]
                mov     edx, r15d
                mov     r8d, 61434D43h
                call    ExAllocatePoolWithTag
                mov     rbp, rax
                test    rax, rax
                jz      short loc_14066C717
                mov     r8d, r15d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xor     edx, edx
                test    ebx, ebx
                jz      short loc_14066C6FB
                mov     rax, r14
                mov     ecx, ebx
                mov     edx, ebx

loc_14066C6ED:                          ; CODE XREF: sub_14066C648+B1↓j
                and     qword ptr [rax], 0
                lea     rax, [rax+18h]
                sub     rcx, 1
                jnz     short loc_14066C6ED

loc_14066C6FB:                          ; CODE XREF: sub_14066C648+9C↑j
                cmp     edx, ebx
                jnz     short loc_14066C717
                mov     rax, rbp
                mov     ecx, 20h ; ' '

loc_14066C707:                          ; CODE XREF: sub_14066C648+CB↓j
                and     qword ptr [rax], 0
                lea     rax, [rax+18h]
                sub     rcx, 1
                jnz     short loc_14066C707
                xor     edi, edi

loc_14066C717:                          ; CODE XREF: sub_14066C648+5D↑j
                                        ; sub_14066C648+89↑j ...
                mov     [rsi+668h], r14
                mov     [rsi+670h], ebx
                mov     [rsi+678h], rbp
                mov     dword ptr [rsi+680h], 20h ; ' '
                test    edi, edi
                js      loc_14080C622

loc_14066C73D:                          ; CODE XREF: sub_14066C648+19FFE3↓j
                mov     eax, edi

loc_14066C73F:                          ; CODE XREF: sub_14066C648+19FFCB↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066C648   endp

algn_14066C759:                         ; DATA XREF: .rdata:0000000140063570↑o
                                        ; .pdata:000000014010059C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066C760   proc near               ; CODE XREF: sub_140780910+1F↓p
                                        ; DATA XREF: .pdata:00000001401005A8↑o ...

var_40          = dword ptr -40h
var_20          = byte ptr -20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                mov     r11, rsp
                sub     rsp, 68h
                mov     rax, gs:188h
                mov     r10b, [rax+232h]
                xor     eax, eax
                mov     [r11-10h], r10b
                mov     [r11-18h], rax
                mov     [rsp+68h+var_20], al
                mov     [r11-28h], rax
                mov     rax, [rsp+68h+arg_38]
                mov     [r11-30h], rax
                mov     rax, [rsp+68h+arg_30]
                mov     [r11-38h], rax
                mov     eax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_40], eax
                mov     rax, [rsp+68h+arg_20]
                mov     [r11-48h], rax
                call    sub_14066C7CC
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066C760   endp

byte_14066C7C3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401005A8↑o

; =============== S U B R O U T I N E =======================================


sub_14066C7CC   proc near               ; CODE XREF: sub_1405CC3B0+187↑p
                                        ; sub_1405D4F64+261↑p ...

var_358         = qword ptr -358h
var_350         = qword ptr -350h
var_348         = qword ptr -348h
var_340         = qword ptr -340h
var_338         = qword ptr -338h
var_330         = qword ptr -330h
var_328         = qword ptr -328h
var_318         = byte ptr -318h
var_317         = byte ptr -317h
var_316         = byte ptr -316h
var_315         = byte ptr -315h
var_314         = byte ptr -314h
var_310         = dword ptr -310h
var_30C         = dword ptr -30Ch
var_308         = qword ptr -308h
var_300         = qword ptr -300h
var_2F8         = qword ptr -2F8h
var_2E8         = xmmword ptr -2E8h
var_2D8         = qword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = qword ptr -2A8h
var_2A0         = dword ptr -2A0h
var_298         = xmmword ptr -298h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = xmmword ptr -250h
var_240         = xmmword ptr -240h
var_230         = xmmword ptr -230h
var_220         = xmmword ptr -220h
var_210         = qword ptr -210h
var_208         = dword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = xmmword ptr -1E8h
var_1D8         = qword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = dword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = dword ptr -178h
var_118         = dword ptr -118h
var_E8          = xmmword ptr -0E8h
var_A0          = byte ptr -0A0h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_40          = qword ptr  48h
arg_48          = byte ptr  50h
arg_50          = qword ptr  58h
arg_58          = byte ptr  60h

; FUNCTION CHUNK AT 000000014080C630 SIZE 000000D9 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 340h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+378h+var_48], rax
                mov     [rsp+378h+var_200], r9
                mov     r14d, r8d
                mov     [rsp+378h+var_2B8], rdx
                mov     rbx, rcx
                mov     [rsp+378h+var_2A0], r8d
                mov     rax, [rsp+378h+arg_20]
                mov     [rsp+378h+var_270], rax
                mov     rax, [rsp+378h+arg_30]
                mov     [rsp+378h+var_2D8], rax
                mov     rsi, [rsp+378h+arg_40]
                mov     [rsp+378h+var_1F8], rsi
                mov     rax, [rsp+378h+arg_50]
                mov     [rsp+378h+var_1F0], rax
                xorps   xmm0, xmm0
                movups  [rsp+378h+var_250], xmm0
                movups  [rsp+378h+var_240], xmm0
                movups  [rsp+378h+var_230], xmm0
                movups  [rsp+378h+var_2E8], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+378h+var_298], xmm1
                xor     edi, edi
                mov     [rsp+378h+var_2F8], rdi
                mov     [rsp+378h+var_278], rdi
                mov     [rsp+378h+var_315], dil
                mov     [rsp+378h+var_208], edi
                mov     r13b, dil
                xor     edx, edx
                lea     rcx, [rsp+378h+var_2E8]
                call    RtlInitUnicodeString
                mov     [rsp+378h+var_314], dil
                xor     edx, edx
                lea     rcx, [rsp+378h+var_298]
                call    RtlInitUnicodeString
                mov     [rsp+378h+var_308], rdi
                mov     [rsp+378h+var_300], rdi
                mov     [rsp+378h+var_2C0], rdi
                mov     [rsp+378h+var_2B0], rdi
                mov     [rsp+378h+var_2C8], rdi
                mov     [rsp+378h+var_2A8], rdi
                xor     edx, edx
                mov     r8d, 128h
                lea     rcx, [rsp+378h+var_178]
                call    memset
                or      [rsp+378h+var_118], 0FFFFFFFFh
                xorps   xmm0, xmm0
                movups  [rsp+378h+var_E8], xmm0
                lea     rax, [rsp+378h+var_E8]
                mov     qword ptr [rsp+378h+var_E8+8], rax
                lea     rax, [rsp+378h+var_E8]
                mov     qword ptr [rsp+378h+var_E8], rax
                xor     edx, edx
                lea     r8d, [rdi+50h]
                lea     rcx, [rsp+378h+var_A0]
                call    memset
                mov     [rsp+378h+var_2D0], rdi
                call    sub_140652850
                mov     r15b, al
                mov     [rsp+378h+var_318], al
                test    al, al
                jz      loc_14080C630
                mov     [rsp+378h+var_316], dil
                mov     [rsp+378h+var_317], dil
                test    r14d, 0FFFF000Bh
                jnz     loc_14066D2FB
                test    rsi, rsi
                jnz     loc_14066D24F

loc_14066C982:                          ; CODE XREF: sub_14066C7CC+A8A↓j
                cmp     [rsp+378h+arg_48], dil
                jnz     loc_14066D305

loc_14066C990:                          ; CODE XREF: sub_14066C7CC+B47↓j
                bt      r14d, 0Ch
                jb      loc_14066D2E9

loc_14066C99B:                          ; CODE XREF: sub_14066C7CC+B29↓j
                mov     eax, r14d
                and     eax, 810h
                mov     [rsp+378h+var_310], eax
                call    sub_14066D840
                mov     esi, eax
                test    eax, eax
                js      short loc_14066CA02
                mov     r12d, r14d
                and     r12d, 10h
                mov     r15b, [rsp+378h+arg_58]
                jz      loc_14066D16A

loc_14066C9C7:                          ; CODE XREF: sub_14066C7CC+9AF↓j
                cmp     [rsp+378h+var_310], edi
                jz      loc_14066CB05
                cmp     [rsp+378h+var_2D8], rdi
                jz      loc_14080C64E
                test    r14d, 444h
                setnz   cl
                test    r14b, 10h
                setnz   al
                test    al, cl
                jz      loc_14066CB21
                mov     esi, 0C00000F1h

loc_14066C9FD:                          ; CODE XREF: sub_14066C7CC+375↓j
                                        ; sub_14066C7CC+5F0↓j ...
                mov     r15b, [rsp+378h+var_318]

loc_14066CA02:                          ; CODE XREF: sub_14066C7CC+1E4↑j
                                        ; sub_14066C7CC+500↓j ...
                mov     rcx, [rsp+378h+var_300]
                test    rcx, rcx
                jnz     loc_14080C6E6

loc_14066CA10:                          ; CODE XREF: sub_14066C7CC+19FF22↓j
                mov     rcx, [rsp+378h+var_2F8]
                test    rcx, rcx
                jz      short loc_14066CA34
                lea     rax, [rsp+378h+var_2E8]
                cmp     rcx, rax
                jz      short loc_14066CA34
                mov     edx, 624E4D43h
                call    sub_14021E1D8

loc_14066CA34:                          ; CODE XREF: sub_14066C7CC+24F↑j
                                        ; sub_14066C7CC+25C↑j
                mov     rcx, [rsp+378h+var_2B0]
                test    rcx, rcx
                jnz     loc_14066D245

loc_14066CA45:                          ; CODE XREF: sub_14066C7CC+A7E↓j
                cmp     [rsp+378h+var_314], dil
                jz      short loc_14066CA51
                call    KeLeaveCriticalRegion

loc_14066CA51:                          ; CODE XREF: sub_14066C7CC+27E↑j
                mov     rcx, [rsp+378h+var_2D0]
                test    rcx, rcx
                jnz     loc_14066D37A

loc_14066CA62:                          ; CODE XREF: sub_14066C7CC+BB3↓j
                mov     rcx, [rsp+378h+var_2C0]
                test    rcx, rcx
                jnz     loc_14066D2DF

loc_14066CA73:                          ; CODE XREF: sub_14066C7CC+B18↓j
                mov     rcx, [rsp+378h+var_2C8]
                test    rcx, rcx
                jnz     loc_14080C6F3

loc_14066CA84:                          ; CODE XREF: sub_14066C7CC+19FF2D↓j
                mov     rcx, [rsp+378h+var_308]
                test    rcx, rcx
                jnz     loc_14080C6FE

loc_14066CA92:                          ; CODE XREF: sub_14066C7CC+19FF38↓j
                mov     rbx, [rsp+378h+var_2A8]
                test    rbx, rbx
                jz      short loc_14066CAA7
                mov     rcx, rbx
                call    SeFreePrivileges

loc_14066CAA7:                          ; CODE XREF: sub_14066C7CC+2D1↑j
                mov     rcx, qword ptr [rsp+378h+var_298+8]
                test    rcx, rcx
                jz      short loc_14066CABB
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14066CABB:                          ; CODE XREF: sub_14066C7CC+2E6↑j
                xor     edx, edx
                lea     rcx, [rsp+378h+var_178]
                call    sub_140651820
                test    r15b, r15b
                jnz     loc_14066D1F6

loc_14066CAD3:                          ; CODE XREF: sub_14066C7CC+A2F↓j
                test    r13b, r13b
                jz      short loc_14066CADF
                mov     ecx, esi
                call    sub_14066D38C

loc_14066CADF:                          ; CODE XREF: sub_14066C7CC+30A↑j
                mov     eax, esi
                mov     rcx, [rsp+378h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 340h
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
; ---------------------------------------------------------------------------

loc_14066CB05:                          ; CODE XREF: sub_14066C7CC+1FF↑j
                cmp     [rsp+378h+var_2D8], rdi
                jnz     loc_14080C64E
                cmp     [rsp+378h+var_270], rdi
                jnz     loc_14080C658

loc_14066CB21:                          ; CODE XREF: sub_14066C7CC+226↑j
                lea     r8, [rsp+378h+var_298]
                mov     dl, r15b
                mov     rcx, [rsp+378h+var_2B8]
                call    sub_14066D50C
                mov     esi, eax
                mov     [rsp+378h+var_30C], eax
                test    eax, eax
                js      loc_14066C9FD
;   __try { // __except at 14066CD27
                mov     r9b, 1
                cmp     r15b, r9b
                jnz     loc_14066CCA9
                test    bl, 3
                jnz     loc_14066CCB8
                mov     rax, rbx
                mov     rcx, 7FFFFFFF0000h
                cmp     rbx, rcx
                cmovnb  rax, rcx
                mov     al, [rax]
                cmp     [rsp+378h+var_310], edi
                jz      short loc_14066CB8A
                mov     rax, [rsp+378h+var_2D8]
                cmp     rax, rcx
                cmovnb  rax, rcx
                mov     [rax], rdi

loc_14066CB8A:                          ; CODE XREF: sub_14066C7CC+3AA↑j
                                        ; sub_14066C7CC+4E7↓j
                movups  xmm0, xmmword ptr [rbx]
                movups  [rsp+378h+var_250], xmm0
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  [rsp+378h+var_240], xmm1
                movups  xmm0, xmmword ptr [rbx+20h]
                movups  [rsp+378h+var_230], xmm0
                test    r12d, r12d
                jz      short loc_14066CBC0
                cmp     qword ptr [rsp+378h+var_250+8], rdi
                jnz     loc_14066CCBE

loc_14066CBC0:                          ; CODE XREF: sub_14066C7CC+3E4↑j
                cmp     r15b, r9b
                jnz     loc_14066CC97
                xorps   xmm0, xmm0
                movups  [rsp+378h+var_1E8], xmm0
                mov     rax, qword ptr [rsp+378h+var_240]
                cmp     rax, rcx
                cmovnb  rax, rcx
                mov     r8d, [rax]
                mov     dword ptr [rsp+378h+var_1E8], r8d
                mov     rdx, [rax+8]
                mov     qword ptr [rsp+378h+var_1E8+8], rdx
                movaps  xmm0, [rsp+378h+var_1E8]
                movdqa  [rsp+378h+var_2E8], xmm0
                test    r8w, r8w
                jz      short loc_14066CC33
                test    r9b, dl
                jnz     loc_14066CCD1
                movzx   r8d, r8w
                add     r8, rdx
                cmp     r8, rcx
                ja      loc_14066CCD6
                cmp     r8, rdx
                jb      loc_14066CCD6

loc_14066CC33:                          ; CODE XREF: sub_14066C7CC+443↑j
                                        ; sub_14066C7CC+4DB↓j ...
                movzx   esi, word ptr [rsp+378h+var_2E8]
                test    si, si
                jz      loc_14066CCFE
                mov     r8d, 6B624D43h
                mov     edx, esi
                call    sub_140215A20
                mov     [rsp+378h+var_2A8], rax
                test    rax, rax
                jz      loc_14066CCE6
                mov     r8d, esi
                mov     rdx, qword ptr [rsp+378h+var_2E8+8]
                mov     rbx, rax
                mov     rcx, rax
                call    memmove
                mov     word ptr [rsp+378h+var_2E8], si
                mov     word ptr [rsp+378h+var_2E8+2], si
                mov     qword ptr [rsp+378h+var_2E8+8], rbx
                mov     r13b, [rsp+378h+var_316]
                jmp     short loc_14066CD0D
; ---------------------------------------------------------------------------

loc_14066CC97:                          ; CODE XREF: sub_14066C7CC+3F7↑j
                mov     rax, [rbx+10h]
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rsp+378h+var_2E8], xmm0
                jmp     short loc_14066CC33
; ---------------------------------------------------------------------------

loc_14066CCA9:                          ; CODE XREF: sub_14066C7CC+381↑j
                mov     rcx, 7FFFFFFF0000h
                jmp     loc_14066CB8A
; ---------------------------------------------------------------------------

loc_14066CCB8:                          ; CODE XREF: sub_14066C7CC+38A↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_14066CCBE:                          ; CODE XREF: sub_14066C7CC+3EE↑j
                mov     esi, 0C00000EFh
                mov     [rsp+378h+var_30C], esi
                mov     r15b, [rsp+378h+var_318]
                jmp     loc_14066CA02
; ---------------------------------------------------------------------------

loc_14066CCD1:                          ; CODE XREF: sub_14066C7CC+448↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14066CCD6:                          ; CODE XREF: sub_14066C7CC+458↑j
                                        ; sub_14066C7CC+461↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_14066CC33
; ---------------------------------------------------------------------------

loc_14066CCE6:                          ; CODE XREF: sub_14066C7CC+490↑j
                mov     esi, 0C000009Ah
                mov     [rsp+378h+var_30C], esi
                mov     r13b, [rsp+378h+var_316]
                mov     r15b, [rsp+378h+var_318]
                jmp     loc_14066CA02
; ---------------------------------------------------------------------------

loc_14066CCFE:                          ; CODE XREF: sub_14066C7CC+472↑j
                xor     edx, edx
                lea     rcx, [rsp+378h+var_2E8]
                call    RtlInitUnicodeString

loc_14066CD0D:                          ; CODE XREF: sub_14066C7CC+4C9↑j
                lea     rax, [rsp+378h+var_2E8]
                mov     qword ptr [rsp+378h+var_240], rax
                mov     qword ptr [rsp+378h+var_230], rdi
                jmp     short loc_14066CD3C
;   } // starts at 14066CB47
; ---------------------------------------------------------------------------
;   __except(1) // owned by 14066CB47
                mov     esi, eax
                mov     [rsp+378h+var_30C], eax
                xor     edi, edi
                mov     r13b, dil
                mov     r15b, [rsp+378h+var_318]
                jmp     loc_14066CA02
; ---------------------------------------------------------------------------

loc_14066CD3C:                          ; CODE XREF: sub_14066C7CC+559↑j
                mov     rax, [rsp+378h+var_200]
                test    rax, rax
                jnz     loc_14066D261

loc_14066CD4D:                          ; CODE XREF: sub_14066C7CC+AB5↓j
                mov     rax, [rsp+378h+var_270]
                test    rax, rax
                jnz     loc_14080C662

loc_14066CD5E:                          ; CODE XREF: sub_14066C7CC+19FEE1↓j
                mov     rcx, [rsp+378h+var_1F8]
                test    rcx, rcx
                jnz     loc_14066D28C

loc_14066CD6F:                          ; CODE XREF: sub_14066C7CC+AE0↓j
                mov     rax, [rsp+378h+var_1F0]
                test    rax, rax
                jnz     loc_14066D31B

loc_14066CD80:                          ; CODE XREF: sub_14066C7CC+BA3↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     [rsp+378h+var_314], 1
                lea     rax, [rsp+378h+var_2B0]
                mov     [rsp+378h+var_358], rax
                mov     r9d, 20019h
                mov     r8b, r15b
                mov     rcx, qword ptr [rsp+378h+var_250+8]
                call    sub_14066D464
                mov     esi, eax
                test    eax, eax
                js      loc_14066C9FD
                mov     rax, [rsp+378h+var_2B0]
                mov     qword ptr [rsp+378h+var_250+8], rax
                mov     rbx, rdi
                xor     edx, edx
                lea     r8d, [rdx+60h]
                lea     rcx, [rsp+378h+var_1D8]
                call    memset
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+378h+var_220], xmm0
                mov     [rsp+378h+var_210], rax
                lea     rax, [rsp+378h+var_260]
                mov     [rsp+378h+var_258], rax
                lea     rax, [rsp+378h+var_260]
                mov     [rsp+378h+var_260], rax
                cmp     cs:dword_140C5097C, ebx
                jz      loc_14066CF3C
                lea     rcx, unk_140D23580
                call    ExIsResourceAcquiredSharedLite
                test    eax, eax
                jnz     loc_14066CF3C
                mov     rcx, qword ptr [rsp+378h+var_250+8]
                test    rcx, rcx
                jnz     loc_14066D200

loc_14066CE4E:                          ; CODE XREF: sub_14066C7CC+A67↓j
                mov     [rsp+378h+var_188], 2
                mov     [rsp+378h+var_1D8], rbx
                lea     rax, [rsp+378h+var_2E8]
                mov     [rsp+378h+var_1D0], rax
                lea     rax, [rsp+378h+var_298]
                mov     [rsp+378h+var_1C8], rax
                mov     [rsp+378h+var_1C0], r14d
                mov     rax, [rsp+378h+var_308]
                mov     [rsp+378h+var_1B8], rax
                mov     rax, [rsp+378h+var_2C8]
                mov     [rsp+378h+var_1B0], rax
                mov     eax, [rsp+378h+arg_28]
                mov     [rsp+378h+var_1A8], eax
                mov     rax, [rsp+378h+var_2D8]
                mov     [rsp+378h+var_1A0], rax
                mov     rax, [rsp+378h+var_2D0]
                mov     [rsp+378h+var_180], rax
                lea     rax, [rsp+378h+var_1D8]
                mov     qword ptr [rsp+378h+var_220], rax
                mov     rax, [rsp+378h+var_2C0]
                mov     qword ptr [rsp+378h+var_220+8], rax
                mov     al, [rsp+378h+arg_48]
                mov     byte ptr [rsp+378h+var_210], al
                lea     rax, [rsp+378h+var_260]
                mov     [rsp+378h+var_348], rax
                mov     [rsp+378h+var_350], rdi
                mov     dword ptr [rsp+378h+var_358], 21h ; '!'
                mov     r9b, 1
                lea     r8, [rsp+378h+var_220]
                lea     rdx, [rsp+378h+var_1D8]
                mov     ecx, 20h ; ' '
                call    sub_1406478D0
                mov     esi, eax

loc_14066CF3C:                          ; CODE XREF: sub_14066C7CC+657↑j
                                        ; sub_14066C7CC+66B↑j
                test    esi, esi
                js      loc_14080C6BC
                mov     edx, r14d
                lea     rcx, [rsp+378h+var_298]
                call    sub_14066D3E8
                mov     r13b, 1
                mov     [rsp+378h+var_317], r13b
                test    r12d, r12d
                jz      loc_14066D186
                call    sub_140651420
                mov     [rsp+378h+var_318], dil
                lea     rax, [rsp+378h+var_300]
                mov     [rsp+378h+var_338], rax
                lea     rax, [rsp+378h+var_2F8]
                mov     [rsp+378h+var_340], rax
                mov     byte ptr [rsp+378h+var_348], r15b
                mov     rax, [rsp+378h+var_2D0]
                mov     [rsp+378h+var_350], rax
                mov     rax, [rsp+378h+var_2C8]
                mov     [rsp+378h+var_358], rax
                mov     r9, [rsp+378h+var_308]
                mov     r8d, r14d
                lea     rdx, [rsp+378h+var_298]
                lea     rcx, [rsp+378h+var_250]
                call    sub_14062A170

loc_14066CFC2:                          ; CODE XREF: sub_14066C7CC+A25↓j
                lea     rcx, [rsp+378h+var_260]
                mov     [rsp+378h+var_350], rcx
                lea     rcx, [rsp+378h+var_220]
                mov     [rsp+378h+var_358], rcx
                lea     r9, [rsp+378h+var_1D8]
                mov     r8d, eax
                mov     rdx, rbx
                mov     ecx, 21h ; '!'
                call    sub_14064C910
                mov     esi, eax

loc_14066CFF6:                          ; CODE XREF: sub_14066C7CC+19FEF6↓j
                                        ; sub_14066C7CC+19FF03↓j
                test    rbx, rbx
                jnz     loc_14066D238

loc_14066CFFF:                          ; CODE XREF: sub_14066C7CC+A74↓j
                mov     rcx, [rsp+378h+var_308]
                test    rcx, rcx
                jnz     loc_14066D2B7

loc_14066D00D:                          ; CODE XREF: sub_14066C7CC+AF5↓j
                test    esi, esi
                js      loc_14066C9FD
                cmp     [rsp+378h+var_310], edi
                jz      loc_14066C9FD
                cmp     [rsp+378h+var_315], dil
                jnz     loc_14066C9FD
                mov     [rsp+378h+var_2B8], rdi
                mov     [rsp+378h+var_310], r12d
                mov     eax, [rsp+378h+var_178]
                mov     edx, 40h ; '@'
                test    r12d, r12d
                cmovnz  eax, edx
                mov     [rsp+378h+var_178], eax
                lea     rcx, [rsp+378h+var_2E8]
                cmp     [rsp+378h+var_2F8], rdi
                cmovnz  rcx, [rsp+378h+var_2F8]
                mov     [rsp+378h+var_2F8], rcx
                lea     rax, [rsp+378h+var_2B8]
                mov     [rsp+378h+var_340], rax
                lea     rax, [rsp+378h+var_178]
                mov     [rsp+378h+var_348], rax
                mov     byte ptr [rsp+378h+var_350], dil
                mov     rax, cs:CmKeyObjectType
                mov     [rsp+378h+var_358], rax
                xor     r9d, r9d
                xor     r8d, r8d
                call    ObReferenceObjectByName
                mov     esi, eax
                test    eax, eax
                js      loc_14066D13E
                mov     rbx, [rsp+378h+var_2B8]
                mov     rcx, rbx
                call    ObDeleteCapturedInsertInfo
                mov     al, r15b
                neg     al
                sbb     edx, edx
                and     edx, 0FFFFFE00h
                add     edx, 240h
                lea     rax, [rsp+378h+var_278]
                mov     [rsp+378h+var_348], rax
                mov     byte ptr [rsp+378h+var_350], r15b
                mov     rax, cs:CmKeyObjectType
                mov     [rsp+378h+var_358], rax
                mov     r9d, [rsp+378h+arg_28]
                xor     r8d, r8d
                mov     rcx, rbx
                call    ObOpenObjectByPointer
                mov     esi, eax
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                test    esi, esi
                js      short loc_14066D13E

loc_14066D113:                          ; DATA XREF: .rdata:00000001400635B0↑o
;   __try { // __except at loc_14066D128
                mov     rax, [rsp+378h+var_278]
                mov     rcx, [rsp+378h+var_2D8]
                mov     [rcx], rax
                jmp     short loc_14066D13E
;   } // starts at 14066D113
; ---------------------------------------------------------------------------

loc_14066D128:                          ; DATA XREF: .rdata:00000001400635B0↑o
;   __except(1) // owned by 14066D113
                mov     esi, eax
                xor     edi, edi
                mov     r13b, [rsp+378h+var_317]
                mov     r12d, [rsp+378h+var_310]
                mov     r14d, [rsp+378h+var_2A0]

loc_14066D13E:                          ; CODE XREF: sub_14066C7CC+8DF↑j
                                        ; sub_14066C7CC+945↑j ...
                mov     rcx, [rsp+378h+var_300]
                test    rcx, rcx
                jz      short loc_14066D15D
                test    r12d, r12d
                jz      loc_14066D2C6
                mov     edx, esi
                call    sub_14066DEC0

loc_14066D158:                          ; CODE XREF: sub_14066C7CC+B0E↓j
                mov     [rsp+378h+var_300], rdi

loc_14066D15D:                          ; CODE XREF: sub_14066C7CC+97A↑j
                test    esi, esi
                js      loc_14080C6D4
                jmp     loc_14066C9FD
; ---------------------------------------------------------------------------

loc_14066D16A:                          ; CODE XREF: sub_14066C7CC+1F5↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E6E8
                call    SeSinglePrivilegeCheck
                test    al, al
                jnz     loc_14066C9C7
                jmp     loc_14080C644
; ---------------------------------------------------------------------------

loc_14066D186:                          ; CODE XREF: sub_14066C7CC+793↑j
                lea     rax, [rsp+378h+var_300]
                mov     [rsp+378h+var_328], rax
                lea     rax, [rsp+378h+var_2F8]
                mov     [rsp+378h+var_330], rax
                mov     byte ptr [rsp+378h+var_338], r15b
                mov     rax, [rsp+378h+var_2D0]
                mov     [rsp+378h+var_340], rax
                mov     rax, [rsp+378h+var_2C8]
                mov     [rsp+378h+var_348], rax
                mov     al, [rsp+378h+arg_48]
                mov     byte ptr [rsp+378h+var_350], al
                mov     rax, [rsp+378h+var_2C0]
                mov     [rsp+378h+var_358], rax
                mov     r9, [rsp+378h+var_308]
                mov     r8d, r14d
                lea     rdx, [rsp+378h+var_298]
                lea     rcx, [rsp+378h+var_250]
                call    sub_14066B110
                jmp     loc_14066CFC2
; ---------------------------------------------------------------------------

loc_14066D1F6:                          ; CODE XREF: sub_14066C7CC+301↑j
                call    sub_140651420
                jmp     loc_14066CAD3
; ---------------------------------------------------------------------------

loc_14066D200:                          ; CODE XREF: sub_14066C7CC+67C↑j
                mov     [rsp+378h+var_280], rdi
                mov     [rsp+378h+var_350], rdi
                lea     rax, [rsp+378h+var_280]
                mov     [rsp+378h+var_358], rax
                xor     r9d, r9d
                mov     r8, cs:CmKeyObjectType
                xor     edx, edx
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+378h+var_280]
                jmp     loc_14066CE4E
; ---------------------------------------------------------------------------

loc_14066D238:                          ; CODE XREF: sub_14066C7CC+82D↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                jmp     loc_14066CFFF
; ---------------------------------------------------------------------------

loc_14066D245:                          ; CODE XREF: sub_14066C7CC+273↑j
                call    ZwClose
                jmp     loc_14066CA45
; ---------------------------------------------------------------------------

loc_14066D24F:                          ; CODE XREF: sub_14066C7CC+1B0↑j
                test    r14d, 0FFFF9EFFh
                jz      loc_14066C982
                jmp     loc_14066D2FB
; ---------------------------------------------------------------------------

loc_14066D261:                          ; CODE XREF: sub_14066C7CC+57B↑j
                mov     [rsp+378h+var_350], rdi
                lea     rcx, [rsp+378h+var_308]
                mov     [rsp+378h+var_358], rcx
                mov     r9b, r15b
                xor     edx, edx
                mov     rcx, rax
                call    sub_140632C4C
                mov     esi, eax
                test    eax, eax
                jns     loc_14066CD4D
                jmp     loc_14066C9FD
; ---------------------------------------------------------------------------

loc_14066D28C:                          ; CODE XREF: sub_14066C7CC+59D↑j
                mov     [rsp+378h+var_350], rdi
                lea     rax, [rsp+378h+var_2C0]
                mov     [rsp+378h+var_358], rax
                mov     r9b, r15b
                xor     edx, edx
                call    sub_140632C4C
                mov     esi, eax
                test    eax, eax
                jns     loc_14066CD6F
                jmp     loc_14066C9FD
; ---------------------------------------------------------------------------

loc_14066D2B7:                          ; CODE XREF: sub_14066C7CC+83B↑j
                call    PsDereferenceSiloContext
                mov     [rsp+378h+var_308], rdi
                jmp     loc_14066D00D
; ---------------------------------------------------------------------------

loc_14066D2C6:                          ; CODE XREF: sub_14066C7CC+97F↑j
                call    sub_14064A3A0
                mov     rcx, [rsp+378h+var_300]
                call    sub_14064FAE0
                call    sub_14064A360
                jmp     loc_14066D158
; ---------------------------------------------------------------------------

loc_14066D2DF:                          ; CODE XREF: sub_14066C7CC+2A1↑j
                call    PsDereferenceSiloContext
                jmp     loc_14066CA73
; ---------------------------------------------------------------------------

loc_14066D2E9:                          ; CODE XREF: sub_14066C7CC+1C9↑j
                mov     eax, r14d
                mov     ecx, 600h
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_14066C99B

loc_14066D2FB:                          ; CODE XREF: sub_14066C7CC+1A7↑j
                                        ; sub_14066C7CC+A90↑j ...
                mov     esi, 0C00000F1h
                jmp     loc_14066CA02
; ---------------------------------------------------------------------------

loc_14066D305:                          ; CODE XREF: sub_14066C7CC+1BE↑j
                test    rsi, rsi
                jz      loc_14080C63A
                bt      r14d, 0Eh
                jb      loc_14066C990
                jmp     short loc_14066D2FB
; ---------------------------------------------------------------------------

loc_14066D31B:                          ; CODE XREF: sub_14066C7CC+5AE↑j
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+378h+var_288], rdi
                mov     [rsp+378h+var_350], rdi
                lea     rcx, [rsp+378h+var_288]
                mov     [rsp+378h+var_358], rcx
                mov     r9b, r15b
                mov     edx, 4
                mov     rcx, rax
                call    ObReferenceObjectByHandle
                mov     esi, eax
                mov     rax, [rsp+378h+var_288]
                mov     [rsp+378h+var_2D0], rax
                test    esi, esi
                js      loc_14066C9FD
                mov     eax, [rax+0C0h]
                cmp     eax, 2
                jz      loc_14066CD80
                jmp     loc_14080C6B2
; ---------------------------------------------------------------------------

loc_14066D37A:                          ; CODE XREF: sub_14066C7CC+290↑j
                call    PsDereferenceSiloContext
                jmp     loc_14066CA62
; } // starts at 14066C7CC
sub_14066C7CC   endp

; ---------------------------------------------------------------------------
byte_14066D384  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400635C8↑o
                                        ; .pdata:00000001401005B4↑o

; =============== S U B R O U T I N E =======================================


sub_14066D38C   proc near               ; CODE XREF: sub_14066C7CC+30E↑p
                                        ; DATA XREF: .rdata:00000001400635EC↑o ...

var_48          = qword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
arg_0           = dword ptr  8

; FUNCTION CHUNK AT 000000014080C70A SIZE 0000003D BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], ecx
                push    rbx
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                movups  xmm0, cs:xmmword_140011708
                mov     rbx, cs:qword_140D2D018
                lea     rdx, [rsp+68h+var_38]
                mov     rcx, rbx
                movdqu  [rsp+68h+var_38], xmm0
                call    EtwEventEnabled
                test    al, al
                jnz     loc_14080C70A

loc_14066D3CD:                          ; CODE XREF: sub_14066D38C+19F3B6↓j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066D38C
sub_14066D38C   endp

algn_14066D3E1:                         ; DATA XREF: .rdata:00000001400635EC↑o
                                        ; .pdata:00000001401005C0↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14066D3E8   proc near               ; CODE XREF: sub_14066C7CC+783↑p
                                        ; DATA XREF: .rdata:0000000140063618↑o ...

var_60          = qword ptr -60h
var_50          = word ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080C748 SIZE 00000059 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_10], rdi
                mov     [rsp-8+arg_8], edx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                movups  xmm0, cs:xmmword_140011718
                mov     rbx, cs:qword_140D2D018
                lea     rdx, [rbp+var_48]
                mov     rdi, rcx
                mov     rcx, rbx
                movdqu  [rbp+var_48], xmm0
                call    EtwEventEnabled
                xor     ecx, ecx
                test    al, al
                jnz     loc_14080C748

loc_14066D43B:                          ; CODE XREF: sub_14066D3E8+19F3B4↓j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+10h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066D3E8
sub_14066D3E8   endp

byte_14066D45D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140063618↑o
                                        ; .pdata:00000001401005CC↑o

; =============== S U B R O U T I N E =======================================


sub_14066D464   proc near               ; CODE XREF: sub_14066C7CC+5E7↑p
                                        ; sub_1406E0C9C+50C↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_8], rdx
                push    rdi
                sub     rsp, 40h
                mov     rsi, cs:CmKeyObjectType
                mov     edi, r9d
                test    rcx, rcx
                jnz     short loc_14066D4A2
                mov     rax, [rsp+48h+arg_20]
                and     [rax], rcx
                xor     eax, eax

loc_14066D491:                          ; CODE XREF: sub_14066D464+9E↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066D4A2:                          ; CODE XREF: sub_14066D464+21↑j
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_8]
                and     [rsp+48h+arg_8], 0
                mov     r9b, r8b
                mov     r8, rsi
                mov     [rsp+48h+var_28], rax
                mov     edx, edi
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066D500
                mov     rax, [rsp+48h+arg_20]
                mov     r9d, edi
                mov     rcx, [rsp+48h+arg_8]
                xor     r8d, r8d
                mov     [rsp+48h+var_18], rax
                mov     edx, 200h
                mov     byte ptr [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], rsi
                call    ObOpenObjectByPointer
                mov     rcx, [rsp+48h+arg_8]
                mov     ebx, eax
                call    PsDereferenceSiloContext

loc_14066D500:                          ; CODE XREF: sub_14066D464+65↑j
                mov     eax, ebx
                jmp     short loc_14066D491
sub_14066D464   endp

; ---------------------------------------------------------------------------
byte_14066D504  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001401005D8↑o

; =============== S U B R O U T I N E =======================================


sub_14066D50C   proc near               ; CODE XREF: sub_14066C7CC+368↑p
                                        ; sub_14086A9A0+101↓p ...

var_2A8         = qword ptr -2A8h
var_298         = dword ptr -298h
var_294         = dword ptr -294h
var_290         = dword ptr -290h
var_288         = xmmword ptr -288h
var_278         = qword ptr -278h
var_270         = xmmword ptr -270h
var_260         = xmmword ptr -260h
var_250         = xmmword ptr -250h
var_240         = xmmword ptr -240h
var_228         = xmmword ptr -228h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 2B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+2C8h+var_28], rax
                mov     rdi, r8
                mov     r10b, dl
                mov     [rsp+2C8h+var_278], r8
                xorps   xmm0, xmm0
                movups  [rsp+2C8h+var_270], xmm0
                xor     ebx, ebx
                mov     [rsp+2C8h+var_294], ebx
                mov     [rsp+2C8h+var_290], ebx
                mov     [r8+8], rbx

loc_14066D555:                          ; DATA XREF: .rdata:000000014006365C↑o
;   __try { // __except at loc_14066D7EC
                lea     r15d, [rbx+1]
                cmp     dl, r15b
                jnz     loc_14066D65F
                test    cl, 3
                jnz     loc_14066D66E
                mov     rax, rcx
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovnb  rax, rdx
                mov     al, [rax]

loc_14066D581:                          ; CODE XREF: sub_14066D50C+15D↓j
                movups  xmm0, xmmword ptr [rcx]
                movups  [rsp+2C8h+var_260], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  [rsp+2C8h+var_250], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  [rsp+2C8h+var_240], xmm0
                cmp     r10b, r15b
                jnz     short loc_14066D5B1
                mov     rax, qword ptr [rsp+2C8h+var_250]
                cmp     rax, rdx
                cmovnb  rax, rdx
                mov     al, [rax]

loc_14066D5B1:                          ; CODE XREF: sub_14066D50C+95↑j
                mov     rax, qword ptr [rsp+2C8h+var_250]
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rsp+2C8h+var_288], xmm0
                cmp     r10b, r15b
                jnz     loc_14066D658
                movzx   esi, word ptr [rsp+2C8h+var_288]
                test    si, si
                jz      short loc_14066D5F8
                test    byte ptr [rsp+2C8h+var_288+8], r15b
                jnz     loc_14066D674
                mov     rcx, qword ptr [rsp+2C8h+var_288+8]
                lea     r8, [rcx+rsi]
                cmp     r8, rdx
                ja      loc_14066D679
                cmp     r8, rcx
                jb      loc_14066D679

loc_14066D5F8:                          ; CODE XREF: sub_14066D50C+C4↑j
                                        ; sub_14066D50C+151↓j ...
                test    r15b, sil
                jnz     loc_14066D689
                mov     rax, qword ptr [rsp+2C8h+var_260+8]
                test    rax, rax
                jnz     loc_14066D693
                test    si, si
                jz      loc_14066D7D9
                mov     [rdi], si
                mov     [rdi+2], si
                movzx   esi, si
                mov     r8d, 6E664D43h
                mov     edx, esi
                lea     ecx, [rax+9]
                call    ExAllocatePoolWithQuotaTag
                mov     [rdi+8], rax
                test    rax, rax
                jz      loc_14066D7E0
                mov     r8d, esi
                mov     rdx, qword ptr [rsp+2C8h+var_288+8]
                mov     rcx, rax
                call    memmove

loc_14066D64F:                          ; CODE XREF: sub_14066D50C+2D9↓j
                mov     [rsp+2C8h+var_298], ebx
                jmp     loc_14066D7EA
; ---------------------------------------------------------------------------

loc_14066D658:                          ; CODE XREF: sub_14066D50C+B6↑j
                movzx   esi, word ptr [rsp+2C8h+var_288]
                jmp     short loc_14066D5F8
; ---------------------------------------------------------------------------

loc_14066D65F:                          ; CODE XREF: sub_14066D50C+50↑j
                mov     rdx, 7FFFFFFF0000h
                jmp     loc_14066D581
; ---------------------------------------------------------------------------

loc_14066D66E:                          ; CODE XREF: sub_14066D50C+59↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4

loc_14066D674:                          ; CODE XREF: sub_14066D50C+CB↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14066D679:                          ; CODE XREF: sub_14066D50C+DD↑j
                                        ; sub_14066D50C+E6↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_14066D5F8
; ---------------------------------------------------------------------------

loc_14066D689:                          ; CODE XREF: sub_14066D50C+EF↑j
                mov     eax, 0C000003Bh
                jmp     loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D693:                          ; CODE XREF: sub_14066D50C+FD↑j
                test    eax, eax
                jns     short loc_14066D6A6
                cmp     r10b, r15b
                jnz     short loc_14066D6A6
                mov     eax, 0C0000008h
                jmp     loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D6A6:                          ; CODE XREF: sub_14066D50C+189↑j
                                        ; sub_14066D50C+18E↑j
                mov     rcx, qword ptr [rsp+2C8h+var_288+8]
                mov     r14d, 5Ch ; '\'
                test    rcx, rcx
                jz      short loc_14066D6CC
                cmp     si, 2
                jb      short loc_14066D6CC
                cmp     [rcx], r14w
                jnz     short loc_14066D6CC
                mov     eax, 0C000003Bh
                jmp     loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D6CC:                          ; CODE XREF: sub_14066D50C+1A8↑j
                                        ; sub_14066D50C+1AE↑j ...
                lea     rcx, [rsp+2C8h+var_260+8]
                mov     [rsp+2C8h+var_2A8], rcx
                mov     r9b, r15b
                mov     r8d, 20h ; ' '
                mov     dl, r10b
                mov     rcx, rax
                call    IoConvertFileHandleToKernelHandle
                mov     [rsp+2C8h+var_298], eax
                test    eax, eax
                js      loc_14066D80E
                lea     rax, [rsp+2C8h+var_294]
                mov     [rsp+2C8h+var_2A8], rax
                mov     r9d, 200h
                lea     r8, [rsp+2C8h+var_228]
                mov     edx, r15d
                mov     rcx, qword ptr [rsp+2C8h+var_260+8]
                call    ZwQueryObject
                mov     r15d, eax
                mov     [rsp+2C8h+var_298], eax
                mov     rcx, qword ptr [rsp+2C8h+var_260+8]
                call    ZwClose
                test    r15d, r15d
                jns     short loc_14066D739
                mov     eax, r15d
                jmp     loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D739:                          ; CODE XREF: sub_14066D50C+223↑j
                movaps  xmm0, [rsp+2C8h+var_228]
                movdqu  [rsp+2C8h+var_270], xmm0
                mov     [rdi], bx
                movd    eax, xmm0
                movzx   ecx, ax
                movzx   edx, si
                add     ecx, 2
                add     edx, ecx
                mov     [rsp+2C8h+var_290], edx
                cmp     edx, 0FFFFh
                jbe     short loc_14066D76F
                mov     eax, 0C0000039h
                jmp     loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D76F:                          ; CODE XREF: sub_14066D50C+257↑j
                mov     [rdi+2], dx
                movzx   edx, dx
                mov     ecx, 9
                mov     r8d, 6E664D43h
                call    ExAllocatePoolWithQuotaTag
                mov     [rdi+8], rax
                test    rax, rax
                jnz     short loc_14066D796
                mov     eax, 0C000009Ah
                jmp     short loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D796:                          ; CODE XREF: sub_14066D50C+281↑j
                lea     rdx, [rsp+2C8h+var_270]
                mov     rcx, rdi
                call    RtlAppendUnicodeStringToString
                mov     [rsp+2C8h+var_298], eax
                movzx   eax, word ptr [rdi]
                test    ax, ax
                jz      short loc_14066D7C4
                mov     rcx, [rdi+8]
                cmp     [rax+rcx-2], r14w
                jz      short loc_14066D7C4
                mov     [rax+rcx], r14w
                add     word ptr [rdi], 2

loc_14066D7C4:                          ; CODE XREF: sub_14066D50C+2A1↑j
                                        ; sub_14066D50C+2AD↑j
                lea     rdx, [rsp+2C8h+var_288]
                mov     rcx, rdi
                call    RtlAppendUnicodeStringToString
                mov     ebx, eax
                mov     [rsp+2C8h+var_298], eax
                jmp     short loc_14066D7EA
; ---------------------------------------------------------------------------

loc_14066D7D9:                          ; CODE XREF: sub_14066D50C+106↑j
                mov     eax, 0C000003Bh
                jmp     short loc_14066D80E
; ---------------------------------------------------------------------------

loc_14066D7E0:                          ; CODE XREF: sub_14066D50C+12D↑j
                mov     ebx, 0C000009Ah
                jmp     loc_14066D64F
; ---------------------------------------------------------------------------

loc_14066D7EA:                          ; CODE XREF: sub_14066D50C+147↑j
                                        ; sub_14066D50C+2CB↑j
                jmp     short loc_14066D80C
;   } // starts at 14066D555
; ---------------------------------------------------------------------------

loc_14066D7EC:                          ; DATA XREF: .rdata:000000014006365C↑o
;   __except(1) // owned by 14066D555
                mov     ebx, eax
                mov     [rsp+2C8h+var_298], eax
                mov     rdi, [rsp+2C8h+var_278]
                mov     rcx, [rdi+8]
                test    rcx, rcx
                jz      short loc_14066D80C
                xor     edx, edx
                call    ExFreePoolWithTag
                and     qword ptr [rdi+8], 0

loc_14066D80C:                          ; CODE XREF: sub_14066D50C:loc_14066D7EA↑j
                                        ; sub_14066D50C+2F2↑j
                mov     eax, ebx

loc_14066D80E:                          ; CODE XREF: sub_14066D50C+182↑j
                                        ; sub_14066D50C+195↑j ...
                mov     rcx, [rsp+2C8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2C8h+var_18]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14066D50C
sub_14066D50C   endp

algn_14066D838:                         ; DATA XREF: .pdata:00000001401005E4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14066D840   proc near               ; CODE XREF: sub_14066C7CC+1DB↑p
                                        ; sub_140727D40+9A↓p ...

arg_0           = qword ptr  8

                sub     rsp, 28h
                and     [rsp+28h+arg_0], 0
                lea     rcx, [rsp+28h+arg_0]
                call    cs:TmCurrentTransaction_0
                nop     dword ptr [rax+rax+00h]
                cmp     eax, 0C00000BBh
                jz      short loc_14066D86E
                test    eax, eax
                js      short loc_14066D870
                cmp     [rsp+28h+arg_0], 0
                jnz     short loc_14066D876

loc_14066D86E:                          ; CODE XREF: sub_14066D840+20↑j
                xor     eax, eax

loc_14066D870:                          ; CODE XREF: sub_14066D840+24↑j
                                        ; sub_14066D840+3B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066D876:                          ; CODE XREF: sub_14066D840+2C↑j
                mov     eax, 0C0190001h
                jmp     short loc_14066D870
sub_14066D840   endp

; ---------------------------------------------------------------------------
byte_14066D87D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001401005F0↑o

; =============== S U B R O U T I N E =======================================


sub_14066D890   proc near               ; DATA XREF: .pdata:00000001401005FC↑o
                                        ; PAGE:000000014098BE08↓o

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                and     [rsp+48h+var_10], 0
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], eax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    sub_14066D8D0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066D890   endp

algn_14066D8C4:                         ; DATA XREF: .pdata:00000001401005FC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14066D8D0   proc near               ; CODE XREF: sub_14066D890+29↑p
                                        ; sub_140768B10+DE↓p
                                        ; DATA XREF: ...

var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_248         = byte ptr -248h
var_247         = byte ptr -247h
var_246         = byte ptr -246h
var_245         = byte ptr -245h
var_244         = dword ptr -244h
var_240         = dword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = xmmword ptr -228h
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = xmmword ptr -208h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1C8         = xmmword ptr -1C8h
var_1B8         = xmmword ptr -1B8h
var_1A8         = qword ptr -1A8h
var_198         = dword ptr -198h
var_194         = word ptr -194h
var_190         = qword ptr -190h
var_180         = dword ptr -180h
var_17C         = dword ptr -17Ch
var_178         = dword ptr -178h
var_150         = qword ptr -150h
var_138         = dword ptr -138h
var_108         = xmmword ptr -108h
var_C0          = byte ptr -0C0h
var_68          = byte ptr -68h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 000000014080C7A2 SIZE 000000ED BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+288h+var_48], rax
                mov     rsi, r8
                mov     r13d, edx
                mov     r12, rcx
                mov     [rsp+288h+var_1E8], rcx
                mov     [rsp+288h+var_1E0], r8
                mov     r14, [rsp+288h+arg_20]
                mov     rdi, [rsp+288h+arg_30]
                mov     [rsp+288h+var_1D8], rdi
                xor     r15d, r15d
                mov     [rsp+288h+var_244], r15d
                mov     [rsp+288h+var_238], r15
                xorps   xmm0, xmm0
                movups  [rsp+288h+var_228], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+288h+var_208], xmm1
                mov     [rsp+288h+var_247], r15b
                mov     [rsp+288h+var_230], r15
                mov     [r11-1F8h], r15d
                movups  xmmword ptr [r11-68h], xmm0
                movups  xmmword ptr [r11-58h], xmm0
                mov     [rsp+288h+var_210], r15
                cmp     cs:qword_140D2D008, r15
                jnz     loc_14080C7A2

loc_14066D975:                          ; CODE XREF: sub_14066D8D0+19EEE5↓j
                xor     edx, edx
                mov     r8d, 128h
                lea     rcx, [rsp+288h+var_198]
                call    memset
                mov     [rsp+288h+var_138], 0FFFFFFFFh
                xorps   xmm0, xmm0
                movups  [rsp+288h+var_108], xmm0
                lea     rax, [rsp+288h+var_108]
                mov     qword ptr [rsp+288h+var_108+8], rax
                lea     rax, [rsp+288h+var_108]
                mov     qword ptr [rsp+288h+var_108], rax
                xor     edx, edx
                lea     r8d, [rdx+50h]
                lea     rcx, [rsp+288h+var_C0]
                call    memset
                mov     eax, r13d
                and     eax, 300h
                mov     [rsp+288h+var_17C], eax
                and     r13d, 0FFFFFCFFh
                mov     [rsp+288h+var_240], r13d
                call    sub_140652850
                mov     [rsp+288h+var_245], al
                test    al, al
                jz      loc_14080C7BA
                mov     rax, gs:188h
                movzx   edx, byte ptr [rax+232h]
                mov     [rsp+288h+var_248], dl
                mov     [rsp+288h+var_246], dl
                cmp     dl, 1
                jnz     loc_14066DDB5

loc_14066DA20:                          ; DATA XREF: .rdata:0000000140063694↑o
;   __try { // __except at loc_14066DC35
                mov     rbx, 7FFFFFFF0000h
                test    r14, r14
                jz      short loc_14066DA8A
                xorps   xmm0, xmm0
                movups  [rsp+288h+var_1C8], xmm0
                cmp     r14, rbx
                jnb     loc_14066DBAF

loc_14066DA43:                          ; CODE XREF: sub_14066D8D0+2E2↓j
                mov     ecx, [r14]
                mov     dword ptr [rsp+288h+var_1C8], ecx
                mov     r13, [r14+8]
                mov     qword ptr [rsp+288h+var_1C8+8], r13
                movaps  xmm0, [rsp+288h+var_1C8]
                movdqa  [rsp+288h+var_208], xmm0
                test    cx, cx
                jnz     loc_14066DB40

loc_14066DA73:                          ; CODE XREF: sub_14066D8D0+284↓j
                                        ; sub_14066D8D0+295↓j
                test    cl, 1
                jnz     loc_14066DBBC
                test    cx, cx
                jnz     loc_14066DB6A

loc_14066DA85:                          ; CODE XREF: sub_14066D8D0+2DA↓j
                mov     r13d, [rsp+288h+var_240]

loc_14066DA8A:                          ; CODE XREF: sub_14066D8D0+15D↑j
                mov     rax, r12
                cmp     r12, rbx
                jnb     loc_14066DBD8

loc_14066DA96:                          ; CODE XREF: sub_14066D8D0+30B↓j
                mov     [rax], r15
                test    rdi, rdi
                jz      short loc_14066DAAE
                mov     rcx, rdi
                cmp     rdi, rbx
                jnb     loc_14066DBE0

loc_14066DAAA:                          ; CODE XREF: sub_14066D8D0+313↓j
                mov     eax, [rcx]
                mov     [rcx], eax

loc_14066DAAE:                          ; CODE XREF: sub_14066D8D0+1CC↑j
                mov     rax, rsi
                test    sil, 3
                jnz     loc_14066DBE8
                cmp     rsi, rbx
                jnb     loc_14066DBEE

loc_14066DAC4:                          ; CODE XREF: sub_14066D8D0+321↓j
                movzx   eax, byte ptr [rax]
                mov     rcx, [rsi+10h]
                mov     [rsp+288h+var_1A8], rcx
                xorps   xmm0, xmm0
                movups  [rsp+288h+var_1B8], xmm0
                cmp     rcx, rbx
                jnb     loc_14066DBF6

loc_14066DAE7:                          ; CODE XREF: sub_14066D8D0+329↓j
                mov     eax, [rcx]
                mov     dword ptr [rsp+288h+var_1B8], eax
                mov     rcx, [rcx+8]
                mov     qword ptr [rsp+288h+var_1B8+8], rcx
                movaps  xmm0, [rsp+288h+var_1B8]
                movdqa  [rsp+288h+var_228], xmm0
                test    ax, ax
                jz      short loc_14066DB30
                test    cl, 1
                jnz     loc_14066DBFE
                movzx   edx, ax
                add     rdx, rcx
                cmp     rdx, rbx
                ja      loc_14066DC03
                cmp     rdx, rcx
                jb      loc_14066DC03

loc_14066DB30:                          ; CODE XREF: sub_14066D8D0+23D↑j
                                        ; sub_14066D8D0+33E↓j
                test    byte ptr [rsp+288h+var_228], 1
                jnz     loc_14066DC13
                jmp     loc_14066DC21
; ---------------------------------------------------------------------------

loc_14066DB40:                          ; CODE XREF: sub_14066D8D0+19D↑j
                test    r13b, 1
                jnz     short loc_14066DBB7
                movzx   edx, cx
                add     rdx, r13
                cmp     rdx, rbx
                ja      short loc_14066DB5A
                cmp     rdx, r13
                jnb     loc_14066DA73

loc_14066DB5A:                          ; CODE XREF: sub_14066D8D0+27F↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_14066DA73
; ---------------------------------------------------------------------------

loc_14066DB6A:                          ; CODE XREF: sub_14066D8D0+1AF↑j
                movzx   eax, cx
                mov     [rsp+288h+var_1F0], rax
                mov     r8d, 78634D43h
                mov     edx, eax
                call    sub_140215A20
                mov     [rsp+288h+var_230], rax
                test    rax, rax
                jz      short loc_14066DBCA
                mov     r8, [rsp+288h+var_1F0]
                mov     rdx, r13
                mov     r14, rax
                mov     rcx, rax
                call    memmove
                mov     qword ptr [rsp+288h+var_208+8], r14
                jmp     loc_14066DA85
; ---------------------------------------------------------------------------

loc_14066DBAF:                          ; CODE XREF: sub_14066D8D0+16D↑j
                mov     r14, rbx
                jmp     loc_14066DA43
; ---------------------------------------------------------------------------

loc_14066DBB7:                          ; CODE XREF: sub_14066D8D0+274↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14066DBBC:                          ; CODE XREF: sub_14066D8D0+1A6↑j
                mov     ebx, 0C000000Dh
                mov     [rsp+288h+var_244], ebx
                jmp     loc_14066DD5A
; ---------------------------------------------------------------------------

loc_14066DBCA:                          ; CODE XREF: sub_14066D8D0+2BA↑j
                mov     ebx, 0C000009Ah
                mov     [rsp+288h+var_244], ebx
                jmp     loc_14066DD5A
; ---------------------------------------------------------------------------

loc_14066DBD8:                          ; CODE XREF: sub_14066D8D0+1C0↑j
                mov     rax, rbx
                jmp     loc_14066DA96
; ---------------------------------------------------------------------------

loc_14066DBE0:                          ; CODE XREF: sub_14066D8D0+1D4↑j
                mov     rcx, rbx
                jmp     loc_14066DAAA
; ---------------------------------------------------------------------------

loc_14066DBE8:                          ; CODE XREF: sub_14066D8D0+1E5↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_14066DBEE:                          ; CODE XREF: sub_14066D8D0+1EE↑j
                mov     rax, rbx
                jmp     loc_14066DAC4
; ---------------------------------------------------------------------------

loc_14066DBF6:                          ; CODE XREF: sub_14066D8D0+211↑j
                mov     rcx, rbx
                jmp     loc_14066DAE7
; ---------------------------------------------------------------------------

loc_14066DBFE:                          ; CODE XREF: sub_14066D8D0+242↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14066DC03:                          ; CODE XREF: sub_14066D8D0+251↑j
                                        ; sub_14066D8D0+25A↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_14066DB30
; ---------------------------------------------------------------------------

loc_14066DC13:                          ; CODE XREF: sub_14066D8D0+265↑j
                mov     ebx, 0C000000Dh
                mov     [rsp+288h+var_244], ebx
                jmp     loc_14066DD5A
; ---------------------------------------------------------------------------

loc_14066DC21:                          ; CODE XREF: sub_14066D8D0+26B↑j
                mov     rax, [rsi+8]
                mov     [rsp+288h+var_238], rax
                mov     ebx, [rsp+288h+var_244]
                movzx   edx, [rsp+288h+var_248]
                jmp     short loc_14066DC79
;   } // starts at 14066DA20
; ---------------------------------------------------------------------------

loc_14066DC35:                          ; DATA XREF: .rdata:0000000140063694↑o
;   __except(1) // owned by 14066DA20
                mov     ebx, eax
                mov     qword ptr [rsp+288h+var_228+8], 0
                xor     eax, eax
                mov     word ptr [rsp+288h+var_228], ax
                mov     [rsp+288h+var_244], ebx
                xor     r15d, r15d
                movzx   edx, [rsp+288h+var_246]
                mov     [rsp+288h+var_248], dl
                mov     rax, [rsp+288h+var_238]
                mov     r12, [rsp+288h+var_1E8]
                mov     r13d, [rsp+288h+var_240]
                mov     rsi, [rsp+288h+var_1E0]
                mov     rdi, [rsp+288h+var_1D8]

loc_14066DC79:                          ; CODE XREF: sub_14066D8D0+363↑j
                                        ; sub_14066D8D0+503↓j
                test    ebx, ebx
                js      loc_14066DD5A
                cmp     cs:qword_140D2D008, 0
                jnz     loc_14080C7F4

loc_14066DC8F:                          ; CODE XREF: sub_14066D8D0+19EF27↓j
                                        ; sub_14066D8D0+19EF81↓j
                mov     ecx, [rsp+288h+arg_28]
                mov     eax, ecx
                and     eax, 100001Fh
                cmp     eax, ecx
                jnz     loc_14080C856
                mov     [rsp+288h+var_180], ecx
                mov     [rsp+288h+var_198], 1
                mov     rax, qword ptr [rsp+288h+var_208+8]
                mov     [rsp+288h+var_190], rax
                movzx   eax, word ptr [rsp+288h+var_208]
                mov     [rsp+288h+var_194], ax
                mov     rax, [rsp+288h+arg_38]
                mov     [rsp+288h+var_150], rax
                lea     rax, [rsp+288h+var_238]
                mov     [rsp+288h+var_258], rax
                lea     rax, [rsp+288h+var_198]
                mov     [rsp+288h+var_260], rax
                mov     dword ptr [rsp+288h+var_268], r13d
                xor     r9d, r9d
                movzx   r8d, dl
                mov     rdx, cs:CmKeyObjectType
                mov     rcx, rsi
                call    ObOpenObjectByName
                mov     ebx, eax
                test    eax, eax
                js      short loc_14066DD24
                mov     [rsp+288h+var_247], 1

loc_14066DD24:                          ; CODE XREF: sub_14066D8D0+44D↑j
                                        ; DATA XREF: .rdata:00000001400636A4↑o
;   __try { // __except at loc_14066DD41
                test    eax, eax
                js      short loc_14066DD3F
                mov     rax, [rsp+288h+var_238]
                mov     [r12], rax
                test    rdi, rdi
                jz      short loc_14066DD3F
                mov     eax, [rsp+288h+var_178]
                mov     [rdi], eax

loc_14066DD3F:                          ; CODE XREF: sub_14066D8D0+456↑j
                                        ; sub_14066D8D0+464↑j
                jmp     short loc_14066DD5A
;   } // starts at 14066DD24
; ---------------------------------------------------------------------------

loc_14066DD41:                          ; DATA XREF: .rdata:00000001400636A4↑o
;   __except(1) // owned by 14066DD24
                mov     ebx, eax
                cmp     [rsp+288h+var_247], 0
                jz      short loc_14066DD5A
                movzx   edx, [rsp+288h+var_246]
                mov     rcx, [rsp+288h+var_238]
                call    ObCloseHandle
                nop

loc_14066DD5A:                          ; CODE XREF: sub_14066D8D0+2F5↑j
                                        ; sub_14066D8D0+303↑j ...
                mov     rax, cs:qword_140D2D008
                test    rax, rax
                jnz     loc_14080C860

loc_14066DD6A:                          ; CODE XREF: sub_14066D8D0+19EFBA↓j
                mov     r14, [rsp+288h+var_230]
                test    r14, r14
                jnz     short loc_14066DDD8

loc_14066DD74:                          ; CODE XREF: sub_14066D8D0+510↓j
                xor     edx, edx
                lea     rcx, [rsp+288h+var_198]
                call    sub_140651820
                cmp     [rsp+288h+var_245], 0
                jz      short loc_14066DD8F
                call    sub_140651420

loc_14066DD8F:                          ; CODE XREF: sub_14066D8D0+4B8↑j
                mov     eax, ebx
                mov     rcx, [rsp+288h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 250h
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
; ---------------------------------------------------------------------------

loc_14066DDB5:                          ; CODE XREF: sub_14066D8D0+14A↑j
                test    r14, r14
                jnz     short loc_14066DDE2

loc_14066DDBA:                          ; CODE XREF: sub_14066D8D0+51E↓j
                mov     rax, [rsi+10h]
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+288h+var_228], xmm0
                mov     rax, [rsi+8]
                mov     [rsp+288h+var_238], rax
                mov     ebx, [rsp+288h+var_244]
                jmp     loc_14066DC79
; ---------------------------------------------------------------------------

loc_14066DDD8:                          ; CODE XREF: sub_14066D8D0+4A2↑j
                mov     rcx, r14
                call    SeFreePrivileges
                jmp     short loc_14066DD74
; ---------------------------------------------------------------------------

loc_14066DDE2:                          ; CODE XREF: sub_14066D8D0+4E8↑j
                movups  xmm0, xmmword ptr [r14]
                movups  [rsp+288h+var_208], xmm0
                jmp     short loc_14066DDBA
; } // starts at 14066D8D0
sub_14066D8D0   endp

; ---------------------------------------------------------------------------
byte_14066DDF0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400636BC↑o
                                        ; .pdata:0000000140100608↑o

; =============== S U B R O U T I N E =======================================


sub_14066DDF8   proc near               ; CODE XREF: sub_140A5C16C+8B↓p
                                        ; DATA XREF: .pdata:0000000140100614↑o
                push    rbx
                sub     rsp, 20h
                xor     edx, edx
                mov     r8d, 128h
                mov     rbx, rcx
                call    memset
                or      dword ptr [rbx+60h], 0FFFFFFFFh
                lea     rax, [rbx+90h]
                xor     edx, edx
                mov     [rax+8], rax
                lea     rcx, [rbx+0D8h]
                mov     [rax], rax
                lea     r8d, [rdx+50h]
                call    memset
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14066DDF8   endp

algn_14066DE39:                         ; DATA XREF: .pdata:0000000140100614↑o
                align 20h
; Exported entry 1645. ObDeleteCapturedInsertInfo

; =============== S U B R O U T I N E =======================================


