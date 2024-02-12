ntoskrnl_1      proc near               ; DATA XREF: .pdata:0000000140104448↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rbx, rdx
                mov     rdi, rcx
                call    PsGetCurrentServerSilo
                mov     r9d, 3
                mov     [rsp+38h+var_18], rax
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406E51F0
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_1      endp

algn_1406E517A:                         ; DATA XREF: .pdata:0000000140104448↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406E5180   proc near               ; CODE XREF: sub_1405EB770+8AE↑p
                                        ; DATA XREF: .pdata:0000000140104454↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                movzx   eax, byte ptr [r8+8]
                mov     rbx, r8
                lea     r10, [r8+0D0h]
                test    cl, cl
                jz      short loc_1406E51D8
                mov     r9d, eax
                mov     rcx, r10
                mov     rax, [r8+1D0h]
                mov     r8, [r8+200h]
                shr     r9d, 3
                and     r9d, 1
                mov     [rsp+38h+var_18], rax
                call    sub_1406E51F0
                test    eax, eax
                js      short loc_1406E51D1
                mov     al, [rbx+8]
                test    al, 8
                jnz     short loc_1406E51E3

loc_1406E51CA:                          ; CODE XREF: sub_1406E5180+67↓j
                or      al, 4
                mov     [rbx+8], al

loc_1406E51CF:                          ; CODE XREF: sub_1406E5180+61↓j
                xor     eax, eax

loc_1406E51D1:                          ; CODE XREF: sub_1406E5180+41↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406E51D8:                          ; CODE XREF: sub_1406E5180+17↑j
                and     al, 0FBh
                mov     [r10], rdx
                mov     [r8+8], al
                jmp     short loc_1406E51CF
; ---------------------------------------------------------------------------

loc_1406E51E3:                          ; CODE XREF: sub_1406E5180+48↑j
                and     byte ptr [rbx+9], 0F3h
                jmp     short loc_1406E51CA
sub_1406E5180   endp

; ---------------------------------------------------------------------------
algn_1406E51E9:                         ; DATA XREF: .pdata:0000000140104454↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406E51F0   proc near               ; CODE XREF: ntoskrnl_1+29↑p
                                        ; sub_1406E5180+3A↑p
                                        ; DATA XREF: ...

var_118         = qword ptr -118h
var_110         = xmmword ptr -110h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = byte ptr -0B0h
var_AE          = word ptr -0AEh
var_A0          = byte ptr -0A0h
var_9E          = word ptr -9Eh
var_90          = byte ptr -90h
var_8E          = word ptr -8Eh
var_80          = byte ptr -80h
var_7E          = word ptr -7Eh
var_70          = byte ptr -70h
var_6E          = word ptr -6Eh
var_60          = byte ptr -60h
var_5E          = word ptr -5Eh
var_50          = xmmword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408231C0 SIZE 0000021C BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     r15, r8
                mov     rsi, rdx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-90h], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+138h+var_D0], xmm1
                movups  xmmword ptr [rax-70h], xmm0
                movups  xmmword ptr [rax-0B0h], xmm1
                xor     ebx, ebx
                mov     [rsp+138h+var_F8], rbx
                movups  xmmword ptr [rax-0A0h], xmm0
                movups  [rsp+138h+var_C0], xmm1
                movups  [rsp+138h+var_110], xmm0
                movups  xmmword ptr [rax-60h], xmm1
                movups  xmmword ptr [rax-80h], xmm0

loc_1406E5258:                          ; DATA XREF: .rdata:000000014007A9FC↑o
;   __try { // __except at loc_1406E5305
                test    sil, 3
                jnz     short loc_1406E52D4
                mov     r13, 7FFFFFFF0000h
                mov     rax, r13
                cmp     rdx, r13
                cmovb   rax, rdx
                mov     al, [rax]
                mov     r12d, [rdx+8]
                btr     r12d, 0Eh
                mov     [rsp+138h+var_100], r12d
                mov     eax, r12d
                xor     eax, 1
                test    eax, 0F7010E11h
                jnz     short loc_1406E52DA
                mov     eax, r12d
                and     eax, 0FFFFFFE0h
                dec     eax
                and     eax, r12d
                test    al, 60h
                jnz     short loc_1406E52E4
                mov     r14, [rdx+80h]
                mov     [rsp+138h+var_F0], r14
                mov     [rsp+138h+var_F8], r14
                mov     rax, [rdx+3F0h]
                mov     [rsp+138h+var_E8], rax
                test    rax, rax
                jz      short loc_1406E52FB
                test    al, 1
                jnz     short loc_1406E52FB
                lea     rcx, [rax+r14]
                cmp     rcx, r13
                ja      short loc_1406E52EE
                cmp     rcx, r14
                jb      short loc_1406E52EE

loc_1406E52D2:                          ; CODE XREF: sub_1406E51F0+109↓j
                jmp     short loc_1406E530A
; ---------------------------------------------------------------------------

loc_1406E52D4:                          ; CODE XREF: sub_1406E51F0+6C↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_1406E52DA:                          ; CODE XREF: sub_1406E51F0+9D↑j
                mov     eax, 0C000000Dh
                jmp     loc_1406E5796
; ---------------------------------------------------------------------------

loc_1406E52E4:                          ; CODE XREF: sub_1406E51F0+AC↑j
                mov     eax, 0C000000Dh
                jmp     loc_1406E5796
; ---------------------------------------------------------------------------

loc_1406E52EE:                          ; CODE XREF: sub_1406E51F0+DB↑j
                                        ; sub_1406E51F0+E0↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406E52D2
; ---------------------------------------------------------------------------

loc_1406E52FB:                          ; CODE XREF: sub_1406E51F0+CE↑j
                                        ; sub_1406E51F0+D2↑j
                mov     eax, 0C000000Dh
                jmp     loc_1406E5796
;   } // starts at 1406E5258
; ---------------------------------------------------------------------------

loc_1406E5305:                          ; DATA XREF: .rdata:000000014007A9FC↑o
;   __except(1) // owned by 1406E5258
                jmp     loc_1406E5796
; ---------------------------------------------------------------------------

loc_1406E530A:                          ; CODE XREF: sub_1406E51F0:loc_1406E52D2↑j
                test    r9b, 1
                jnz     loc_1406E57C3
                lea     rcx, [rdx+38h]
                lea     rdx, [rsp+138h+var_D0]
                call    sub_1406E58AC
                mov     ecx, eax
                test    eax, eax
                js      loc_1406E5796
                mov     edi, 208h
                cmp     word ptr [rsp+138h+var_D0], di
                jnb     loc_1408233D2
                mov     word ptr [rsp+138h+var_D0+2], di

loc_1406E5341:                          ; DATA XREF: .rdata:000000014007AA0C↑o
;   __try { // __except at loc_1406E5350
                movups  xmm0, xmmword ptr [rsi+0E0h]
                movdqu  [rsp+138h+var_110], xmm0
                jmp     short loc_1406E5355
;   } // starts at 1406E5341
; ---------------------------------------------------------------------------

loc_1406E5350:                          ; DATA XREF: .rdata:000000014007AA0C↑o
;   __except(1) // owned by 1406E5341
                jmp     loc_1406E5796
; ---------------------------------------------------------------------------

loc_1406E5355:                          ; CODE XREF: sub_1406E51F0+15E↑j
                cmp     qword ptr [rsp+138h+var_110+8], rbx
                jnz     loc_1408231C0
                cmp     word ptr [rsp+138h+var_110], bx
                jnz     loc_1408233D2
                mov     word ptr [rsp+138h+var_110+2], bx

loc_1406E5370:                          ; CODE XREF: sub_1406E51F0+603↓j
                                        ; sub_1406E51F0+626↓j ...
                lea     rcx, [rsi+50h]
                lea     rdx, [rsp+138h+var_B0]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796
                lea     rcx, [rsi+60h]
                lea     rdx, [rsp+138h+var_A0]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796
                lea     rcx, [rsi+70h]
                lea     rdx, [rsp+138h+var_90]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796
                lea     rcx, [rsi+0B0h]
                lea     rdx, [rsp+138h+var_80]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796
                lea     rcx, [rsi+0C0h]
                lea     rdx, [rsp+138h+var_70]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796
                lea     rcx, [rsi+0D0h]
                lea     rdx, [rsp+138h+var_60]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796
                test    r15, r15
                jnz     loc_140823226

loc_1406E5418:                          ; CODE XREF: sub_1406E51F0+13E03C↓j
                lea     rcx, [rsi+410h]
                lea     rdx, [rsp+138h+var_C0]
                call    sub_1406E58AC
                test    eax, eax
                js      loc_1406E5796

loc_1406E5431:                          ; CODE XREF: sub_1406E51F0+13E04D↓j
                test    r15, r15
                jnz     loc_140823242

loc_1406E543A:                          ; CODE XREF: sub_1406E51F0+13E058↓j
                xorps   xmm0, xmm0
                movups  [rsp+138h+var_50], xmm0

loc_1406E5445:                          ; CODE XREF: sub_1406E51F0+13E06C↓j
                mov     rax, qword ptr [rsp+138h+var_50]
                shr     rax, 10h
                movzx   ecx, ax
                movzx   eax, word ptr [rsp+138h+var_C0+2]
                add     rcx, rax
                movzx   eax, [rsp+138h+var_5E]
                add     rcx, rax
                movzx   eax, [rsp+138h+var_6E]
                add     rcx, rax
                movzx   eax, [rsp+138h+var_7E]
                add     rcx, rax
                movzx   eax, [rsp+138h+var_8E]
                add     rcx, rax
                movzx   eax, [rsp+138h+var_9E]
                add     rcx, rax
                movzx   eax, [rsp+138h+var_AE]
                add     rcx, rax
                movzx   eax, word ptr [rsp+138h+var_110+2]
                add     rcx, rax
                movzx   r13d, word ptr [rsp+138h+var_D0+2]
                add     r13, 441h
                add     r13, rcx
                and     r13, 0FFFFFFFFFFFFFFFEh
                mov     [rsp+138h+var_E0], r13
                test    r15, r15
                jnz     loc_140823261

loc_1406E54C8:                          ; CODE XREF: sub_1406E51F0+13E077↓j
                                        ; sub_1406E51F0+13E09E↓j
                mov     r8, [rsp+138h+var_E8]
                add     r8, r13
                or      rdx, 0FFFFFFFFFFFFFFFFh
                cmp     r8, r13
                cmovnb  rdx, r8
                sbb     r14d, r14d
                and     r14d, 0C0000095h
                cmp     r8, r13
                jb      loc_1408233D2
                mov     r8d, 62507350h
                mov     ecx, edi
                call    ExAllocatePoolWithQuotaTag
                mov     rdi, rax
                mov     [rsp+138h+var_D8], rax
                test    rax, rax
                jz      loc_140823293

loc_1406E550C:                          ; DATA XREF: .rdata:000000014007AA1C↑o
;   __try { // __except at loc_1406E557E
                mov     ecx, 8
                lea     edx, [rcx+78h]

loc_1406E5514:                          ; CODE XREF: sub_1406E51F0+36C↓j
                movups  xmm0, xmmword ptr [rsi]
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
                add     rax, rdx
                movups  xmm1, xmmword ptr [rsi+70h]
                movups  xmmword ptr [rax-10h], xmm1
                add     rsi, rdx
                sub     rcx, 1
                jnz     short loc_1406E5514
                movups  xmm0, xmmword ptr [rsi]
                movups  xmmword ptr [rax], xmm0
                movups  xmm1, xmmword ptr [rsi+10h]
                movups  xmmword ptr [rax+10h], xmm1
                movups  xmm0, xmmword ptr [rsi+20h]
                movups  xmmword ptr [rax+20h], xmm0
                movups  xmm1, xmmword ptr [rsi+30h]
                movups  xmmword ptr [rax+30h], xmm1
                jmp     short loc_1406E55A4
;   } // starts at 1406E550C
; ---------------------------------------------------------------------------

loc_1406E557E:                          ; DATA XREF: .rdata:000000014007AA1C↑o
;   __except(1) // owned by 1406E550C
                mov     r14d, eax
                xor     ebx, ebx
                mov     r15, [rsp+138h+arg_10]
                mov     r13, [rsp+138h+var_E0]
                mov     rax, [rsp+138h+var_F8]
                mov     [rsp+138h+var_F0], rax
                mov     r12d, [rsp+138h+var_100]
                mov     rdi, [rsp+138h+var_D8]

loc_1406E55A4:                          ; CODE XREF: sub_1406E51F0+38C↑j
                test    r14d, r14d
                js      loc_1408233C0
                mov     [rdi+8], r12d
                mov     [rdi+4], r13d
                mov     [rdi], r13d
                lea     rax, [rdi+440h]
                mov     [rsp+138h+var_118], rax
                test    r15, r15
                jnz     loc_14082329D

loc_1406E55CD:                          ; CODE XREF: sub_1406E51F0+13E0B3↓j
                                        ; sub_1406E51F0+13E0C3↓j
                lea     rdx, [rdi+38h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_D0]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+50h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_B0]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+60h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_A0]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+70h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_90]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+0B0h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_80]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+0C0h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_70]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+0D0h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_60]
                call    sub_1406E5838
                mov     r14d, eax
                test    eax, eax
                js      loc_1408233C0
                lea     rdx, [rdi+410h]
                lea     r8, [rsp+138h+var_118]
                lea     rcx, [rsp+138h+var_C0]
                call    sub_1406E5838
                test    r15, r15
                jnz     loc_1408232B8

loc_1406E56D9:                          ; CODE XREF: sub_1406E51F0+13E0CE↓j
                xorps   xmm0, xmm0
                movups  xmmword ptr [rdi+420h], xmm0

loc_1406E56E3:                          ; CODE XREF: sub_1406E51F0+13E0EE↓j
                movups  xmm0, [rsp+138h+var_110]
                movdqu  xmmword ptr [rdi+0E0h], xmm0
                mov     rdx, qword ptr [rsp+138h+var_110+8]
                mov     rsi, [rsp+138h+var_118]
                test    rdx, rdx
                jnz     loc_1408232E3

loc_1406E5703:                          ; CODE XREF: sub_1406E51F0+13E13C↓j
                                        ; sub_1406E51F0+13E14F↓j
                mov     [rdi+430h], rbx
                mov     [rdi+438h], ebx
                test    r15, r15
                jnz     loc_140823344

loc_1406E5719:                          ; CODE XREF: sub_1406E51F0+13E15A↓j
                                        ; sub_1406E51F0+13E195↓j ...
                mov     rax, rdi
                sub     rax, rsi
                add     r13, rax
                jnz     loc_14082339D

loc_1406E5728:                          ; CODE XREF: sub_1406E51F0+13E1BD↓j
                                        ; sub_1406E51F0+13E1CB↓j
                                        ; DATA XREF: ...
;   __try { // __except at loc_1406E573C
                mov     r8, [rsp+138h+var_E8]
                mov     rdx, [rsp+138h+var_F0]
                mov     rcx, rsi
                call    memmove
                jmp     short loc_1406E574B
;   } // starts at 1406E5728
; ---------------------------------------------------------------------------

loc_1406E573C:                          ; DATA XREF: .rdata:000000014007AA2C↑o
;   __except(1) // owned by 1406E5728
                mov     r14d, eax
                xor     ebx, ebx
                mov     rsi, [rsp+138h+var_118]
                mov     rdi, [rsp+138h+var_D8]

loc_1406E574B:                          ; CODE XREF: sub_1406E51F0+54A↑j
                test    r14d, r14d
                js      loc_1408233C0
                mov     r15d, [rsp+138h+arg_18]
                mov     eax, r15d
                and     al, 3
                cmp     al, 1
                jnz     short loc_1406E57AA

loc_1406E5765:                          ; CODE XREF: sub_1406E51F0+5CC↓j
                test    r15b, 1
                jnz     loc_1406E581B

loc_1406E576F:                          ; CODE XREF: sub_1406E51F0+63B↓j
                mov     [rdi+80h], rsi
                mov     rax, [rsp+138h+var_E8]
                mov     [rdi+3F0h], rax
                mov     [rdi+3F8h], rbx
                mov     rax, [rsp+138h+arg_0]
                mov     [rax], rdi
                xor     eax, eax

loc_1406E5796:                          ; CODE XREF: sub_1406E51F0+EF↑j
                                        ; sub_1406E51F0+F9↑j ...
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406E57AA:                          ; CODE XREF: sub_1406E51F0+573↑j
                lea     rdx, [rsp+138h+var_E8]
                mov     rcx, rsi
                call    sub_1406E5920
                mov     r14d, eax
                test    eax, eax
                jns     short loc_1406E5765
                jmp     loc_1408233C0
; ---------------------------------------------------------------------------

loc_1406E57C3:                          ; CODE XREF: sub_1406E51F0+11E↑j
                mov     rcx, [rsp+138h+arg_20]
                call    sub_140206CF0
                movups  xmm0, xmmword ptr [rax+3E8h]
                movdqu  [rsp+138h+var_D0], xmm0
                movups  xmm1, cs:xmmword_140985978
                movdqu  [rsp+138h+var_110], xmm1
                mov     edi, 208h
                test    r9b, 2
                jnz     loc_1406E5370
                mov     r14, [rax+400h]
                mov     [rsp+138h+var_F0], r14
                mov     [rsp+138h+var_F8], r14
                movzx   eax, word ptr [rax+3FAh]
                mov     [rsp+138h+var_E8], rax
                jmp     loc_1406E5370
; ---------------------------------------------------------------------------

loc_1406E581B:                          ; CODE XREF: sub_1406E51F0+579↑j
                mov     [rdi+10h], rbx
                mov     [rdi+20h], rbx
                mov     [rdi+28h], rbx
                mov     [rdi+30h], rbx
                jmp     loc_1406E576F
; } // starts at 1406E51F0
sub_1406E51F0   endp

; ---------------------------------------------------------------------------
byte_1406E5830  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007AA60↑o
                                        ; .pdata:0000000140104460↑o

; =============== S U B R O U T I N E =======================================


sub_1406E5838   proc near               ; CODE XREF: sub_1406E51F0+3EB↑p
                                        ; sub_1406E51F0+40C↑p ...

arg_0           = qword ptr  8

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rbx, rcx
                movups  xmm0, xmmword ptr [rcx]
                movdqu  xmmword ptr [rdx], xmm0
                cmp     qword ptr [rcx+8], 0
                jz      short loc_1406E5895
                mov     rcx, [r8]
                mov     [rdx+8], rcx

loc_1406E585D:                          ; DATA XREF: .rdata:000000014007AA84↑o
;   __try { // __except at loc_1406E586C
                movzx   r8d, word ptr [rbx]
                mov     rdx, [rbx+8]
                call    memmove
                jmp     short loc_1406E586E
;   } // starts at 1406E585D
; ---------------------------------------------------------------------------

loc_1406E586C:                          ; DATA XREF: .rdata:000000014007AA84↑o
;   __except(1) // owned by 1406E585D
                jmp     short loc_1406E5897
; ---------------------------------------------------------------------------

loc_1406E586E:                          ; CODE XREF: sub_1406E5838+32↑j
                movzx   ecx, word ptr [rbx]
                movzx   r8d, word ptr [rbx+2]
                sub     r8, rcx
                add     rcx, [rdi]
                xor     edx, edx
                call    memset
                mov     rcx, [rdi]
                test    rcx, rcx
                jz      short loc_1406E5895
                movzx   eax, word ptr [rbx+2]
                add     rax, rcx
                mov     [rdi], rax

loc_1406E5895:                          ; CODE XREF: sub_1406E5838+1C↑j
                                        ; sub_1406E5838+51↑j
                xor     eax, eax

loc_1406E5897:                          ; CODE XREF: sub_1406E5838:loc_1406E586C↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E5838
sub_1406E5838   endp

byte_1406E58A3  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010446C↑o

; =============== S U B R O U T I N E =======================================


sub_1406E58AC   proc near               ; CODE XREF: sub_1406E51F0+12D↑p
                                        ; sub_1406E51F0+18C↑p ...
; __unwind { // __C_specific_handler
;   __try { // __except at loc_1406E58B5
                movups  xmm0, xmmword ptr [rcx]
                movdqu  xmmword ptr [rdx], xmm0
                jmp     short loc_1406E58B7
;   } // starts at 1406E58AC
; ---------------------------------------------------------------------------

loc_1406E58B5:                          ; DATA XREF: .rdata:000000014007AAA0↑o
;   __except(1) // owned by 1406E58AC
                jmp     short locret_1406E5904
; ---------------------------------------------------------------------------

loc_1406E58B7:                          ; CODE XREF: sub_1406E58AC+7↑j
                movzx   ecx, word ptr [rdx]
                test    cl, 1
                jnz     short loc_1406E5912
                mov     r8, [rdx+8]
                xor     r9d, r9d
                test    r8, r8
                jz      short loc_1406E5906
                lea     eax, [rcx+2]
                mov     [rdx+2], ax
                cmp     ax, cx
                jb      short loc_1406E5912

loc_1406E58D7:                          ; CODE XREF: sub_1406E58AC+64↓j
                                        ; DATA XREF: .rdata:000000014007AAB0↑o
;   __try { // __except at loc_1406E5900
                test    cx, cx
                jz      short loc_1406E58FE
                add     rcx, r8
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                ja      short loc_1406E58F3
                cmp     rcx, r8
                jnb     short loc_1406E58FE

loc_1406E58F3:                          ; CODE XREF: sub_1406E58AC+40↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1406E58FE:                          ; CODE XREF: sub_1406E58AC+2E↑j
                                        ; sub_1406E58AC+45↑j
                jmp     short loc_1406E5902
;   } // starts at 1406E58D7
; ---------------------------------------------------------------------------

loc_1406E5900:                          ; DATA XREF: .rdata:000000014007AAB0↑o
;   __except(1) // owned by 1406E58D7
                jmp     short locret_1406E5904
; ---------------------------------------------------------------------------

loc_1406E5902:                          ; CODE XREF: sub_1406E58AC:loc_1406E58FE↑j
                xor     eax, eax

locret_1406E5904:                       ; CODE XREF: sub_1406E58AC:loc_1406E58B5↑j
                                        ; sub_1406E58AC:loc_1406E5900↑j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406E5906:                          ; CODE XREF: sub_1406E58AC+1D↑j
                test    cx, cx
                jnz     short loc_1406E5912
                mov     [rdx+2], r9w
                jmp     short loc_1406E58D7
; ---------------------------------------------------------------------------

loc_1406E5912:                          ; CODE XREF: sub_1406E58AC+11↑j
                                        ; sub_1406E58AC+29↑j ...
                mov     eax, 0C000000Dh
                retn
sub_1406E58AC   endp

; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E58AC
algn_1406E5919:                         ; DATA XREF: .pdata:0000000140104478↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406E5920   proc near               ; CODE XREF: sub_1406E51F0+5C2↑p
                                        ; DATA XREF: .rdata:000000014007AAD0↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001408233DC SIZE 0000000D BYTES

                mov     [rsp+arg_0], rbx
                mov     r8, [rdx]
                xor     r11b, r11b
                cmp     word ptr [rcx], 0
                mov     rbx, rdx
                jz      loc_1408233DC

loc_1406E5938:                          ; CODE XREF: sub_1406E5920+13DAC4↓j
                test    r8, r8
                jz      short loc_1406E59A5
                nop     dword ptr [rax]

loc_1406E5940:                          ; CODE XREF: sub_1406E5920+62↓j
                movzx   eax, word ptr [rcx]
                xor     r9d, r9d
                add     rcx, 2
                xor     edx, edx
                xor     r10b, r10b
                sub     r8, 2
                jz      short loc_1406E59AC

loc_1406E5955:                          ; CODE XREF: sub_1406E5920+4E↓j
                test    ax, ax
                jz      short loc_1406E5970
                cmp     ax, 3Dh ; '='
                jz      short loc_1406E5992

loc_1406E5960:                          ; CODE XREF: sub_1406E5920+78↓j
                                        ; sub_1406E5920+7D↓j
                movzx   eax, word ptr [rcx]
                inc     rdx
                add     rcx, 2
                sub     r8, 2
                jnz     short loc_1406E5955

loc_1406E5970:                          ; CODE XREF: sub_1406E5920+38↑j
                test    rdx, rdx
                jz      short loc_1406E59AC

loc_1406E5975:                          ; CODE XREF: sub_1406E5920+8F↓j
                test    r9, r9
                jz      short loc_1406E59A5
                test    r10b, r10b
                jnz     short loc_1406E599F

loc_1406E597F:                          ; CODE XREF: sub_1406E5920+83↓j
                                        ; sub_1406E5920+9F↓j
                test    r8, r8
                jnz     short loc_1406E5940
                test    r11b, r11b
                jz      short loc_1406E59A5
                xor     eax, eax

loc_1406E598B:                          ; CODE XREF: sub_1406E5920+8A↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406E5992:                          ; CODE XREF: sub_1406E5920+3E↑j
                inc     r9
                test    rdx, rdx
                jnz     short loc_1406E5960
                mov     r10b, 1
                jmp     short loc_1406E5960
; ---------------------------------------------------------------------------

loc_1406E599F:                          ; CODE XREF: sub_1406E5920+5D↑j
                cmp     r9, 2
                jnb     short loc_1406E597F

loc_1406E59A5:                          ; CODE XREF: sub_1406E5920+1B↑j
                                        ; sub_1406E5920+58↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_1406E598B
; ---------------------------------------------------------------------------

loc_1406E59AC:                          ; CODE XREF: sub_1406E5920+33↑j
                                        ; sub_1406E5920+53↑j
                test    ax, ax
                jnz     short loc_1406E5975
                test    r8, r8
                jz      short loc_1406E59BC
                sub     [rbx], r8
                xor     r8d, r8d

loc_1406E59BC:                          ; CODE XREF: sub_1406E5920+94↑j
                mov     r11b, 1
                jmp     short loc_1406E597F
sub_1406E5920   endp

; ---------------------------------------------------------------------------
algn_1406E59C1:                         ; DATA XREF: .rdata:000000014007AAD0↑o
                                        ; .pdata:0000000140104484↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406E59D0   proc near               ; DATA XREF: .rdata:000000014007AD58↑o
                                        ; .pdata:0000000140104490↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408233EA SIZE 00000030 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12d, r9d
                mov     rbx, r8
                mov     r15d, edx
                mov     r10, rcx
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                test    r8, r8
                jz      loc_1408233EA
                mov     rax, gs:188h
                movzx   r13d, byte ptr [rax+232h]
                test    r13b, r13b
                jz      loc_1406E5B5D

loc_1406E5A26:                          ; DATA XREF: .rdata:000000014007AD44↑o
;   __try { // __except at loc_1406E5AB8
                lea     eax, [rdx-3]
                test    eax, 0FFFFFFF7h
                jz      short loc_1406E5A99
                mov     eax, r12d
                test    r9d, r9d
                jz      short loc_1406E5A99
                mov     rdx, rbx
                test    bl, 3
                jnz     short loc_1406E5AAB
                dec     rax
                add     rax, rbx
                cmp     rbx, rax
                ja      short loc_1406E5AA5
                mov     r8, 7FFFFFFF0000h
                cmp     rax, r8
                jnb     short loc_1406E5AA5
                and     rax, 0FFFFFFFFFFFFF000h
                add     rax, 1000h

loc_1406E5A66:                          ; CODE XREF: sub_1406E59D0+AC↓j
                movzx   ecx, byte ptr [rdx]
                mov     [rdx], cl
                and     rdx, 0FFFFFFFFFFFFF000h
                add     rdx, 1000h
                cmp     rdx, rax
                jnz     short loc_1406E5A66

loc_1406E5A7E:                          ; CODE XREF: sub_1406E59D0+D3↓j
                mov     r14, [rsp+58h+arg_20]
                test    r14, r14
                jz      short loc_1406E5AB6
                mov     rcx, r14
                cmp     r14, r8
                jnb     short loc_1406E5AB1

loc_1406E5A93:                          ; CODE XREF: sub_1406E59D0+E4↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                jmp     short loc_1406E5AB6
; ---------------------------------------------------------------------------

loc_1406E5A99:                          ; CODE XREF: sub_1406E59D0+5E↑j
                                        ; sub_1406E59D0+66↑j
                mov     r8, 7FFFFFFF0000h
                jmp     short loc_1406E5A7E
; ---------------------------------------------------------------------------

loc_1406E5AA5:                          ; CODE XREF: sub_1406E59D0+79↑j
                                        ; sub_1406E59D0+88↑j
                call    ExRaiseAccessViolation
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E5AAB:                          ; CODE XREF: sub_1406E59D0+6E↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E5AB1:                          ; CODE XREF: sub_1406E59D0+C1↑j
                mov     rcx, r8
                jmp     short loc_1406E5A93
; ---------------------------------------------------------------------------

loc_1406E5AB6:                          ; CODE XREF: sub_1406E59D0+B9↑j
                                        ; sub_1406E59D0+C7↑j
                jmp     short loc_1406E5ABC
;   } // starts at 1406E5A26
; ---------------------------------------------------------------------------

loc_1406E5AB8:                          ; DATA XREF: .rdata:000000014007AD44↑o
;   __except(1) // owned by 1406E5A26
                mov     esi, eax
                jmp     short loc_1406E5B1F
; ---------------------------------------------------------------------------

loc_1406E5ABC:                          ; CODE XREF: sub_1406E59D0:loc_1406E5AB6↑j
                                        ; sub_1406E59D0+195↓j
                xor     edi, edi
                test    r10, r10
                jz      short loc_1406E5AFA
                mov     r8, cs:qword_140CFC548
                mov     [rsp+58h+arg_10], rdi
                mov     [rsp+58h+var_30], rdi
                lea     rax, [rsp+58h+arg_10]
                mov     [rsp+58h+var_38], rax
                movzx   r9d, r13b
                mov     edx, 20000h
                mov     rcx, r10
                call    ObReferenceObjectByHandle
                mov     esi, eax
                mov     rdi, [rsp+58h+arg_10]
                test    eax, eax
                js      short loc_1406E5B1F

loc_1406E5AFA:                          ; CODE XREF: sub_1406E59D0+F1↑j
                test    r15d, r15d
                jnz     short loc_1406E5B6A
                mov     r9, r14
                mov     r8d, r12d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406E5C00

loc_1406E5B10:                          ; CODE XREF: sub_1406E59D0+1CB↓j
                                        ; sub_1406E59D0+1E6↓j ...
                mov     esi, eax

loc_1406E5B12:                          ; CODE XREF: sub_1406E59D0+13DA29↓j
                test    rdi, rdi
                jz      short loc_1406E5B1F
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_1406E5B1F:                          ; CODE XREF: sub_1406E59D0+EA↑j
                                        ; sub_1406E59D0+128↑j ...
                mov     rcx, gs:188h
                add     word ptr [rcx+1E4h], 1
                jnz     short loc_1406E5B42
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jnz     loc_1406E5BD3

loc_1406E5B42:                          ; CODE XREF: sub_1406E59D0+160↑j
                                        ; sub_1406E59D0+20B↓j ...
                mov     eax, esi
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E5B5D:                          ; CODE XREF: sub_1406E59D0+50↑j
                mov     r14, [rsp+58h+arg_20]
                jmp     loc_1406E5ABC
; ---------------------------------------------------------------------------

loc_1406E5B6A:                          ; CODE XREF: sub_1406E59D0+12D↑j
                sub     r15d, 3
                jz      short loc_1406E5BBB
                sub     r15d, 1
                jz      loc_1408233FE
                sub     r15d, 7
                jz      short loc_1406E5BA0
                cmp     r15d, 1
                jnz     loc_1408233F4
                mov     r9, r14
                mov     r8d, r12d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406E5C5C
                jmp     loc_1406E5B10
; ---------------------------------------------------------------------------

loc_1406E5BA0:                          ; CODE XREF: sub_1406E59D0+1AE↑j
                mov     byte ptr [rsp+58h+var_38], r13b
                mov     r9, r14
                mov     r8d, r12d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406E5D5C
                jmp     loc_1406E5B10
; ---------------------------------------------------------------------------

loc_1406E5BBB:                          ; CODE XREF: sub_1406E59D0+19E↑j
                mov     byte ptr [rsp+58h+var_38], r13b
                mov     r9, r14
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406E5DF8
                jmp     loc_1406E5B10
; ---------------------------------------------------------------------------

loc_1406E5BD3:                          ; CODE XREF: sub_1406E59D0+16C↑j
                cmp     word ptr [rcx+1E6h], 0
                jnz     loc_1406E5B42
                call    KiCheckForKernelApcDelivery
                jmp     loc_1406E5B42
; } // starts at 1406E59D0
sub_1406E59D0   endp

; ---------------------------------------------------------------------------
algn_1406E5BEB:                         ; DATA XREF: .rdata:000000014007AD58↑o
                                        ; .pdata:0000000140104490↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406E5C00   proc near               ; CODE XREF: sub_1406E59D0+13B↑p
                                        ; DATA XREF: .rdata:000000014007AD8C↑o ...

var_18          = dword ptr -18h

; FUNCTION CHUNK AT 000000014082341A SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                sub     rsp, 18h
                test    rcx, rcx
                jz      loc_14082341A

loc_1406E5C0D:                          ; DATA XREF: .rdata:000000014007AD78↑o
;   __try { // __except at loc_1406E5C4D
                cmp     r8d, 10h
                jb      short loc_1406E5C44
                mov     eax, [rcx+100h]
                and     eax, 3FF0000h
                mov     [rdx], eax
                mov     eax, [rcx+190h]
                mov     [rdx+4], eax
                mov     rax, [rcx+38h]
                mov     [rdx+8], rax
                xor     eax, eax

loc_1406E5C33:                          ; CODE XREF: sub_1406E5C00+49↓j
                mov     [rsp+18h+var_18], eax
                test    r9, r9
                jz      short loc_1406E5C4B
                mov     dword ptr [r9], 10h
                jmp     short loc_1406E5C4B
; ---------------------------------------------------------------------------

loc_1406E5C44:                          ; CODE XREF: sub_1406E5C00+11↑j
                mov     eax, 0C0000004h
                jmp     short loc_1406E5C33
; ---------------------------------------------------------------------------

loc_1406E5C4B:                          ; CODE XREF: sub_1406E5C00+39↑j
                                        ; sub_1406E5C00+42↑j
                jmp     short loc_1406E5C50
;   } // starts at 1406E5C0D
; ---------------------------------------------------------------------------

loc_1406E5C4D:                          ; DATA XREF: .rdata:000000014007AD78↑o
;   __except(1) // owned by 1406E5C0D
                mov     [rsp+18h+var_18], eax

loc_1406E5C50:                          ; CODE XREF: sub_1406E5C00:loc_1406E5C4B↑j
                                        ; sub_1406E5C00+13D81F↓j
                add     rsp, 18h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E5C00
sub_1406E5C00   endp

byte_1406E5C56  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007AD8C↑o
                                        ; .pdata:000000014010449C↑o

; =============== S U B R O U T I N E =======================================


sub_1406E5C5C   proc near               ; CODE XREF: sub_1406E59D0+1C6↑p
                                        ; DATA XREF: .rdata:000000014007ADD0↑o ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140823424 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, r9
                mov     r12d, r8d
                mov     r15, rdx
                xor     r13d, r13d
                test    rcx, rcx
                jz      loc_140823424
                call    sub_14061A260
                mov     rsi, rax
                test    rax, rax
                jz      loc_140823424
                lea     rdi, [rax+160h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockSharedEx
                mov     rcx, [rsi+18h]
                test    cl, 1
                mov     ebx, r13d
                cmovz   rbx, rcx
                test    rbx, rbx
                jz      short loc_1406E5CCA
                mov     edx, 63706C41h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag

loc_1406E5CCA:                          ; CODE XREF: sub_1406E5C5C+5F↑j
                mov     eax, 11h
                lock cmpxchg [rdi], r13
                jnz     short loc_1406E5D4C

loc_1406E5CD6:                          ; CODE XREF: sub_1406E5C5C+F8↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                test    rbx, rbx
                jz      loc_140823424
                mov     edi, [rbx+440h]
                mov     rcx, rbx
                call    sub_140245840
                mov     esi, eax
                mov     edx, 63706C41h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                nop

loc_1406E5D0D:                          ; DATA XREF: .rdata:000000014007ADBC↑o
;   __try { // __except at loc_1406E5D33
                cmp     r12d, 8
                sbb     eax, eax
                and     eax, 0C0000004h
                cmp     r12d, 8
                jb      short loc_1406E5D25
                mov     [r15], esi
                mov     [r15+4], edi

loc_1406E5D25:                          ; CODE XREF: sub_1406E5C5C+C0↑j
                test    r14, r14
                jz      short loc_1406E5D31
                mov     dword ptr [r14], 8

loc_1406E5D31:                          ; CODE XREF: sub_1406E5C5C+CC↑j
                jmp     short $+2
;   } // starts at 1406E5D0D
; ---------------------------------------------------------------------------

loc_1406E5D33:                          ; CODE XREF: sub_1406E5C5C:loc_1406E5D31↑j
                                        ; sub_1406E5C5C+13D7CD↓j
                                        ; DATA XREF: ...
;   __except(1) // owned by 1406E5D0D
                mov     rbx, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406E5D4C:                          ; CODE XREF: sub_1406E5C5C+78↑j
                mov     rcx, rdi
                call    ExfReleasePushLockShared
                jmp     short loc_1406E5CD6
; } // starts at 1406E5C5C
sub_1406E5C5C   endp

; ---------------------------------------------------------------------------
byte_1406E5D56  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007ADD0↑o
                                        ; .pdata:00000001401044A8↑o

; =============== S U B R O U T I N E =======================================


sub_1406E5D5C   proc near               ; CODE XREF: sub_1406E59D0+1E1↑p
                                        ; DATA XREF: .rdata:000000014007AE10↑o ...

var_38          = qword ptr -38h
var_28          = byte ptr -28h
var_10          = dword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 000000014082342E SIZE 00000108 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 50h
                mov     r14, rcx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-28h], xmm0
                movups  xmmword ptr [rax-18h], xmm0
                test    rcx, rcx
                jz      loc_14082352C
                cmp     r8d, 4
                jnz     loc_14082352C
                cmp     [rsp+58h+arg_20], 0
                jz      loc_14082342E

loc_1406E5DA0:                          ; DATA XREF: .rdata:000000014007ADFC↑o
;   __try { // __except at loc_1406E5DC5
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                cmovb   rax, rdx
                mov     eax, [rax]
                mov     [rsp+58h+var_10], eax
                test    r9, r9
                jz      short loc_1406E5DC3
                mov     dword ptr [r9], 0

loc_1406E5DC3:                          ; CODE XREF: sub_1406E5D5C+5E↑j
                jmp     short loc_1406E5DC7
;   } // starts at 1406E5DA0
; ---------------------------------------------------------------------------

loc_1406E5DC5:                          ; DATA XREF: .rdata:000000014007ADFC↑o
;   __except(1) // owned by 1406E5DA0
                jmp     short loc_1406E5DD9
; ---------------------------------------------------------------------------

loc_1406E5DC7:                          ; CODE XREF: sub_1406E5D5C:loc_1406E5DC3↑j
                                        ; sub_1406E5D5C+13D6DB↓j ...
                mov     eax, [rcx+194h]
                cmp     eax, [rsp+58h+var_10]
                jnz     loc_140823446
                xor     eax, eax

loc_1406E5DD9:                          ; CODE XREF: sub_1406E5D5C:loc_1406E5DC5↑j
                                        ; sub_1406E5D5C+13D7B1↓j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E5D5C
sub_1406E5D5C   endp

byte_1406E5DF0  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007AE10↑o
                                        ; .pdata:00000001401044B4↑o

; =============== S U B R O U T I N E =======================================


sub_1406E5DF8   proc near               ; CODE XREF: sub_1406E59D0+1F9↑p
                                        ; DATA XREF: .rdata:000000014007AE58↑o ...

var_C0          = byte ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = byte ptr -88h
var_38          = qword ptr -38h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 0000000140823536 SIZE 00000025 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], rbx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_38], rax
                mov     rdi, r9
                mov     r14, rdx
                mov     rsi, rcx
                mov     [rsp+0E8h+var_90], rcx
                mov     [rsp+0E8h+var_98], rdx
                xor     ebx, ebx
                mov     [rsp+0E8h+var_A8], rbx
                xor     edx, edx
                lea     r8d, [rbx+44h]
                lea     rcx, [rsp+0E8h+var_88]
                call    memset
                test    rsi, rsi
                jz      loc_140823536
                mov     r15b, [rsp+0E8h+arg_20]
                test    r15b, r15b
                jz      loc_140823540

loc_1406E5E62:                          ; DATA XREF: .rdata:000000014007AE40↑o
;   __try { // __except at loc_1406E5E89
                test    rdi, rdi
                jz      short loc_1406E5E69
                mov     [rdi], ebx

loc_1406E5E69:                          ; CODE XREF: sub_1406E5DF8+6D↑j
                lea     rax, [rsp+0E8h+var_A8]
                mov     [rsp+0E8h+var_B8], rax
                mov     [rsp+0E8h+var_C0], 1
                mov     dl, r15b
                mov     rcx, r14
                call    sub_1406B967C
                mov     [rsp+0E8h+var_A0], eax
                jmp     short loc_1406E5EA1
;   } // starts at 1406E5E62
; ---------------------------------------------------------------------------

loc_1406E5E89:                          ; DATA XREF: .rdata:000000014007AE40↑o
;   __except(1) // owned by 1406E5E62
                mov     [rsp+0E8h+var_A0], eax
                xor     ebx, ebx
                mov     r15b, [rsp+0E8h+arg_20]
                mov     rsi, [rsp+0E8h+var_90]
                mov     r14, [rsp+0E8h+var_98]

loc_1406E5EA1:                          ; CODE XREF: sub_1406E5DF8+8F↑j
                test    eax, eax
                js      loc_1406E5F82

loc_1406E5EA9:                          ; CODE XREF: sub_1406E5DF8+13D754↓j
                mov     rdi, rbx
                mov     rcx, rsi
                call    sub_14061A260
                mov     r13, rax
                test    rax, rax
                jz      short loc_1406E5F0A
                lea     rsi, [rax+160h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                mov     rcx, [r13+18h]
                test    cl, 1
                cmovz   rdi, rcx
                test    rdi, rdi
                jz      short loc_1406E5EEA
                mov     edx, 63706C41h
                mov     rcx, rdi
                call    ObfReferenceObjectWithTag

loc_1406E5EEA:                          ; CODE XREF: sub_1406E5DF8+E3↑j
                mov     eax, 11h
                lock cmpxchg [rsi], rbx
                jnz     loc_1406E5FAB

loc_1406E5EFA:                          ; CODE XREF: sub_1406E5DF8+1BB↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, r13
                call    PsDereferenceSiloContext

loc_1406E5F0A:                          ; CODE XREF: sub_1406E5DF8+C2↑j
                test    rdi, rdi
                jz      loc_140823551
                mov     rcx, rdi
                call    PsReferencePrimaryToken
                mov     rbx, rax
                xor     r9d, r9d
                lea     r8d, [r9+44h]
                lea     rdx, [rsp+0E8h+var_88]
                mov     rcx, rax
                call    sub_14061C364
                lea     rcx, [rdi+4B8h]
                mov     rdx, rbx
                call    sub_14024C4A0
                lea     rdx, [rsp+0E8h+var_88]
                mov     rcx, [rsp+0E8h+var_A8]
                call    RtlEqualSid
                mov     bl, al
                mov     edx, 63706C41h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                neg     bl
                sbb     ebx, ebx
                not     ebx
                and     ebx, 0C00002A0h

loc_1406E5F6B:                          ; CODE XREF: sub_1406E5DF8+13D75E↓j
                mov     rcx, [rsp+0E8h+var_A8]
                cmp     rcx, r14
                jz      short loc_1406E5F80
                mov     r8b, 1
                mov     dl, r15b
                call    sub_1406B9780

loc_1406E5F80:                          ; CODE XREF: sub_1406E5DF8+17B↑j
                mov     eax, ebx

loc_1406E5F82:                          ; CODE XREF: sub_1406E5DF8+AB↑j
                                        ; sub_1406E5DF8+13D743↓j
                mov     rcx, [rsp+0E8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E8h+arg_10]
                add     rsp, 0C0h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E5FAB:                          ; CODE XREF: sub_1406E5DF8+FC↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     loc_1406E5EFA
; } // starts at 1406E5DF8
sub_1406E5DF8   endp

; ---------------------------------------------------------------------------
algn_1406E5FB8:                         ; DATA XREF: .rdata:000000014007AE58↑o
                                        ; .pdata:00000001401044C0↑o
                align 20h
; Exported entry 2361. RtlRemoveUnicodePrefix

; =============== S U B R O U T I N E =======================================


