CcCopyReadEx    proc near               ; CODE XREF: CcCopyRead+1E↓p
                                        ; CcFastCopyRead+31↓p ...

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140418950 SIZE 0000001F BYTES
; FUNCTION CHUNK AT 0000000140442232 SIZE 00000034 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8d
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r14, rdx
                mov     rbx, rcx
                xor     r15d, r15d
                mov     [rsp+0A8h+arg_8], r15d
                mov     rcx, gs:188h
                mov     r11d, [rcx+510h]
                shr     r11d, 9
                and     r11d, 7
                mov     rax, [rcx+220h]
                test    dword ptr [rax+464h], 100000h
                jnz     loc_140273447

loc_1402731E4:                          ; CODE XREF: CcCopyReadEx+2BA↓j
                cmp     r11d, 2
                jb      loc_140273403

loc_1402731EE:                          ; CODE XREF: CcCopyReadEx+27F↓j
                                        ; CcCopyReadEx+28C↓j ...
                mov     [rsp+0A8h+var_68], r15
                mov     rax, [rbx+28h]
                mov     r13, [rax+8]
                mov     rdx, [rbx+30h]
                mov     [rsp+0A8h+var_60], rdx
                mov     edi, 1
                movzx   eax, r9b
                test    r11d, r11d
                cmovnz  edi, eax
                mov     esi, r8d
                mov     rcx, [r14]
                add     rcx, rsi
                cmp     rcx, [r13+8]
                jg      loc_140442248
                mov     r15, [rsp+0A8h+arg_20]
                test    r15, r15
                jz      loc_14044223D
                mov     r12, [rsp+0A8h+arg_30]
                test    dword ptr [rdx], 20000h
                jnz     loc_140273427

loc_14027324B:                          ; CODE XREF: CcCopyReadEx+2B2↓j
                                        ; DATA XREF: .rdata:000000014005D950↑o
;   __try { // __finally(loc_140418950)
                mov     eax, 2ED4h
                mov     ecx, 2ED0h
                test    dil, dil
                cmovz   eax, ecx
                inc     dword ptr gs:[rax]
                mov     rax, gs:188h
                mov     [rsp+0A8h+var_58], rax
                mov     dword ptr [rax+54Ch], 0
                test    r12, r12
                jz      short loc_140273292
                mov     rax, gs:188h
                mov     [rsp+0A8h+var_50], rax
                cmp     r12, rax
                jnz     loc_1402733C1

loc_140273292:                          ; CODE XREF: CcCopyReadEx+E9↑j
                                        ; CcCopyReadEx+24B↓j
                mov     ecx, [rdx]
                shr     ecx, 12h
                and     ecx, 7
                mov     rax, [rsp+0A8h+var_68]
                mov     [rsp+0A8h+var_70], rax
                mov     [rsp+0A8h+var_78], ecx
                lea     rax, [rsp+0A8h+arg_8]
                mov     [rsp+0A8h+var_80], rax
                mov     [rsp+0A8h+var_88], r15
                movzx   r9d, dil
                mov     rdx, [r14]
                mov     rcx, rbx
                call    sub_14065D330
                mov     [rsp+0A8h+arg_0], al
                test    al, al
                jz      loc_14027338B
                mov     rax, gs:188h
                mov     [rsp+0A8h+var_48], rax
                mov     eax, [rax+54Ch]
                add     gs:8144h, eax
                test    dword ptr [r13+98h], 40000000h
                jnz     short loc_140273349
                cmp     [rsp+0A8h+arg_8], 0
                jnz     loc_140273395

loc_14027330F:                          ; CODE XREF: CcCopyReadEx+210↓j
                                        ; CcCopyReadEx+22C↓j
                mov     rax, [rbx+28h]
                mov     r10, [rax+8]
                mov     rax, [rbx+30h]
                mov     rcx, [rax+20h]
                xchg    rcx, [rax+10h]
                mov     rcx, [rax+28h]
                xchg    rcx, [rax+18h]
                mov     rdx, [r14]
                xchg    rdx, [rax+20h]
                mov     rdx, [r14]
                add     rdx, rsi
                xchg    rdx, [rax+28h]
                test    dword ptr [r10+98h], 200000h
                jnz     short loc_140273360

loc_140273349:                          ; CODE XREF: CcCopyReadEx+16F↑j
                                        ; CcCopyReadEx+1E7↓j ...
                mov     rax, [rsp+0A8h+arg_28]
                mov     dword ptr [rax], 0
                mov     [rax+8], rsi
                jmp     loc_1402733E0
; ---------------------------------------------------------------------------

loc_140273360:                          ; CODE XREF: CcCopyReadEx+1B7↑j
                mov     r9d, [rax+18h]
                shr     r9d, 0Ch
                mov     r8d, [rax+20h]
                shr     r8d, 0Ch
                sub     r8d, r9d
                cmp     r8d, 1
                jbe     short loc_140273349
                xor     r8d, r8d
                mov     edx, 200000h
                mov     rcx, r10
                call    sub_1402E5674
                jmp     short loc_140273349
; ---------------------------------------------------------------------------

loc_14027338B:                          ; CODE XREF: CcCopyReadEx+142↑j
                inc     dword ptr gs:2ED8h
                jmp     short loc_1402733E0
; ---------------------------------------------------------------------------

loc_140273395:                          ; CODE XREF: CcCopyReadEx+179↑j
                mov     rax, [rsp+0A8h+var_60]
                mov     eax, [rax]
                bt      eax, 11h
                jb      loc_14027330F
                mov     r9, r12
                mov     r8d, [rsp+0A8h+arg_10]
                mov     rdx, r14
                mov     rcx, rbx
                call    CcScheduleReadAheadEx
                jmp     loc_14027330F
; ---------------------------------------------------------------------------

loc_1402733C1:                          ; CODE XREF: CcCopyReadEx+FC↑j
                lea     rdx, [rsp+0A8h+var_68]
                mov     rcx, r12
                call    sub_1402FBC28
                mov     rdx, [rsp+0A8h+var_60]
                mov     r8d, [rsp+0A8h+arg_10]
                jmp     loc_140273292
;   } // starts at 14027324B
; ---------------------------------------------------------------------------

loc_1402733E0:                          ; CODE XREF: CcCopyReadEx+1CB↑j
                                        ; CcCopyReadEx+203↑j
                                        ; DATA XREF: ...
                mov     rcx, [rsp+0A8h+var_68]
                test    rcx, rcx
                jnz     short loc_14027344F

loc_1402733EA:                          ; CODE XREF: CcCopyReadEx+2C4↓j
                movzx   eax, [rsp+0A8h+arg_0]
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
; ---------------------------------------------------------------------------

loc_140273403:                          ; CODE XREF: CcCopyReadEx+58↑j
                mov     rax, gs:188h
                cmp     rcx, rax
                jnz     loc_1402731EE
                cmp     [rcx+550h], r15d
                jz      loc_1402731EE
                jmp     loc_140442232
; ---------------------------------------------------------------------------

loc_140273427:                          ; CODE XREF: CcCopyReadEx+B5↑j
                mov     r9, r12
                mov     rdx, r14
                mov     rcx, rbx
                call    CcScheduleReadAheadEx
                mov     rdx, [rsp+0A8h+var_60]
                mov     r8d, [rsp+0A8h+arg_10]
                jmp     loc_14027324B
; ---------------------------------------------------------------------------

loc_140273447:                          ; CODE XREF: CcCopyReadEx+4E↑j
                mov     r11d, r15d
                jmp     loc_1402731E4
; ---------------------------------------------------------------------------

loc_14027344F:                          ; CODE XREF: CcCopyReadEx+258↑j
                call    sub_140319B24
                jmp     short loc_1402733EA
; } // starts at 140273190
CcCopyReadEx    endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_140273456:                         ; DATA XREF: .rdata:000000014005D964↑o
                                        ; .pdata:00000001400CE520↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140273460   proc near               ; CODE XREF: CcPinMappedData+105↓p
                                        ; sub_14065D330+132↓p ...

; FUNCTION CHUNK AT 0000000140442266 SIZE 00000010 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, [rcx+8]
                mov     eax, 0FFFFFFFFh
                lock xadd [rcx+10h], eax
                dec     eax
                test    ax, ax
                jnz     short loc_140273492
                mov     rcx, [rbx+0B8h]
                test    rcx, rcx
                jnz     loc_140442266

loc_14027348B:                          ; CODE XREF: sub_140273460+1CEE11↓j
                lock dec dword ptr [rbx+220h]

loc_140273492:                          ; CODE XREF: sub_140273460+19↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140273460   endp

algn_140273499:                         ; DATA XREF: .rdata:000000014005DA20↑o
                                        ; .pdata:00000001400CE52C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402734A0   proc near               ; CODE XREF: sub_14065D330+DB↓p
                                        ; CcMdlRead+114↓p
                                        ; DATA XREF: ...

var_38          = dword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r10, [rdx]
                mov     r14, rcx
                mov     eax, r8d
                mov     rbx, r10
                and     rbx, 0FFFFFFFFFFFFF000h
                mov     ecx, 40000h
                mov     rdi, rbx
                mov     rdx, rbx
                lea     rbp, [r10+0FFFh]
                and     edi, 3FFFFh
                add     rbp, rax
                movzx   r15d, r9b
                mov     rax, [rsp+58h+arg_28]
                and     rbp, 0FFFFFFFFFFFFF000h
                sub     rbp, rbx
                add     rdi, [rax]
                mov     eax, edi
                and     eax, 3FFFFh
                sub     ecx, eax
                cmp     ecx, ebp
                cmovnb  ecx, ebp
                mov     esi, ecx
                mov     r8d, ecx
                mov     rcx, r14
                call    sub_14065D4F0
                test    eax, eax
                jnz     short loc_14027354B

loc_14027351E:                          ; CODE XREF: sub_1402734A0+113↓j
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140274000
                mov     al, 1

loc_140273531:                          ; CODE XREF: sub_1402734A0+B2↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027354B:                          ; CODE XREF: sub_1402734A0+7C↑j
                test    r15b, r15b
                jnz     short loc_140273554
                xor     al, al
                jmp     short loc_140273531
; ---------------------------------------------------------------------------

loc_140273554:                          ; CODE XREF: sub_1402734A0+AE↑j
                lea     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+arg_28], 0
                mov     [rsp+58h+var_20], rax
                mov     r9, rbp
                mov     rax, [rsp+58h+arg_38]
                mov     rdx, rbx
                mov     [rsp+58h+var_28], rax
                mov     rcx, r14
                mov     eax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_38], eax
                call    sub_14065EB8C
                mov     rcx, [rsp+58h+arg_28]
                test    rcx, rcx
                jz      short loc_1402735A5
                call    sub_1402A0DD8

loc_1402735A5:                          ; CODE XREF: sub_1402734A0+FE↑j
                mov     rax, [rsp+58h+arg_20]
                mov     dword ptr [rax], 1
                jmp     loc_14027351E
sub_1402734A0   endp

; ---------------------------------------------------------------------------
algn_1402735B8:                         ; DATA XREF: .pdata:00000001400CE538↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402735C0   proc near               ; CODE XREF: sub_140262F40+9E↑p
                                        ; sub_14029E340+EA↓p ...

var_B8          = byte ptr -0B8h
var_98          = word ptr -98h
var_94          = dword ptr -94h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140442276 SIZE 000002DE BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 0B0h
                mov     rdi, rcx
                xor     esi, esi
                mov     rcx, rdx
                mov     r15, r8
                shr     rcx, 0Ch
                mov     rbp, rdx
                mov     [r8], rcx
                mov     eax, [rdi+38h]
                lea     r12, [rsi-1]
                test    al, 20h
                jnz     loc_140273835
                cmp     [rdi+40h], rsi
                jz      loc_140273835
                bt      eax, 0Ah
                jb      loc_140273835
                lea     rcx, [rdi+48h]
                call    ExAcquireSpinLockShared
                mov     rcx, [rdi+110h]
                mov     r8d, esi
                movzx   r12d, al
                test    rcx, rcx
                jz      short loc_140273639

loc_14027362D:                          ; CODE XREF: sub_1402735C0+77↓j
                mov     r8, rcx
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jnz     short loc_14027362D

loc_140273639:                          ; CODE XREF: sub_1402735C0+6B↑j
                mov     eax, [r8-14h]
                movzx   edx, word ptr [r8-18h]
                mov     r14d, [r8-0Ch]
                and     rdx, 0FFFFFFFFFFFFFFC0h
                shl     rdx, 1Ah
                or      rdx, rax
                mov     eax, [r8-4]
                and     eax, 3FFFFFFFh
                sub     r14, rax
                add     r14, rdx
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_140442276
                lock and dword ptr [rdi+48h], 0BFFFFFFFh
                lock dec dword ptr [rdi+48h]

loc_140273679:                          ; CODE XREF: sub_1402735C0+1CECC8↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14044228D

loc_140273692:                          ; CODE XREF: sub_1402735C0+1CECD1↓j
                                        ; sub_1402735C0+1CECE0↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404422B1

loc_1402736A0:                          ; CODE XREF: sub_1402735C0+1CECF3↓j
                                        ; sub_1402735C0+1CECFF↓j ...
                mov     cr8, r12
                mov     rcx, [r15]
                mov     r12, 0FFFFFFFFFFFFFFFFh

loc_1402736AE:                          ; CODE XREF: sub_1402735C0+28E↓j
                cmp     rcx, r14
                jnb     loc_1402738E1
                cmp     [rdi+40h], rsi
                jz      loc_140273853
                mov     eax, [rdi+38h]
                test    al, 20h
                jnz     loc_140273895
                xor     edx, edx
                lea     rcx, [rsp+0D8h+var_B8]
                mov     r8d, 90h
                call    memset
                mov     rax, 3FFFFFFFFFF000h
                cmp     rbp, rax
                jnb     loc_140273800

loc_1402736F1:                          ; DATA XREF: .rdata:000000014005DA94↑o
                                        ; .rdata:000000014005DAA8↑o ...
                mov     [rsp+0D8h+arg_0], r13
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14044231A

loc_140273714:                          ; CODE XREF: sub_1402735C0+1CED5C↓j
                                        ; sub_1402735C0+1CED66↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14044235B
                mov     r13, gs:20h
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_14044236E

loc_14027373A:                          ; CODE XREF: sub_1402735C0+1CEDB3↓j
                                        ; sub_1402735C0+1CEDC2↓j ...
                prefetchw byte ptr [rdi+48h]
                mov     eax, [rdi+48h]
                btr     eax, 1Fh
                lea     ecx, [rax+1]
                lock cmpxchg [rdi+48h], ecx
                jnz     loc_1402738BF

loc_140273753:                          ; CODE XREF: sub_1402735C0+31C↓j
                                        ; sub_1402735C0+1CEDA9↓j
                mov     r13, [rdi+120h]
                shr     rbp, 0Ch
                movzx   edx, word ptr [r13+20h]
                mov     eax, [r13+24h]
                and     rdx, 0FFFFFFFFFFFFFFC0h
                mov     r8d, [r13+28h]
                shl     rdx, 1Ah
                or      rdx, rax
                add     r8, rdx
                cmp     word ptr [r13+22h], 10h
                lea     rcx, [r8-1]
                cmovb   r8, rcx
                mov     rcx, rbp
                shr     rcx, 20h
                cmp     rbp, rdx
                jb      loc_140273867
                mov     rcx, rbp
                shr     rcx, 20h
                cmp     rbp, r8
                ja      loc_140273867
                cmp     r14b, 11h
                jz      short loc_1402737F5
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_1404423BE
                lock and dword ptr [rdi+48h], 0BFFFFFFFh
                lock dec dword ptr [rdi+48h]

loc_1402737C6:                          ; CODE XREF: sub_1402735C0+1CEE10↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404423D5

loc_1402737DF:                          ; CODE XREF: sub_1402735C0+1CEE19↓j
                                        ; sub_1402735C0+1CEE28↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404423F9

loc_1402737ED:                          ; CODE XREF: sub_1402735C0+1CEE3B↓j
                                        ; sub_1402735C0+1CEE47↓j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_1402737F5:                          ; CODE XREF: sub_1402735C0+1EB↑j
                mov     rsi, r13

loc_1402737F8:                          ; CODE XREF: sub_1402735C0+38E↓j
                                        ; sub_1402735C0+3B3↓j ...
                mov     r13, [rsp+0D8h+arg_0]

loc_140273800:                          ; CODE XREF: sub_1402735C0+12B↑j
                                        ; DATA XREF: .pdata:00000001400CE550↑o ...
                movzx   ecx, word ptr [rsi+20h]
                mov     eax, [rsi+24h]
                and     rcx, 0FFFFFFFFFFFFFFC0h
                shl     rcx, 1Ah
                or      rcx, rax
                sub     [r15], rcx

loc_140273815:                          ; CODE XREF: sub_1402735C0+2A5↓j
                                        ; sub_1402735C0+2E2↓j ...
                mov     rax, rsi

loc_140273818:                          ; CODE XREF: sub_1402735C0+323↓j
                lea     r11, [rsp+0D8h+var_28]
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
; ---------------------------------------------------------------------------

loc_140273835:                          ; CODE XREF: sub_1402735C0+37↑j
                                        ; sub_1402735C0+41↑j ...
                mov     rax, [rdi]
                movzx   r14d, word ptr [rax+0Ch]
                mov     eax, [rax+8]
                and     r14d, 3FFh
                shl     r14, 20h
                or      r14, rax
                jmp     loc_1402736AE
; ---------------------------------------------------------------------------

loc_140273853:                          ; CODE XREF: sub_1402735C0+FB↑j
                lea     rcx, [rdi+80h]
                mov     rdx, r15
                call    sub_140266D6C
                mov     rsi, rax
                jmp     short loc_140273815
; ---------------------------------------------------------------------------

loc_140273867:                          ; CODE XREF: sub_1402735C0+1D1↑j
                                        ; sub_1402735C0+1E1↑j
                                        ; DATA XREF: ...
                movzx   eax, [rsp+0D8h+var_98]
                mov     r8, [rdi+110h]
                and     ax, 3Fh
                shl     cx, 6
                or      cx, ax
                mov     [rsp+0D8h+var_94], ebp
                mov     [rsp+0D8h+var_98], cx
                test    r8, r8
                jnz     loc_14044245C
                jmp     loc_1404424D0
; ---------------------------------------------------------------------------

loc_140273895:                          ; CODE XREF: sub_1402735C0+106↑j
                                        ; DATA XREF: .pdata:00000001400CE568↑o ...
                lea     rsi, [rdi+80h]
                mov     edx, [rsi+2Ch]
                cmp     rcx, rdx
                jb      loc_140273815

loc_1402738A8:                          ; CODE XREF: sub_1402735C0+2F8↓j
                sub     rcx, rdx
                mov     [r15], rcx
                mov     rsi, [rsi+10h]
                mov     edx, [rsi+2Ch]
                cmp     rcx, rdx
                jnb     short loc_1402738A8
                jmp     loc_140273815
; ---------------------------------------------------------------------------

loc_1402738BF:                          ; CODE XREF: sub_1402735C0+18D↑j
                                        ; DATA XREF: .pdata:00000001400CE574↑o ...
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_140442396

loc_1402738CF:                          ; CODE XREF: sub_1402735C0+1CEDDB↓j
                                        ; sub_1402735C0+1CEDEA↓j ...
                movzx   edx, r14b
                lea     rcx, [rdi+48h]
                call    sub_140329420
                jmp     loc_140273753
; ---------------------------------------------------------------------------

loc_1402738E1:                          ; CODE XREF: sub_1402735C0+F1↑j
                                        ; DATA XREF: .pdata:00000001400CE580↑o ...
                xor     eax, eax
                jmp     loc_140273818
; ---------------------------------------------------------------------------
                align 10h

loc_1402738F0:                          ; CODE XREF: sub_1402735C0+36F↓j
                                        ; sub_1402735C0+1CEEB4↓j
                                        ; DATA XREF: ...
                movzx   r9d, word ptr [r8-18h]
                mov     eax, [r8-14h]
                and     r9, 0FFFFFFFFFFFFFFC0h
                mov     edx, [r8-10h]
                shl     r9, 1Ah
                or      r9, rax
                add     rdx, r9
                cmp     word ptr [r8-16h], 10h
                lea     rcx, [rdx-1]
                cmovb   rdx, rcx
                cmp     r10, rdx
                ja      short loc_140273928
                cmp     r10, r9
                jnb     short loc_140273936
                mov     r8, [r8]
                jmp     short loc_14027392C
; ---------------------------------------------------------------------------

loc_140273928:                          ; CODE XREF: sub_1402735C0+35C↑j
                mov     r8, [r8+8]

loc_14027392C:                          ; CODE XREF: sub_1402735C0+366↑j
                test    r8, r8
                jnz     short loc_1402738F0
                jmp     loc_1404424D0
; ---------------------------------------------------------------------------

loc_140273936:                          ; CODE XREF: sub_1402735C0+361↑j
                test    r8, r8
                jz      loc_1404424D0
                lea     rsi, [r8-38h]
                mov     [rdi+120h], rsi
                cmp     r14b, 11h
                jz      loc_1402737F8
                lea     rcx, [rdi+48h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140442479

loc_14027396B:                          ; CODE XREF: sub_1402735C0+1CEEBB↓j
                                        ; sub_1402735C0+1CEEC7↓j ...
                movzx   eax, r14b
                mov     cr8, rax
                jmp     loc_1402737F8
sub_1402735C0   endp

; ---------------------------------------------------------------------------
algn_140273978:                         ; DATA XREF: .pdata:00000001400CE598↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140273980   proc near               ; CODE XREF: sub_1402720A0+B2↑p
                                        ; sub_1402841E0+2F3↓p ...

var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140442554 SIZE 000001FD BYTES

                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                mov     r15, [rcx+210h]
                xor     r8d, r8d
                mov     r13d, edx
                mov     [rsp+98h+var_64], r8d
                and     r13d, 3FFFFh
                mov     rbx, rdx
                mov     eax, r13d
                mov     rdi, rdx
                sub     rbx, rax
                mov     r14, rcx
                mov     [rsp+98h+var_60], rbx
                cmp     [rcx+0A8h], r8
                jz      loc_140273ACE
                mov     rax, [rcx+60h]
                and     rax, 0FFFFFFFFFFFFFFF0h
                mov     rsi, [rax+28h]
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                lea     r12, [r8-1]
                test    eax, eax
                jnz     loc_140442554

loc_1402739FF:                          ; CODE XREF: sub_140273980+1CEBD6↓j
                                        ; sub_140273980+1CEBE0↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140442598
                mov     rbx, gs:20h
                mov     [rsp+98h+arg_0], r8d
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_1404425AD

loc_140273A2D:                          ; CODE XREF: sub_140273980+1CEC31↓j
                                        ; sub_140273980+1CEC40↓j ...
                lock bts cs:dword_140C4C800, 1Fh
                jb      loc_140273D20

loc_140273A3C:                          ; CODE XREF: sub_140273980+3CA↓j
                mov     edx, cs:dword_140C4C800
                mov     ecx, edx
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     loc_1404425FD

loc_140273A54:                          ; CODE XREF: sub_140273980+1CECBA↓j
                mov     rax, [rsi]
                test    rax, rax
                jz      loc_140273DD8
                movzx   edx, word ptr [rax+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     edx, 3FFh
                mov     rbx, [rax+rdx*8]

loc_140273A75:                          ; CODE XREF: sub_140273980+45F↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14044263F
                mov     cs:dword_140C4C800, r8d

loc_140273A89:                          ; CODE XREF: sub_140273980+1CECD6↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14044265B

loc_140273AA2:                          ; CODE XREF: sub_140273980+1CECDF↓j
                                        ; sub_140273980+1CECEE↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140442681

loc_140273AB0:                          ; CODE XREF: sub_140273980+1CED03↓j
                                        ; sub_140273980+1CED0F↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rax, [rbx+0B0h]
                cmp     r15, [rax+8]
                jnz     loc_1404426E2
                mov     rbx, [rsp+98h+var_60]

loc_140273ACE:                          ; CODE XREF: sub_140273980+4E↑j
                mov     eax, [r14+98h]
                mov     r12d, r8d
                and     eax, 200h
                mov     ebp, 1
                setnz   r12b
                mov     [rsp+98h+arg_8], r12d
                test    eax, eax
                jz      loc_140273C5F

loc_140273AF6:                          ; CODE XREF: sub_140273980+2E7↓j
                cmp     cs:dword_140C4867C, 80h
                mov     esi, ebp
                mov     [rsp+98h+var_68], ebp
                jb      loc_140273DE4

loc_140273B0C:                          ; CODE XREF: sub_140273980+2FF↓j
                                        ; sub_140273980+46F↓j ...
                cmp     rdi, [r14+20h]
                jg      loc_140442733
                xor     edx, edx
                lea     rcx, [r14+68h]
                call    ExAcquirePushLockSharedEx
                cmp     [rsp+98h+arg_28], 0
                jnz     short loc_140273B5C
                mov     ecx, [r14+98h]
                mov     eax, ecx
                and     eax, 800200h
                cmp     eax, 200h
                jz      short loc_140273B5C
                bt      ecx, 1Eh
                jb      short loc_140273B5C
                test    rbx, 0FFFFFh
                jnz     short loc_140273B5C
                cmp     rbx, 100000h
                jge     loc_140273C8A

loc_140273B5C:                          ; CODE XREF: sub_140273980+1A9↑j
                                        ; sub_140273980+1BE↑j ...
                mov     [rsp+98h+var_64], ebp

loc_140273B60:                          ; CODE XREF: sub_140273980+317↓j
                mov     r8, [r14+20h]
                mov     r10, [r14+58h]
                cmp     r8, 2000000h
                jg      loc_140273BFC
                mov     esi, edi
                shr     rsi, 12h
                mov     rsi, [r10+rsi*8]

loc_140273B7F:                          ; CODE XREF: sub_140273980+2AD↓j
                                        ; sub_140273980+2DA↓j
                test    rsi, rsi
                jz      loc_140273C9C
                mov     rax, [rsi+8]
                lock xadd [rsi+10h], ebp
                inc     ebp
                test    bp, bp
                jz      loc_140442711
                cmp     bp, 1
                jnz     short loc_140273BA9
                lock inc dword ptr [rax+220h]

loc_140273BA9:                          ; CODE XREF: sub_140273980+220↑j
                xor     edx, edx
                lea     rcx, [r14+68h]
                call    ExReleasePushLockEx
                mov     rbx, [rsp+98h+var_60]

loc_140273BB9:                          ; CODE XREF: sub_140273980+34E↓j
                                        ; sub_140273980+35B↓j ...
                cmp     [rsp+98h+var_64], 0
                mov     edi, 40000h
                jz      loc_140273D4F

loc_140273BC9:                          ; CODE XREF: sub_140273980+40A↓j
                                        ; sub_140273980+453↓j
                mov     rax, [rsp+98h+arg_10]
                sub     edi, r13d
                mov     ecx, r13d
                mov     [rax], rsi
                mov     rax, [rsp+98h+arg_18]
                mov     [rax], edi
                mov     rax, [rsi]
                add     rax, rcx
                add     rsp, 58h
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

loc_140273BFC:                          ; CODE XREF: sub_140273980+1EF↑j
                mov     r11, rdi
                xor     edx, edx
                mov     ecx, 19h

loc_140273C06:                          ; CODE XREF: sub_140273980+297↓j
                mov     r9d, ecx
                mov     rax, rbp
                add     ecx, 7
                inc     edx
                shl     rax, cl
                cmp     r8, rax
                jg      short loc_140273C06
                mov     rsi, rdi
                mov     ecx, r9d
                sar     rsi, cl
                mov     rsi, [r10+rsi*8]
                test    rsi, rsi
                jz      short loc_140273C9C

loc_140273C2B:                          ; CODE XREF: sub_140273980+2D8↓j
                test    edx, edx
                jz      loc_140273B7F
                mov     ecx, r9d
                mov     rax, rbp
                shl     rax, cl
                add     r9d, 0FFFFFFF9h
                dec     rax
                mov     ecx, r9d
                and     r11, rax
                dec     edx
                mov     rax, r11
                sar     rax, cl
                mov     rsi, [rsi+rax*8]
                test    rsi, rsi
                jnz     short loc_140273C2B
                jmp     loc_140273B7F
; ---------------------------------------------------------------------------

loc_140273C5F:                          ; CODE XREF: sub_140273980+170↑j
                cmp     [rsp+98h+arg_20], 0
                jnz     loc_140273AF6
                cmp     cs:dword_140C4867C, 80h
                mov     esi, r8d
                mov     [rsp+98h+var_68], r8d
                jnb     loc_140273B0C
                jmp     loc_140273DF5
; ---------------------------------------------------------------------------

loc_140273C8A:                          ; CODE XREF: sub_140273980+1D6↑j
                cmp     rbx, [r14+150h]
                jz      loc_140273B5C
                jmp     loc_140273B60
; ---------------------------------------------------------------------------

loc_140273C9C:                          ; CODE XREF: sub_140273980+202↑j
                                        ; sub_140273980+2A9↑j
                xor     edx, edx
                lea     rcx, [r14+68h]
                call    ExReleasePushLockEx
                mov     r9d, [rsp+98h+var_68]
                mov     r8d, r12d
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_140262B20
                mov     rsi, rax
                mov     eax, [r14+98h]
                and     eax, 8000200h
                cmp     eax, 200h
                jnz     loc_140273BB9
                test    rbx, 0FFFFFh
                jnz     loc_140273BB9
                cmp     rbx, 100000h
                jl      loc_140273BB9
                sub     rbx, 100000h
                mov     [rsp+98h+var_70], 0
                movzx   r9d, bpl
                mov     [rsp+98h+var_60], rbx
                mov     r8d, 100000h
                mov     byte ptr [rsp+98h+var_78], 0
                lea     rdx, [rsp+98h+var_60]
                mov     rcx, r14
                call    sub_140264FD0
                jmp     loc_140273BB9
; ---------------------------------------------------------------------------

loc_140273D20:                          ; CODE XREF: sub_140273980+B6↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_1404425D6

loc_140273D30:                          ; CODE XREF: sub_140273980+1CEC5A↓j
                                        ; sub_140273980+1CEC69↓j ...
                movzx   edx, bpl
                lea     rcx, dword_140C4C800
                call    sub_14028EAE0
                mov     [rsp+98h+arg_0], eax
                xor     r8d, r8d
                jmp     loc_140273A3C
; ---------------------------------------------------------------------------

loc_140273D4F:                          ; CODE XREF: sub_140273980+243↑j
                test    dword ptr [r14+98h], 800000h
                mov     r9b, 1
                mov     [rsp+98h+var_70], 0
                mov     rcx, r14
                mov     byte ptr [rsp+98h+var_78], 0
                jnz     short loc_140273DA2
                mov     r8d, cs:dword_140C0F3CC
                cmp     rbx, r8
                jl      short loc_140273D8F
                sub     rbx, r8
                lea     rdx, [rsp+98h+var_60]
                mov     [rsp+98h+var_60], rbx

loc_140273D85:                          ; CODE XREF: sub_140273980+420↓j
                call    sub_140264FD0
                jmp     loc_140273BC9
; ---------------------------------------------------------------------------

loc_140273D8F:                          ; CODE XREF: sub_140273980+3F6↑j
                mov     [rsp+98h+var_58], 0
                lea     rdx, [rsp+98h+var_58]

loc_140273D9D:                          ; CODE XREF: sub_140273980+435↓j
                mov     r8d, ebx
                jmp     short loc_140273D85
; ---------------------------------------------------------------------------

loc_140273DA2:                          ; CODE XREF: sub_140273980+3EA↑j
                cmp     rbx, 840000h
                jge     short loc_140273DB7
                mov     [rsp+98h+var_50], rdi
                lea     rdx, [rsp+98h+var_50]
                jmp     short loc_140273D9D
; ---------------------------------------------------------------------------

loc_140273DB7:                          ; CODE XREF: sub_140273980+429↑j
                sub     rbx, 800000h
                lea     rdx, [rsp+98h+var_60]
                mov     r8d, 800000h
                mov     [rsp+98h+var_60], rbx
                call    sub_140264FD0
                jmp     loc_140273BC9
; ---------------------------------------------------------------------------

loc_140273DD8:                          ; CODE XREF: sub_140273980+DA↑j
                lea     rbx, unk_140C50C00
                jmp     loc_140273A75
; ---------------------------------------------------------------------------

loc_140273DE4:                          ; CODE XREF: sub_140273980+186↑j
                cmp     dword ptr [r15+398h], 80h
                jnb     loc_140273B0C

loc_140273DF5:                          ; CODE XREF: sub_140273980+305↑j
                call    sub_14037B154
                mov     r12, rax
                test    rax, rax
                jz      short loc_140273E30
                cmp     esi, ebp
                jz      loc_140442700

loc_140273E0A:                          ; CODE XREF: sub_140273980+1CED8C↓j
                mov     ecx, 4
                call    KeAcquireQueuedSpinLock
                mov     rdx, r12
                mov     rcx, r15
                movzx   esi, al
                call    sub_140379EF4
                movzx   edx, sil
                mov     ecx, 4
                call    KeReleaseQueuedSpinLock

loc_140273E30:                          ; CODE XREF: sub_140273980+480↑j
                mov     r12d, [rsp+98h+arg_8]
                xor     r8d, r8d
                jmp     loc_140273B0C
sub_140273980   endp

; ---------------------------------------------------------------------------
byte_140273E40  db 10h dup(0CCh)        ; DATA XREF: .rdata:000000014005DB9C↑o
                                        ; .pdata:00000001400CE5A4↑o

; =============== S U B R O U T I N E =======================================


sub_140273E50   proc near               ; CODE XREF: sub_1402720A0+970↑p
                                        ; sub_1402720A0+B32↑p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+18h], r8b
                push    rbp
                sub     rsp, 50h

loc_140273E5C:                          ; DATA XREF: .rdata:000000014005DBD0↑o
                                        ; .rdata:000000014005DBE4↑o ...
                mov     [rax+10h], rbx
                xor     bpl, bpl
                mov     [rax-10h], rsi
                mov     r11d, 1
                mov     rsi, gs:188h
                mov     [rax-18h], rdi
                mov     [rax-20h], r12
                mov     [rax-28h], r13
                mov     r13d, edx
                mov     [rax-30h], r14
                mov     edx, 2
                mov     ebx, ecx
                mov     r14, r9
                xor     r9d, r9d
                mov     [rax+8], r11b
                mov     rcx, r14
                mov     [rax-38h], r15
                movzx   eax, byte ptr [rsi+51Ch]
                test    r8b, r8b
                mov     r10d, r9d
                cmovnz  edx, r9d
                and     ecx, 0FFFh
                add     rbx, 0FFFh
                mov     [rsp+58h+arg_18], edx
                add     rbx, rcx
                and     r14, 0FFFFFFFFFFFFF000h
                mov     ecx, [rsi+508h]
                shr     rbx, 0Ch
                lea     edi, [rax+rcx*4]
                test    ebx, ebx
                jz      loc_140273F63
                lea     r8d, [r11+0Eh]

loc_140273EE6:                          ; CODE XREF: sub_140273E50+111↓j
                lea     ecx, [rbx-1]
                mov     byte ptr [rsi+51Ch], 1
                cmp     ecx, [rsi+508h]
                ja      loc_140273FD5

loc_140273EFC:                          ; CODE XREF: sub_140273E50+194↓j
                test    r13d, r11d
                mov     r8d, r9d
                setnz   r8b
                test    r13d, r13d
                jnz     loc_140273FC2
                mov     r15d, ebx

loc_140273F12:                          ; CODE XREF: sub_140273E50+180↓j
                mov     eax, r15d
                lea     r9, [rsp+58h+arg_0]
                shl     eax, 0Ch
                or      r8d, edx
                mov     edx, eax
                mov     rcx, r14
                mov     r12d, eax
                call    sub_140274000
                mov     r10d, eax
                cmp     [rsp+58h+arg_0], bpl
                jz      short loc_140273FB5

loc_140273F37:                          ; CODE XREF: sub_140273E50+16A↓j
                test    eax, eax
                js      short loc_140273F66
                mov     edx, [rsp+58h+arg_18]
                mov     eax, 2
                add     r14, r12
                sub     ebx, r15d
                cmp     ebx, 1
                mov     r11d, 4
                cmovnz  r11d, eax
                lea     r9d, [rax-2]
                lea     r8d, [rax+0Dh]
                test    ebx, ebx
                jnz     short loc_140273EE6

loc_140273F63:                          ; CODE XREF: sub_140273E50+8C↑j
                mov     bpl, 1

loc_140273F66:                          ; CODE XREF: sub_140273E50+E9↑j
                                        ; sub_140273E50+170↓j
                mov     r15, [rsp+58h+var_38]
                movzx   eax, dil
                mov     r14, [rsp+58h+var_30]
                and     al, 3
                mov     r13, [rsp+58h+var_28]
                mov     r12, [rsp+58h+var_20]
                mov     rbx, [rsp+58h+arg_8]
                shr     edi, 2
                cmp     [rsp+58h+arg_10], 0
                mov     [rsi+508h], edi
                mov     rdi, [rsp+58h+var_18]
                mov     [rsi+51Ch], al
                mov     rsi, [rsp+58h+var_10]
                jz      short loc_140273FAA

loc_140273FA5:                          ; DATA XREF: .pdata:00000001400CE5BC↑o
                                        ; .pdata:00000001400CE5C8↑o
                test    r10d, r10d
                js      short loc_140273FE9

loc_140273FAA:                          ; CODE XREF: sub_140273E50+153↑j
                movzx   eax, bpl
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140273FB5:                          ; CODE XREF: sub_140273E50+E5↑j
                                        ; DATA XREF: .pdata:00000001400CE5C8↑o ...
                cmp     [rsp+58h+arg_10], bpl
                jnz     loc_140273F37
                jmp     short loc_140273F66
; ---------------------------------------------------------------------------

loc_140273FC2:                          ; CODE XREF: sub_140273E50+B9↑j
                cmp     r11d, 2
                mov     r15d, 1
                cmovz   r15d, ecx
                jmp     loc_140273F12
; ---------------------------------------------------------------------------

loc_140273FD5:                          ; CODE XREF: sub_140273E50+A6↑j
                cmp     ecx, 0Fh
                mov     eax, ecx
                cmova   eax, r8d
                mov     [rsi+508h], eax
                jmp     loc_140273EFC
; ---------------------------------------------------------------------------

loc_140273FE9:                          ; CODE XREF: sub_140273E50+158↑j
                                        ; DATA XREF: .pdata:00000001400CE5D4↑o ...
                mov     ecx, r10d
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
sub_140273E50   endp

algn_140273FF2:                         ; DATA XREF: .pdata:00000001400CE5E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140274000   proc near               ; CODE XREF: sub_1402720A0+740↑p
                                        ; sub_1402734A0+8A↑p ...

var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = byte ptr -198h
var_197         = byte ptr -197h
var_194         = dword ptr -194h
var_190         = byte ptr -190h
var_18C         = dword ptr -18Ch
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = dword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = dword ptr -148h
var_144         = dword ptr -144h
var_140         = dword ptr -140h
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = xmmword ptr -0F8h
var_E8          = qword ptr -0E8h
var_E0          = xmmword ptr -0E0h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 190h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1C8h+var_48], rax
                xor     eax, eax
                mov     [rsp+1C8h+var_E8], r9
                mov     rdi, rcx
                mov     [rsp+1C8h+var_18C], r8d
                xorps   xmm0, xmm0
                mov     [rsp+1C8h+var_138], rax
                mov     r15, rdi
                mov     [rsp+1C8h+var_188], rax
                shr     r15, 9
                xor     ecx, ecx
                mov     r9, 7FFFFFFFF8h
                mov     [rsp+1C8h+var_160], rax
                and     r15, r9
                mov     [rsp+1C8h+var_190], 1
                movups  [rsp+1C8h+var_F8], xmm0
                mov     [rsp+1C8h+var_178], eax
                mov     r12d, eax
                movups  [rsp+1C8h+var_E0], xmm0
                mov     [rsp+1C8h+var_D0], rcx
                mov     r14d, eax
                mov     [rsp+1C8h+var_194], eax
                mov     r13d, eax
                mov     [rsp+1C8h+var_198], 11h
                mov     [rsp+1C8h+var_128], rax
                mov     r8, 0FFFFF68000000000h
                mov     rax, r8
                lea     rcx, [rdx-1]
                add     r15, rax
                add     rcx, rdi
                mov     [rsp+1C8h+var_180], r15
                shr     rcx, 9
                and     rcx, r9
                mov     rax, r8
                mov     rdx, r15
                add     rcx, rax
                shr     rdx, 9
                and     rdx, r9
                mov     [rsp+1C8h+var_130], rcx
                mov     rax, r8
                add     rdx, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rbx, [rdx]
                mov     rax, rax
                mov     rcx, 0FFFFF6FB7DBED7F8h
                cmp     rdx, rax
                jb      loc_140274183
                mov     rax, rcx
                cmp     rdx, rax
                ja      short loc_140274183
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140274183
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_140274183
                test    bl, 1
                jz      short loc_140274183
                test    bl, 20h
                jz      short loc_14027413D
                test    bl, 42h
                jnz     short loc_140274183

loc_14027413D:                          ; CODE XREF: sub_140274000+136↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140274183
                shr     rdx, 3
                and     edx, 1FFh
                mov     rax, [rax+rdx*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_140274183
                or      rbx, 42h

loc_140274183:                          ; CODE XREF: sub_140274000+FB↑j
                                        ; sub_140274000+107↑j ...
                lea     rcx, [rsp+1C8h+var_120]
                mov     [rsp+1C8h+var_120], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      loc_140274221
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140274221
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_140274221
                test    bl, 1
                jz      short loc_140274221
                test    bl, 20h
                jz      short loc_1402741D4
                test    bl, 42h
                jnz     short loc_140274221

loc_1402741D4:                          ; CODE XREF: sub_140274000+1CD↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140274221
                lea     rax, [rsp+1C8h+var_120]
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
                jz      short loc_140274221
                or      rbx, 42h

loc_140274221:                          ; CODE XREF: sub_140274000+19A↑j
                                        ; sub_140274000+1AA↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rsi, [rbx+rbx*2]
                shl     rsi, 4
                mov     rax, rax
                add     rsi, rax
                mov     rdx, rdi
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     [rsp+1C8h+var_158], rsi
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                add     rdx, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rbx, [rdx]
                mov     rax, rax
                cmp     rdx, rax
                jb      loc_140274311
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdx, rax
                ja      short loc_140274311
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140274311
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_140274311
                test    bl, 1
                jz      short loc_140274311
                test    bl, 20h
                jz      short loc_1402742CB
                test    bl, 42h
                jnz     short loc_140274311

loc_1402742CB:                          ; CODE XREF: sub_140274000+2C4↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140274311
                shr     rdx, 3
                and     edx, 1FFh
                mov     rax, [rax+rdx*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_140274311
                or      rbx, 42h

loc_140274311:                          ; CODE XREF: sub_140274000+27F↑j
                                        ; sub_140274000+295↑j ...
                lea     rcx, [rsp+1C8h+var_118]
                mov     [rsp+1C8h+var_118], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      loc_1402743AF
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1402743AF
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_1402743AF
                test    bl, 1
                jz      short loc_1402743AF
                test    bl, 20h
                jz      short loc_140274362
                test    bl, 42h
                jnz     short loc_1402743AF

loc_140274362:                          ; CODE XREF: sub_140274000+35B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1402743AF
                lea     rax, [rsp+1C8h+var_118]
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
                jz      short loc_1402743AF
                or      rbx, 42h

loc_1402743AF:                          ; CODE XREF: sub_140274000+328↑j
                                        ; sub_140274000+338↑j ...
                shr     rbx, 0Ch
                mov     r10, 0FFFFFFFFFh
                and     rbx, r10
                lea     rax, [rbx+rbx*2]
                add     rax, rax
                mov     rdx, 0FFFFFA8000000010h
                mov     rdx, [rdx+rax*8]
                test    rdx, rdx
                jz      short loc_1402743E9
                shr     rdi, 12h
                and     edi, 7
                lea     rax, [rdi+rdi*4]
                lea     rdx, [rdx+rax*8]

loc_1402743E9:                          ; CODE XREF: sub_140274000+3D8↑j
                mov     rdx, [rdx+18h]
                mov     ebx, 1
                movzx   eax, dl
                mov     rcx, rdx
                and     rcx, 0FFFFFFFFFFFFFFFEh
                and     al, 1
                mov     rax, cs:qword_140C4E4C8
                cmovz   rcx, rdx
                mov     rcx, [rcx]
                mov     [rsp+1C8h+var_100], rcx
                movzx   ecx, word ptr [rcx+3Ch]
                and     ecx, 3FFh
                xor     edi, edi
                mov     rax, [rax+rcx*8]
                mov     [rsp+1C8h+var_108], rax

loc_14027442C:                          ; CODE XREF: sub_140274000+11BB↓j
                                        ; sub_140274000+1B71↓j
                mov     r11, 0FFFFFA8000000028h
                cmp     r15, [rsp+1C8h+var_130]
                ja      loc_140275B76
                mov     rcx, [r15]
                mov     r12d, edi
                mov     rdx, rcx
                mov     r9, 0FFFFF6FB7DBED000h
                mov     rax, r9
                mov     r8, 0FFFFF6FB7DBED7F8h
                cmp     r15, rax
                jb      loc_140274506
                mov     rax, r8
                cmp     r15, rax
                ja      loc_140274506
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1402744F2
                mov     rax, gs:188h
                mov     r8, [rax+0B8h]
                cmp     byte ptr [r8+390h], 1
                jz      short loc_1402744F2
                test    dl, 1
                jz      short loc_1402744F2
                test    dl, 20h
                jz      short loc_1402744AE
                test    dl, 42h
                jnz     short loc_1402744F2

loc_1402744AE:                          ; CODE XREF: sub_140274000+4A7↑j
                mov     rax, gs:188h
                mov     r8, [rax+0B8h]
                mov     r9, [r8+788h]
                test    r9, r9
                jz      short loc_1402744F2
                or      rdx, 20h
                mov     rax, r15
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r9+rax*8]
                movzx   r8d, al
                and     r8b, 20h
                cmovz   rdx, rcx
                test    al, 42h
                jz      short loc_1402744F2
                or      rdx, 42h

loc_1402744F2:                          ; CODE XREF: sub_140274000+483↑j
                                        ; sub_140274000+49D↑j ...
                mov     r8, 0FFFFF6FB7DBED7F8h
                mov     r9, 0FFFFF6FB7DBED000h

loc_140274506:                          ; CODE XREF: sub_140274000+467↑j
                                        ; sub_140274000+473↑j
                test    dl, 1
                jz      short loc_14027453A
                test    byte ptr [rsp+1C8h+var_18C], 4
                jz      loc_14027581D
                movzx   edx, [rsp+1C8h+var_198]
                cmp     dl, 11h
                jz      short loc_14027452D
                mov     rcx, r13
                call    sub_140297330
                mov     [rsp+1C8h+var_198], 11h

loc_14027452D:                          ; CODE XREF: sub_140274000+51E↑j
                mov     rcx, r15
                call    sub_1402A4E64
                jmp     loc_14027581D
; ---------------------------------------------------------------------------

loc_14027453A:                          ; CODE XREF: sub_140274000+509↑j
                mov     rax, r9
                cmp     r15, rax
                jb      loc_1402745CA
                mov     rax, r8
                cmp     r15, rax
                ja      short loc_1402745CA
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1402745CA
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_1402745CA
                test    cl, 1
                jz      short loc_1402745CA
                test    cl, 20h
                jz      short loc_140274582
                test    cl, 42h
                jnz     short loc_1402745CA

loc_140274582:                          ; CODE XREF: sub_140274000+57B↑j
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     r8, [rdx+788h]
                test    r8, r8
                jz      short loc_1402745CA
                mov     rax, r15
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rcx
                or      r8, 20h
                movzx   edx, al
                and     dl, 20h
                cmovz   r8, rcx
                mov     rcx, r8
                test    al, 42h
                jz      short loc_1402745CA
                or      rcx, 42h

loc_1402745CA:                          ; CODE XREF: sub_140274000+540↑j
                                        ; sub_140274000+54C↑j ...
                mov     [rsp+1C8h+var_188], rcx
                test    cl, 1
                jz      short loc_140274603
                test    byte ptr [rsp+1C8h+var_18C], 4
                jz      loc_14027581D
                movzx   edx, [rsp+1C8h+var_198]
                cmp     dl, 11h
                jz      short loc_1402745F6
                mov     rcx, r13
                call    sub_140297330
                mov     [rsp+1C8h+var_198], 11h

loc_1402745F6:                          ; CODE XREF: sub_140274000+5E7↑j
                mov     rcx, r15
                call    sub_1402A4E64
                jmp     loc_14027581D
; ---------------------------------------------------------------------------

loc_140274603:                          ; CODE XREF: sub_140274000+5D2↑j
                mov     rax, cs:qword_140C4DDC0
                mov     r12, rcx
                shr     r12, 3
                mov     rbx, r14
                and     r12d, 1
                mov     r14, rcx
                mov     [rsp+1C8h+var_110], r12
                test    rax, rax
                jz      short loc_140274636
                test    cl, 10h
                jnz     short loc_140274636
                mov     r14, rax
                not     r14
                and     r14, rcx

loc_140274636:                          ; CODE XREF: sub_140274000+626↑j
                                        ; sub_140274000+62B↑j
                movzx   edx, [rsp+1C8h+var_198]
                and     rbx, 0FFFFFFFFFFFFF000h
                sar     r14, 10h
                mov     [rsp+1C8h+var_168], r14
                cmp     dl, 11h
                jz      short loc_140274679
                mov     rax, r14
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rax, rbx
                jz      loc_140274E8E
                mov     rcx, r13
                call    sub_140297330
                mov     r9, 0FFFFF6FB7DBED000h
                mov     [rsp+1C8h+var_198], 11h

loc_140274679:                          ; CODE XREF: sub_140274000+64E↑j
                mov     rax, r14
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rax, rbx
                jz      short loc_1402746BC
                mov     edx, [rsp+1C8h+var_194]
                test    edx, edx
                jz      short loc_1402746BC
                mov     eax, edx
                mov     r8d, edx
                shl     rax, 3
                lea     rdx, [rsp+1C8h+var_C8]
                mov     rcx, r15
                mov     r9, rsi
                sub     rcx, rax
                call    sub_140271600
                mov     r9, 0FFFFF6FB7DBED000h
                mov     [rsp+1C8h+var_194], edi

loc_1402746BC:                          ; CODE XREF: sub_140274000+685↑j
                                        ; sub_140274000+68D↑j
                mov     rbx, [r14]
                mov     rax, r9
                cmp     r14, rax
                jb      loc_140274759
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_140274759
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140274759
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_140274759
                test    bl, 1
                jz      short loc_140274759
                test    bl, 20h
                jz      short loc_140274711
                test    bl, 42h
                jnz     short loc_140274759

loc_140274711:                          ; CODE XREF: sub_140274000+70A↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140274759
                mov     rax, r14
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
                jz      short loc_140274759
                or      rbx, 42h

loc_140274759:                          ; CODE XREF: sub_140274000+6C5↑j
                                        ; sub_140274000+6DB↑j ...
                mov     [rsp+1C8h+var_160], rbx
                test    bl, 1
                jnz     loc_140274936
                bt      rbx, 0Ah
                jb      short loc_140274779
                bt      rbx, 0Bh
                jb      loc_140274936

loc_140274779:                          ; CODE XREF: sub_140274000+76C↑j
                mov     r13, rdi

loc_14027477C:                          ; CODE XREF: sub_140274000+F24↓j
                                        ; sub_140274000+F2F↓j ...
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140274793
                test    bl, 10h
                jnz     short loc_140274793
                not     rax
                and     rbx, rax

loc_140274793:                          ; CODE XREF: sub_140274000+786↑j
                                        ; sub_140274000+78B↑j
                mov     rcx, [rsp+1C8h+var_100]
                sar     rbx, 10h
                call    sub_1402851C0
                test    eax, eax
                jnz     loc_140275759
                test    byte ptr [rsp+1C8h+var_18C], 1
                jz      loc_140275759
                mov     edx, [rcx+38h]
                lea     r8, [rsp+1C8h+var_F8]
                shr     edx, 14h
                xor     ecx, ecx
                and     edx, 3Fh
                call    sub_1402C68C0
                mov     r8, qword ptr [rsp+1C8h+var_F8]
                mov     eax, 1
                lock xadd [r8], eax
                and     eax, dword ptr [rsp+1C8h+var_F8+8]
                mov     r8d, 2
                mov     edx, dword ptr [rsp+1C8h+var_F8+0Ch]
                mov     rcx, [rsp+1C8h+var_108]
                or      edx, eax
                call    sub_14022ACA0
                mov     r15, rax
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      loc_140275754
                lea     rsi, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rsi, 4
                mov     rax, rax
                add     rsi, rax
                lea     rcx, [rsp+1C8h+var_160]
                mov     [rsp+1C8h+var_150], rsi
                call    sub_1402805F0
                shr     rax, 5
                and     eax, 1Fh
                mov     ecx, eax
                call    sub_1402C4570
                mov     edx, eax
                mov     rcx, rsi
                mov     r14d, eax
                call    sub_1402966A0
                movzx   edi, [rsp+1C8h+var_198]
                test    eax, eax
                jz      short loc_14027488E
                cmp     dil, 11h
                jz      short loc_140274876
                movzx   edx, dil
                mov     rcx, r13
                call    sub_140297330
                mov     dil, 11h
                mov     [rsp+1C8h+var_198], dil

loc_140274876:                          ; CODE XREF: sub_140274000+860↑j
                mov     r8d, r14d
                mov     edx, 1
                mov     rcx, r15
                call    sub_1402E5704
                and     qword ptr [rsi+10h], 0FFFFFFFFFFFFFC1Fh

loc_14027488E:                          ; CODE XREF: sub_140274000+85A↑j
                mov     r14, [rsp+1C8h+var_168]
                cmp     dil, 11h
                jnz     loc_140275675
                lea     rdx, [rsp+1C8h+var_198]
                mov     rcx, r14
                call    sub_140299CD0
                mov     r13, rax
                test    rax, rax
                jnz     short loc_1402748EB
                mov     esi, 2
                nop     word ptr [rax+rax+00000000h]

loc_1402748C0:                          ; CODE XREF: sub_140274000+8E4↓j
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_140224260
                lea     rdx, [rsp+1C8h+var_198]
                mov     rcx, r14
                call    sub_140299CD0
                mov     r13, rax
                test    rax, rax
                jz      short loc_1402748C0
                mov     rsi, [rsp+1C8h+var_150]

loc_1402748EB:                          ; CODE XREF: sub_140274000+8B0↑j
                mov     rcx, r14
                call    sub_1402805F0
                mov     [rsp+1C8h+var_160], rax
                test    al, 1
                jnz     short loc_140274912
                bt      rax, 0Bh
                jnb     loc_140275675
                bt      rax, 0Ah
                jb      loc_140275675

loc_140274912:                          ; CODE XREF: sub_140274000+8FA↑j
                movzx   edx, [rsp+1C8h+var_198]
                mov     rcx, r13
                call    sub_140297330
                mov     rcx, rsi
                call    sub_140300264
                mov     r15, [rsp+1C8h+var_180]
                mov     [rsp+1C8h+var_198], 11h
                jmp     loc_14027519F
; ---------------------------------------------------------------------------

loc_140274936:                          ; CODE XREF: sub_140274000+761↑j
                                        ; sub_140274000+773↑j
                mov     rax, 7FFFFFFFF8h
                mov     r12, r14
                shr     r12, 9
                and     r12, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     r12, rax
                nop     word ptr [rax+rax+00h]

loc_140274960:                          ; CODE XREF: sub_140274000+C1A↓j
                mov     rsi, [r12]
                mov     [rsp+1C8h+var_170], rsi
                and     esi, 1
                nop     dword ptr [rax+00h]

loc_140274970:                          ; CODE XREF: sub_140274000+A44↓j
                test    rsi, rsi
                jz      loc_140274C06
                mov     rbx, [rsp+1C8h+var_170]
                bt      rbx, 9
                jb      loc_140274C06
                lea     rcx, [rsp+1C8h+var_170]
                call    sub_1402433C0
                mov     r14d, eax
                test    eax, eax
                jz      short loc_140274A0E
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140274A0E
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_140274A0E
                test    bl, 20h
                jz      short loc_1402749C9
                test    bl, 42h
                jnz     short loc_140274A0E

loc_1402749C9:                          ; CODE XREF: sub_140274000+9C2↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jnz     short loc_1402749EC
                mov     rbx, [rsp+1C8h+var_170]
                jmp     short loc_140274A0E
; ---------------------------------------------------------------------------

loc_1402749EC:                          ; CODE XREF: sub_140274000+9E3↑j
                lea     rax, [rsp+1C8h+var_170]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_140274A06
                or      rbx, 20h

loc_140274A06:                          ; CODE XREF: sub_140274000+A00↑j
                test    al, 42h
                jz      short loc_140274A0E
                or      rbx, 42h

loc_140274A0E:                          ; CODE XREF: sub_140274000+998↑j
                                        ; sub_140274000+9A4↑j ...
                shr     rbx, 0Ch
                mov     r10, 0FFFFFFFFFh
                and     rbx, r10
                mov     rax, 0FFFFFA8000000028h
                lea     rdx, [rbx+rbx*2]
                add     rdx, rdx
                mov     rax, rax
                mov     rcx, [rax+rdx*8]
                mov     rax, 4000000000000h
                test    rax, rcx
                jz      loc_140274970
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                lea     r13, [rax+rdx*8]
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140274AA9
                test    al, 1
                jz      short loc_140274AA9
                cmp     r15b, 0Fh
                ja      short loc_140274AA9
                mov     rax, gs:20h
                movzx   ecx, r15b
                inc     ecx
                mov     r8, [rax+84B8h]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                shl     rax, cl
                and     eax, 4
                mov     edx, [r8+14h]
                or      edx, eax
                mov     [r8+14h], edx

loc_140274AA9:                          ; CODE XREF: sub_140274000+A70↑j
                                        ; sub_140274000+A74↑j ...
                xor     edi, edi
                mov     [rsp+1C8h+var_148], edi
                lock bts qword ptr [r13+18h], 3Fh ; '?'
                jnb     short loc_140274AE9
                nop     dword ptr [rax+rax+00h]

loc_140274AC0:                          ; CODE XREF: sub_140274000+AD4↓j
                                        ; sub_140274000+ADD↓j
                lea     rcx, [rsp+1C8h+var_148]
                call    sub_1402C8C70
                mov     rax, [r13+18h]
                test    rax, rax
                js      short loc_140274AC0
                lock bts qword ptr [r13+18h], 3Fh ; '?'
                jb      short loc_140274AC0
                mov     r10, 0FFFFFFFFFh

loc_140274AE9:                          ; CODE XREF: sub_140274000+AB9↑j
                mov     rax, [r12]
                mov     [rsp+1C8h+var_170], rax
                test    al, 1
                jz      loc_140274B8F
                bt      rax, 9
                jb      loc_140274B8F
                test    r14d, r14d
                jz      short loc_140274B7F
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140274B7F
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_140274B7F
                test    al, 20h
                jz      short loc_140274B37
                test    al, 42h
                jnz     short loc_140274B7F

loc_140274B37:                          ; CODE XREF: sub_140274000+B31↑j
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                mov     r8, [rdx+788h]
                test    r8, r8
                jnz     short loc_140274B5A
                mov     rax, [rsp+1C8h+var_170]
                jmp     short loc_140274B7F
; ---------------------------------------------------------------------------

loc_140274B5A:                          ; CODE XREF: sub_140274000+B51↑j
                lea     rcx, [rsp+1C8h+var_170]
                shr     rcx, 3
                and     ecx, 1FFh
                mov     rcx, [r8+rcx*8]
                test    cl, 20h
                jz      short loc_140274B76
                or      rax, 20h

loc_140274B76:                          ; CODE XREF: sub_140274000+B70↑j
                test    cl, 42h
                jz      short loc_140274B7F
                or      rax, 42h

loc_140274B7F:                          ; CODE XREF: sub_140274000+B08↑j
                                        ; sub_140274000+B14↑j ...
                shr     rax, 0Ch
                and     rax, r10
                cmp     rbx, rax
                jz      loc_140274C1F

loc_140274B8F:                          ; CODE XREF: sub_140274000+AF4↑j
                                        ; sub_140274000+AFF↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r13+18h], rax
                cmp     r15b, 11h
                jz      short loc_140274C06
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140274BFE
                test    al, 1
                jz      short loc_140274BFE
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140274BFE
                cmp     r15b, 0Fh
                ja      short loc_140274BFE
                cmp     al, 2
                jb      short loc_140274BFE
                mov     r10, gs:20h
                mov     rax, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r15b
                inc     ecx
                shl     rax, cl
                mov     r9, [r10+84B8h]
                movzx   edx, ax
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_140274BFE
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140274BFE:                          ; CODE XREF: sub_140274000+BAC↑j
                                        ; sub_140274000+BB0↑j ...
                movzx   eax, r15b
                mov     cr8, rax

loc_140274C06:                          ; CODE XREF: sub_140274000+973↑j
                                        ; sub_140274000+983↑j ...
                mov     rdx, [rsp+1C8h+var_168]
                xor     r9d, r9d
                xor     r8d, r8d
                lea     ecx, [r9+2]
                call    sub_140224260
                jmp     loc_140274960
; ---------------------------------------------------------------------------

loc_140274C1F:                          ; CODE XREF: sub_140274000+B89↑j
                mov     rcx, r13
                call    sub_140275EA0
                test    eax, eax
                jz      loc_140274CF8
                mov     rcx, r13
                xor     r10b, r10b
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_140274C52
                mov     eax, [r13+10h]
                bt      rax, 0Ah
                jnb     short loc_140274C52
                mov     bl, 1
                mov     esi, 1
                jmp     short loc_140274C65
; ---------------------------------------------------------------------------

loc_140274C52:                          ; CODE XREF: sub_140274000+C3C↑j
                                        ; sub_140274000+C47↑j
                call    sub_140279D40
                test    eax, eax
                movzx   ebx, r10b
                mov     esi, 1
                cmovnz  ebx, esi

loc_140274C65:                          ; CODE XREF: sub_140274000+C50↑j
                mov     rcx, [r13+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rdi, [rax+rcx*8]
                test    bl, bl
                jz      short loc_140274C97
                mov     r8d, 4
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140232160
                test    eax, eax
                jz      short loc_140274CFD

loc_140274C97:                          ; CODE XREF: sub_140274000+C80↑j
                lea     rax, unk_140C50C00
                cmp     rdi, rax
                jnz     short loc_140274CD2
                mov     rdx, gs:20h
                mov     eax, [rdx+831Ch]
                cmp     eax, 1
                jb      short loc_140274CD2

loc_140274CB7:                          ; CODE XREF: sub_140274000+CD0↓j
                mov     ecx, 0FFFFFFFFh
                cmp     eax, ecx
                jz      short loc_140274CD2
                lea     ecx, [rax-1]
                lock cmpxchg [rdx+831Ch], ecx
                jz      short loc_140274CF8
                cmp     eax, 1
                jnb     short loc_140274CB7

loc_140274CD2:                          ; CODE XREF: sub_140274000+CA1↑j
                                        ; sub_140274000+CB5↑j ...
                mov     r8d, 0FFFFFFFFh
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1403438BC
                test    eax, eax
                jnz     short loc_140274CF8
                test    bl, bl
                jz      short loc_140274CFD
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14026B700
                jmp     short loc_140274CFD
; ---------------------------------------------------------------------------

loc_140274CF8:                          ; CODE XREF: sub_140274000+C29↑j
                                        ; sub_140274000+CCB↑j ...
                inc     word ptr [r13+20h]

loc_140274CFD:                          ; CODE XREF: sub_140274000+C95↑j
                                        ; sub_140274000+CE9↑j ...
                cmp     r15b, 11h
                jz      loc_140274E4D
                mov     r14, [r13+8]
                mov     rax, 8000000000000000h
                or      r14, rax
                mov     [rsp+1C8h+var_198], r15b
                movzx   eax, byte ptr [r13+22h]
                mov     [rsp+1C8h+var_197], 0
                mov     [rsp+1C8h+var_150], r14
                test    al, 20h
                jz      loc_140274E15
                xor     r12d, r12d
                movzx   esi, r15b
                movzx   edi, r15b
                lea     r14, [r12-1]
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_140274D50:                          ; CODE XREF: sub_140274000+E0A↓j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r13+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140274DB2
                test    al, 1
                jz      short loc_140274DB2
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140274DB2
                cmp     r15b, 0Fh
                ja      short loc_140274DB2
                cmp     al, 2
                jb      short loc_140274DB2
                mov     r10, gs:20h
                lea     ecx, [rsi+1]
                mov     rax, r14
                shl     rax, cl
                movzx   edx, ax
                mov     r9, [r10+84B8h]
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_140274DB2
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140274DB2:                          ; CODE XREF: sub_140274000+D67↑j
                                        ; sub_140274000+D6B↑j ...
                mov     cr8, rdi
                movzx   eax, byte ptr [r13+22h]
                mov     ebx, r12d
                mov     [rsp+1C8h+var_197], al
                test    al, 20h
                jz      short loc_140274DFB

loc_140274DC6:                          ; CODE XREF: sub_140274000+DF9↓j
                inc     ebx
                test    cs:dword_140CFB240, ebx
                jnz     short loc_140274DEC
                mov     eax, cs:dword_140CFC41C
                test    al, 40h
                jz      short loc_140274DEC
                call    sub_140390EA0
                test    al, al
                jz      short loc_140274DEC
                mov     ecx, ebx
                call    sub_1403900C0
                jmp     short loc_140274DEE
; ---------------------------------------------------------------------------

loc_140274DEC:                          ; CODE XREF: sub_140274000+DCE↑j
                                        ; sub_140274000+DD8↑j ...
                pause

loc_140274DEE:                          ; CODE XREF: sub_140274000+DEA↑j
                movzx   eax, byte ptr [r13+22h]
                mov     [rsp+1C8h+var_197], al
                test    al, 20h
                jnz     short loc_140274DC6

loc_140274DFB:                          ; CODE XREF: sub_140274000+DC4↑j
                mov     rcx, r13
                call    sub_1402DAA00
                movzx   eax, byte ptr [r13+22h]
                test    al, 20h
                jnz     loc_140274D50
                mov     r14, [rsp+1C8h+var_150]

loc_140274E15:                          ; CODE XREF: sub_140274000+D2E↑j
                or      al, 20h
                mov     [r13+22h], al
                mov     rax, [r13+18h]
                shr     rax, 3Eh
                test    al, 1
                jnz     short loc_140274E3C
                test    byte ptr [r14], 20h
                jnz     short loc_140274E3C
                xor     r8d, r8d
                mov     rcx, r14
                lea     edx, [r8+1]
                call    sub_1402C67E0

loc_140274E3C:                          ; CODE XREF: sub_140274000+E25↑j
                                        ; sub_140274000+E2B↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r13+18h], rax
                jmp     short loc_140274E57
; ---------------------------------------------------------------------------

loc_140274E4D:                          ; CODE XREF: sub_140274000+D01↑j
                mov     dl, 11h
                mov     rcx, r13
                call    sub_140299EF0

loc_140274E57:                          ; CODE XREF: sub_140274000+E4B↑j
                mov     rsi, [rsp+1C8h+var_158]
                xor     edi, edi
                mov     r14, [rsp+1C8h+var_168]
                mov     r10, 0FFFFFFFFFh
                mov     r12, [rsp+1C8h+var_110]
                mov     r15, [rsp+1C8h+var_180]
                mov     r11, 0FFFFFA8000000028h
                mov     r9, 0FFFFF6FB7DBED000h

loc_140274E8E:                          ; CODE XREF: sub_140274000+65C↑j
                test    byte ptr [r15], 1
                jnz     loc_140275818
                mov     rbx, [r14]
                mov     rax, r9
                cmp     r14, rax
                jb      short loc_140274F15
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_140274F15
                call    sub_140349680
                test    eax, eax
                jz      short loc_140274F15
                test    bl, 1
                jz      short loc_140274F15
                test    bl, 20h
                jz      short loc_140274ECD
                test    bl, 42h
                jnz     short loc_140274F15

loc_140274ECD:                          ; CODE XREF: sub_140274000+EC6↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140274F15
                mov     rax, r14
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
                jz      short loc_140274F15
                or      rbx, 42h

loc_140274F15:                          ; CODE XREF: sub_140274000+EA1↑j
                                        ; sub_140274000+EB3↑j ...
                mov     [rsp+1C8h+var_160], rbx
                test    bl, 1
                jnz     short loc_140274F35
                bt      rbx, 0Ah
                jb      loc_14027477C
                bt      rbx, 0Bh
                jnb     loc_14027477C

loc_140274F35:                          ; CODE XREF: sub_140274000+F1D↑j
                                        ; sub_140274000+F6C↓j ...
                mov     rbx, [r14]
                test    bl, 1
                jz      short loc_140274F42
                mov     rax, rbx
                jmp     short loc_140274F8B
; ---------------------------------------------------------------------------

loc_140274F42:                          ; CODE XREF: sub_140274000+F3B↑j
                bt      rbx, 0Ah
                jb      loc_14027502C
                bt      rbx, 0Bh
                jnb     loc_14027502C
                test    rbx, rbx
                jz      short loc_140274F6E
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140274F6E
                test    rax, rbx
                jz      short loc_140274F35

loc_140274F6E:                          ; CODE XREF: sub_140274000+F5B↑j
                                        ; sub_140274000+F67↑j
                mov     rcx, cs:qword_140C4DDC0
                mov     rax, rbx
                test    rcx, rcx
                jz      short loc_140274F8B
                test    bl, 10h
                jnz     short loc_140274F8B
                mov     rax, rcx
                not     rax
                and     rax, rbx

loc_140274F8B:                          ; CODE XREF: sub_140274000+F40↑j
                                        ; sub_140274000+F7B↑j ...
                shr     rax, 0Ch
                and     rax, r10
                lea     rdx, [rax+rax*2]
                add     rdx, rdx
                mov     rax, r11
                mov     rcx, [rax+rdx*8]
                mov     rax, 4000000000000h
                test    rax, rcx
                jz      short loc_140274F35
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                lea     rdi, [rax+rdx*8]
                mov     [rsp+1C8h+var_144], 0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_140275013
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_140274FE0:                          ; CODE XREF: sub_140274000+FF4↓j
                                        ; sub_140274000+FFD↓j
                lea     rcx, [rsp+1C8h+var_144]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140274FE0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140274FE0
                mov     r10, 0FFFFFFFFFh
                mov     r11, 0FFFFFA8000000028h

loc_140275013:                          ; CODE XREF: sub_140274000+FD2↑j
                cmp     [r14], rbx
                jz      short loc_14027502E
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                jmp     loc_140274F35
; ---------------------------------------------------------------------------

loc_14027502C:                          ; CODE XREF: sub_140274000+F47↑j
                                        ; sub_140274000+F52↑j
                xor     edi, edi

loc_14027502E:                          ; CODE XREF: sub_140274000+1016↑j
                mov     rbx, [r14]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r14, rax
                jb      short loc_1402750B5
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_1402750B5
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402750B5
                test    bl, 1
                jz      short loc_1402750B5
                test    bl, 20h
                jz      short loc_14027506D
                test    bl, 42h
                jnz     short loc_1402750B5

loc_14027506D:                          ; CODE XREF: sub_140274000+1066↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1402750B5
                mov     rax, r14
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
                jz      short loc_1402750B5
                or      rbx, 42h

loc_1402750B5:                          ; CODE XREF: sub_140274000+1041↑j
                                        ; sub_140274000+1053↑j ...
                mov     [rsp+1C8h+var_160], rbx
                test    rdi, rdi
                jz      loc_14027477C
                test    bl, 1
                jz      short loc_14027510B
                test    byte ptr [rdi+23h], 40h
                mov     [rsp+1C8h+var_188], rbx
                jz      short loc_1402750E7

loc_1402750D3:                          ; CODE XREF: sub_140274000+110F↓j
                                        ; sub_140274000+1115↓j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                jmp     loc_140275816
; ---------------------------------------------------------------------------

loc_1402750E7:                          ; CODE XREF: sub_140274000+10D1↑j
                mov     rax, [rdi+18h]
                mov     rdx, 3FFFFFFFFFFFFFFFh
                lea     rcx, [rax+1]
                xor     rcx, rax
                and     rcx, rdx
                xor     rcx, rax
                mov     [rdi+18h], rcx
                jmp     loc_14027565F
; ---------------------------------------------------------------------------

loc_14027510B:                          ; CODE XREF: sub_140274000+10C6↑j
                test    byte ptr [rdi+22h], 20h
                jnz     short loc_1402750D3
                test    byte ptr [rdi+23h], 40h
                jnz     short loc_1402750D3
                mov     rdx, [rdi+10h]
                lea     r12, [rdi+10h]
                mov     rsi, [rsp+1C8h+var_130]
                mov     rcx, rdx
                sub     rsi, r15
                shr     rcx, 3
                sar     rsi, 3
                mov     rax, rdx
                shr     rax, 0Bh
                inc     rsi
                bt      rdx, 0Ah
                cmovnb  rax, rcx
                test    al, 1
                jz      short loc_1402751C0
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14055FC70
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402751C0
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                movzx   edx, [rsp+1C8h+var_198]
                mov     rcx, r13
                call    sub_140297330
                mov     [rsp+1C8h+var_198], 11h
                cmp     rbx, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14027518F
                call    sub_140560260
                jmp     short loc_14027519F
; ---------------------------------------------------------------------------

loc_14027518F:                          ; CODE XREF: sub_140274000+1186↑j
                mov     rcx, rbx
                call    sub_14055FFFC
                mov     rcx, rbx
                call    sub_14055F7F4

loc_14027519F:                          ; CODE XREF: sub_140274000+931↑j
                                        ; sub_140274000+118D↑j ...
                mov     rsi, [rsp+1C8h+var_158]
                xor     edi, edi
                mov     r12d, [rsp+1C8h+var_194]
                mov     r14d, edi
                mov     r10, 0FFFFFFFFFh
                lea     ebx, [rdi+1]
                jmp     loc_14027442C
; ---------------------------------------------------------------------------

loc_1402751C0:                          ; CODE XREF: sub_140274000+114A↑j
                                        ; sub_140274000+115F↑j
                movzx   eax, byte ptr [rdi+22h]
                and     al, 7
                cmp     al, 2
                jnz     loc_14027532F
                cmp     rsi, 1
                jbe     loc_14027532F
                mov     rcx, rdi
                call    sub_1402D9900
                test    eax, eax
                jz      short loc_1402751FE
                cmp     word ptr [rdi+20h], 0
                jnz     short loc_1402751FE
                mov     rcx, 8000000000000000h
                test    [rdi], rcx
                jnz     loc_14027532F

loc_1402751FE:                          ; CODE XREF: sub_140274000+11E2↑j
                                        ; sub_140274000+11E9↑j
                mov     rcx, cs:qword_140C4DDC0
                mov     rax, [r12]
                test    rcx, rcx
                jz      short loc_140275218
                test    al, 10h
                jnz     short loc_140275218
                not     rcx
                and     rax, rcx

loc_140275218:                          ; CODE XREF: sub_140274000+120C↑j
                                        ; sub_140274000+1210↑j
                sar     rax, 10h
                mov     r15d, 10h
                mov     ecx, [rax+2Ch]
                mov     rax, [rax+8]
                lea     rdx, [rax+rcx*8]
                mov     ecx, r14d
                sub     rdx, r14
                mov     eax, 1000h
                sar     rdx, 3
                cmp     rdx, rsi
                cmovb   rsi, rdx
                and     ecx, 0FFFh
                sub     eax, ecx
                mov     ecx, eax
                shr     rcx, 3
                cmp     rsi, rcx
                cmovbe  rcx, rsi
                sub     r15d, [rsp+1C8h+var_194]
                cmp     rcx, r15
                cmovbe  r15, rcx
                cmp     r15, 1
                jbe     loc_14027532F
                xor     ebx, ebx
                mov     rcx, rdi
                mov     [rsp+1C8h+var_138], rbx
                call    sub_14022FC60
                mov     r14d, eax
                mov     rax, [rsp+1C8h+var_108]
                mov     qword ptr [rsp+1C8h+var_E0], rbx
                lea     rcx, [r14+4Dh]
                lea     rcx, [r14+rcx*4]
                lea     rdx, [rax+rcx*8]
                lea     rcx, [rsp+1C8h+var_E0]
                mov     qword ptr [rsp+1C8h+var_E0+8], rdx
                call    sub_14024B3F0
                lea     edx, [rbx+1]
                mov     rcx, rdi
                call    sub_14022EF40
                mov     esi, eax
                cmp     eax, 1
                jnz     short loc_140275302
                mov     rdx, [rsp+1C8h+var_168]
                lea     rcx, [rsp+1C8h+var_138]
                mov     r9, [rsp+1C8h+var_180]
                lea     rax, [r15-1]
                mov     [rsp+1C8h+var_1A0], rcx
                add     rdx, 8
                mov     r8d, r14d
                mov     [rsp+1C8h+var_1A8], rax
                call    sub_1402D95F0
                mov     rbx, [rsp+1C8h+var_138]
                mov     [rsp+1C8h+var_128], rax

loc_140275302:                          ; CODE XREF: sub_140274000+12C4↑j
                lea     rcx, [rsp+1C8h+var_E0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                test    rbx, rbx
                jz      short loc_14027533B
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140388B84
                mov     r9, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], r9
                jmp     short loc_140275345
; ---------------------------------------------------------------------------

loc_14027532F:                          ; CODE XREF: sub_140274000+11C8↑j
                                        ; sub_140274000+11D2↑j ...
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14022EF40
                mov     esi, eax

loc_14027533B:                          ; CODE XREF: sub_140274000+1312↑j
                mov     r9, 7FFFFFFFFFFFFFFFh

loc_140275345:                          ; CODE XREF: sub_140274000+132D↑j
                test    esi, esi
                jnz     short loc_14027536C
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140388B84
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                mov     r15, [rsp+1C8h+var_180]
                jmp     loc_14027519F
; ---------------------------------------------------------------------------

loc_14027536C:                          ; CODE XREF: sub_140274000+1347↑j
                movzx   eax, byte ptr [rdi+22h]
                mov     rsi, 8000000000000000h
                mov     r14, [rdi+8]
                and     al, 0FEh
                inc     word ptr [rdi+20h]
                or      al, 6
                mov     [rdi+22h], al
                or      r14, rsi
                mov     r8, [r12]
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rax, r10
                cmp     r12, rax
                jb      short loc_140275416
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r12, rax
                ja      short loc_140275416
                call    sub_140349680
                test    eax, eax
                jz      short loc_140275416
                test    r8b, 1
                jz      short loc_140275416
                test    r8b, 20h
                jz      short loc_1402753CF
                test    r8b, 42h
                jnz     short loc_140275416

loc_1402753CF:                          ; CODE XREF: sub_140274000+13C7↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140275416
                shr     r12, 3
                mov     rdx, r8
                and     r12d, 1FFh
                or      rdx, 20h
                mov     rax, [rax+r12*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_140275416
                or      r8, 42h

loc_140275416:                          ; CODE XREF: sub_140274000+13A0↑j
                                        ; sub_140274000+13B2↑j ...
                movzx   eax, byte ptr [rdi+22h]
                shr     r8, 5
                and     r8d, 7
                shr     eax, 6
                cmp     eax, 1
                jz      short loc_14027543D
                test    eax, eax
                jnz     short loc_140275434
                or      r8d, 8
                jmp     short loc_14027543D
; ---------------------------------------------------------------------------

loc_140275434:                          ; CODE XREF: sub_140274000+142C↑j
                cmp     eax, 2
                jnz     short loc_14027543D
                or      r8d, 18h

loc_14027543D:                          ; CODE XREF: sub_140274000+1428↑j
                                        ; sub_140274000+1432↑j ...
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                mov     rcx, rdi
                mov     r12, 0FFFFF68000000000h
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                lea     rax, qword_140017520
                mov     rbx, [rax+r8*8]
                mov     rax, 0FFFF000000000E7Fh
                and     rbx, rax
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                shl     rdx, 0Ch
                or      rbx, rdx
                or      rbx, 21h
                mov     rax, r12
                mov     r15, [rsp+1C8h+var_180]
                cmp     r15, rax
                jb      loc_14027557E
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r15, rax
                ja      loc_14027557E
                mov     rsi, r15
                shl     rsi, 19h
                mov     rax, r12
                shl     rax, 19h
                sub     rsi, rax
                mov     rax, 0FFFFF6FB40000000h
                sar     rsi, 10h
                mov     rax, rax
                cmp     r15, rax
                jb      short loc_140275543
                mov     rax, 0FFFFF6FB7FFFFFFFh
                mov     rax, rax
                cmp     r15, rax
                ja      short loc_140275543
                mov     rax, 0FFFFF6FB7DBEDF68h
                mov     rax, rax
                cmp     r15, rax
                jnz     short loc_140275526
                mov     rax, 8000000000000000h
                or      rbx, rax
                jmp     short loc_140275529
; ---------------------------------------------------------------------------

loc_140275526:                          ; CODE XREF: sub_140274000+1515↑j
                and     rbx, r9

loc_140275529:                          ; CODE XREF: sub_140274000+1524↑j
                mov     rcx, r15
                call    sub_14033FA34
                mov     r10, 0FFFFF6FB7DBED000h
                test    eax, eax
                jz      short loc_140275543
                or      rbx, 4

loc_140275543:                          ; CODE XREF: sub_140274000+14F1↑j
                                        ; sub_140274000+1503↑j ...
                mov     rax, r12
                mov     rcx, 3FFFFFFF78h
                add     rax, rcx
                cmp     r15, rax
                ja      short loc_14027555C
                or      rbx, 4

loc_14027555C:                          ; CODE XREF: sub_140274000+1556↑j
                mov     rcx, rsi
                mov     r8, rbx
                call    sub_140271580
                bts     rbx, 8
                mov     rsi, 8000000000000000h
                test    eax, eax
                cmovz   rbx, r8
                jmp     short loc_140275583
; ---------------------------------------------------------------------------

loc_14027557E:                          ; CODE XREF: sub_140274000+14B0↑j
                                        ; sub_140274000+14C6↑j
                bts     rbx, 8

loc_140275583:                          ; CODE XREF: sub_140274000+157C↑j
                movzx   edx, byte ptr cs:word_140C4DE88
                mov     rax, 0A000000000000h
                and     edx, 1
                or      rdx, rax
                mov     rax, 0FAFFFFFFFFFFFEFFh
                and     rbx, rax
                shl     rdx, 8
                or      rdx, rbx
                mov     rax, r10
                mov     r11, 0FFFFF6FB7DBED7F8h
                cmp     r14, rax
                jb      short loc_140275613
                mov     rax, r11
                cmp     r14, rax
                ja      short loc_140275613
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402755F4
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_1402755DD
                or      rdx, rsi

loc_1402755DD:                          ; CODE XREF: sub_140274000+15D8↑j
                mov     rcx, r14
                mov     [r14], rdx
                call    sub_140349620
                mov     r10, 0FFFFF6FB7DBED000h
                jmp     short loc_140275616
; ---------------------------------------------------------------------------

loc_1402755F4:                          ; CODE XREF: sub_140274000+15CF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140275613
                or      rdx, rsi

loc_140275613:                          ; CODE XREF: sub_140274000+15BE↑j
                                        ; sub_140274000+15C6↑j ...
                mov     [r14], rdx

loc_140275616:                          ; CODE XREF: sub_140274000+15F2↑j
                mov     rax, [rdi+18h]
                mov     rcx, 0C000000000000001h
                mov     r14, [rsp+1C8h+var_168]
                and     rax, rcx
                or      rax, 1
                mov     [rdi+18h], rax
                mov     rax, [r14]
                mov     rcx, r10
                cmp     r14, rcx
                jb      short loc_140275652
                mov     rcx, r11
                cmp     r14, rcx
                ja      short loc_140275652
                mov     rdx, rax
                mov     rcx, r14
                call    sub_1402A8730

loc_140275652:                          ; CODE XREF: sub_140274000+163D↑j
                                        ; sub_140274000+1645↑j
                mov     r12, [rsp+1C8h+var_110]
                mov     [rsp+1C8h+var_188], rax

loc_14027565F:                          ; CODE XREF: sub_140274000+1106↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                xor     edi, edi
                jmp     loc_1402759DF
; ---------------------------------------------------------------------------

loc_140275675:                          ; CODE XREF: sub_140274000+897↑j
                                        ; sub_140274000+901↑j ...
                mov     rcx, [rsp+1C8h+var_100]
                mov     r8d, 1
                mov     rdx, rbx
                call    sub_14026DA00
                lea     rcx, [rsp+1C8h+var_160]
                call    sub_1402805F0
                mov     rbx, rax
                mov     r9d, 12h
                shr     rbx, 5
                mov     rdx, r14
                and     ebx, 1Fh
                mov     rcx, rsi
                mov     r8d, ebx
                call    sub_1402C4130
                mov     rdx, r15
                bts     ebx, 1Dh
                mov     r15, [rsp+1C8h+var_180]
                mov     r8d, ebx
                mov     rcx, r15
                call    sub_140280E60
                mov     rcx, r14
                mov     [rsp+1C8h+var_188], rax
                mov     rdi, rax
                mov     rbx, rax
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027574A
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027571B
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     rdx, rbx
                jnz     short loc_140275709
                test    dil, 1
                jz      short loc_140275709
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_140275709:                          ; CODE XREF: sub_140274000+16F4↑j
                                        ; sub_140274000+16FA↑j
                mov     rcx, r14
                mov     [r14], rdx
                call    sub_140349620
                xor     edi, edi
                jmp     loc_1402759DF
; ---------------------------------------------------------------------------

loc_14027571B:                          ; CODE XREF: sub_140274000+16E8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027574A
                test    dil, 1
                jz      short loc_14027574A
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14027574A:                          ; CODE XREF: sub_140274000+16DF↑j
                                        ; sub_140274000+1735↑j ...
                mov     [r14], rbx
                xor     edi, edi
                jmp     loc_1402759DF
; ---------------------------------------------------------------------------

loc_140275754:                          ; CODE XREF: sub_140274000+80B↑j
                mov     r15, [rsp+1C8h+var_180]

loc_140275759:                          ; CODE XREF: sub_140274000+7A6↑j
                                        ; sub_140274000+7B1↑j
                test    byte ptr [rsp+1C8h+var_18C], 2
                jnz     loc_140275811
                movzx   edx, [rsp+1C8h+var_198]
                cmp     dl, 11h
                jz      short loc_14027577B
                mov     rcx, r13
                call    sub_140297330
                mov     [rsp+1C8h+var_198], 11h

loc_14027577B:                          ; CODE XREF: sub_140274000+176C↑j
                mov     rbx, gs:188h
                movzx   eax, byte ptr [rbx+51Ch]
                mov     ecx, [rbx+508h]
                mov     byte ptr [rbx+51Ch], 1
                lea     edi, [rax+rcx*4]
                mov     rax, [rsp+1C8h+var_130]
                sub     rax, r15
                sar     rax, 3
                cmp     eax, ecx
                jbe     short loc_1402757BF
                cmp     eax, 0Fh
                mov     ecx, 0Fh
                cmova   eax, ecx
                mov     [rbx+508h], eax

loc_1402757BF:                          ; CODE XREF: sub_140274000+17AC↑j
                mov     rdx, r15
                mov     rax, 0FFFFF68000000000h
                shl     rdx, 19h
                mov     rax, rax
                shl     rax, 19h
                xor     r9d, r9d
                sub     rdx, rax
                xor     r8d, r8d
                sar     rdx, 10h
                xor     ecx, ecx
                call    sub_140224260
                test    eax, eax
                jns     short loc_1402757FC
                mov     ecx, [rsp+1C8h+var_178]
                test    ecx, ecx
                cmovns  ecx, eax
                mov     [rsp+1C8h+var_178], ecx

loc_1402757FC:                          ; CODE XREF: sub_140274000+17ED↑j
                movzx   eax, dil
                and     al, 3
                shr     edi, 2
                mov     [rbx+508h], edi
                mov     [rbx+51Ch], al

loc_140275811:                          ; CODE XREF: sub_140274000+175E↑j
                mov     [rsp+1C8h+var_190], 0

loc_140275816:                          ; CODE XREF: sub_140274000+10E2↑j
                xor     edi, edi

loc_140275818:                          ; CODE XREF: sub_140274000+E92↑j
                mov     ebx, 1

loc_14027581D:                          ; CODE XREF: sub_140274000+510↑j
                                        ; sub_140274000+535↑j ...
                mov     rax, rdi

loc_140275820:                          ; CODE XREF: sub_140274000+1B5D↓j
                add     r15, 8
                mov     [rsp+1C8h+var_188], rax
                cmp     r12d, 2
                jb      short loc_140275838
                and     rax, 0FFFFFFFFFFFFFFFEh
                mov     [rsp+1C8h+var_188], rax

loc_140275838:                          ; CODE XREF: sub_140274000+182D↑j
                mov     r12d, [rsp+1C8h+var_194]
                test    r12d, r12d
                jnz     short loc_140275847
                test    rax, rax
                jz      short loc_140275895

loc_140275847:                          ; CODE XREF: sub_140274000+1840↑j
                mov     [rsp+r12*8+1C8h+var_C8], rax
                inc     r12d
                mov     [rsp+1C8h+var_194], r12d
                cmp     r12d, 10h
                jnz     short loc_140275895
                movzx   edx, [rsp+1C8h+var_198]
                cmp     dl, 11h
                jz      short loc_140275874
                mov     rcx, r13
                call    sub_140297330
                mov     [rsp+1C8h+var_198], 11h

loc_140275874:                          ; CODE XREF: sub_140274000+1865↑j
                lea     rcx, [r15-80h]
                mov     r9, rsi
                mov     r8d, 10h
                lea     rdx, [rsp+1C8h+var_C8]
                call    sub_140271600
                mov     r12d, edi
                mov     [rsp+1C8h+var_194], edi

loc_140275895:                          ; CODE XREF: sub_140274000+1845↑j
                                        ; sub_140274000+185B↑j
                mov     rax, [rsp+1C8h+var_128]
                test    rax, rax
                jz      loc_140275B62
                mov     rdx, [r14+8]
                add     r14, 8
                dec     rax
                mov     r9, 0FFFFF6FB7DBED000h
                mov     [rsp+1C8h+var_128], rax
                mov     rax, r9
                mov     rcx, 0FFFFF6FB7DBED7F8h
                cmp     r14, rax
                jb      short loc_140275947
                mov     rax, rcx
                cmp     r14, rax
                ja      short loc_140275947
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027593D
                test    dl, 1
                jz      short loc_14027593D
                test    dl, 20h
                jz      short loc_1402758F5
                test    dl, 42h
                jnz     short loc_14027593D

loc_1402758F5:                          ; CODE XREF: sub_140274000+18EE↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14027593D
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14027593D
                or      rdx, 42h

loc_14027593D:                          ; CODE XREF: sub_140274000+18E4↑j
                                        ; sub_140274000+18E9↑j ...
                mov     rcx, 0FFFFF6FB7DBED7F8h

loc_140275947:                          ; CODE XREF: sub_140274000+18D3↑j
                                        ; sub_140274000+18DB↑j
                mov     [rsp+1C8h+var_188], rdx
                mov     rdx, [r15]
                mov     rax, r9
                cmp     r15, rax
                jb      short loc_1402759BF
                mov     rax, rcx
                cmp     r15, rax
                ja      short loc_1402759BF
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402759BF
                test    dl, 1
                jz      short loc_1402759BF
                test    dl, 20h
                jz      short loc_140275977
                test    dl, 42h
                jnz     short loc_1402759BF

loc_140275977:                          ; CODE XREF: sub_140274000+1970↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_1402759BF
                mov     rax, r15
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_1402759BF
                or      rdx, 42h

loc_1402759BF:                          ; CODE XREF: sub_140274000+1955↑j
                                        ; sub_140274000+195D↑j ...
                mov     [rsp+1C8h+var_120], rdx
                mov     r12d, edi
                test    dl, 1
                jz      short loc_1402759D7
                mov     r12d, 2
                jmp     short loc_1402759DF
; ---------------------------------------------------------------------------

loc_1402759D7:                          ; CODE XREF: sub_140274000+19CD↑j
                test    dl, 8
                jz      short loc_1402759DF
                mov     r12d, ebx

loc_1402759DF:                          ; CODE XREF: sub_140274000+1670↑j
                                        ; sub_140274000+1716↑j ...
                mov     rbx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140275A2C
                test    al, 1
                jz      short loc_140275A2C
                cmp     bl, 0Fh
                ja      short loc_140275A2C
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140275A2C:                          ; CODE XREF: sub_140274000+19F4↑j
                                        ; sub_140274000+19F8↑j ...
                mov     rsi, [rsp+1C8h+var_158]
                mov     [rsp+1C8h+var_140], edi
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jnb     short loc_140275A60

loc_140275A41:                          ; CODE XREF: sub_140274000+1A55↓j
                                        ; sub_140274000+1A5E↓j
                lea     rcx, [rsp+1C8h+var_140]
                call    sub_1402C8C70
                mov     rax, [rsi+18h]
                test    rax, rax
                js      short loc_140275A41
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jb      short loc_140275A41

loc_140275A60:                          ; CODE XREF: sub_140274000+1A3F↑j
                mov     rdx, [rsi+18h]
                mov     rcx, rdx
                lea     rax, [rdx+1]
                xor     rcx, rax
                mov     rax, 3FFFFFFFFFFFFFFFh
                and     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                xor     rcx, rdx
                mov     [rsi+18h], rcx
                lock and [rsi+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140275AE9
                test    al, 1
                jz      short loc_140275AE9
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140275AE9
                cmp     bl, 0Fh
                ja      short loc_140275AE9
                cmp     al, 2
                jb      short loc_140275AE9
                mov     r10, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140275AE9
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140275AE9:                          ; CODE XREF: sub_140274000+1A99↑j
                                        ; sub_140274000+1A9D↑j ...
                movzx   eax, bl
                mov     cr8, rax
                test    r12b, 1
                jz      short loc_140275B24
                lea     rcx, [rsp+1C8h+var_188]
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rdx, 0FFFFFFFFFh
                and     rdx, rax
                mov     r8d, 20000001h
                mov     rcx, r15
                call    sub_140280E60
                mov     rcx, rax
                jmp     short loc_140275B40
; ---------------------------------------------------------------------------

loc_140275B24:                          ; CODE XREF: sub_140274000+1AF4↑j
                test    byte ptr [rsp+1C8h+var_18C], 4
                mov     rcx, [rsp+1C8h+var_188]
                jz      short loc_140275B40
                test    cl, 42h
                jnz     short loc_140275B40
                bt      rcx, 0Bh
                jnb     short loc_140275B40
                or      rcx, 42h

loc_140275B40:                          ; CODE XREF: sub_140274000+1B22↑j
                                        ; sub_140274000+1B2E↑j ...
                movzx   eax, byte ptr cs:word_140C4DE88
                and     rcx, 0FFFFFFFFFFFFFEFBh
                and     eax, 1
                mov     ebx, 1
                shl     rax, 8
                or      rax, rcx
                jmp     loc_140275820
; ---------------------------------------------------------------------------

loc_140275B62:                          ; CODE XREF: sub_140274000+18A0↑j
                mov     [rsp+1C8h+var_180], r15
                mov     r10, 0FFFFFFFFFh
                jmp     loc_14027442C
; ---------------------------------------------------------------------------

loc_140275B76:                          ; CODE XREF: sub_140274000+43E↑j
                cmp     [rsp+1C8h+var_198], 11h
                jz      loc_140275E25
                mov     [rsp+1C8h+var_13C], edi
                lock bts qword ptr [r13+18h], 3Fh ; '?'
                jnb     short loc_140275BB0

loc_140275B91:                          ; CODE XREF: sub_140274000+1BA5↓j
                                        ; sub_140274000+1BAE↓j
                lea     rcx, [rsp+1C8h+var_13C]
                call    sub_1402C8C70
                mov     rax, [r13+18h]
                test    rax, rax
                js      short loc_140275B91
                lock bts qword ptr [r13+18h], 3Fh ; '?'
                jb      short loc_140275B91

loc_140275BB0:                          ; CODE XREF: sub_140274000+1B8F↑j
                movzx   eax, byte ptr [r13+22h]
                and     al, 0DFh
                mov     [r13+22h], al
                movzx   ebx, word ptr [r13+20h]
                test    bx, bx
                jz      loc_140275E86
                sub     bx, 1
                mov     [r13+20h], bx
                jnz     short loc_140275BE4
                mov     rcx, r13
                call    sub_1402303F0
                test    eax, eax
                jnz     loc_140275D73

loc_140275BE4:                          ; CODE XREF: sub_140274000+1BD2↑j
                mov     rcx, r13
                call    sub_140275EA0
                test    eax, eax
                jz      loc_140275DA9
                mov     r9, 0FFFFF68000000000h
                mov     rax, r9
                mov     rdx, [r13+8]
                mov     r8, 3FFFFFFF78h
                add     r8, rax
                mov     rax, 8000000000000000h
                or      rdx, rax
                cmp     rdx, r8
                ja      short loc_140275C2C
                mov     rax, r9
                cmp     rdx, rax
                jnb     short loc_140275C40

loc_140275C2C:                          ; CODE XREF: sub_140274000+1C22↑j
                movzx   eax, byte ptr [r13+23h]
                test    al, 20h
                jz      short loc_140275C40
                and     al, 0DFh
                mov     [r13+23h], al
                jmp     loc_140275D6E
; ---------------------------------------------------------------------------

loc_140275C40:                          ; CODE XREF: sub_140274000+1C2A↑j
                                        ; sub_140274000+1C33↑j
                mov     rcx, r13
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_140275C62
                mov     eax, [r13+10h]
                bt      rax, 0Ah
                jnb     short loc_140275C62
                mov     r14d, 1
                mov     r12d, r14d
                jmp     short loc_140275CA8
; ---------------------------------------------------------------------------

loc_140275C62:                          ; CODE XREF: sub_140274000+1C4A↑j
                                        ; sub_140274000+1C55↑j
                cmp     rdx, r8
                ja      short loc_140275C81
                mov     rax, r9
                cmp     rdx, rax
                jb      short loc_140275C81
                test    byte ptr [r13+23h], 20h
                jz      short loc_140275C81
                mov     r14d, 1
                mov     r12d, r14d
                jmp     short loc_140275CA8
; ---------------------------------------------------------------------------

loc_140275C81:                          ; CODE XREF: sub_140274000+1C65↑j
                                        ; sub_140274000+1C6D↑j ...
                mov     r14d, 1
                test    bx, bx
                jnz     short loc_140275CA5
                mov     rax, [r13+18h]
                shr     rax, 3Eh
                test    r14b, al
                cmovnz  edi, r14d
                mov     [rsp+1C8h+var_150], rdi
                mov     r12d, edi
                jmp     short loc_140275CA8
; ---------------------------------------------------------------------------

loc_140275CA5:                          ; CODE XREF: sub_140274000+1C8A↑j
                xor     r12d, r12d

loc_140275CA8:                          ; CODE XREF: sub_140274000+1C60↑j
                                        ; sub_140274000+1C7F↑j ...
                mov     rcx, [r13+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rdi, [rax+rcx*8]
                cmp     r12d, 1
                jnz     short loc_140275CD2
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14026B700

loc_140275CD2:                          ; CODE XREF: sub_140274000+1CC5↑j
                lea     rax, unk_140C50C00
                cmp     rdi, rax
                jnz     loc_140275D60
                mov     r8, gs:20h
                mov     r9d, 0FFFFFFFFh
                movsxd  rdx, dword ptr [r8+831Ch]
                cmp     edx, r9d
                jz      short loc_140275D60
                lea     rax, [rdx+1]
                cmp     rax, 100h
                ja      short loc_140275D34
                nop     dword ptr [rax+00000000h]

loc_140275D10:                          ; CODE XREF: sub_140274000+1D32↓j
                lea     ecx, [rdx+1]
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_140275D69
                cmp     edx, r9d
                jz      short loc_140275D34
                lea     rax, [rdx+1]
                cmp     rax, 100h
                jbe     short loc_140275D10

loc_140275D34:                          ; CODE XREF: sub_140274000+1D07↑j
                                        ; sub_140274000+1D26↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_140275D5B
                cmp     edx, r9d
                jz      short loc_140275D5B
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                jnz     short loc_140275D5B
                lea     eax, [rdx-0C0h]
                movsxd  r14, eax
                inc     r14

loc_140275D5B:                          ; CODE XREF: sub_140274000+1D3B↑j
                                        ; sub_140274000+1D40↑j ...
                test    r14, r14
                jz      short loc_140275D69

loc_140275D60:                          ; CODE XREF: sub_140274000+1CDC↑j
                                        ; sub_140274000+1CFB↑j
                lock xadd [rdi+1C00h], r14

loc_140275D69:                          ; CODE XREF: sub_140274000+1D21↑j
                                        ; sub_140274000+1D5E↑j
                mov     r12d, [rsp+1C8h+var_194]

loc_140275D6E:                          ; CODE XREF: sub_140274000+1C3B↑j
                test    bx, bx
                jnz     short loc_140275DA9

loc_140275D73:                          ; CODE XREF: sub_140274000+1BDE↑j
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                mov     rcx, r13
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                mov     rcx, r13
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                call    sub_140278860

loc_140275DA9:                          ; CODE XREF: sub_140274000+1BEE↑j
                                        ; sub_140274000+1D71↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r13+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140275E19
                test    al, 1
                jz      short loc_140275E19
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140275E19
                movzx   ebx, [rsp+1C8h+var_198]
                cmp     bl, 0Fh
                ja      short loc_140275E1E
                cmp     al, 2
                jb      short loc_140275E1E
                mov     r9, gs:20h
                mov     rax, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ebx, [rsp+1C8h+var_198]
                lea     ecx, [rbx+1]
                shl     rax, cl
                movzx   eax, ax
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140275E1E
                mov     rcx, r9
                call    sub_1403F2EC4
                jmp     short loc_140275E1E
; ---------------------------------------------------------------------------

loc_140275E19:                          ; CODE XREF: sub_140274000+1DC0↑j
                                        ; sub_140274000+1DC4↑j ...
                movzx   ebx, [rsp+1C8h+var_198]

loc_140275E1E:                          ; CODE XREF: sub_140274000+1DD6↑j
                                        ; sub_140274000+1DDA↑j ...
                movzx   eax, bl
                mov     cr8, rax

loc_140275E25:                          ; CODE XREF: sub_140274000+1B7B↑j
                test    r12d, r12d
                jz      short loc_140275E4A
                mov     edx, r12d
                mov     r9, rsi
                shl     rdx, 3
                mov     r8d, r12d
                sub     r15, rdx
                lea     rdx, [rsp+1C8h+var_C8]
                mov     rcx, r15
                call    sub_140271600

loc_140275E4A:                          ; CODE XREF: sub_140274000+1E28↑j
                mov     rax, [rsp+1C8h+var_E8]
                test    rax, rax
                jz      short loc_140275E5E
                movzx   ecx, [rsp+1C8h+var_190]
                mov     [rax], cl

loc_140275E5E:                          ; CODE XREF: sub_140274000+1E55↑j
                mov     eax, [rsp+1C8h+var_178]
                mov     rcx, [rsp+1C8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 190h
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

loc_140275E86:                          ; CODE XREF: sub_140274000+1BC3↑j
                mov     rcx, r13
                call    sub_1403F41EC
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140274000
sub_140274000   endp

algn_140275E8F:                         ; DATA XREF: .pdata:00000001400CE5EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140275EA0   proc near               ; CODE XREF: sub_14022FC80+515↑p
                                        ; sub_140274000+C22↑p ...
                mov     rax, [rcx+28h]
                mov     rdx, 1000000000h
                test    rdx, rax
                jnz     short loc_140275F1B
                mov     rdx, 2000000000000h
                test    rdx, rax
                jnz     short loc_140275F1B
                mov     rax, [rcx+18h]
                mov     rdx, 3FFFFFFFFFFFFFFFh
                movzx   r8d, word ptr [rcx+20h]
                and     rax, rdx
                xor     edx, edx
                test    r8w, r8w
                jz      short loc_140275EF2
                cmp     r8w, 1
                jnz     short loc_140275EFB
                test    rax, rax
                jnz     short loc_140275EF2
                test    byte ptr [rcx+22h], 8
                jz      short loc_140275F17

loc_140275EF2:                          ; CODE XREF: sub_140275EA0+3E↑j
                                        ; sub_140275EA0+4A↑j
                mov     edx, 1
                mov     eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140275EFB:                          ; CODE XREF: sub_140275EA0+45↑j
                cmp     r8w, 2
                jnz     short loc_140275F17
                test    rax, rax
                jz      short loc_140275F17
                test    byte ptr [rcx+22h], 8
                mov     ecx, edx
                mov     edx, 1
                cmovnz  ecx, edx
                mov     edx, ecx

loc_140275F17:                          ; CODE XREF: sub_140275EA0+50↑j
                                        ; sub_140275EA0+60↑j ...
                mov     eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140275F1B:                          ; CODE XREF: sub_140275EA0+11↑j
                                        ; sub_140275EA0+20↑j
                xor     eax, eax
                retn
sub_140275EA0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140275F1F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400CE5F8↑o

; =============== S U B R O U T I N E =======================================


sub_140275F30   proc near               ; CODE XREF: sub_14065D330+11F↓p
                                        ; DATA XREF: .rdata:000000014005DC88↑o ...

var_58          = qword ptr -58h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140418980 SIZE 0000001A BYTES
; FUNCTION CHUNK AT 0000000140442752 SIZE 00000076 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                movzx   r15d, r9b
                mov     ebx, r8d
                mov     r14, rdx
                mov     r12, rcx
                xor     edi, edi
                mov     [rax-48h], edi
                mov     r13d, edi
                mov     [rax-38h], rdi
                mov     ecx, edi
                mov     [rsp+78h+var_40], rcx
                mov     [rax+20h], edi
                test    r9b, r9b
                jnz     loc_140442752

loc_140275F74:                          ; CODE XREF: sub_140275F30+9F↓j
                                        ; sub_140275F30+1CC84F↓j ...
                test    ebx, ebx
                jz      short loc_140275FE6
                cmp     ebx, 40000h
                jnb     loc_14027600C
                mov     esi, ebx

loc_140275F86:                          ; CODE XREF: sub_140275F30+E1↓j
                test    r15b, r15b
                jnz     loc_140442791

loc_140275F8F:                          ; DATA XREF: .rdata:000000014005DC74↑o
;   __try { // __except at loc_140275F9F
                mov     r8d, esi
                mov     rdx, r14
                mov     rcx, r12
                call    memmove
                jmp     short loc_140275FB7
;   } // starts at 140275F8F
; ---------------------------------------------------------------------------

loc_140275F9F:                          ; DATA XREF: .rdata:000000014005DC74↑o
;   __except(loc_140418980) // owned by 140275F8F
                mov     ebx, [rsp+78h+var_48]
                cmp     ebx, 0C0000005h
                jnz     short loc_140275FD1
                mov     edi, 0C00000E8h

loc_140275FB0:                          ; CODE XREF: sub_140275F30+B4↓j
                mov     r13, [rsp+78h+var_38]
                jmp     short loc_140275FE6
; ---------------------------------------------------------------------------

loc_140275FB7:                          ; CODE XREF: sub_140275F30+6D↑j
                                        ; sub_140275F30+1CC870↓j
                sub     ebx, esi
                mov     eax, esi
                add     r12, rax
                mov     rcx, [rsp+78h+var_40]
                test    r15b, r15b
                jnz     loc_1404427A5
                add     r14, rax
                jmp     short loc_140275F74
; ---------------------------------------------------------------------------

loc_140275FD1:                          ; CODE XREF: sub_140275F30+79↑j
                mov     ecx, ebx
                call    FsRtlIsNtstatusExpected
                mov     ecx, 0C00000E9h
                test    al, al
                cmovz   ebx, ecx
                mov     edi, ebx
                jmp     short loc_140275FB0
; ---------------------------------------------------------------------------

loc_140275FE6:                          ; CODE XREF: sub_140275F30+46↑j
                                        ; sub_140275F30+85↑j ...
                test    r13, r13
                jnz     loc_1404427B2

loc_140275FEF:                          ; CODE XREF: sub_140275F30+1CC893↓j
                mov     eax, edi
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14027600C:                          ; CODE XREF: sub_140275F30+4E↑j
                mov     esi, 40000h
                jmp     loc_140275F86
; } // starts at 140275F30
sub_140275F30   endp

; ---------------------------------------------------------------------------
algn_140276016:                         ; DATA XREF: .rdata:000000014005DC88↑o
                                        ; .pdata:00000001400CE604↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0A0h

sub_140276020   proc near               ; CODE XREF: sub_1406E4C50+56↓p
                                        ; MmResetDriverPaging+A0↓p ...

var_180         = qword ptr -180h
var_170         = byte ptr -170h
var_16F         = byte ptr -16Fh
var_16C         = dword ptr -16Ch
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = dword ptr -158h
var_154         = dword ptr -154h
var_150         = qword ptr -150h
var_148         = dword ptr -148h
var_144         = dword ptr -144h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_100         = dword ptr -100h
var_FC          = word ptr -0FCh
var_FA          = word ptr -0FAh
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
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
                lea     rbp, [rsp-70h]
                sub     rsp, 170h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0A0h+var_40], rax
                xorps   xmm0, xmm0
                mov     [rsp+1A0h+var_16C], r9d
                xor     eax, eax
                mov     [rsp+1A0h+var_130], r8
                mov     [rbp+0A0h+var_FA], ax
                mov     rdi, r8
                mov     [rbp+0A0h+var_50], rax
                mov     r12, rdx
                mov     rax, 0FFFFF68000000000h
                mov     r15, rcx
                mov     [rbp+0A0h+var_110], rdx
                mov     [rsp+1A0h+var_128], rcx
                movups  [rbp+0A0h+var_E0], xmm0
                movups  [rbp+0A0h+var_D0], xmm0
                movups  [rbp+0A0h+var_C0], xmm0
                movups  [rbp+0A0h+var_B0], xmm0
                movups  [rbp+0A0h+var_A0], xmm0
                movups  [rbp+0A0h+var_90], xmm0
                movups  [rbp+0A0h+var_80], xmm0
                movups  [rbp+0A0h+var_70], xmm0
                movups  [rbp+0A0h+var_60], xmm0
                mov     rax, rax
                shl     rax, 19h
                mov     rbx, rdx
                shl     rbx, 19h
                sub     rbx, rax
                mov     [rbp+0A0h+var_118], rax
                sar     rbx, 10h
                mov     rcx, rbx
                call    sub_140260090
                test    eax, eax
                jnz     loc_140276A8E
                mov     sil, 1
                xor     r13d, r13d
                mov     rcx, rbx
                mov     [rsp+1A0h+var_170], sil
                mov     [rsp+1A0h+var_154], r13d
                call    sub_140245330
                cmp     eax, 1
                jnz     short loc_14027611F
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+558h]
                mov     [rsp+1A0h+var_138], rdx
                call    sub_1402642FC
                mov     r13d, 2
                mov     [rsp+1A0h+var_150], rax
                mov     [rsp+1A0h+var_154], r13d
                mov     r14, rax
                xor     ebx, ebx
                jmp     short loc_140276149
; ---------------------------------------------------------------------------

loc_14027611F:                          ; CODE XREF: sub_140276020+C5↑j
                xor     ebx, ebx
                mov     [rsp+1A0h+var_138], rbx
                cmp     eax, 6
                jnz     short loc_14027613D
                lea     ecx, [rbx+2]
                call    sub_1402A46FC
                mov     r14, rax
                mov     [rsp+1A0h+var_150], rax
                jmp     short loc_140276149
; ---------------------------------------------------------------------------

loc_14027613D:                          ; CODE XREF: sub_140276020+109↑j
                lea     r14, unk_140C4EFC0
                mov     [rsp+1A0h+var_150], r14

loc_140276149:                          ; CODE XREF: sub_140276020+FD↑j
                                        ; sub_140276020+11B↑j
                xor     cl, cl
                mov     edx, 1
                mov     [rsp+1A0h+var_158], ecx
                test    r15, r15
                jz      short loc_140276179
                cmp     r13d, 2
                jnz     short loc_140276179
                test    dword ptr [r15+68h], 8000000h
                jnz     short loc_140276179
                test    byte ptr cs:dword_140CFB174, dl
                movzx   ecx, cl
                cmovnz  ecx, edx
                mov     [rsp+1A0h+var_158], ecx

loc_140276179:                          ; CODE XREF: sub_140276020+137↑j
                                        ; sub_140276020+13D↑j ...
                mov     rdx, rdi
                mov     rcx, r12
                call    sub_1406EB650
                mov     rcx, r14
                mov     [rsp+1A0h+var_168], 0FFFFFFFFFFFFFFFFh
                mov     [rbp+0A0h+var_F8], 14h
                mov     r15, rbx
                mov     [rbp+0A0h+var_100], r13d
                mov     [rbp+0A0h+var_FC], 0
                mov     [rbp+0A0h+var_F0], rbx
                mov     [rbp+0A0h+var_E8], rbx
                mov     [rsp+1A0h+var_160], rbx
                call    sub_140231340
                movzx   edi, al
                mov     [rsp+1A0h+var_16F], al

loc_1402761BE:                          ; CODE XREF: sub_140276020+9FD↓j
                mov     r8, 0FFFFFA8000000000h
                mov     r10, 1000000000h
                mov     r11, 0FFFFF6FB7DBED7F8h
                mov     r9, 0FFFFFFFFFh
                mov     rcx, 0FFFFF6FB7DBED000h
                mov     rbx, 7FFFFFFFF8h
                test    r15, r15
                jz      short loc_14027621C
                test    r12, 0FFFh
                jnz     short loc_14027627B
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40

loc_14027621C:                          ; CODE XREF: sub_140276020+1DD↑j
                mov     r15, r12
                mov     rax, 0FFFFF68000000000h
                shr     r15, 9
                and     r15, rbx
                mov     rax, rax
                add     r15, rax
                xor     r8d, r8d
                mov     rdx, r15
                mov     [rsp+1A0h+var_160], r15
                mov     rcx, r14
                call    sub_140225CC0
                mov     r11, 0FFFFF6FB7DBED7F8h
                mov     r9, 0FFFFFFFFFh
                mov     rcx, 0FFFFF6FB7DBED000h
                mov     r10, 1000000000h
                mov     r8, 0FFFFFA8000000000h

loc_14027627B:                          ; CODE XREF: sub_140276020+1E6↑j
                mov     rbx, [r12]
                mov     rax, rcx
                cmp     r12, rax
                jb      short loc_1402762F9
                mov     rax, r11
                cmp     r12, rax
                ja      short loc_1402762F9
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402762EF
                test    bl, 1
                jz      short loc_1402762EF
                test    bl, 20h
                jz      short loc_1402762A7
                test    bl, 42h
                jnz     short loc_1402762EF

loc_1402762A7:                          ; CODE XREF: sub_140276020+280↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1402762EF
                mov     rax, r12
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
                jz      short loc_1402762EF
                or      rbx, 42h

loc_1402762EF:                          ; CODE XREF: sub_140276020+276↑j
                                        ; sub_140276020+27B↑j ...
                mov     rcx, 0FFFFF6FB7DBED000h

loc_1402762F9:                          ; CODE XREF: sub_140276020+265↑j
                                        ; sub_140276020+26D↑j
                mov     r13, r12
                mov     [rsp+1A0h+var_140], rbx
                shl     r13, 19h
                sub     r13, [rbp+0A0h+var_118]
                sar     r13, 10h
                test    bl, 1
                jnz     short loc_14027635F
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40
                movzx   edx, dil
                mov     rcx, r14
                call    sub_140226960
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, r13
                xor     ecx, ecx
                call    sub_140224260
                test    eax, eax
                js      loc_140276AB8
                xor     r15d, r15d
                mov     rcx, r14
                mov     [rsp+1A0h+var_160], r15
                call    sub_140231340
                jmp     loc_140276A0D
; ---------------------------------------------------------------------------

loc_14027635F:                          ; CODE XREF: sub_140276020+2F0↑j
                mov     rax, rcx
                lea     rcx, [rsp+1A0h+var_140]
                cmp     rcx, rax
                jb      short loc_1402763D5
                mov     rax, r11
                lea     rcx, [rsp+1A0h+var_140]
                cmp     rcx, rax
                ja      short loc_1402763D5
                mov     rsi, rbx
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402763D8
                test    bl, 20h
                jz      short loc_14027638F
                test    bl, 42h
                jnz     short loc_1402763D8

loc_14027638F:                          ; CODE XREF: sub_140276020+368↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1402763D8
                or      rsi, 20h
                lea     rax, [rsp+1A0h+var_140]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rsi, rbx
                test    al, 42h
                jz      short loc_1402763D8
                or      rsi, 42h
                jmp     short loc_1402763D8
; ---------------------------------------------------------------------------

loc_1402763D5:                          ; CODE XREF: sub_140276020+34A↑j
                                        ; sub_140276020+357↑j
                mov     rsi, rbx

loc_1402763D8:                          ; CODE XREF: sub_140276020+363↑j
                                        ; sub_140276020+36D↑j ...
                shr     rsi, 0Ch
                and     rsi, r9
                lea     rdi, [rsi+rsi*2]
                shl     rdi, 4
                mov     rax, r8
                add     rdi, rax
                mov     rdx, [rdi+28h]
                test    r10, rdx
                jnz     short loc_140276461
                mov     rax, [rdi+8]
                test    rax, rax
                js      short loc_140276461
                jz      short loc_140276461
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                xor     r9d, r9d
                mov     rdx, r12
                mov     rcx, r13
                lea     r8, [r9-1]
                call    sub_1402C50E0
                mov     ebx, eax
                test    eax, eax
                jns     loc_140276A03
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40
                movzx   edi, [rsp+1A0h+var_16F]
                mov     rcx, r14
                movzx   edx, dil
                call    sub_140226960
                mov     edx, ebx
                mov     rcx, r14
                call    sub_14055C0F8
                xor     r15d, r15d
                mov     rcx, r14
                mov     [rsp+1A0h+var_160], r15
                call    sub_140231340
                jmp     loc_140276A08
; ---------------------------------------------------------------------------

loc_140276461:                          ; CODE XREF: sub_140276020+3D4↑j
                                        ; sub_140276020+3DD↑j ...
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_1402764D6
                cmp     [rsp+1A0h+var_138], 0
                jz      short loc_14027647C
                cmp     byte ptr [rsp+1A0h+var_158], 1
                jnz     short loc_1402764D6

loc_14027647C:                          ; CODE XREF: sub_140276020+453↑j
                mov     r10d, [rsp+1A0h+var_16C]
                test    r10b, 1
                jz      short loc_1402764DB
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40
                movzx   edi, [rsp+1A0h+var_16F]
                mov     rcx, r14
                movzx   edx, dil
                call    sub_140226960
                xor     r9d, r9d

loc_1402764AF:                          ; CODE XREF: sub_140276020+4F4↓j
                mov     r8, [rsp+1A0h+var_130]
                mov     rdx, r12
                mov     rcx, [rsp+1A0h+var_128]
                call    sub_1402FE404
                xor     r15d, r15d
                mov     rcx, r14
                mov     [rsp+1A0h+var_160], r15
                call    sub_140231340
                jmp     loc_140276A08
; ---------------------------------------------------------------------------

loc_1402764D6:                          ; CODE XREF: sub_140276020+44B↑j
                                        ; sub_140276020+45A↑j
                mov     r10d, [rsp+1A0h+var_16C]

loc_1402764DB:                          ; CODE XREF: sub_140276020+465↑j
                bt      rbx, 0Bh
                jb      short loc_140276516
                bt      rbx, 9
                jnb     short loc_140276516
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40
                movzx   edi, [rsp+1A0h+var_16F]
                mov     rcx, r14
                movzx   edx, dil
                call    sub_140226960
                mov     r9d, 1
                jmp     short loc_1402764AF
; ---------------------------------------------------------------------------

loc_140276516:                          ; CODE XREF: sub_140276020+4C0↑j
                                        ; sub_140276020+4C7↑j
                mov     rax, cs:qword_140C4E4C8
                mov     r8, r13
                shr     rdx, 27h
                xor     ebx, ebx
                and     edx, 3FFh
                shr     r8, 9
                mov     r9, [rax+rdx*8]
                mov     rax, 7FFFFFFFF8h
                and     r8, rax
                mov     [rbp+0A0h+var_120], r9
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     r8, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rdx, [r8]
                mov     rax, rax
                cmp     r8, rax
                jb      short loc_1402765D1
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_1402765D1
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402765D1
                test    dl, 1
                jz      short loc_1402765D1
                test    dl, 20h
                jz      short loc_14027658A
                test    dl, 42h
                jnz     short loc_1402765D1

loc_14027658A:                          ; CODE XREF: sub_140276020+563↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_1402765D1
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_1402765D1
                or      rdx, 42h

loc_1402765D1:                          ; CODE XREF: sub_140276020+548↑j
                                        ; sub_140276020+550↑j ...
                mov     rax, [rsp+1A0h+var_168]
                mov     r15, rdx
                shr     r15, 3Ch
                and     r15b, 7
                shr     rdx, 38h
                shl     r15b, 4
                and     dl, 0Fh
                or      r15b, dl
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14027663B
                lea     rcx, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                add     rcx, rax
                mov     rax, cs:qword_140C4E4C8
                mov     rdx, [rcx+28h]
                shr     rdx, 27h
                and     edx, 3FFh
                cmp     r9, [rax+rdx*8]
                jz      short loc_140276653
                call    sub_140300264
                mov     r10d, [rsp+1A0h+var_16C]
                mov     [rsp+1A0h+var_168], 0FFFFFFFFFFFFFFFFh

loc_14027663B:                          ; CODE XREF: sub_140276020+5D3↑j
                test    r10b, 2
                jz      loc_14027675D
                movzx   eax, r15b
                and     al, 0Fh
                cmp     al, 9
                jnz     loc_140276768

loc_140276653:                          ; CODE XREF: sub_140276020+606↑j
                                        ; sub_140276020+742↓j ...
                mov     [rsp+1A0h+var_148], ebx
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_140276681

loc_140276660:                          ; CODE XREF: sub_140276020+651↓j
                                        ; sub_140276020+65A↓j
                lea     rcx, [rsp+1A0h+var_148]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140276660
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140276660
                mov     r10d, [rsp+1A0h+var_16C]

loc_140276681:                          ; CODE XREF: sub_140276020+63E↑j
                mov     r9, [rsp+1A0h+var_168]
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      loc_140276881
                test    r10b, 2
                jz      loc_140276881
                mov     rdx, r13
                call    sub_1402DECC0
                movzx   ecx, al
                movzx   r15d, al
                and     cl, 0Fh
                cmp     cl, 9
                jz      loc_140276881
                mov     rcx, rdi
                call    sub_1402303F0
                test    eax, eax
                jnz     loc_140276881
                mov     rcx, rdi
                call    sub_1402D9900
                test    eax, eax
                jnz     loc_140276881
                mov     rax, r9
                and     esi, 1FFh
                and     eax, 1FFh
                cmp     rsi, rax
                jnb     loc_140276881
                lea     r14, [r9+r9*2]
                mov     rax, 0FFFFFA8000000000h
                shl     r14, 4
                mov     rax, rax
                add     r14, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                mov     r8, [rdi+8]
                mov     rax, 8000000000000000h
                mov     rcx, rdi
                or      r8, rax
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_1402767F0
                mov     eax, [rdi+10h]
                bt      rax, 0Ah
                jnb     loc_1402767F0
                xor     edx, edx
                mov     rcx, r8
                call    sub_140299CD0
                mov     rsi, rax
                test    rax, rax
                jz      loc_14027683A
                jmp     loc_1402767F5
; ---------------------------------------------------------------------------

loc_14027675D:                          ; CODE XREF: sub_140276020+61F↑j
                cmp     word ptr [rdi+20h], 1
                jnz     loc_140276653

loc_140276768:                          ; CODE XREF: sub_140276020+62D↑j
                mov     rcx, cs:qword_140C4CB70
                mov     rax, rsi
                and     ecx, 1FFh
                and     eax, 1FFh
                cmp     rax, rcx
                jnb     loc_140276653
                mov     rcx, rdi
                call    sub_1402D9900
                test    eax, eax
                jnz     loc_140276653
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                mov     rdx, [rsp+1A0h+var_160]
                mov     rcx, r14
                call    sub_140312B40
                movzx   edx, [rsp+1A0h+var_16F]
                mov     rcx, r14
                call    sub_140226960
                mov     rcx, [rbp+0A0h+var_120]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_1406A709C
                xor     r15d, r15d
                mov     [rsp+1A0h+var_168], rax
                mov     rcx, r14
                mov     [rsp+1A0h+var_160], r15
                mov     rbx, rax
                call    sub_140231340
                movzx   esi, [rsp+1A0h+var_170]
                movzx   edi, al
                mov     [rsp+1A0h+var_16F], al
                jmp     loc_140276A12
; ---------------------------------------------------------------------------

loc_1402767F0:                          ; CODE XREF: sub_140276020+70E↑j
                                        ; sub_140276020+71C↑j
                mov     esi, 1

loc_1402767F5:                          ; CODE XREF: sub_140276020+738↑j
                xor     r9d, r9d
                mov     dword ptr [rsp+1A0h+var_180], 2
                mov     r8, r13
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1402E4A44
                cmp     eax, 1
                jnz     short loc_14027683A
                mov     rax, cs:qword_14001D278
                lea     rcx, [rdi+10h]
                mov     [rcx], rax
                call    sub_14027C660
                mov     rcx, rdi
                call    sub_140300264
                mov     rdi, r14
                mov     [rsp+1A0h+var_168], 0FFFFFFFFFFFFFFFFh

loc_14027683A:                          ; CODE XREF: sub_140276020+732↑j
                                        ; sub_140276020+7F1↑j
                cmp     rsi, 1
                jbe     short loc_14027684A
                mov     dl, 11h
                mov     rcx, rsi
                call    sub_140297330

loc_14027684A:                          ; CODE XREF: sub_140276020+81E↑j
                mov     [rsp+1A0h+var_144], ebx
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_14027687C
                nop     word ptr [rax+rax+00000000h]

loc_140276860:                          ; CODE XREF: sub_140276020+851↓j
                                        ; sub_140276020+85A↓j
                lea     rcx, [rsp+1A0h+var_144]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140276860
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140276860

loc_14027687C:                          ; CODE XREF: sub_140276020+835↑j
                mov     r14, [rsp+1A0h+var_150]

loc_140276881:                          ; CODE XREF: sub_140276020+66A↑j
                                        ; sub_140276020+674↑j ...
                mov     r9d, [rsp+1A0h+var_16C]
                test    r9b, 2
                jz      short loc_1402768A6
                and     r15b, 0Fh
                cmp     r15b, 9
                jz      short loc_1402768D6
                mov     r8, rdi
                mov     rdx, r12
                mov     rcx, r14
                call    sub_140354D98
                jmp     short loc_1402768D6
; ---------------------------------------------------------------------------

loc_1402768A6:                          ; CODE XREF: sub_140276020+86A↑j
                cmp     [rsp+1A0h+var_154], 2
                mov     rcx, rdi
                jnz     short loc_1402768C5
                xor     edx, edx
                call    sub_140299FD8
                test    eax, eax
                jnz     short loc_1402768D6
                xor     sil, sil
                mov     [rsp+1A0h+var_170], sil
                jmp     short loc_1402768DB
; ---------------------------------------------------------------------------

loc_1402768C5:                          ; CODE XREF: sub_140276020+88E↑j
                call    sub_140275EA0
                test    eax, eax
                jz      short loc_1402768D2
                or      byte ptr [rdi+23h], 20h

loc_1402768D2:                          ; CODE XREF: sub_140276020+8AC↑j
                inc     word ptr [rdi+20h]

loc_1402768D6:                          ; CODE XREF: sub_140276020+874↑j
                                        ; sub_140276020+884↑j ...
                movzx   esi, [rsp+1A0h+var_170]

loc_1402768DB:                          ; CODE XREF: sub_140276020+8A3↑j
                mov     eax, [rdi+10h]
                lea     rcx, [rdi+10h]
                bt      rax, 0Ah
                jb      short loc_14027690D
                movzx   eax, byte ptr [rdi+22h]
                test    al, 10h
                jnz     short loc_14027690D
                test    al, 8
                jnz     short loc_140276908
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    sub_140338C90
                mov     rbx, rax
                movzx   eax, byte ptr [rdi+22h]

loc_140276908:                          ; CODE XREF: sub_140276020+8D3↑j
                or      al, 10h
                mov     [rdi+22h], al

loc_14027690D:                          ; CODE XREF: sub_140276020+8C7↑j
                                        ; sub_140276020+8CF↑j
                mov     rdx, [r12]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r12, rax
                jb      short loc_140276995
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r12, rax
                ja      short loc_140276995
                call    sub_140349680
                test    eax, eax
                jz      short loc_140276995
                test    dl, 1
                jz      short loc_140276995
                test    dl, 20h
                jz      short loc_14027694D
                test    dl, 42h
                jnz     short loc_140276995

loc_14027694D:                          ; CODE XREF: sub_140276020+926↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140276995
                mov     rax, r12
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140276995
                or      rdx, 42h

loc_140276995:                          ; CODE XREF: sub_140276020+901↑j
                                        ; sub_140276020+913↑j ...
                bt      rdx, 0Bh
                jnb     short loc_1402769CA
                test    dl, 42h
                jnz     short loc_1402769CA
                xor     r8d, r8d
                mov     rcx, r12
                lea     edx, [r8+2]
                call    sub_1402C67E0
                mov     r15d, 1
                lea     rcx, [rbp+0A0h+var_100]
                mov     r8d, r15d
                xor     r9d, r9d
                mov     rdx, r13
                call    sub_1402882E0
                jmp     short loc_1402769D0
; ---------------------------------------------------------------------------

loc_1402769CA:                          ; CODE XREF: sub_140276020+97A↑j
                                        ; sub_140276020+97F↑j
                mov     r15d, 1

loc_1402769D0:                          ; CODE XREF: sub_140276020+9A8↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                test    rbx, rbx
                jz      short loc_1402769F3
                mov     rcx, [rbp+0A0h+var_120]
                mov     r8d, r15d
                mov     rdx, rbx
                call    sub_14020B2C0

loc_1402769F3:                          ; CODE XREF: sub_140276020+9C2↑j
                mov     r15, [rsp+1A0h+var_160]
                add     r12, 8
                movzx   edi, [rsp+1A0h+var_16F]
                jmp     short loc_140276A0D
; ---------------------------------------------------------------------------

loc_140276A03:                          ; CODE XREF: sub_140276020+400↑j
                movzx   edi, [rsp+1A0h+var_16F]

loc_140276A08:                          ; CODE XREF: sub_140276020+43C↑j
                                        ; sub_140276020+4B1↑j
                movzx   esi, [rsp+1A0h+var_170]

loc_140276A0D:                          ; CODE XREF: sub_140276020+33A↑j
                                        ; sub_140276020+9E1↑j
                mov     rbx, [rsp+1A0h+var_168]

loc_140276A12:                          ; CODE XREF: sub_140276020+7CB↑j
                cmp     r12, [rsp+1A0h+var_130]
                ja      short loc_140276A23
                cmp     sil, 1
                jz      loc_1402761BE

loc_140276A23:                          ; CODE XREF: sub_140276020+9F7↑j
                cmp     dil, 11h
                jz      short loc_140276A4E
                lea     rcx, [rbp+0A0h+var_100]
                call    sub_14028EDB0
                test    r15, r15
                jz      short loc_140276A42
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40

loc_140276A42:                          ; CODE XREF: sub_140276020+A15↑j
                movzx   edx, dil
                mov     rcx, r14
                call    sub_140226960

loc_140276A4E:                          ; CODE XREF: sub_140276020+A07↑j
                cmp     rbx, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140276A71
                lea     rcx, [rbx+rbx*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                add     rcx, rax
                call    sub_140300264

loc_140276A71:                          ; CODE XREF: sub_140276020+A32↑j
                test    sil, sil
                jnz     short loc_140276A8E
                mov     rcx, [rbp+0A0h+var_110]
                lea     rdx, [r12-10h]
                xor     r8d, r8d
                call    sub_1403A1040
                mov     eax, 0C000009Ah
                jmp     short loc_140276A90
; ---------------------------------------------------------------------------

loc_140276A8E:                          ; CODE XREF: sub_140276020+A4↑j
                                        ; sub_140276020+A54↑j
                xor     eax, eax

loc_140276A90:                          ; CODE XREF: sub_140276020+A6C↑j
                mov     rcx, [rbp+0A0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+1A0h+arg_10]
                add     rsp, 170h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140276AB8:                          ; CODE XREF: sub_140276020+324↑j
                cdqe
                mov     r9, rbx
                mov     r8, r13
                mov     [rsp+1A0h+var_180], rax
                mov     edx, 3000h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140276020
sub_140276020   endp

algn_140276AD5:                         ; DATA XREF: .pdata:00000001400CE610↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140276AE0   proc near               ; CODE XREF: sub_140283C30+28A↓p
                                        ; DATA XREF: .pdata:00000001400CE61C↑o

var_158         = dword ptr -158h
var_148         = byte ptr -148h
var_147         = byte ptr -147h
var_144         = dword ptr -144h
var_140         = dword ptr -140h
var_13C         = dword ptr -13Ch
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_124         = dword ptr -124h
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F8          = dword ptr -0F8h
var_F4          = dword ptr -0F4h
var_F0          = dword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001404189A0 SIZE 00000024 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 140h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+178h+var_40], rax
                mov     r12, r9
                mov     r13d, r8d
                mov     [rsp+178h+var_A8], rdx
                mov     [rsp+178h+var_110], rcx
                mov     rsi, [rsp+178h+arg_28]
                mov     [rsp+178h+var_C8], rsi
                mov     [rsp+178h+var_B8], rcx
                mov     [rsp+178h+var_B0], rsi
                mov     rax, [rsp+178h+arg_30]
                mov     [rsp+178h+var_C0], rax
                xor     r10d, r10d
                mov     [rsp+178h+var_13C], r10d
                mov     [rsp+178h+var_148], r10b
                xorps   xmm0, xmm0
                movups  [rsp+178h+var_78], xmm0
                movups  [rsp+178h+var_68], xmm0
                mov     [rax], r10d
                mov     r8, [rsi]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rsi, rax
                jb      loc_140276C15
                mov     rcx, 0FFFFF6FB7DBED7F8h
                mov     rax, rcx
                cmp     rsi, rax
                ja      short loc_140276C15
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140276C15
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_140276C15
                test    r8b, 1
                jz      short loc_140276C15
                test    r8b, 20h
                jz      short loc_140276BCD
                test    r8b, 42h
                jnz     short loc_140276C15

loc_140276BCD:                          ; CODE XREF: sub_140276AE0+E5↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140276C15
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                mov     rdx, r8
                or      rdx, 20h
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_140276C15
                or      r8, 42h

loc_140276C15:                          ; CODE XREF: sub_140276AE0+9E↑j
                                        ; sub_140276AE0+B4↑j ...
                mov     [rsp+178h+var_D0], r8
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140276C3B
                test    r8b, 10h
                jnz     short loc_140276C37
                not     rax
                and     r8, rax
                jmp     short loc_140276C3B
; ---------------------------------------------------------------------------

loc_140276C37:                          ; CODE XREF: sub_140276AE0+14D↑j
                and     r8, 0FFFFFFFFFFFFFFEFh

loc_140276C3B:                          ; CODE XREF: sub_140276AE0+147↑j
                                        ; sub_140276AE0+155↑j
                sar     r8, 10h
                mov     [rsp+178h+var_D8], r8
                mov     [rsp+178h+var_88], r8
                mov     rdx, [r8]
                mov     [rsp+178h+var_E0], rdx
                mov     [rsp+178h+var_90], rdx
                movzx   ecx, word ptr [rdx+3Ch]
                and     ecx, 3FFh
                mov     rax, cs:qword_140C4E4C8
                mov     rbx, [rax+rcx*8]
                mov     eax, [rdx+38h]
                shr     eax, 14h
                and     eax, 3Fh
                jz      short loc_140276C9B
                mov     r8, gs:20h
                lea     r9d, [rax-1]
                movzx   ecx, cs:byte_140C4DD0C
                shl     r9d, cl
                jmp     short loc_140276CC0
; ---------------------------------------------------------------------------

loc_140276C9B:                          ; CODE XREF: sub_140276AE0+1A0↑j
                mov     rax, gs:188h
                mov     ecx, [rax+24Ch]
                lea     rdi, cs:140000000h
                mov     r8, ds:rva qword_140CFDCC0[rdi+rcx*8]
                mov     r9d, [r8+7F18h]

loc_140276CC0:                          ; CODE XREF: sub_140276AE0+1B9↑j
                movzx   ecx, cs:byte_140C4DD0D
                mov     r14d, 1
                mov     eax, r14d
                shl     eax, cl
                dec     eax
                mov     edx, r14d
                lock xadd [r8+7F10h], edx
                and     edx, eax
                mov     r8d, r10d
                mov     r15d, 2
                cmp     r12, 1000h
                cmovnz  r8d, r15d
                or      edx, r9d
                mov     rcx, rbx
                call    sub_14022ACA0
                mov     [rsp+178h+var_108], rax
                mov     [rsp+178h+var_80], rax
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140276D24
                mov     rcx, rbx
                call    sub_14055C3FC
                mov     eax, r14d
                jmp     loc_140278401
; ---------------------------------------------------------------------------

loc_140276D24:                          ; CODE XREF: sub_140276AE0+232↑j
                lea     rcx, [rax+rax*2]
                add     rcx, rcx
                mov     rdi, 0FFFFFA8000000000h
                mov     rax, rdi
                lea     rdi, [rax+rcx*8]
                mov     [rsp+178h+var_138], rdi
                mov     [rsp+178h+var_A0], rdi
                mov     rsi, [rsi]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     r8, [rsp+178h+var_C8]
                cmp     r8, rax
                jb      loc_140276DFA
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                ja      short loc_140276DFA
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140276DFA
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rcx+390h], r14b
                jz      short loc_140276DFA
                test    r14b, sil
                jz      short loc_140276DFA
                test    sil, 20h
                jz      short loc_140276DB2
                test    sil, 42h
                jnz     short loc_140276DFA

loc_140276DB2:                          ; CODE XREF: sub_140276AE0+2CA↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140276DFA
                mov     rax, r8
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                mov     rdx, rsi
                or      rdx, 20h
                and     cl, 20h
                cmovz   rdx, rsi
                mov     rsi, rdx
                test    al, 42h
                jz      short loc_140276DFA
                or      rsi, 42h

loc_140276DFA:                          ; CODE XREF: sub_140276AE0+284↑j
                                        ; sub_140276AE0+29A↑j ...
                shr     rsi, 5
                and     esi, 1Fh
                mov     [rsp+178h+var_100], esi
                mov     ecx, esi
                mov     [rsp+178h+var_11C], ecx
                jnz     short loc_140276E14
                mov     ebx, 3
                jmp     short loc_140276E41
; ---------------------------------------------------------------------------

loc_140276E14:                          ; CODE XREF: sub_140276AE0+32B↑j
                cmp     esi, 1Fh
                jnz     short loc_140276E1E
                mov     ebx, r14d
                jmp     short loc_140276E41
; ---------------------------------------------------------------------------

loc_140276E1E:                          ; CODE XREF: sub_140276AE0+337↑j
                mov     eax, esi
                shr     eax, 3
                cmp     eax, 3
                jnz     short loc_140276E33
                test    sil, 7
                jz      short loc_140276E33
                mov     ebx, r15d
                jmp     short loc_140276E41
; ---------------------------------------------------------------------------

loc_140276E33:                          ; CODE XREF: sub_140276AE0+346↑j
                                        ; sub_140276AE0+34C↑j
                mov     ebx, r14d
                cmp     eax, r14d
                mov     eax, 0
                cmovz   ebx, eax

loc_140276E41:                          ; CODE XREF: sub_140276AE0+332↑j
                                        ; sub_140276AE0+33C↑j ...
                xor     ecx, ecx
                mov     r15d, ecx
                mov     edx, ecx
                mov     [rsp+178h+var_144], ecx
                mov     [rsp+178h+var_140], ecx
                cmp     r12, 1000h
                jz      short loc_140276E69
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_1402966A0
                test    eax, eax
                cmovnz  r15d, r14d

loc_140276E69:                          ; CODE XREF: sub_140276AE0+377↑j
                movzx   eax, byte ptr [rdi+22h]
                shr     eax, 6
                cmp     eax, ebx
                jz      short loc_140276E81
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14031F848

loc_140276E81:                          ; CODE XREF: sub_140276AE0+392↑j
                mov     rdx, [rdi+18h]
                mov     r8, 0F0FFFFFFFFFFFFFFh
                nop

loc_140276E90:                          ; CODE XREF: sub_140276AE0+1948↓j
                mov     rcx, rdx
                and     rcx, r8
                mov     rax, rdx
                lock cmpxchg [rdi+18h], rcx
                cmp     rdx, rax
                jnz     loc_140278425
                mov     edx, r14d
                lea     rcx, qword_140C4EDC0
                call    sub_1402583E0
                mov     r14, rax
                mov     [rsp+178h+var_98], rax
                test    rax, rax
                jnz     loc_140276FF3
                test    [rsp+178h+arg_20], 1
                jnz     short loc_140276EE6
                mov     rcx, rdi
                call    sub_140300264
                lea     eax, [r14+4]
                jmp     loc_140278401
; ---------------------------------------------------------------------------

loc_140276EE6:                          ; CODE XREF: sub_140276AE0+3F3↑j
                test    r15d, r15d
                jz      short loc_140276EFD
                mov     r8d, ebx
                mov     edx, 1
                mov     rcx, [rsp+178h+var_108]
                call    sub_1402E5704

loc_140276EFD:                          ; CODE XREF: sub_140276AE0+409↑j
                mov     [rsp+178h+var_144], 1
                mov     r12, 0FFFFFA8000000028h
                mov     r13, 4000000000000h
                mov     r15, 0FFFFF68000000000h

loc_140276F23:                          ; CODE XREF: sub_140276AE0+8BE↓j
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                and     eax, 1
                mov     [rsp+178h+var_140], eax
                mov     r14, [rsp+178h+var_110]
                shr     r14, 9
                mov     rax, 7FFFFFFFF8h
                and     r14, rax
                mov     rax, r15
                add     r14, rax
                mov     [rsp+178h+var_118], r14
                mov     r14, [r14]
                mov     [rsp+178h+var_130], r14
                and     r14d, 1
                nop     dword ptr [rax]

loc_140276F60:                          ; CODE XREF: sub_140276AE0+927↓j
                test    r14, r14
                jz      loc_1402783F2
                mov     rbx, [rsp+178h+var_130]
                bt      rbx, 9
                jb      loc_1402783F2
                lea     rcx, [rsp+178h+var_130]
                call    sub_1402433C0
                mov     r15d, eax
                test    eax, eax
                jz      loc_1402773DF
                test    cs:dword_140CFC400, 0C00000h
                jz      loc_1402773DF
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      loc_1402773DF
                test    bl, 20h
                jz      short loc_140276FC9
                test    bl, 42h
                jnz     loc_1402773DF

loc_140276FC9:                          ; CODE XREF: sub_140276AE0+4DE↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jnz     loc_1402773BD
                mov     rbx, [rsp+178h+var_130]
                jmp     loc_1402773DF
; ---------------------------------------------------------------------------

loc_140276FF3:                          ; CODE XREF: sub_140276AE0+3E5↑j
                mov     edx, 4
                mov     r11, 0FFFFFFFFFh
                mov     r10, [rsp+178h+var_108]
                cmp     r10, r11
                ja      short loc_14027705A
                lea     r8, [r10+r10*2]
                add     r8, r8
                mov     r9, 0FFFFFA8000000028h
                mov     rax, r9
                mov     r9, 4000000000000h
                test    [rax+r8*8], r9
                jz      short loc_14027705A
                mov     rax, 0FFFFFA8000000022h
                movzx   eax, byte ptr [rax+r8*8]
                shr     eax, 6
                test    eax, eax
                jz      short loc_140277055
                cmp     eax, 3
                jz      short loc_140277055
                cmp     eax, 2
                jnz     short loc_14027705A
                lea     edx, [rax+1Ah]
                jmp     short loc_14027705A
; ---------------------------------------------------------------------------

loc_140277055:                          ; CODE XREF: sub_140276AE0+564↑j
                                        ; sub_140276AE0+569↑j
                mov     edx, 0Ch

loc_14027705A:                          ; CODE XREF: sub_140276AE0+52A↑j
                                        ; sub_140276AE0+54E↑j ...
                or      edx, 0A0000000h
                and     edx, 1Fh
                lea     r8, cs:140000000h
                mov     rbx, ds:rva qword_140017520[r8+rdx*8]
                mov     rax, 0FFFF000000000E7Fh
                and     rbx, rax
                mov     rax, r10
                and     rax, r11
                shl     rax, 0Ch
                or      rbx, rax
                or      rbx, 21h
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                cmp     r14, rax
                jb      loc_1402771C9
                mov     r9, 0FFFFF6FFFFFFFFFFh
                mov     rax, r9
                cmp     r14, rax
                ja      loc_1402771C9
                mov     rdi, r14
                shl     rdi, 19h
                mov     rax, rdx
                shl     rax, 19h
                sub     rdi, rax
                sar     rdi, 10h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                cmp     r14, rax
                jb      short loc_140277148
                mov     rax, 0FFFFF6FB7FFFFFFFh
                cmp     r14, rax
                ja      short loc_140277148
                mov     rax, 0FFFFF6FB7DBEDF68h
                cmp     r14, rax
                jnz     short loc_140277110
                mov     rax, 8000000000000000h
                or      rbx, rax
                jmp     short loc_14027711D
; ---------------------------------------------------------------------------

loc_140277110:                          ; CODE XREF: sub_140276AE0+61F↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                and     rbx, rax

loc_14027711D:                          ; CODE XREF: sub_140276AE0+62E↑j
                mov     rcx, r14
                call    sub_14033FA34
                mov     rdx, 0FFFFF68000000000h
                lea     r8, cs:140000000h
                mov     r9, 0FFFFF6FFFFFFFFFFh
                test    eax, eax
                jz      short loc_140277148
                or      rbx, 4

loc_140277148:                          ; CODE XREF: sub_140276AE0+601↑j
                                        ; sub_140276AE0+610↑j ...
                mov     rax, rdx
                mov     rcx, 3FFFFFFF78h
                add     rax, rcx
                cmp     r14, rax
                ja      short loc_140277161
                or      rbx, 4

loc_140277161:                          ; CODE XREF: sub_140276AE0+67B↑j
                mov     rax, 0FFFF800000000000h
                cmp     rdi, rax
                jnb     short loc_140277179
                movzx   eax, byte ptr cs:word_140C4DE88+1
                jmp     short loc_1402771C5
; ---------------------------------------------------------------------------

loc_140277179:                          ; CODE XREF: sub_140276AE0+68E↑j
                mov     rax, rdi
                shr     rax, 27h
                and     eax, 1FFh
                add     eax, 0FFFFFF00h
                cmp     byte ptr [rax+r8+0C4F848h], 1
                jz      short loc_1402771CE
                mov     rax, rdx
                cmp     rdi, rax
                jb      short loc_1402771A5
                mov     rax, r9
                cmp     rdi, rax
                jbe     short loc_1402771CE

loc_1402771A5:                          ; CODE XREF: sub_140276AE0+6BB↑j
                cmp     rdi, cs:qword_140C4F9B8
                jb      short loc_1402771BE
                cmp     rdi, cs:qword_140C4E1E8
                movzx   eax, byte ptr cs:word_140C4DE88+1
                jbe     short loc_1402771C5

loc_1402771BE:                          ; CODE XREF: sub_140276AE0+6CC↑j
                movzx   eax, byte ptr cs:word_140C4DE88

loc_1402771C5:                          ; CODE XREF: sub_140276AE0+697↑j
                                        ; sub_140276AE0+6DC↑j
                test    eax, eax
                jz      short loc_1402771CE

loc_1402771C9:                          ; CODE XREF: sub_140276AE0+5C0↑j
                                        ; sub_140276AE0+5D6↑j
                bts     rbx, 8

loc_1402771CE:                          ; CODE XREF: sub_140276AE0+6B3↑j
                                        ; sub_140276AE0+6C3↑j ...
                movzx   edi, byte ptr cs:word_140C4DE88
                and     edi, 1
                shl     rdi, 8
                mov     rax, 0FAFFFFFFFFFFFEFFh
                and     rbx, rax
                or      rdi, rbx
                mov     rax, 0A00000000000042h
                or      rdi, rax
                xor     eax, eax
                mov     ebx, eax
                mov     rcx, r14
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027724B
                call    sub_140349680
                test    eax, eax
                jz      short loc_140277222
                mov     ebx, 1
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14027724B
                jmp     short loc_14027723E
; ---------------------------------------------------------------------------

loc_140277222:                          ; CODE XREF: sub_140276AE0+730↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027724B

loc_14027723E:                          ; CODE XREF: sub_140276AE0+740↑j
                mov     rax, 8000000000000000h
                or      rdi, rax

loc_14027724B:                          ; CODE XREF: sub_140276AE0+727↑j
                                        ; sub_140276AE0+73E↑j ...
                mov     [r14], rdi
                test    ebx, ebx
                jz      short loc_14027725D
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_140349620

loc_14027725D:                          ; CODE XREF: sub_140276AE0+770↑j
                mov     rcx, r14
                shl     rcx, 19h
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rbx, r13
                lea     rdi, [rcx+r13]
                test    r15d, r15d
                jz      short loc_1402772B0
                test    r13d, r13d
                jz      short loc_140277297
                mov     r8, rbx
                xor     edx, edx
                call    memset

loc_140277297:                          ; CODE XREF: sub_140276AE0+7AB↑j
                mov     r8d, 1000h
                sub     r8, rbx
                sub     r8, r12
                jz      short loc_1402772B0
                lea     rcx, [r12+rdi]
                xor     edx, edx
                call    memset

loc_1402772B0:                          ; CODE XREF: sub_140276AE0+7A6↑j
                                        ; sub_140276AE0+7C3↑j
                xor     ebx, ebx
                mov     [rsp+178h+var_13C], ebx

loc_1402772B6:                          ; DATA XREF: .rdata:000000014005DCEC↑o
;   __try { // __except at loc_1402772F4
                mov     r8, r12
                mov     rdx, [rsp+178h+var_A8]
                mov     rcx, rdi
                call    memmove
                mov     r12, 0FFFFFA8000000028h
                mov     r13, 4000000000000h
                mov     rdi, [rsp+178h+var_138]
                lea     eax, [rbx+1]
                mov     r15, 0FFFFF68000000000h
                jmp     loc_14027738A
;   } // starts at 1402772B6
; ---------------------------------------------------------------------------

loc_1402772F4:                          ; DATA XREF: .rdata:000000014005DCEC↑o
;   __except(loc_1404189A0) // owned by 1402772B6
                mov     eax, 1
                mov     r12, 0FFFFFA8000000028h
                mov     r13, 4000000000000h
                mov     r15, 0FFFFF68000000000h
                mov     ebx, [rsp+178h+var_13C]
                mov     rdi, [rsp+178h+var_A0]
                mov     [rsp+178h+var_138], rdi
                mov     r14, [rsp+178h+var_98]
                mov     rdx, [rsp+178h+var_90]
                mov     [rsp+178h+var_E0], rdx
                mov     edx, [rsp+178h+var_140]
                mov     [rsp+178h+var_144], edx
                mov     esi, [rsp+178h+var_100]
                mov     rcx, [rsp+178h+var_88]
                mov     [rsp+178h+var_D8], rcx
                mov     [rsp+178h+var_11C], esi
                mov     rcx, [rsp+178h+var_80]
                mov     [rsp+178h+var_108], rcx
                mov     rcx, [rsp+178h+var_B8]
                mov     [rsp+178h+var_110], rcx
                mov     r8, [rsp+178h+var_B0]
                mov     [rsp+178h+var_C8], r8

loc_14027738A:                          ; CODE XREF: sub_140276AE0+80F↑j
                mov     r8d, eax
                mov     rdx, r14
                lea     rcx, qword_140C4EDC0
                call    sub_14025EFB0
                test    ebx, ebx
                jns     loc_140276F23
                mov     rcx, rdi
                call    sub_1403B748C
                mov     rax, [rsp+178h+var_C0]
                mov     [rax], ebx
                xor     eax, eax
                jmp     loc_140278401
; ---------------------------------------------------------------------------

loc_1402773BD:                          ; CODE XREF: sub_140276AE0+503↑j
                lea     rax, [rsp+178h+var_130]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_1402773D7
                or      rbx, 20h

loc_1402773D7:                          ; CODE XREF: sub_140276AE0+8F1↑j
                test    al, 42h
                jz      short loc_1402773DF
                or      rbx, 42h

loc_1402773DF:                          ; CODE XREF: sub_140276AE0+4A8↑j
                                        ; sub_140276AE0+4B8↑j ...
                shr     rbx, 0Ch
                mov     r10, 0FFFFFFFFFh
                and     rbx, r10
                lea     rdx, [rbx+rbx*2]
                shl     rdx, 4
                mov     [rsp+178h+var_B8], rdx
                mov     rax, r12
                test    [rdx+rax], r13
                jz      loc_140276F60
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                lea     rdi, [rdx+rax]
                mov     r12, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140277471
                test    al, 1
                jz      short loc_140277471
                cmp     r12b, 0Fh
                ja      short loc_140277471
                mov     rax, gs:20h
                mov     r8, [rax+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, r12b
                inc     ecx
                mov     r14, 0FFFFFFFFFFFFFFFFh
                mov     rax, r14
                shl     rax, cl
                and     eax, 4
                or      edx, eax
                mov     [r8+14h], edx
                jmp     short loc_140277478
; ---------------------------------------------------------------------------

loc_140277471:                          ; CODE XREF: sub_140276AE0+953↑j
                                        ; sub_140276AE0+957↑j ...
                mov     r14, 0FFFFFFFFFFFFFFFFh

loc_140277478:                          ; CODE XREF: sub_140276AE0+98F↑j
                mov     [rsp+178h+var_FC], 0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_1402774B6
                nop     dword ptr [rax+00000000h]

loc_140277490:                          ; CODE XREF: sub_140276AE0+9C1↓j
                                        ; sub_140276AE0+9CA↓j
                lea     rcx, [rsp+178h+var_FC]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140277490
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140277490
                mov     r10, 0FFFFFFFFFh

loc_1402774B6:                          ; CODE XREF: sub_140276AE0+9A7↑j
                mov     r13, [rsp+178h+var_118]
                mov     rax, [r13+0]
                mov     [rsp+178h+var_130], rax
                test    al, 1
                jz      loc_140278382
                bt      rax, 9
                jb      loc_140278382
                test    r15d, r15d
                jz      short loc_140277551
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140277551
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_140277551
                test    al, 20h
                jz      short loc_140277509
                test    al, 42h
                jnz     short loc_140277551

loc_140277509:                          ; CODE XREF: sub_140276AE0+A23↑j
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                mov     r8, [rdx+788h]
                test    r8, r8
                jnz     short loc_14027752C
                mov     rax, [rsp+178h+var_130]
                jmp     short loc_140277551
; ---------------------------------------------------------------------------

loc_14027752C:                          ; CODE XREF: sub_140276AE0+A43↑j
                lea     rcx, [rsp+178h+var_130]
                shr     rcx, 3
                and     ecx, 1FFh
                mov     rcx, [r8+rcx*8]
                test    cl, 20h
                jz      short loc_140277548
                or      rax, 20h

loc_140277548:                          ; CODE XREF: sub_140276AE0+A62↑j
                test    cl, 42h
                jz      short loc_140277551
                or      rax, 42h

loc_140277551:                          ; CODE XREF: sub_140276AE0+9FA↑j
                                        ; sub_140276AE0+A06↑j ...
                shr     rax, 0Ch
                and     rax, r10
                cmp     rbx, rax
                jnz     loc_140278382
                mov     rcx, rdi
                call    sub_140275EA0
                test    eax, eax
                jz      loc_140277645
                xor     r10b, r10b
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_140277594
                mov     eax, [rdi+10h]
                bt      rax, 0Ah
                jnb     short loc_140277594
                mov     r14b, 1
                mov     ebx, 1
                jmp     short loc_1402775A8
; ---------------------------------------------------------------------------

loc_140277594:                          ; CODE XREF: sub_140276AE0+A9E↑j
                                        ; sub_140276AE0+AA8↑j
                call    sub_140279D40
                movzx   r14d, r10b
                test    eax, eax
                mov     ebx, 1
                cmovnz  r14d, ebx

loc_1402775A8:                          ; CODE XREF: sub_140276AE0+AB2↑j
                mov     rcx, [rdi+28h]
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rax, cs:qword_140C4E4C8
                mov     r15, [rax+rcx*8]
                test    r14b, r14b
                jz      short loc_1402775DB
                mov     r8d, 4
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_140232160
                test    eax, eax
                jz      short loc_140277649

loc_1402775DB:                          ; CODE XREF: sub_140276AE0+AE4↑j
                lea     r9, unk_140C50C00
                cmp     r15, r9
                jnz     short loc_14027761A
                mov     rdx, gs:20h
                mov     eax, [rdx+831Ch]
                cmp     eax, 1
                jb      short loc_14027761A
                mov     r8d, 0FFFFFFFFh

loc_140277601:                          ; CODE XREF: sub_140276AE0+B36↓j
                cmp     eax, r8d
                jz      short loc_140277620
                lea     ecx, [rax-1]
                lock cmpxchg [rdx+831Ch], ecx
                jz      short loc_140277645
                cmp     eax, 1
                jnb     short loc_140277601
                jmp     short loc_140277620
; ---------------------------------------------------------------------------

loc_14027761A:                          ; CODE XREF: sub_140276AE0+B05↑j
                                        ; sub_140276AE0+B19↑j
                mov     r8d, 0FFFFFFFFh

loc_140277620:                          ; CODE XREF: sub_140276AE0+B24↑j
                                        ; sub_140276AE0+B38↑j
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_1403438BC
                mov     ebx, eax
                test    eax, eax
                jnz     short loc_140277641
                test    r14b, r14b
                jz      short loc_140277641
                lea     edx, [rax+1]
                mov     rcx, r15
                call    sub_14026B700

loc_140277641:                          ; CODE XREF: sub_140276AE0+B4F↑j
                                        ; sub_140276AE0+B54↑j
                test    ebx, ebx
                jz      short loc_140277649

loc_140277645:                          ; CODE XREF: sub_140276AE0+A8B↑j
                                        ; sub_140276AE0+B31↑j
                inc     word ptr [rdi+20h]

loc_140277649:                          ; CODE XREF: sub_140276AE0+AF9↑j
                                        ; sub_140276AE0+B63↑j
                cmp     r12b, 11h
                jz      loc_140277781
                mov     [rsp+178h+var_148], r12b
                mov     [rsp+178h+var_128], 0
                mov     rbx, [rdi+8]
                mov     rax, 8000000000000000h
                or      rbx, rax
                mov     [rsp+178h+var_B0], rbx
                movzx   eax, byte ptr [rdi+22h]
                test    al, 20h
                jz      loc_14027774B
                movzx   r15d, r12b
                movzx   r14d, r12b
                mov     rbx, 7FFFFFFFFFFFFFFFh
                nop     word ptr [rax+rax+00000000h]

loc_1402776A0:                          ; CODE XREF: sub_140276AE0+C58↓j
                lock and [rdi+18h], rbx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402776FC
                test    al, 1
                jz      short loc_1402776FC
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1402776FC
                cmp     r12b, 0Fh
                ja      short loc_1402776FC
                cmp     al, 2
                jb      short loc_1402776FC
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                lea     ecx, [r15+1]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                shl     rax, cl
                movzx   ecx, ax
                not     ecx
                and     edx, ecx
                mov     [r8+14h], edx
                jnz     short loc_1402776FC
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1402776FC:                          ; CODE XREF: sub_140276AE0+BCD↑j
                                        ; sub_140276AE0+BD1↑j ...
                mov     cr8, r14
                mov     [rsp+178h+var_128], 0
                movzx   eax, byte ptr [rdi+22h]
                mov     [rsp+178h+var_147], al
                test    al, 20h
                jz      short loc_14027772A

loc_140277714:                          ; CODE XREF: sub_140276AE0+C48↓j
                lea     rcx, [rsp+178h+var_128]
                call    sub_1402C8C70
                movzx   eax, byte ptr [rdi+22h]
                mov     [rsp+178h+var_147], al
                test    al, 20h
                jnz     short loc_140277714

loc_14027772A:                          ; CODE XREF: sub_140276AE0+C32↑j
                mov     rcx, rdi
                call    sub_1402DAA00
                movzx   eax, byte ptr [rdi+22h]
                test    al, 20h
                jnz     loc_1402776A0
                mov     rbx, [rsp+178h+var_B0]
                mov     r13, [rsp+178h+var_118]

loc_14027774B:                          ; CODE XREF: sub_140276AE0+B9F↑j
                or      al, 20h
                mov     [rdi+22h], al
                mov     rax, [rdi+18h]
                shr     rax, 3Eh
                test    al, 1
                jnz     short loc_140277770
                test    byte ptr [rbx], 20h
                jnz     short loc_140277770
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rbx
                call    sub_1402C67E0

loc_140277770:                          ; CODE XREF: sub_140276AE0+C7A↑j
                                        ; sub_140276AE0+C7F↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                jmp     short loc_14027778B
; ---------------------------------------------------------------------------

loc_140277781:                          ; CODE XREF: sub_140276AE0+B6D↑j
                mov     dl, 11h
                mov     rcx, rdi
                call    sub_140299EF0

loc_14027778B:                          ; CODE XREF: sub_140276AE0+C9F↑j
                mov     rbx, [rsp+178h+var_110]
                mov     rdx, [rbx]
                mov     r11, 0FFFFF6FB7DBED000h
                mov     rax, r11
                cmp     rbx, rax
                jb      short loc_140277817
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rbx, rax
                ja      short loc_140277817
                call    sub_140349680
                test    eax, eax
                jz      short loc_140277817
                test    dl, 1
                jz      short loc_140277817
                test    dl, 20h
                jz      short loc_1402777CF
                test    dl, 42h
                jnz     short loc_140277817

loc_1402777CF:                          ; CODE XREF: sub_140276AE0+CE8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140277817
                mov     rax, rbx
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                movzx   ecx, al
                mov     r8, rdx
                or      r8, 20h
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140277817
                or      rdx, 42h

loc_140277817:                          ; CODE XREF: sub_140276AE0+CC3↑j
                                        ; sub_140276AE0+CD5↑j ...
                mov     [rsp+178h+var_D0], rdx
                test    dl, 1
                jnz     loc_140278373
                bt      rdx, 0Bh
                jnb     short loc_14027783A
                bt      rdx, 0Ah
                jnb     loc_140278373

loc_14027783A:                          ; CODE XREF: sub_140276AE0+D4D↑j
                shr     rdx, 5
                and     edx, 1Fh
                cmp     esi, edx
                jnz     loc_140278373
                xor     r14d, r14d
                mov     [rsp+178h+var_F8], r14d
                mov     r15, [rsp+178h+var_138]
                lock bts qword ptr [r15+18h], 3Fh ; '?'
                jnb     short loc_14027788B

loc_140277862:                          ; CODE XREF: sub_140276AE0+D96↓j
                                        ; sub_140276AE0+D9F↓j
                lea     rcx, [rsp+178h+var_F8]
                call    sub_1402C8C70
                mov     rax, [r15+18h]
                test    rax, rax
                js      short loc_140277862
                lock bts qword ptr [r15+18h], 3Fh ; '?'
                jb      short loc_140277862
                mov     r11, 0FFFFF6FB7DBED000h

loc_14027788B:                          ; CODE XREF: sub_140276AE0+D80↑j
                mov     rdx, [rbx]
                mov     rax, r11
                mov     r10, 0FFFFF6FB7DBED7F8h
                cmp     rbx, rax
                jb      short loc_140277908
                mov     rax, r10
                cmp     rbx, rax
                ja      short loc_140277908
                call    sub_140349680
                test    eax, eax
                jz      short loc_140277908
                test    dl, 1
                jz      short loc_140277908
                test    dl, 20h
                jz      short loc_1402778C0
                test    dl, 42h
                jnz     short loc_140277908

loc_1402778C0:                          ; CODE XREF: sub_140276AE0+DD9↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140277908
                mov     rax, rbx
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                movzx   ecx, al
                mov     r8, rdx
                or      r8, 20h
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140277908
                or      rdx, 42h

loc_140277908:                          ; CODE XREF: sub_140276AE0+DBE↑j
                                        ; sub_140276AE0+DC6↑j ...
                bt      rdx, 0Ah
                mov     rax, 0FFFFFFFFFFFFFFF7h
                mov     rcx, 0FFFFFFFFFFFFF7FFh
                cmovb   rax, rcx
                and     rax, rdx
                mov     [r15+10h], rax
                mov     rax, 8000000000000000h
                or      [r15+28h], rax
                mov     r9, [r15+28h]
                test    esi, esi
                jnz     short loc_140277944
                lea     ecx, [rsi+1]
                lea     esi, [rcx+2]
                jmp     short loc_14027797D
; ---------------------------------------------------------------------------

loc_140277944:                          ; CODE XREF: sub_140276AE0+E5A↑j
                cmp     esi, 1Fh
                jnz     short loc_140277952
                mov     ecx, 1
                mov     esi, ecx
                jmp     short loc_14027797D
; ---------------------------------------------------------------------------

loc_140277952:                          ; CODE XREF: sub_140276AE0+E67↑j
                mov     eax, esi
                shr     eax, 3
                cmp     eax, 3
                jnz     short loc_140277970
                test    sil, 7
                jz      short loc_140277970
                mov     r12d, 2
                mov     esi, r12d
                lea     ecx, [rax-2]
                jmp     short loc_140277983
; ---------------------------------------------------------------------------

loc_140277970:                          ; CODE XREF: sub_140276AE0+E7A↑j
                                        ; sub_140276AE0+E80↑j
                mov     ecx, 1
                mov     esi, ecx
                cmp     eax, ecx
                cmovz   esi, r14d

loc_14027797D:                          ; CODE XREF: sub_140276AE0+E62↑j
                                        ; sub_140276AE0+E70↑j
                mov     r12d, 2

loc_140277983:                          ; CODE XREF: sub_140276AE0+E8E↑j
                mov     [r15+20h], cx
                mov     r8, [r13+0]
                mov     rax, r11
                cmp     r13, rax
                jb      short loc_1402779FE
                mov     rax, r10
                cmp     r13, rax
                ja      short loc_1402779FE
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402779FE
                test    r8b, 1
                jz      short loc_1402779FE
                test    r8b, 20h
                jz      short loc_1402779B7
                test    r8b, 42h
                jnz     short loc_1402779FE

loc_1402779B7:                          ; CODE XREF: sub_140276AE0+ECF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_1402779FE
                shr     r13, 3
                and     r13d, 1FFh
                mov     rax, [rax+r13*8]
                movzx   ecx, al
                mov     rdx, r8
                or      rdx, 20h
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_1402779FE
                or      r8, 42h

loc_1402779FE:                          ; CODE XREF: sub_140276AE0+EB2↑j
                                        ; sub_140276AE0+EBA↑j ...
                mov     [rsp+178h+var_E8], r8
                mov     rax, r11
                lea     rcx, [rsp+178h+var_E8]
                cmp     rcx, rax
                jb      short loc_140277A8E
                mov     rax, r10
                lea     rcx, [rsp+178h+var_E8]
                cmp     rcx, rax
                ja      short loc_140277A8E
                call    sub_140349680
                test    eax, eax
                jz      short loc_140277A8E
                test    r8b, 1
                jz      short loc_140277A8E
                test    r8b, 20h
                jz      short loc_140277A41
                test    r8b, 42h
                jnz     short loc_140277A8E

loc_140277A41:                          ; CODE XREF: sub_140276AE0+F59↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140277A8E
                lea     rax, [rsp+178h+var_E8]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                mov     rdx, r8
                or      rdx, 20h
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_140277A8E
                or      r8, 42h

loc_140277A8E:                          ; CODE XREF: sub_140276AE0+F34↑j
                                        ; sub_140276AE0+F44↑j ...
                shr     r8, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     r8, rcx
                mov     rax, r8
                xor     rax, r9
                and     rax, rcx
                xor     rax, r9
                mov     [r15+28h], rax
                lea     rbx, [r8+r8*2]
                shl     rbx, 4
                mov     rcx, gs:188h
                mov     eax, [rcx+518h]
                bt      eax, 8
                jnb     short loc_140277ADA
                and     eax, 0E00h
                shr     eax, 9
                mov     [rsp+178h+var_124], eax
                jmp     short loc_140277B08
; ---------------------------------------------------------------------------

loc_140277ADA:                          ; CODE XREF: sub_140276AE0+FEA↑j
                mov     edx, [rcx+510h]
                shr     edx, 0Ch
                and     edx, 7
                mov     rax, [rcx+220h]
                test    dword ptr [rax+464h], 100000h
                jz      short loc_140277B04
                mov     eax, r12d
                cmp     edx, 2
                cmovb   eax, edx
                mov     edx, eax

loc_140277B04:                          ; CODE XREF: sub_140276AE0+1017↑j
                mov     [rsp+178h+var_124], edx

loc_140277B08:                          ; CODE XREF: sub_140276AE0+FF8↑j
                mov     [rsp+178h+var_F4], r14d
                mov     r13, 0FFFFFA8000000018h
                lock bts qword ptr [rbx+r13], 3Fh ; '?'
                jnb     short loc_140277B42

loc_140277B23:                          ; CODE XREF: sub_140276AE0+1057↓j
                                        ; sub_140276AE0+1060↓j
                lea     rcx, [rsp+178h+var_F4]
                call    sub_1402C8C70
                mov     rax, [rbx+r13]
                test    rax, rax
                js      short loc_140277B23
                lock bts qword ptr [rbx+r13], 3Fh ; '?'
                jb      short loc_140277B23

loc_140277B42:                          ; CODE XREF: sub_140276AE0+1041↑j
                mov     rax, [rbx+r13]
                mov     rcx, rax
                mov     rdx, 3FFFFFFFFFFFFFFFh
                and     rcx, rdx
                inc     rcx
                xor     rcx, rax
                and     rcx, rdx
                xor     rcx, rax
                mov     [rbx+r13], rcx
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+r13], rax
                movzx   ecx, byte ptr [r15+22h]
                mov     eax, ecx
                shr     eax, 6
                mov     r13d, 1
                cmp     eax, esi
                jz      short loc_140277B9B
                mov     r8d, r13d
                mov     edx, esi
                mov     rcx, r15
                call    sub_14031F848
                movzx   ecx, byte ptr [r15+22h]

loc_140277B9B:                          ; CODE XREF: sub_140276AE0+10A7↑j
                mov     rax, [r15+18h]
                mov     rdx, 0C000000000000001h
                and     rax, rdx
                or      rax, 1
                mov     [r15+18h], rax
                movzx   eax, byte ptr [r15+23h]
                and     al, 0F8h
                or      al, byte ptr [rsp+178h+var_124]
                mov     [r15+23h], al
                mov     rax, [rsp+178h+var_110]
                mov     [r15+8], rax
                and     cl, 0FEh
                or      cl, 6
                mov     [r15+22h], cl
                movzx   eax, cl
                or      al, 10h
                mov     [r15+22h], al
                test    [rsp+178h+arg_20], 2
                jz      short loc_140277C07
                movzx   ecx, byte ptr [r15+23h]
                test    cl, 8
                jnz     short loc_140277BFD
                mov     eax, ecx
                and     eax, 7
                cmp     eax, 2
                jbe     short loc_140277C07

loc_140277BFD:                          ; CODE XREF: sub_140276AE0+1111↑j
                and     cl, 0FAh
                or      cl, 2
                mov     [r15+23h], cl

loc_140277C07:                          ; CODE XREF: sub_140276AE0+1107↑j
                                        ; sub_140276AE0+111B↑j
                mov     rdx, [rsp+178h+var_E0]
                mov     eax, [rdx+38h]
                test    al, 20h
                jnz     short loc_140277C1C
                cmp     [rdx+40h], r14
                jnz     short loc_140277C24

loc_140277C1C:                          ; CODE XREF: sub_140276AE0+1134↑j
                mov     [rsp+178h+var_D8], r14

loc_140277C24:                          ; CODE XREF: sub_140276AE0+113A↑j
                lea     rbx, [rdx+48h]
                mov     r14, cr8
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                mov     r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140277C75
                test    al, 1
                jz      short loc_140277C75
                cmp     r14b, 0Fh
                ja      short loc_140277C75
                mov     rax, gs:20h
                mov     r9, [rax+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, r14b
                inc     ecx
                mov     rdx, r12
                shl     rdx, cl
                and     edx, 4
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140277C75:                          ; CODE XREF: sub_140276AE0+115F↑j
                                        ; sub_140276AE0+1163↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_140277C8F
                movzx   edx, r14b
                mov     rcx, rbx
                call    sub_1405B5E68
                jmp     loc_140277D25
; ---------------------------------------------------------------------------

loc_140277C8F:                          ; CODE XREF: sub_140276AE0+119C↑j
                mov     [rsp+178h+var_120], 0
                mov     rsi, gs:20h
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      short loc_140277CC5
                cmp     byte ptr [rsi+20h], 1
                ja      short loc_140277CC5
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140277CC5
                mov     rcx, rsi
                call    sub_1403F2EC4

loc_140277CC5:                          ; CODE XREF: sub_140276AE0+11CA↑j
                                        ; sub_140276AE0+11D0↑j ...
                lock bts dword ptr [rbx], 1Fh
                jnb     short loc_140277CE6
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140245F90
                movzx   edx, r14b
                mov     rcx, rbx
                call    sub_14028EAE0
                mov     [rsp+178h+var_120], eax

loc_140277CE6:                          ; CODE XREF: sub_140276AE0+11EA↑j
                mov     edx, [rbx]
                mov     ecx, edx
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jz      short loc_140277D25

loc_140277CF6:                          ; CODE XREF: sub_140276AE0+1243↓j
                bt      edx, 1Eh
                jb      short loc_140277D0C
                mov     ecx, edx
                bts     ecx, 1Eh
                mov     eax, edx
                lock cmpxchg [rbx], ecx
                mov     edx, eax
                jnz     short loc_140277D18

loc_140277D0C:                          ; CODE XREF: sub_140276AE0+121A↑j
                lea     rcx, [rsp+178h+var_120]
                call    sub_1402C8C70
                mov     edx, [rbx]

loc_140277D18:                          ; CODE XREF: sub_140276AE0+122A↑j
                mov     eax, edx
                btr     eax, 1Eh
                cmp     eax, 80000000h
                jnz     short loc_140277CF6

loc_140277D25:                          ; CODE XREF: sub_140276AE0+11AA↑j
                                        ; sub_140276AE0+1214↑j
                mov     rdx, [rsp+178h+var_E0]
                inc     qword ptr [rdx+20h]
                mov     rax, [rsp+178h+var_D8]
                test    rax, rax
                jz      short loc_140277D41
                inc     dword ptr [rax+68h]

loc_140277D41:                          ; CODE XREF: sub_140276AE0+125C↑j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_140277D5C
                mov     rdx, [rsp+178h]
                mov     rcx, rbx
                call    sub_1405B6044
                jmp     short loc_140277D62
; ---------------------------------------------------------------------------

loc_140277D5C:                          ; CODE XREF: sub_140276AE0+1268↑j
                mov     dword ptr [rbx], 0

loc_140277D62:                          ; CODE XREF: sub_140276AE0+127A↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140277D8D
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140277D8D
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140277D8D
                call    sub_1403F2EC4

loc_140277D8D:                          ; CODE XREF: sub_140276AE0+1295↑j
                                        ; sub_140276AE0+129B↑j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140277DE3
                test    al, 1
                jz      short loc_140277DE3
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140277DE3
                cmp     r14b, 0Fh
                ja      short loc_140277DE3
                cmp     al, 2
                jb      short loc_140277DE3
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, r14b
                inc     ecx
                mov     rdx, r12
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140277DE3
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140277DE3:                          ; CODE XREF: sub_140276AE0+12B5↑j
                                        ; sub_140276AE0+12B9↑j ...
                movzx   eax, r14b
                mov     cr8, rax
                mov     eax, [rsp+178h+var_11C]
                and     eax, 1Fh
                mov     r14d, eax
                lea     rbx, cs:140000000h
                mov     rbx, ds:rva qword_140017520[rbx+rax*8]
                mov     rax, 0FFFF000000000E7Fh
                and     rbx, rax
                mov     rax, [rsp+178h+var_108]
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                shl     rax, 0Ch
                or      rbx, rax
                or      rbx, 21h
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                test    rax, rax
                jnz     short loc_140277E9B
                mov     rsi, rdx
                neg     rsi
                shl     rsi, 19h
                sar     rsi, 10h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                test    rax, rax
                jnz     short loc_140277E7C
                mov     rax, 7FFFFFFFFFFFFFFFh
                and     rbx, rax
                xor     ecx, ecx
                call    sub_14033FA34
                test    eax, eax
                jz      short loc_140277E7C
                or      rbx, 4

loc_140277E7C:                          ; CODE XREF: sub_140276AE0+137E↑j
                                        ; sub_140276AE0+1396↑j
                mov     r8, rbx
                or      rbx, 4
                mov     rcx, rsi
                call    sub_140271580
                test    eax, eax
                jz      short loc_140277EA0
                mov     rbx, r8
                or      rbx, 104h
                jmp     short loc_140277EA0
; ---------------------------------------------------------------------------

loc_140277E9B:                          ; CODE XREF: sub_140276AE0+135E↑j
                bts     rbx, 8

loc_140277EA0:                          ; CODE XREF: sub_140276AE0+13AD↑j
                                        ; sub_140276AE0+13B9↑j
                and     r14b, 5
                cmp     r14b, 4
                jnz     short loc_140277EAE
                or      rbx, 42h

loc_140277EAE:                          ; CODE XREF: sub_140276AE0+13C8↑j
                mov     rax, 0FAFFFFFFFFFFFEFFh
                and     rbx, rax
                mov     rax, 0A00000000000000h
                or      rbx, rax
                mov     [rsp+178h+var_D0], rbx
                xor     r14d, r14d
                mov     edx, r14d
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     r8, [rsp+178h+var_110]
                mov     r11, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                jb      short loc_140277F44
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_140277F44
                call    sub_140349680
                mov     rsi, 8000000000000000h
                test    eax, eax
                jz      short loc_140277F23
                mov     edx, r13d
                cmp     byte ptr cs:word_140C4DE88+1, r14b
                jnz     short loc_140277F4E
                or      rbx, rsi
                jmp     short loc_140277F4E
; ---------------------------------------------------------------------------

loc_140277F23:                          ; CODE XREF: sub_140276AE0+1430↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140277F4E
                or      rbx, rsi
                jmp     short loc_140277F4E
; ---------------------------------------------------------------------------

loc_140277F44:                          ; CODE XREF: sub_140276AE0+1415↑j
                                        ; sub_140276AE0+141D↑j
                mov     rsi, 8000000000000000h

loc_140277F4E:                          ; CODE XREF: sub_140276AE0+143C↑j
                                        ; sub_140276AE0+1441↑j ...
                mov     [r8], rbx
                test    edx, edx
                jz      short loc_140277F60
                mov     rdx, rbx
                mov     rcx, r8
                call    sub_140349620

loc_140277F60:                          ; CODE XREF: sub_140276AE0+1473↑j
                mov     rdx, [rsp+178h+var_D0]
                mov     r8d, r14d
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     r9, [rsp+178h+var_C8]
                cmp     r9, rax
                jb      short loc_140277FC8
                mov     rax, r11
                cmp     r9, rax
                ja      short loc_140277FC8
                call    sub_140349680
                test    eax, eax
                jz      short loc_140277FA4
                mov     r8d, r13d
                cmp     byte ptr cs:word_140C4DE88+1, r14b
                jnz     short loc_140277FC8
                jmp     short loc_140277FC0
; ---------------------------------------------------------------------------

loc_140277FA4:                          ; CODE XREF: sub_140276AE0+14B4↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140277FC8

loc_140277FC0:                          ; CODE XREF: sub_140276AE0+14C2↑j
                test    dl, 1
                jz      short loc_140277FC8
                or      rdx, rsi

loc_140277FC8:                          ; CODE XREF: sub_140276AE0+14A3↑j
                                        ; sub_140276AE0+14AB↑j ...
                mov     [r9], rdx
                test    r8d, r8d
                jz      short loc_140277FD8
                mov     rcx, r9
                call    sub_140349620

loc_140277FD8:                          ; CODE XREF: sub_140276AE0+14EE↑j
                cmp     [rsp+178h+var_140], r14d
                jz      short loc_140278002
                xorps   xmm0, xmm0
                movups  [rsp+178h+var_78], xmm0
                movups  [rsp+178h+var_68], xmm0
                lea     rdx, [rsp+178h+var_78]
                mov     rcx, r15
                call    sub_140243C30

loc_140278002:                          ; CODE XREF: sub_140276AE0+14FD↑j
                movzx   eax, byte ptr [r15+22h]
                and     al, 7
                cmp     al, 6
                jnz     loc_14027842D
                mov     rcx, [r15+18h]
                mov     rdx, rcx
                mov     r8, 3FFFFFFFFFFFFFFFh
                and     rdx, r8
                dec     rdx
                mov     rax, rcx
                xor     rax, rdx
                and     rax, r8
                xor     rax, rcx
                mov     [r15+18h], rax
                test    rdx, rdx
                jnz     short loc_140278045
                mov     rcx, r15
                call    sub_140278C00

loc_140278045:                          ; CODE XREF: sub_140276AE0+155B↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r15+18h], rax
                mov     [rsp+178h+var_F0], r14d
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_14027808F
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140278070:                          ; CODE XREF: sub_140276AE0+15A4↓j
                                        ; sub_140276AE0+15AD↓j
                lea     rcx, [rsp+178h+var_F0]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140278070
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140278070

loc_14027808F:                          ; CODE XREF: sub_140276AE0+1583↑j
                movzx   eax, byte ptr [rdi+22h]
                and     al, 0DFh
                mov     [rdi+22h], al
                movzx   ebx, word ptr [rdi+20h]
                test    bx, bx
                jz      loc_140278436
                sub     bx, 1
                mov     [rdi+20h], bx
                jnz     short loc_1402780BF
                mov     rcx, rdi
                call    sub_1402303F0
                test    eax, eax
                jnz     loc_14027826E

loc_1402780BF:                          ; CODE XREF: sub_140276AE0+15CD↑j
                mov     r8, [rdi+28h]
                mov     rax, 1000000000h
                test    rax, r8
                jnz     loc_140278296
                mov     rax, 2000000000000h
                test    rax, r8
                jnz     loc_140278296
                mov     r10, [rdi+18h]
                mov     rax, r10
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                test    bx, bx
                jz      short loc_14027812C
                cmp     bx, 1
                jnz     short loc_14027810F
                test    rax, rax
                jnz     short loc_14027812C
                jmp     short loc_140278122
; ---------------------------------------------------------------------------

loc_14027810F:                          ; CODE XREF: sub_140276AE0+1626↑j
                cmp     bx, 2
                jnz     loc_140278296
                test    rax, rax
                jz      loc_140278296

loc_140278122:                          ; CODE XREF: sub_140276AE0+162D↑j
                test    byte ptr [rdi+22h], 8
                jz      loc_140278296

loc_14027812C:                          ; CODE XREF: sub_140276AE0+1620↑j
                                        ; sub_140276AE0+162B↑j
                mov     r15, 0FFFFF68000000000h
                mov     rax, r15
                mov     r11, 3FFFFFFF78h
                add     r11, rax
                mov     r9, [rdi+8]
                or      r9, rsi
                cmp     r9, r11
                ja      short loc_14027815A
                mov     rax, r15
                cmp     r9, rax
                jnb     short loc_14027816C

loc_14027815A:                          ; CODE XREF: sub_140276AE0+1670↑j
                movzx   eax, byte ptr [rdi+23h]
                test    al, 20h
                jz      short loc_14027816C
                and     al, 0DFh
                mov     [rdi+23h], al
                jmp     loc_140278269
; ---------------------------------------------------------------------------

loc_14027816C:                          ; CODE XREF: sub_140276AE0+1678↑j
                                        ; sub_140276AE0+1680↑j
                mov     edx, r14d
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14027818A
                mov     eax, [rdi+10h]
                bt      rax, 0Ah
                jnb     short loc_14027818A
                mov     edx, r13d
                jmp     short loc_1402781B3
; ---------------------------------------------------------------------------

loc_14027818A:                          ; CODE XREF: sub_140276AE0+1699↑j
                                        ; sub_140276AE0+16A3↑j
                cmp     r9, r11
                ja      short loc_1402781A2
                mov     rax, r15
                cmp     r9, rax
                jb      short loc_1402781A2
                test    byte ptr [rdi+23h], 20h
                jz      short loc_1402781A2
                mov     edx, r13d
                jmp     short loc_1402781B3
; ---------------------------------------------------------------------------

loc_1402781A2:                          ; CODE XREF: sub_140276AE0+16AD↑j
                                        ; sub_140276AE0+16B5↑j ...
                test    bx, bx
                jnz     short loc_1402781B3
                shr     r10, 3Eh
                test    r10b, 1
                cmovnz  edx, r13d

loc_1402781B3:                          ; CODE XREF: sub_140276AE0+16A8↑j
                                        ; sub_140276AE0+16C0↑j ...
                shr     r8, 27h
                and     r8d, 3FFh
                mov     rax, cs:qword_140C4E4C8
                mov     rsi, [rax+r8*8]
                cmp     edx, 1
                jnz     short loc_1402781D9
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_14026B700

loc_1402781D9:                          ; CODE XREF: sub_140276AE0+16EC↑j
                mov     r8, r13
                lea     rax, unk_140C50C00
                cmp     rsi, rax
                jnz     short loc_140278260
                mov     r9, gs:20h
                movsxd  rdx, dword ptr [r9+831Ch]
                mov     r10d, 0FFFFFFFFh
                cmp     edx, r10d
                jz      short loc_140278260
                lea     rcx, [rdx+1]
                cmp     rcx, 100h
                ja      short loc_140278234

loc_140278210:                          ; CODE XREF: sub_140276AE0+1752↓j
                lea     ecx, [rdx+1]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_140278269
                cmp     edx, r10d
                jz      short loc_140278234
                lea     rax, [rdx+1]
                cmp     rax, 100h
                jbe     short loc_140278210

loc_140278234:                          ; CODE XREF: sub_140276AE0+172E↑j
                                        ; sub_140276AE0+1746↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_14027825B
                cmp     edx, r10d
                jz      short loc_14027825B
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_14027825B
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                inc     r8

loc_14027825B:                          ; CODE XREF: sub_140276AE0+175B↑j
                                        ; sub_140276AE0+1760↑j ...
                test    r8, r8
                jz      short loc_140278269

loc_140278260:                          ; CODE XREF: sub_140276AE0+1706↑j
                                        ; sub_140276AE0+1721↑j
                lock xadd [rsi+1C00h], r8

loc_140278269:                          ; CODE XREF: sub_140276AE0+1687↑j
                                        ; sub_140276AE0+1741↑j ...
                test    bx, bx
                jnz     short loc_140278296

loc_14027826E:                          ; CODE XREF: sub_140276AE0+15D9↑j
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    [rsp+178h+var_B8]
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     rcx, rdi
                call    sub_140278860

loc_140278296:                          ; CODE XREF: sub_140276AE0+15F0↑j
                                        ; sub_140276AE0+1603↑j ...
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                movzx   ebx, [rsp+178h+var_148]
                cmp     bl, 11h
                jz      short loc_14027830A
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140278303
                test    al, 1
                jz      short loc_140278303
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140278303
                cmp     bl, 0Fh
                ja      short loc_140278303
                cmp     al, 2
                jb      short loc_140278303
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ebx, [rsp+178h+var_148]
                lea     ecx, [rbx+1]
                shl     r12, cl
                movzx   eax, r12w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140278303
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140278303:                          ; CODE XREF: sub_140276AE0+17D7↑j
                                        ; sub_140276AE0+17DB↑j ...
                movzx   eax, bl
                mov     cr8, rax

loc_14027830A:                          ; CODE XREF: sub_140276AE0+17CD↑j
                mov     rax, [rsp+178h+var_C0]
                mov     [rax], r14d
                cmp     [rsp+178h+var_140], r14d
                jz      short loc_140278365
                or      qword ptr [rsp+178h+var_68+8], 4
                lea     rax, [rsp+178h+var_78]
                mov     [rsp+178h+var_50], rax
                mov     [rsp+178h+var_48], 20h ; ' '
                mov     r9d, 282h
                mov     [rsp+178h+var_158], 11401B02h
                mov     r8d, 20000001h
                mov     edx, r13d
                lea     rcx, [rsp+178h+var_50]
                call    sub_1402B8C20

loc_140278365:                          ; CODE XREF: sub_140276AE0+183A↑j
                neg     [rsp+178h+var_144]
                sbb     eax, eax
                and     eax, 4
                jmp     loc_140278401
; ---------------------------------------------------------------------------

loc_140278373:                          ; CODE XREF: sub_140276AE0+D42↑j
                                        ; sub_140276AE0+D54↑j ...
                movzx   edx, [rsp+178h+var_148]
                mov     rcx, rdi
                call    sub_140297330
                jmp     short loc_1402783F2
; ---------------------------------------------------------------------------

loc_140278382:                          ; CODE XREF: sub_140276AE0+9E6↑j
                                        ; sub_140276AE0+9F1↑j ...
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                cmp     r12b, 11h
                jz      short loc_1402783F2
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402783EA
                test    al, 1
                jz      short loc_1402783EA
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1402783EA
                cmp     r12b, 0Fh
                ja      short loc_1402783EA
                cmp     al, 2
                jb      short loc_1402783EA
                mov     r9, gs:20h
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, r12b
                inc     ecx
                shl     r14, cl
                movzx   eax, r14w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1402783EA
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1402783EA:                          ; CODE XREF: sub_140276AE0+18BF↑j
                                        ; sub_140276AE0+18C3↑j ...
                movzx   eax, r12b
                mov     cr8, rax

loc_1402783F2:                          ; CODE XREF: sub_140276AE0+483↑j
                                        ; sub_140276AE0+493↑j ...
                mov     rcx, [rsp+178h+var_138]
                call    sub_1403B748C
                mov     eax, 1

loc_140278401:                          ; CODE XREF: sub_140276AE0+23F↑j
                                        ; sub_140276AE0+401↑j ...
                mov     rcx, [rsp+178h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 140h
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

loc_140278425:                          ; CODE XREF: sub_140276AE0+3C2↑j
                mov     rdx, rax
                jmp     loc_140276E90
; ---------------------------------------------------------------------------

loc_14027842D:                          ; CODE XREF: sub_140276AE0+152B↑j
                mov     rcx, r15
                call    sub_1403F4244
; ---------------------------------------------------------------------------
                align 2

loc_140278436:                          ; CODE XREF: sub_140276AE0+15BF↑j
                mov     rcx, rdi
                call    sub_1403F41EC
sub_140276AE0   endp

; ---------------------------------------------------------------------------
                db 90h
; } // starts at 140276AE0
byte_14027843F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400CE61C↑o

; =============== S U B R O U T I N E =======================================


sub_140278450   proc near               ; CODE XREF: sub_14026CC48+61↑p
                                        ; sub_14053D330+7B↓p
                                        ; DATA XREF: ...

var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404427C8 SIZE 000001BF BYTES

                cmp     rcx, rdx
                jnb     locret_140278640
                mov     rax, rsp
                push    rsi
                push    r12
                push    r13
                sub     rsp, 60h
                mov     r13d, [r8]
                mov     r12, rdx

loc_14027846B:                          ; DATA XREF: .rdata:000000014005DD34↑o
                                        ; .rdata:000000014005DD44↑o ...
                mov     [rax+18h], rbx
                mov     rsi, rcx
                mov     [rax-20h], rbp
                mov     edx, 2
                mov     [rax-28h], rdi
                mov     r10d, 0C0h
                mov     [rax-30h], r14
                mov     r14, 7FFFFFFFFFFFFFFFh
                mov     [rax-38h], r15
                shr     r13d, 1Fh
                mov     rcx, 0FFFFFA8000000000h
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_1402784B0:                          ; CODE XREF: sub_140278450+1C5↓j
                mov     rax, [rsi]
                lea     rbx, [rax+rax*2]
                shl     rbx, 4
                mov     rax, rcx
                add     rbx, rax
                mov     r15, cr8
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404427C8

loc_1402784D7:                          ; CODE XREF: sub_140278450+1CA37A↓j
                                        ; sub_140278450+1CA384↓j ...
                mov     [rsp+78h+arg_0], 0
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_1402786C0

loc_1402784EF:                          ; CODE XREF: sub_140278450+295↓j
                mov     rax, cs:qword_140C4E4C8
                xorps   xmm0, xmm0
                mov     rcx, [rbx+28h]
                mov     ebp, 1
                shr     rcx, 27h
                and     ecx, 3FFh
                movups  [rsp+78h+var_58], xmm0
                mov     rdi, [rax+rcx*8]
                xor     eax, eax
                mov     [rsp+78h+var_48], rax
                cmp     [rdi+1878h], rax
                jnz     loc_14044280D

loc_140278529:                          ; CODE XREF: sub_140278450+1CA464↓j
                lea     rax, unk_140C50C00
                cmp     rdi, rax
                jnz     loc_140278642
                mov     rdx, gs:20h
                prefetchw byte ptr [rdx+8318h]
                mov     eax, [rdx+8318h]
                mov     r8d, eax
                add     rax, rbp
                cmp     rax, 100h
                ja      loc_140278642

loc_140278561:                          ; CODE XREF: sub_140278450+1CA476↓j
                lea     ecx, [r8+rbp]
                mov     eax, r8d
                lock cmpxchg [rdx+8318h], ecx
                movsxd  rcx, eax
                cmp     rcx, r8
                jnz     loc_1404428B9

loc_14027857C:                          ; CODE XREF: sub_140278450+221↓j
                                        ; sub_140278450+1CA45E↓j ...
                lea     rax, unk_140C50C00
                mov     r9d, 1
                cmp     rdi, rax
                jnz     loc_1402786A8
                mov     r8, gs:20h
                movsxd  rdx, dword ptr [r8+831Ch]
                cmp     edx, 0FFFFFFFFh
                jz      loc_1402786A8
                lea     rcx, [rdx+1]
                cmp     rcx, 100h
                ja      loc_14027867C

loc_1402785BC:                          ; CODE XREF: sub_140278450+1CA4C2↓j
                lea     ecx, [rdx+1]
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                movsxd  rdx, eax
                jnz     loc_1404428FF

loc_1402785D3:                          ; CODE XREF: sub_140278450+252↓j
                                        ; sub_140278450+261↓j
                mov     edx, r13d
                mov     rcx, rbx
                call    sub_1402786F0
                lock and [rbx+18h], r14
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14044291D

loc_1402785F1:                          ; CODE XREF: sub_140278450+1CA4CF↓j
                                        ; sub_140278450+1CA4DB↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                add     rsi, 8
                mov     rcx, 0FFFFFA8000000000h
                mov     edx, 2
                mov     r10d, 0C0h
                cmp     rsi, r12
                jb      loc_1402784B0
                mov     r15, [rsp+78h+var_38]
                mov     r14, [rsp+78h+var_30]
                mov     rdi, [rsp+78h+var_28]
                mov     rbp, [rsp+78h+var_20]
                mov     rbx, [rsp+78h+arg_10]
                add     rsp, 60h
                pop     r13
                pop     r12
                pop     rsi

locret_140278640:                       ; CODE XREF: sub_140278450+3↑j
                retn
; ---------------------------------------------------------------------------
algn_140278641:                         ; DATA XREF: .pdata:00000001400CE634↑o
                                        ; .pdata:00000001400CE640↑o
                align 2

loc_140278642:                          ; CODE XREF: sub_140278450+E3↑j
                                        ; sub_140278450+10B↑j ...
                mov     rcx, rbp
                neg     rcx
                lock xadd [rdi+1D28h], rcx
                mov     rdx, [rdi+1860h]
                cmp     rcx, rdx
                jnb     loc_1404428D1

loc_140278661:                          ; CODE XREF: sub_140278450+1CA48C↓j
                mov     rdx, [rdi+1858h]
                mov     rax, rcx
                sub     rax, rbp
                cmp     rcx, rdx
                jb      loc_14027857C
                jmp     loc_1404428E1
; ---------------------------------------------------------------------------

loc_14027867C:                          ; CODE XREF: sub_140278450+166↑j
                                        ; sub_140278450+1CA4B2↓j ...
                cmp     edx, r10d
                jle     short loc_14027869F
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14027869F
                mov     eax, edx
                lock cmpxchg [r8+831Ch], r10d
                jnz     short loc_14027869F
                lea     eax, [rdx-0C0h]
                movsxd  r9, eax
                inc     r9

loc_14027869F:                          ; CODE XREF: sub_140278450+22F↑j
                                        ; sub_140278450+234↑j ...
                test    r9, r9
                jz      loc_1402785D3

loc_1402786A8:                          ; CODE XREF: sub_140278450+13C↑j
                                        ; sub_140278450+155↑j
                lock xadd [rdi+1C00h], r9
                jmp     loc_1402785D3
; ---------------------------------------------------------------------------
                align 20h

loc_1402786C0:                          ; CODE XREF: sub_140278450+99↑j
                                        ; sub_140278450+284↓j ...
                lea     rcx, [rsp+78h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_1402786C0
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_1402786C0
                mov     r10d, 0C0h
                jmp     loc_1402784EF
sub_140278450   endp

; ---------------------------------------------------------------------------
algn_1402786EA:                         ; DATA XREF: .pdata:00000001400CE64C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402786F0   proc near               ; CODE XREF: sub_140278450+189↑p
                                        ; sub_1402CB390+1B4↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140442988 SIZE 00000069 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     ebx, edx
                mov     rsi, rcx
                test    dl, 1
                jnz     loc_1402787A3
                test    bl, 2
                jnz     loc_1402787E1

loc_14027871D:                          ; CODE XREF: sub_1402786F0+CE↓j
                                        ; sub_1402786F0+147↓j
                movzx   eax, byte ptr [rsi+22h]
                and     al, 0F7h
                mov     [rsi+22h], al
                mov     eax, 0FFFFh
                add     [rsi+20h], ax
                jnz     short loc_14027878A
                mov     eax, [rsi+10h]
                bt      rax, 0Ah
                jnb     loc_1402787C3

loc_14027873F:                          ; CODE XREF: sub_1402786F0+DD↓j
                                        ; sub_1402786F0+1CA2B6↓j ...
                test    bl, 8
                jnz     loc_1402787D8

loc_140278748:                          ; CODE XREF: sub_1402786F0+EC↓j
                mov     rax, 0FFFFFA8000000000h
                mov     rcx, rsi
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                mov     rcx, rsi
                mov     rbp, rdx
                sar     rbp, 3
                mov     rax, rbp
                shr     rax, 3Fh
                add     rbp, rax
                test    bl, 4
                jnz     loc_1404429D4
                mov     rdx, rbp
                call    sub_140278860

loc_14027878A:                          ; CODE XREF: sub_1402786F0+3F↑j
                                        ; sub_1402786F0+1CA2FC↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rax, rdi
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402787A3:                          ; CODE XREF: sub_1402786F0+1E↑j
                mov     eax, [rcx+10h]
                add     rcx, 10h
                bt      rax, 0Ah
                jnb     loc_140442988

loc_1402787B5:                          ; CODE XREF: sub_1402786F0+1CA2A7↓j
                movzx   eax, byte ptr [rsi+22h]
                or      al, 10h
                mov     [rsi+22h], al
                jmp     loc_14027871D
; ---------------------------------------------------------------------------

loc_1402787C3:                          ; CODE XREF: sub_1402786F0+49↑j
                mov     rax, [rsi+18h]
                shr     rax, 3Eh
                test    al, 1
                jz      loc_14027873F
                jmp     loc_14044299C
; ---------------------------------------------------------------------------

loc_1402787D8:                          ; CODE XREF: sub_1402786F0+52↑j
                and     byte ptr [rsi+23h], 0F8h
                jmp     loc_140278748
; ---------------------------------------------------------------------------

loc_1402787E1:                          ; CODE XREF: sub_1402786F0+27↑j
                mov     r9, [rcx+28h]
                lea     rdx, [rcx+10h]
                mov     rcx, cs:qword_140C4E4C8
                mov     rax, r9
                shr     rax, 27h
                and     eax, 3FFh

loc_1402787FC:                          ; DATA XREF: .rdata:000000014005DDB8↑o
                                        ; .rdata:000000014005DDCC↑o ...
                mov     [rsp+28h+arg_0], r14
                mov     rcx, [rcx+rax*8]
                call    sub_140340134
                mov     ebp, eax
                test    eax, eax
                jnz     short loc_14027881A
                mov     ecx, [rsi+10h]
                shr     cl, 1
                test    cl, 1
                jnz     short loc_14027883C

loc_14027881A:                          ; CODE XREF: sub_1402786F0+11E↑j
                                        ; sub_1402786F0+158↓j ...
                mov     r8d, ebp
                lea     rcx, [rsi+10h]
                mov     edx, 1
                call    sub_140338C90
                mov     rdi, rax
                test    ebp, ebp
                jnz     short loc_140278851

loc_140278832:                          ; CODE XREF: sub_1402786F0+166↓j
                mov     r14, [rsp+28h+arg_0]
                jmp     loc_14027871D
; ---------------------------------------------------------------------------

loc_14027883C:                          ; CODE XREF: sub_1402786F0+128↑j
                                        ; DATA XREF: .pdata:00000001400CE664↑o ...
                shr     r9, 3Ch
                and     r9b, 7
                cmp     r9b, 2
                jnz     short loc_14027881A
                mov     ebp, 1
                jmp     short loc_14027881A
; ---------------------------------------------------------------------------

loc_140278851:                          ; CODE XREF: sub_1402786F0+140↑j
                and     qword ptr [rsi+10h], 0FFFFFFFFFFFFFFFDh
                jmp     short loc_140278832
sub_1402786F0   endp

; ---------------------------------------------------------------------------
algn_140278858:                         ; DATA XREF: .pdata:00000001400CE670↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140278860   proc near               ; CODE XREF: sub_14022CA60+B75↑p
                                        ; sub_14022DE20+A37↑p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404429F2 SIZE 0000001A BYTES

                push    rbx
                sub     rsp, 30h
                mov     rax, [rcx+18h]
                mov     rbx, rdx
                mov     r9, rax
                mov     rdx, 3FFFFFFFFFFFFFFFh
                and     r9, rdx
                jnz     loc_1404429F2
                shr     rax, 3Eh
                test    al, 1
                jnz     short loc_1402788D4
                mov     rdx, [rcx+10h]
                mov     rax, 0FFFFFFFFFFFFFFF7h
                bt      rdx, 0Ah
                mov     r8, 0FFFFFFFFFFFFF7FFh
                cmovb   rax, r8
                and     rax, rdx
                mov     [rcx+10h], rax
                test    byte ptr [rcx+22h], 10h
                jnz     short loc_1402788C3
                lea     edx, [r9+4]
                call    sub_140279270
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402788C3:                          ; CODE XREF: sub_140278860+51↑j
                mov     edx, 8
                call    sub_140279270
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402788D4:                          ; CODE XREF: sub_140278860+29↑j
                movzx   eax, byte ptr [rcx+23h]
                test    al, 10h
                jnz     short loc_140278917

loc_1402788DC:                          ; CODE XREF: sub_140278860+BC↓j
                mov     rax, [rcx+28h]
                mov     r8d, 1
                mov     rdx, [rcx+10h]
                mov     rcx, cs:qword_140C4E4C8
                shr     rax, 27h
                and     eax, 3FFh
                mov     rcx, [rcx+rax*8]
                call    sub_1402D9B64
                mov     edx, 2
                mov     rcx, rbx
                call    sub_140292A50
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140278917:                          ; CODE XREF: sub_140278860+7A↑j
                and     al, 0EFh
                mov     [rcx+23h], al
                jmp     short loc_1402788DC
sub_140278860   endp

; ---------------------------------------------------------------------------
byte_14027891E  db 12h dup(0CCh)        ; DATA XREF: .rdata:000000014005DDFC↑o
                                        ; .pdata:00000001400CE67C↑o

; =============== S U B R O U T I N E =======================================


sub_140278930   proc near               ; CODE XREF: sub_14027EB10+254↓p
                                        ; sub_1402973D0+3C9↓p ...

var_68          = qword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 0000000140442A0C SIZE 000000AE BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9b
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xor     r13d, r13d
                mov     ebp, r8d
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+88h+var_48], rax
                movzx   ebx, r9b
                mov     r14, rdx
                mov     rsi, rcx
                mov     r15d, r13d
                movups  [rsp+88h+var_58], xmm0
                test    rcx, rcx
                jnz     loc_140278BA7
                mov     r12d, 0FFFFFFh
                mov     esi, r13d
                test    r8d, r8d
                jz      loc_140278AC3
                mov     rax, 0FFFFFA8000000000h
                mov     rdx, 2AAAAAAAAAAAAAABh
                mov     r8, 3FFFFFFFFFFFFFFFh
                mov     r10, 2000000000000h
                nop     dword ptr [rax+00h]
                nop     word ptr [rax+rax+00000000h]

loc_1402789C0:                          ; CODE XREF: sub_140278930+16A↓j
                mov     rdi, [r14]
                mov     rax, rax
                mov     r9, [rdi+18h]
                mov     rcx, rdi
                sub     rcx, rax
                mov     rax, rdx
                imul    rcx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                and     r9, r8
                jnz     loc_140442A39
                movzx   ecx, byte ptr [rdi+22h]
                movzx   eax, cl
                and     al, 7
                cmp     al, 6
                jz      loc_140442A39
                test    cl, 10h
                jnz     loc_140442A39
                mov     r8, [rdi+28h]
                test    r10, r8
                jnz     loc_140442A16
                movzx   eax, byte ptr [rdi+23h]
                test    al, 40h
                jnz     loc_140442A16
                test    al, 8
                jnz     loc_140442A0C
                mov     ebx, eax
                and     ebx, 7

loc_140278A2D:                          ; CODE XREF: sub_140278930+1CA0E1↓j
                mov     rdx, r8
                shr     rdx, 27h
                test    r15, r15
                jz      loc_140278B8E

loc_140278A3D:                          ; CODE XREF: sub_140278930+272↓j
                cmp     ebx, r12d
                jnz     loc_140278B41
                mov     rax, cs:qword_140C4E4C8
                and     edx, 3FFh
                cmp     r15, [rax+rdx*8]
                jnz     loc_140278B41

loc_140278A5D:                          ; CODE XREF: sub_140278930+259↓j
                mov     edx, 84h

loc_140278A62:                          ; CODE XREF: sub_140278930+1CA104↓j
                mov     rcx, rdi
                call    sub_140279270
                inc     esi
                mov     rax, 0FFFFFA8000000000h
                add     r14, 8
                mov     r10, 2000000000000h
                mov     rdx, 2AAAAAAAAAAAAAABh
                mov     r8, 3FFFFFFFFFFFFFFFh
                cmp     esi, ebp
                jb      loc_1402789C0
                cmp     r12d, 0FFFFFFh
                jz      short loc_140278AB3
                lea     rcx, [rsp+88h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_140278AB3:                          ; CODE XREF: sub_140278930+177↑j
                mov     r14, [rsp+88h+arg_8]

loc_140278ABB:                          ; CODE XREF: sub_140278930+2A5↓j
                movzx   ebx, [rsp+88h+arg_18]

loc_140278AC3:                          ; CODE XREF: sub_140278930+55↑j
                                        ; sub_140278930+27A↓j
                cmp     bl, 11h
                lea     ecx, [rbp-1]
                mov     r8, 7FFFFFFFFFFFFFFFh
                cmovz   ecx, ebp
                test    ecx, ecx
                jz      short loc_140278B02
                mov     rax, r14
                mov     edx, ecx
                mov     r13d, ecx
                nop     dword ptr [rax+00h]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140278AF0:                          ; CODE XREF: sub_140278930+1D0↓j
                mov     rcx, [rax]
                lock and [rcx+18h], r8
                lea     rax, [rax+8]
                sub     rdx, 1
                jnz     short loc_140278AF0

loc_140278B02:                          ; CODE XREF: sub_140278930+1A8↑j
                cmp     bl, 11h
                jz      short loc_140278B28
                mov     eax, r13d
                mov     rcx, [r14+rax*8]
                lock and [rcx+18h], r8
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140442A52

loc_140278B21:                          ; CODE XREF: sub_140278930+1CA124↓j
                                        ; sub_140278930+1CA130↓j ...
                movzx   eax, bl
                mov     cr8, rax

loc_140278B28:                          ; CODE XREF: sub_140278930+1D5↑j
                mov     rbx, [rsp+88h+arg_0]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140278B41:                          ; CODE XREF: sub_140278930+110↑j
                                        ; sub_140278930+127↑j
                cmp     r12d, 0FFFFFFh
                jnz     loc_140278BDA

loc_140278B4E:                          ; CODE XREF: sub_140278930+2B8↓j
                mov     rax, cs:qword_140C4E4C8
                mov     r12d, ebx
                shr     r8, 27h
                and     r8d, 3FFh
                mov     r15, [rax+r8*8]
                mov     eax, ebx
                mov     qword ptr [rsp+88h+var_58], r13
                lea     rcx, [rax+4Dh]
                lea     rcx, [rax+rcx*4]
                lea     rdx, [r15+rcx*8]
                lea     rcx, [rsp+88h+var_58]
                mov     qword ptr [rsp+88h+var_58+8], rdx
                call    sub_14024B3F0
                jmp     loc_140278A5D
; ---------------------------------------------------------------------------

loc_140278B8E:                          ; CODE XREF: sub_140278930+107↑j
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, rdx
                and     ecx, 3FFh
                mov     r15, [rax+rcx*8]
                jmp     loc_140278A3D
; ---------------------------------------------------------------------------

loc_140278BA7:                          ; CODE XREF: sub_140278930+43↑j
                test    r8d, r8d
                jz      loc_140278AC3
                mov     rbx, rdx
                mov     rdi, rbp
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140278BC0:                          ; CODE XREF: sub_140278930+2A3↓j
                mov     rdx, [rbx]
                mov     rcx, rsi
                call    sub_14027BEE0
                lea     rbx, [rbx+8]
                sub     rdi, 1
                jnz     short loc_140278BC0
                jmp     loc_140278ABB
; ---------------------------------------------------------------------------

loc_140278BDA:                          ; CODE XREF: sub_140278930+218↑j
                lea     rcx, [rsp+88h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     r8, [rdi+28h]
                jmp     loc_140278B4E
sub_140278930   endp

; ---------------------------------------------------------------------------
algn_140278BED:                         ; DATA XREF: .rdata:000000014005DE28↑o
                                        ; .pdata:00000001400CE688↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140278C00   proc near               ; CODE XREF: MmUnlockPages+BA1↑p
                                        ; sub_140276AE0+1560↑p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                push    rbx
                push    rbp
                push    rdi
                push    r12
                sub     rsp, 38h
                mov     r12, rdx
                mov     rbp, rcx
                call    sub_1403F41D8
                mov     rdi, 0FFFFFA8000000000h
                test    eax, eax
                jz      loc_1402790AB

loc_140278C27:                          ; DATA XREF: .rdata:000000014005DE54↑o
                                        ; .rdata:000000014005DE68↑o ...
                mov     [rsp+58h+arg_8], rsi
                lea     r8, [rcx+10h]
                mov     rsi, [r8]
                mov     [rsp+58h+var_28], r13
                mov     [rsp+58h+var_30], r14

loc_140278C3D:                          ; DATA XREF: .rdata:000000014005DE68↑o
                                        ; .rdata:000000014005DE78↑o ...
                mov     [rsp+58h+var_38], r15
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     rcx, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                jb      short loc_140278CC8
                mov     rax, rcx
                cmp     r8, rax
                ja      short loc_140278CC8
                call    sub_140349680
                test    eax, eax
                jz      short loc_140278CC8
                test    sil, 1
                jz      short loc_140278CC8
                test    sil, 20h
                jz      short loc_140278C81
                test    sil, 42h
                jnz     short loc_140278CC8

loc_140278C81:                          ; CODE XREF: sub_140278C00+79↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140278CC8
                shr     r8, 3
                mov     rdx, rsi
                and     r8d, 1FFh
                or      rdx, 20h
                mov     rax, [rax+r8*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rsi
                mov     rsi, rdx
                test    al, 42h
                jz      short loc_140278CC8
                or      rsi, 42h

loc_140278CC8:                          ; CODE XREF: sub_140278C00+5C↑j
                                        ; sub_140278C00+64↑j ...
                mov     r8, [rbp+28h]
                mov     rax, 0FFFFFFFFFh
                mov     r15, [rbp+8]
                and     r8, rax
                shr     rsi, 5
                mov     edx, 4
                lea     rcx, [r8+r8*2]
                add     rcx, rcx
                mov     rax, rdi
                movzx   eax, byte ptr [rax+rcx*8+22h]
                shr     eax, 6
                test    eax, eax
                jz      short loc_140278D0B
                cmp     eax, 3
                jz      short loc_140278D0B
                cmp     eax, 2
                jnz     short loc_140278D10
                lea     edx, [rax+1Ah]
                jmp     short loc_140278D10
; ---------------------------------------------------------------------------

loc_140278D0B:                          ; CODE XREF: sub_140278C00+FA↑j
                                        ; sub_140278C00+FF↑j
                mov     edx, 0Ch

loc_140278D10:                          ; CODE XREF: sub_140278C00+104↑j
                                        ; sub_140278C00+109↑j
                mov     ebx, edx
                shl     r8, 0Ch
                and     ebx, 1Fh
                mov     r13, 0FFFFF68000000000h
                lea     rax, qword_140017520
                mov     rbx, [rax+rbx*8]
                mov     rax, 0FFFF000000000E7Fh
                and     rbx, rax
                or      rbx, r8
                or      rbx, 21h
                mov     rax, r13
                test    rax, rax
                jnz     short loc_140278DA2
                mov     rdi, r13
                neg     rdi
                shl     rdi, 19h
                sar     rdi, 10h
                mov     rax, 0FFFFF6FB40000000h
                test    rax, rax
                jnz     short loc_140278D83
                mov     rax, 7FFFFFFFFFFFFFFFh
                xor     ecx, ecx
                and     rbx, rax
                call    sub_14033FA34
                test    eax, eax
                jz      short loc_140278D83
                or      rbx, 4

loc_140278D83:                          ; CODE XREF: sub_140278C00+165↑j
                                        ; sub_140278C00+17D↑j
                mov     r8, rbx
                mov     rcx, rdi
                or      rbx, 4
                call    sub_140271580
                test    eax, eax
                jz      short loc_140278DA7
                mov     rbx, r8
                or      rbx, 104h
                jmp     short loc_140278DA7
; ---------------------------------------------------------------------------

loc_140278DA2:                          ; CODE XREF: sub_140278C00+148↑j
                bts     rbx, 8

loc_140278DA7:                          ; CODE XREF: sub_140278C00+194↑j
                                        ; sub_140278C00+1A0↑j
                movzx   edi, byte ptr cs:word_140C4DE88
                mov     rax, 0FAFFFFFFFFFFFEFFh
                mov     r14, gs:20h
                and     edi, 1
                and     rbx, rax
                shl     rdi, 8
                or      rdi, rbx
                mov     rax, 0A00000000000042h
                or      rdi, rax
                mov     rbx, [r14+7FF8h]
                test    rbx, rbx
                jz      short loc_140278E29
                xor     r9d, r9d
                lea     rcx, [rbx+30A0h]
                lea     edx, [r9+3]
                lea     r8d, [r9+1]
                call    sub_140292240
                mov     r8, rax
                mov     rdx, 7FFFFFFFF8h
                shr     r8, 9
                mov     r11, rax
                and     r8, rdx
                mov     rcx, r13
                add     r8, rcx
                mov     [rbx+3038h], r8
                test    rax, rax
                jnz     short loc_140278E61
                jmp     short loc_140278E33
; ---------------------------------------------------------------------------

loc_140278E29:                          ; CODE XREF: sub_140278C00+1E5↑j
                mov     rdx, 7FFFFFFFF8h

loc_140278E33:                          ; CODE XREF: sub_140278C00+227↑j
                mov     r11, [r14+8200h]
                mov     rax, r11
                and     r11d, 0FFFh
                shl     r11, 0Ch
                and     rax, 0FFFFFFFFFFFFF000h
                add     r11, rax
                mov     r8, r11
                shr     r8, 9
                and     r8, rdx
                mov     rax, r13
                add     r8, rax

loc_140278E61:                          ; CODE XREF: sub_140278C00+225↑j
                mov     r13, 0FFFFF6FB7DBED000h
                mov     rax, r13
                mov     r14, 0FFFFF6FB7DBED7F8h
                mov     rbx, 8000000000000000h
                cmp     r8, rax
                jb      short loc_140278ED3
                mov     rax, r14
                cmp     r8, rax
                ja      short loc_140278ED3
                call    sub_140349680
                test    eax, eax
                jz      short loc_140278EB4
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_140278EA4
                or      rdi, rbx

loc_140278EA4:                          ; CODE XREF: sub_140278C00+29F↑j
                mov     rdx, rdi
                mov     [r8], rdi
                mov     rcx, r8
                call    sub_140349620
                jmp     short loc_140278ED6
; ---------------------------------------------------------------------------

loc_140278EB4:                          ; CODE XREF: sub_140278C00+296↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140278ED3
                or      rdi, rbx

loc_140278ED3:                          ; CODE XREF: sub_140278C00+285↑j
                                        ; sub_140278C00+28D↑j ...
                mov     [r8], rdi

loc_140278ED6:                          ; CODE XREF: sub_140278C00+2B2↑j
                shr     r15, 3
                and     r15d, 1FFh
                mov     r8, [r11+r15*8]
                lea     r11, [r11+r15*8]
                mov     rax, r13
                mov     r15, [rsp+58h+var_38]
                cmp     r11, rax
                jb      short loc_140278F61

loc_140278EF6:                          ; DATA XREF: .pdata:00000001400CE6AC↑o
                                        ; .pdata:00000001400CE6B8↑o
                mov     rax, r14
                cmp     r11, rax
                ja      short loc_140278F61
                call    sub_140349680
                test    eax, eax
                jz      short loc_140278F61
                test    r8b, 1
                jz      short loc_140278F61
                test    r8b, 20h
                jz      short loc_140278F19
                test    r8b, 42h
                jnz     short loc_140278F61

loc_140278F19:                          ; CODE XREF: sub_140278C00+311↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140278F61
                mov     rax, r11
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r8
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_140278F61
                or      r8, 42h

loc_140278F61:                          ; CODE XREF: sub_140278C00+2F4↑j
                                        ; sub_140278C00+2FC↑j ...
                mov     [rsp+58h+arg_0], r8
                mov     rax, r13
                lea     rcx, [rsp+58h+arg_0]
                cmp     rcx, rax
                jb      short loc_140278FE5
                mov     rax, r14
                lea     rcx, [rsp+58h+arg_0]
                cmp     rcx, rax
                ja      short loc_140278FE5
                call    sub_140349680
                test    eax, eax
                jz      short loc_140278FE5
                test    r8b, 1
                jz      short loc_140278FE5
                test    r8b, 20h
                jz      short loc_140278F9B
                test    r8b, 42h
                jnz     short loc_140278FE5

loc_140278F9B:                          ; CODE XREF: sub_140278C00+393↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140278FE5
                lea     rax, [rsp+58h+arg_0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r8
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_140278FE5
                or      r8, 42h

loc_140278FE5:                          ; CODE XREF: sub_140278C00+371↑j
                                        ; sub_140278C00+37E↑j ...
                mov     rcx, cs:qword_140C4DDC0
                mov     edx, esi
                mov     rsi, [rsp+58h+arg_8]
                and     edx, 1Fh
                or      rdx, 40h
                mov     rax, 0FFFFFFFFF000h
                shl     rdx, 5
                and     r8, rax
                or      rdx, r8
                test    rcx, rcx
                jz      short loc_140279024

loc_140279013:                          ; DATA XREF: .pdata:00000001400CE6B8↑o
                                        ; .pdata:00000001400CE6C4↑o
                mov     rax, rdx
                and     rax, rcx
                jnz     short loc_140279020
                or      rdx, rcx
                jmp     short loc_140279024
; ---------------------------------------------------------------------------

loc_140279020:                          ; CODE XREF: sub_140278C00+419↑j
                or      rdx, 10h

loc_140279024:                          ; CODE XREF: sub_140278C00+411↑j
                                        ; sub_140278C00+41E↑j
                mov     [rsp+58h+arg_0], rdx
                mov     rax, r13
                mov     r13, [rsp+58h+var_28]
                cmp     r11, rax
                jb      short loc_140279089

loc_140279036:                          ; DATA XREF: .pdata:00000001400CE6C4↑o
                                        ; .pdata:00000001400CE6D0↑o
                mov     rax, r14
                cmp     r11, rax
                ja      short loc_140279089
                call    sub_140349680
                test    eax, eax
                jz      short loc_140279065
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_140279058
                test    dl, 1
                jz      short loc_140279058
                or      rdx, rbx

loc_140279058:                          ; CODE XREF: sub_140278C00+44E↑j
                                        ; sub_140278C00+453↑j
                mov     rcx, r11
                mov     [r11], rdx
                call    sub_140349620
                jmp     short loc_14027908C
; ---------------------------------------------------------------------------

loc_140279065:                          ; CODE XREF: sub_140278C00+445↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140279089
                test    dl, 1
                jz      short loc_140279089
                or      rdx, rbx

loc_140279089:                          ; CODE XREF: sub_140278C00+434↑j
                                        ; sub_140278C00+43C↑j ...
                mov     [r11], rdx

loc_14027908C:                          ; CODE XREF: sub_140278C00+463↑j
                mov     r8d, 80000000h
                mov     dl, 11h
                mov     rcx, r11
                call    sub_1402432B0
                mov     r14, [rsp+58h+var_30]
                mov     rdi, 0FFFFFA8000000000h

loc_1402790AB:                          ; CODE XREF: sub_140278C00+21↑j
                                        ; DATA XREF: .pdata:00000001400CE6D0↑o ...
                mov     rcx, [rbp+18h]
                mov     eax, 0FFFFh
                add     [rbp+20h], ax
                shr     rcx, 3Eh
                and     ecx, 1
                cmp     word ptr [rbp+20h], 0
                jz      short loc_140279129
                movzx   eax, byte ptr [rbp+22h]
                test    ecx, ecx
                jz      short loc_1402790D2
                or      al, 7
                jmp     short loc_1402790E0
; ---------------------------------------------------------------------------

loc_1402790D2:                          ; CODE XREF: sub_140278C00+4CC↑j
                test    al, 10h
                jz      short loc_1402790DC
                and     al, 0FBh
                or      al, 3
                jmp     short loc_1402790E0
; ---------------------------------------------------------------------------

loc_1402790DC:                          ; CODE XREF: sub_140278C00+4D4↑j
                and     al, 0FAh
                or      al, 2

loc_1402790E0:                          ; CODE XREF: sub_140278C00+4D0↑j
                                        ; sub_140278C00+4DA↑j
                lea     rcx, [rbp+10h]
                mov     [rbp+22h], al
                mov     eax, [rcx]
                bt      rax, 0Ah
                jb      short loc_140279119
                call    sub_1402DF6E4
                test    eax, eax
                jz      short loc_140279119
                mov     rdx, [rbp+28h]
                mov     rcx, cs:qword_140C4E4C8
                shr     rdx, 27h
                and     edx, 3FFh
                mov     rdx, [rcx+rdx*8]
                mov     byte ptr [rdx+2A3h], 1

loc_140279119:                          ; CODE XREF: sub_140278C00+4EE↑j
                                        ; sub_140278C00+4F7↑j
                mov     eax, 3
                add     rsp, 38h
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140279129:                          ; CODE XREF: sub_140278C00+4C4↑j
                test    ecx, ecx
                jz      loc_1402791D3
                movzx   eax, byte ptr [rbp+23h]
                test    al, 10h
                jz      short loc_14027913E
                and     al, 0EFh
                mov     [rbp+23h], al

loc_14027913E:                          ; CODE XREF: sub_140278C00+537↑j
                mov     rdx, [rbp+10h]
                mov     rcx, [rbp+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     [rsp+58h+arg_10], rdx
                mov     rbx, [rax+rcx*8]
                bt      rdx, 0Ah
                jb      short loc_140279195
                movzx   eax, dl
                shr     al, 2
                test    al, 1
                jnz     short loc_140279178
                shr     dl, 1
                test    dl, 1
                jz      short loc_140279195

loc_140279178:                          ; CODE XREF: sub_140278C00+56F↑j
                lea     rcx, [rsp+58h+arg_10]
                call    sub_1402805F0
                test    rax, rax
                jz      short loc_140279195
                xor     r8d, r8d
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_14020B2C0

loc_140279195:                          ; CODE XREF: sub_140278C00+565↑j
                                        ; sub_140278C00+576↑j ...
                mov     rcx, rdi
                sub     rbp, rcx
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rbp
                mov     rcx, rdx
                sar     rcx, 3
                mov     rdx, rcx
                shr     rdx, 3Fh
                add     rcx, rdx
                mov     edx, 2
                call    sub_140292A50
                mov     eax, 4
                add     rsp, 38h
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402791D3:                          ; CODE XREF: sub_140278C00+52B↑j
                mov     rcx, [rbp+10h]
                mov     rax, 0FFFFFFFFFFFFFFF7h
                bt      rcx, 0Ah
                mov     rdx, 0FFFFFFFFFFFFF7FFh
                cmovb   rax, rdx
                and     rax, rcx
                mov     [rbp+10h], rax
                movzx   eax, byte ptr [rbp+22h]
                test    al, 10h
                jz      short loc_140279210
                cmp     r12, 1
                mov     edx, 88h
                mov     eax, 8
                cmovnz  edx, eax
                jmp     short loc_14027924A
; ---------------------------------------------------------------------------

loc_140279210:                          ; CODE XREF: sub_140278C00+5FB↑j
                and     al, 0FAh
                or      al, 2
                mov     [rbp+22h], al
                cmp     r12, 1
                jbe     short loc_140279245
                mov     rcx, rbp
                call    sub_14022FC60
                cmp     eax, 5
                jnb     short loc_140279245
                mov     rdx, rbp
                mov     rcx, r12
                call    sub_14027BEE0
                mov     eax, 4
                add     rsp, 38h
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140279245:                          ; CODE XREF: sub_140278C00+61B↑j
                                        ; sub_140278C00+628↑j
                mov     edx, 4

loc_14027924A:                          ; CODE XREF: sub_140278C00+60E↑j
                mov     rcx, rbp
                call    sub_140279270
                mov     eax, 4
                add     rsp, 38h
                pop     r12
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140278C00   endp

algn_140279262:                         ; DATA XREF: .pdata:00000001400CE6DC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140279270   proc near               ; CODE XREF: sub_140213950+D7↑p
                                        ; sub_140278860+57↑p ...

var_98          = dword ptr -98h
var_78          = qword ptr -78h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], edx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r9, [rcx+28h]
                xor     eax, eax
                mov     [rsp+98h+var_58], rax
                mov     r8, r9
                mov     rax, cs:qword_140C4E4C8
                xorps   xmm0, xmm0
                shr     r8, 27h
                mov     r10d, edx
                and     r8d, 3FFh
                mov     rsi, rcx
                movups  [rsp+98h+var_68], xmm0
                mov     r14, [rax+r8*8]
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                sub     rcx, rax
                xor     r11d, r11d
                mov     rax, 2AAAAAAAAAAAAAABh
                mov     edi, r11d
                imul    rcx
                mov     r12d, 1
                mov     r13, rdx
                sar     r13, 3
                mov     rax, r13
                shr     rax, 3Fh
                add     r13, rax
                mov     rax, 2000000000000h
                test    rax, r9
                mov     rax, cs:qword_140C4E820
                cmovnz  edi, r12d
                cmp     r13, rax
                jb      short loc_14027931C
                add     rax, 800h
                cmp     r13, rax
                jnb     short loc_14027931C
                or      edi, 8
                jmp     short loc_14027933C
; ---------------------------------------------------------------------------

loc_14027931C:                          ; CODE XREF: sub_140279270+9A↑j
                                        ; sub_140279270+A5↑j
                cmp     cs:byte_140C51EDE, r11b
                jz      short loc_14027933C
                mov     rax, cs:qword_140C52408
                mov     rcx, r13
                shr     rcx, 9
                bt      [rax], rcx
                jnb     short loc_14027933C
                or      edi, 2

loc_14027933C:                          ; CODE XREF: sub_140279270+AA↑j
                                        ; sub_140279270+B3↑j ...
                mov     ebx, edi
                mov     [rsp+98h+arg_10], ebx
                test    r10b, 8
                jz      short loc_140279372
                test    r12b, dil
                jz      short loc_140279372
                cmp     cs:byte_140C4DD68, r11b
                jz      short loc_140279372
                movzx   eax, byte ptr [rsi+22h]
                and     r10d, 0FFFFFFF7h
                or      r10d, 4
                and     al, 0EFh
                mov     [rsp+98h+arg_8], r10d
                mov     [rsi+22h], al

loc_140279372:                          ; CODE XREF: sub_140279270+D9↑j
                                        ; sub_140279270+DE↑j ...
                lea     rcx, qword_140C4C940
                test    r10b, 4
                jz      short loc_14027939D
                lea     r15, [r14+940h]
                test    r12b, dil
                jz      short loc_1402793F4
                test    byte ptr [rsi+23h], 40h
                jz      short loc_1402793F4
                lea     r14, unk_140C50C00
                mov     r15, rcx
                jmp     short loc_1402793F4
; ---------------------------------------------------------------------------

loc_14027939D:                          ; CODE XREF: sub_140279270+10D↑j
                test    r10b, 8
                jz      short loc_1402793AC
                lea     r15, [r14+1D40h]
                jmp     short loc_1402793F4
; ---------------------------------------------------------------------------

loc_1402793AC:                          ; CODE XREF: sub_140279270+131↑j
                test    r10b, 10h
                jz      short loc_1402793BB
                lea     r15, [r14+1D80h]
                jmp     short loc_1402793F4
; ---------------------------------------------------------------------------

loc_1402793BB:                          ; CODE XREF: sub_140279270+140↑j
                bt      r10d, 8
                jnb     short loc_1402793CB
                lea     r15, [r14+1040h]
                jmp     short loc_1402793F4
; ---------------------------------------------------------------------------

loc_1402793CB:                          ; CODE XREF: sub_140279270+150↑j
                bt      r10d, 0Bh
                jnb     short loc_1402793ED
                mov     edx, r12d
                mov     rcx, rsi
                call    sub_140553084
                mov     r10d, [rsp+98h+arg_8]
                mov     r15, rax
                xor     r11d, r11d
                jmp     short loc_1402793F4
; ---------------------------------------------------------------------------

loc_1402793ED:                          ; CODE XREF: sub_140279270+160↑j
                lea     r15, [r14+1000h]

loc_1402793F4:                          ; CODE XREF: sub_140279270+119↑j
                                        ; sub_140279270+11F↑j ...
                mov     r8d, [r15+8]
                mov     edx, edi
                mov     [rsp+98h+arg_0], r8d
                and     edx, r12d
                jnz     short loc_14027942A
                lock or [rsp+98h+var_98], edx
                mov     ecx, cs:dword_140D23080
                mov     rax, 0F00000000000000h
                shl     rcx, 38h
                xor     rcx, [rsi+18h]
                and     rcx, rax
                xor     [rsi+18h], rcx

loc_14027942A:                          ; CODE XREF: sub_140279270+195↑j
                mov     [rsp+98h+arg_18], r11
                cmp     r8d, 2
                jnz     loc_140279611
                movzx   ecx, byte ptr [rsi+23h]
                test    cl, 40h
                jz      short loc_140279472
                test    r8b, bl
                jnz     short loc_140279472
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402D6010
                mov     edx, 20h ; ' '
                mov     rcx, rsi
                call    sub_140279270
                add     rsp, 60h
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

loc_140279472:                          ; CODE XREF: sub_140279270+1D3↑j
                                        ; sub_140279270+1D8↑j
                test    edx, edx
                jz      short loc_140279492
                movzx   eax, byte ptr [rsi+22h]
                and     al, 0FAh
                or      al, 2
                mov     [rsi+22h], al
                add     rsp, 60h
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

loc_140279492:                          ; CODE XREF: sub_140279270+204↑j
                bt      r10d, 0Bh
                jb      loc_14027958C
                test    cl, 8
                jz      short loc_1402794A9
                mov     eax, 5
                jmp     short loc_1402794AF
; ---------------------------------------------------------------------------

loc_1402794A9:                          ; CODE XREF: sub_140279270+230↑j
                mov     rax, rcx
                and     eax, 7

loc_1402794AF:                          ; CODE XREF: sub_140279270+237↑j
                lea     r15, [rax+4Ch]
                lea     r15, [rax+r15*4]
                lea     r15, [r14+r15*8]
                test    cl, 8
                jnz     loc_14027958C
                test    bl, 2
                jnz     loc_14027958C
                mov     rcx, rsi
                call    sub_1403F41D8
                test    eax, eax
                mov     ecx, 1100h
                mov     edx, 13C0h
                cmovz   ecx, edx
                lock inc qword ptr [rcx+r14]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+98h+var_50], xmm0
                mov     [rsp+98h+var_40], rax
                lock xadd [r14+1BC0h], r12
                inc     r12
                cmp     r12, 420h
                ja      short loc_14027956F
                cmp     r12, 0A0h
                jnz     short loc_14027951B
                lea     eax, [rdx-58h]
                jmp     short loc_140279536
; ---------------------------------------------------------------------------

loc_14027951B:                          ; CODE XREF: sub_140279270+2A4↑j
                cmp     r12, 420h
                jnz     short loc_14027952B
                mov     eax, 1388h
                jmp     short loc_140279536
; ---------------------------------------------------------------------------

loc_14027952B:                          ; CODE XREF: sub_140279270+2B2↑j
                cmp     r12, 22h ; '"'
                jnz     short loc_14027956F
                mov     eax, 1348h

loc_140279536:                          ; CODE XREF: sub_140279270+2A9↑j
                                        ; sub_140279270+2B9↑j
                lea     rdx, [r14+1340h]
                mov     qword ptr [rsp+98h+var_50], r11
                lea     rcx, [rsp+98h+var_50]
                mov     qword ptr [rsp+98h+var_50+8], rdx
                lea     rbx, [r14+rax]
                call    sub_14024B3F0
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    KeSetEvent
                inc     dword ptr [rbx+18h]
                lea     rcx, [rsp+98h+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_14027956F:                          ; CODE XREF: sub_140279270+29B↑j
                                        ; sub_140279270+2BF↑j
                dec     r12
                cmp     r12, [r14+1430h]
                jz      short loc_140279584
                cmp     r12, [r14+1438h]
                jnz     short loc_14027958C

loc_140279584:                          ; CODE XREF: sub_140279270+309↑j
                mov     rcx, r14
                call    sub_1403B69C4

loc_14027958C:                          ; CODE XREF: sub_140279270+227↑j
                                        ; sub_140279270+24E↑j ...
                mov     edx, [rsp+98h+arg_8]
                test    dl, dl
                js      loc_14027998C
                xor     eax, eax
                lea     rbx, [r15+20h]
                mov     qword ptr [rsp+98h+var_68+8], rbx
                mov     qword ptr [rsp+98h+var_68], rax
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_1402795D6
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_1402795D6
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_1402795D6
                call    sub_1403F2EC4

loc_1402795D6:                          ; CODE XREF: sub_140279270+34E↑j
                                        ; sub_140279270+354↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_1402795F1
                mov     rdx, rbx
                lea     rcx, [rsp+98h+var_68]
                call    sub_14051652C
                jmp     loc_140279985
; ---------------------------------------------------------------------------

loc_1402795F1:                          ; CODE XREF: sub_140279270+36D↑j
                lea     rdx, [rsp+98h+var_68]
                xchg    rdx, [rbx]
                test    rdx, rdx
                jz      loc_140279985
                lea     rcx, [rsp+98h+var_68]
                call    sub_14025FC20
                jmp     loc_140279985
; ---------------------------------------------------------------------------

loc_140279611:                          ; CODE XREF: sub_140279270+1C6↑j
                cmp     r8d, 3
                jnz     short loc_14027963D
                mov     rcx, rsi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_140279630
                lock inc qword ptr [r14+1100h]
                jmp     loc_1402796E4
; ---------------------------------------------------------------------------

loc_140279630:                          ; CODE XREF: sub_140279270+3B1↑j
                lock inc qword ptr [r14+13C0h]
                jmp     loc_1402796E4
; ---------------------------------------------------------------------------

loc_14027963D:                          ; CODE XREF: sub_140279270+3A5↑j
                cmp     r8d, 4
                jnz     loc_140279905
                mov     rcx, cs:qword_140C4DDC0
                mov     rax, [rsi+10h]
                test    rcx, rcx
                jz      short loc_140279661
                test    al, 10h
                jnz     short loc_140279661
                not     rcx
                and     rax, rcx

loc_140279661:                          ; CODE XREF: sub_140279270+3E5↑j
                                        ; sub_140279270+3E9↑j
                sar     rax, 10h
                mov     rcx, rsi
                mov     r12, [rax]
                mov     [rsp+98h+arg_18], r12
                call    sub_1403F41D8
                test    eax, eax
                mov     ecx, 1100h
                mov     edx, 13C0h
                cmovz   ecx, edx
                lock inc qword ptr [rcx+r14]
                lea     rdx, [r15+20h]
                mov     qword ptr [rsp+98h+var_68], r11
                lea     rcx, [rsp+98h+var_68]
                mov     qword ptr [rsp+98h+var_68+8], rdx
                call    sub_14024B3F0
                lea     rcx, [r12+48h]
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                mov     eax, [r12+38h]
                test    al, 8
                jnz     loc_140279985
                lea     rcx, [r12+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                lea     rcx, [rsp+98h+var_68]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     ebx, [rsp+98h+arg_10]
                xor     r11d, r11d
                mov     [rsp+98h+arg_0], 3

loc_1402796E4:                          ; CODE XREF: sub_140279270+3BB↑j
                                        ; sub_140279270+3C8↑j
                lock inc qword ptr [r14+1D40h]
                mov     eax, [rsi+10h]
                bt      rax, 0Ah
                jb      loc_1402797BB
                mov     r12d, [rsp+98h+arg_8]
                test    r12b, r12b
                js      short loc_14027976F
                add     r15, 20h ; ' '
                mov     qword ptr [rsp+98h+var_68], r11
                mov     qword ptr [rsp+98h+var_68+8], r15
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140279740
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140279740
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140279740
                call    sub_1403F2EC4

loc_140279740:                          ; CODE XREF: sub_140279270+4B8↑j
                                        ; sub_140279270+4BE↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_140279758
                mov     rdx, r15
                lea     rcx, [rsp+98h+var_68]
                call    sub_14051652C
                jmp     short loc_14027976F
; ---------------------------------------------------------------------------

loc_140279758:                          ; CODE XREF: sub_140279270+4D7↑j
                lea     rdx, [rsp+98h+var_68]
                xchg    rdx, [r15]
                test    rdx, rdx
                jz      short loc_14027976F
                lea     rcx, [rsp+98h+var_68]
                call    sub_14025FC20

loc_14027976F:                          ; CODE XREF: sub_140279270+495↑j
                                        ; sub_140279270+4E6↑j ...
                mov     rax, [rsi+10h]
                mov     rcx, rax
                shr     al, 1
                shr     rcx, 0Ch
                and     ecx, 0Fh
                test    al, 1
                jnz     short loc_140279795
                cmp     ecx, [r14+484h]
                jz      short loc_140279795
                lea     r15, [r14+0AC0h]
                jmp     short loc_1402797A1
; ---------------------------------------------------------------------------

loc_140279795:                          ; CODE XREF: sub_140279270+511↑j
                                        ; sub_140279270+51A↑j
                lea     r15, [rcx+58h]
                lea     r15, [rcx+r15*4]
                lea     r15, [r14+r15*8]

loc_1402797A1:                          ; CODE XREF: sub_140279270+523↑j
                mov     rax, [r15]
                mov     edi, ebx
                inc     qword ptr [r14+1DB0h]
                or      edi, 4
                test    rax, rax
                cmovnz  edi, ebx
                jmp     loc_140279843
; ---------------------------------------------------------------------------

loc_1402797BB:                          ; CODE XREF: sub_140279270+484↑j
                mov     rax, [r14+1AC0h]
                mov     ebx, [rax+18h]
                mov     qword ptr [rsp+98h+var_68], r11
                lea     rcx, [rbx+6Ch]
                lea     rcx, [rbx+rcx*4]
                lea     r15, [r14+rcx*8]
                lea     r12, [r15+20h]
                mov     qword ptr [rsp+98h+var_68+8], r12
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14027980A
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14027980A
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14027980A
                call    sub_1403F2EC4

loc_14027980A:                          ; CODE XREF: sub_140279270+582↑j
                                        ; sub_140279270+588↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_140279822
                mov     rdx, r12
                lea     rcx, [rsp+98h+var_68]
                call    sub_14051652C
                jmp     short loc_14027983A
; ---------------------------------------------------------------------------

loc_140279822:                          ; CODE XREF: sub_140279270+5A1↑j
                lea     rdx, [rsp+98h+var_68]
                xchg    rdx, [r12]
                test    rdx, rdx
                jz      short loc_14027983A
                lea     rcx, [rsp+98h+var_68]
                call    sub_14025FC20

loc_14027983A:                          ; CODE XREF: sub_140279270+5B0↑j
                                        ; sub_140279270+5BE↑j
                xor     bl, [rsi+27h]
                and     bl, 0Fh
                xor     [rsi+27h], bl

loc_140279843:                          ; CODE XREF: sub_140279270+546↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                inc     dword ptr [rcx+7D0h]
                mov     r8, [r14+1BC0h]
                cmp     r8, 420h
                jnb     loc_1402798F6
                mov     r9d, cs:dword_140C4DD7C
                lea     r10, [r14+1068h]
                xor     eax, eax
                mov     r11d, eax

loc_140279880:                          ; CODE XREF: sub_140279270+647↓j
                mov     rcx, [r10]
                mov     edx, eax
                test    r9d, r9d
                jz      short loc_1402798AC
                nop     word ptr [rax+rax+00h]

loc_140279890:                          ; CODE XREF: sub_140279270+638↓j
                movzx   eax, word ptr [rcx]
                add     r8, rax
                cmp     r8, 420h
                jnb     short loc_1402798F6
                inc     edx
                add     rcx, 10h
                cmp     edx, r9d
                jb      short loc_140279890
                xor     eax, eax

loc_1402798AC:                          ; CODE XREF: sub_140279270+618↑j
                inc     r11
                add     r10, 8
                cmp     r11, 1
                jle     short loc_140279880
                mov     rbx, [r14+1DB0h]
                cmp     rbx, 10h
                jb      short loc_1402798D5
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                mov     rcx, r14
                call    sub_140309B9C

loc_1402798D5:                          ; CODE XREF: sub_140279270+654↑j
                mov     rax, [r14+1D40h]
                sub     rax, rbx
                cmp     rax, 10h
                jb      short loc_1402798F6
                lea     rcx, [r14+318h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_1402798F6:                          ; CODE XREF: sub_140279270+5F7↑j
                                        ; sub_140279270+62D↑j ...
                xor     eax, eax
                mov     [rsp+98h+arg_18], rax
                jmp     loc_140279985
; ---------------------------------------------------------------------------

loc_140279905:                          ; CODE XREF: sub_140279270+3D1↑j
                test    byte ptr [rsi+23h], 40h
                jz      short loc_140279918
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14054F5F8
                xor     r11d, r11d

loc_140279918:                          ; CODE XREF: sub_140279270+699↑j
                test    [rsp+98h+arg_8], 100h
                jz      short loc_140279942
                lea     rdx, [r14+1060h]
                mov     qword ptr [rsp+98h+var_68], r11
                lea     rcx, [rsp+98h+var_68]
                mov     qword ptr [rsp+98h+var_68+8], rdx
                call    sub_14024B3F0
                jmp     short loc_14027997D
; ---------------------------------------------------------------------------

loc_140279942:                          ; CODE XREF: sub_140279270+6B3↑j
                lea     rbx, qword_140C4C940
                cmp     r15, rbx
                jz      short loc_14027995B
                mov     edx, 0Ch
                mov     rcx, rsi
                call    sub_1402D69E8

loc_14027995B:                          ; CODE XREF: sub_140279270+6DC↑j
                lea     rdx, [r14+1020h]
                xor     eax, eax
                lea     rcx, [rsp+98h+var_68]
                mov     qword ptr [rsp+98h+var_68+8], rdx
                mov     qword ptr [rsp+98h+var_68], rax
                call    sub_14024B3F0
                cmp     r15, rbx
                jz      short loc_140279985

loc_14027997D:                          ; CODE XREF: sub_140279270+6D0↑j
                mov     qword ptr [rsi+8], 0FFFFFFFFFFFFFFFCh

loc_140279985:                          ; CODE XREF: sub_140279270+37C↑j
                                        ; sub_140279270+38C↑j ...
                mov     edx, [rsp+98h+arg_8]

loc_14027998C:                          ; CODE XREF: sub_140279270+325↑j
                mov     ecx, edi
                shr     ecx, 1
                test    byte ptr [rsi+23h], 8
                jnz     short loc_1402799B2
                mov     ebx, ecx
                and     ebx, 1
                jz      short loc_1402799AD
                bt      edx, 0Bh
                jb      short loc_1402799AD
                cmp     [rsp+98h+arg_0], 2
                jz      short loc_1402799B2

loc_1402799AD:                          ; CODE XREF: sub_140279270+72B↑j
                                        ; sub_140279270+731↑j
                inc     qword ptr [r15]
                jmp     short loc_1402799C1
; ---------------------------------------------------------------------------

loc_1402799B2:                          ; CODE XREF: sub_140279270+724↑j
                                        ; sub_140279270+73B↑j
                mov     ebx, ecx
                and     ebx, 1
                jnz     short loc_1402799C1
                mov     rcx, rsi
                call    sub_14034292C

loc_1402799C1:                          ; CODE XREF: sub_140279270+740↑j
                                        ; sub_140279270+747↑j
                mov     r12, [r15+18h]
                mov     r10, 0FFFFFFFFFh
                cmp     r12, r10
                jz      short loc_1402799FA
                lea     rdx, [r12+r12*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rdx, 4
                mov     rax, rax
                add     rdx, rax
                mov     rax, [rdx]
                xor     rax, r13
                and     rax, r10
                xor     [rdx], rax
                jmp     short loc_1402799FE
; ---------------------------------------------------------------------------

loc_1402799FA:                          ; CODE XREF: sub_140279270+762↑j
                mov     [r15+10h], r13

loc_1402799FE:                          ; CODE XREF: sub_140279270+788↑j
                movzx   eax, byte ptr [rsi+22h]
                lea     rcx, qword_140C4C940
                cmp     r15, rcx
                jnz     short loc_140279A2F
                and     al, 0FAh
                or      al, 2
                mov     [rsi+22h], al
                movzx   eax, byte ptr [rsi+23h]
                or      al, 10h
                mov     [rsi+23h], al
                call    sub_140542A84
                mov     r10, 0FFFFFFFFFh
                jmp     short loc_140279A41
; ---------------------------------------------------------------------------

loc_140279A2F:                          ; CODE XREF: sub_140279270+79C↑j
                movzx   ecx, byte ptr [rsp+98h+arg_0]
                xor     cl, al
                and     cl, 7
                xor     cl, al
                mov     [rsi+22h], cl

loc_140279A41:                          ; CODE XREF: sub_140279270+7BD↑j
                mov     [r15+18h], r13
                and     r12, r10
                mov     rax, [rsi+18h]
                mov     r11, 0FFFFFFF000000000h
                or      [rsi], r10
                and     rax, r11
                or      rax, r12
                cmp     [rsp+98h+arg_0], 2
                mov     [rsi+18h], rax
                jnz     loc_140279C22
                test    ebx, ebx
                jz      short loc_140279A93
                mov     r12d, [rsp+98h+arg_8]
                mov     rcx, rsi
                mov     edx, r12d
                shr     edx, 0Bh
                and     edx, 1
                call    sub_1403495E0
                jmp     loc_140279C2A
; ---------------------------------------------------------------------------

loc_140279A93:                          ; CODE XREF: sub_140279270+803↑j
                movzx   r15d, byte ptr [rsi+23h]
                test    r15b, 8
                jnz     loc_140279C22
                mov     rcx, [rsi+28h]
                mov     rax, cs:qword_140C4E4C8
                mov     edx, cs:dword_140C4DD08
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     r12, [rax+rcx*8]
                movsxd  rcx, cs:dword_140C4DD04
                cmp     ecx, edx
                ja      short loc_140279AE9
                mov     rax, rcx
                shl     rax, 4
                add     rax, cs:qword_140C4DD48
                cmp     r13, [rax]
                jb      short loc_140279AE9
                cmp     ecx, edx
                jz      short loc_140279B4B
                cmp     r13, [rax+10h]
                jb      short loc_140279B4B

loc_140279AE9:                          ; CODE XREF: sub_140279270+85A↑j
                                        ; sub_140279270+86D↑j
                xor     r9d, r9d
                mov     r8d, r9d
                test    edx, edx
                js      loc_140279CF8
                nop     word ptr [rax+rax+00000000h]

loc_140279B00:                          ; CODE XREF: sub_140279270+8D1↓j
                lea     ecx, [r8+rdx]
                sar     ecx, 1
                movsxd  rax, ecx
                shl     rax, 4
                add     rax, cs:qword_140C4DD48
                cmp     r13, [rax]
                jnb     short loc_140279B26
                test    ecx, ecx
                jz      loc_140279D10
                lea     edx, [rcx-1]
                jmp     short loc_140279B38
; ---------------------------------------------------------------------------

loc_140279B26:                          ; CODE XREF: sub_140279270+8A7↑j
                cmp     ecx, cs:dword_140C4DD08
                jz      short loc_140279B43
                cmp     r13, [rax+10h]
                jb      short loc_140279B43
                lea     r8d, [rcx+1]

loc_140279B38:                          ; CODE XREF: sub_140279270+8B4↑j
                cmp     edx, r8d
                jl      loc_140279CF8
                jmp     short loc_140279B00
; ---------------------------------------------------------------------------

loc_140279B43:                          ; CODE XREF: sub_140279270+8BC↑j
                                        ; sub_140279270+8C2↑j
                mov     cs:dword_140C4DD04, ecx
                jmp     short loc_140279B4E
; ---------------------------------------------------------------------------

loc_140279B4B:                          ; CODE XREF: sub_140279270+871↑j
                                        ; sub_140279270+877↑j
                xor     r9d, r9d

loc_140279B4E:                          ; CODE XREF: sub_140279270+8D9↑j
                cmp     cs:qword_140C4DD50, 0
                mov     ebx, [rax+8]
                jz      short loc_140279B7C
                mov     rcx, r13
                call    sub_1403216F8
                mov     r8d, eax
                mov     r10, 0FFFFFFFFFh
                mov     r11, 0FFFFFFF000000000h
                jmp     short loc_140279B7F
; ---------------------------------------------------------------------------

loc_140279B7C:                          ; CODE XREF: sub_140279270+8E9↑j
                mov     r8d, r9d

loc_140279B7F:                          ; CODE XREF: sub_140279270+90A↑j
                mov     eax, r8d
                mov     rcx, r15
                imul    rdx, rbx, 11C0h
                and     ecx, 7
                add     rdx, [r12+10h]
                lea     rcx, [rcx+rax*8]
                lea     rax, [rcx+rcx*2]
                lea     r9, [rdx+rax*8]
                inc     qword ptr [r9+0CB8h]
                mov     r8, [r9+0CC8h]
                cmp     r8, r10
                jz      short loc_140279BEB
                lea     rdx, [r8+r8*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rdx, 4
                mov     rax, rax
                add     rdx, rax
                mov     rcx, r13
                shl     rcx, 1Ch
                mov     rax, r13
                shl     rax, 1Ch
                xor     rcx, [rdx]
                and     rcx, r10
                mov     [rdx+27h], r13b
                xor     rcx, rax
                mov     [rdx], rcx
                jmp     short loc_140279BF2
; ---------------------------------------------------------------------------

loc_140279BEB:                          ; CODE XREF: sub_140279270+941↑j
                mov     [r9+0CC0h], r13

loc_140279BF2:                          ; CODE XREF: sub_140279270+979↑j
                or      [rsi], r11
                mov     rax, 0FFFFF000000000h
                mov     [rsi+24h], r8w
                shr     r8, 10h
                shl     r8, 24h
                xor     r8, [rsi+18h]
                and     r8, rax
                mov     byte ptr [rsi+27h], 0FFh
                xor     [rsi+18h], r8
                mov     [r9+0CC8h], r13

loc_140279C22:                          ; CODE XREF: sub_140279270+7FB↑j
                                        ; sub_140279270+82C↑j
                mov     r12d, [rsp+98h+arg_8]

loc_140279C2A:                          ; CODE XREF: sub_140279270+81E↑j
                mov     rax, [rsp+98h+arg_18]
                test    rax, rax
                jz      short loc_140279C40
                lea     rcx, [rax+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel

loc_140279C40:                          ; CODE XREF: sub_140279270+9C5↑j
                test    r12b, r12b
                js      loc_140279CD0
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_140279C66
                mov     rdx, [rsp+98h]
                lea     rcx, [rsp+98h+var_68]
                call    sub_1405165EC
                jmp     short loc_140279CA5
; ---------------------------------------------------------------------------

loc_140279C66:                          ; CODE XREF: sub_140279270+9E0↑j
                prefetchw byte ptr [rsp+98h+var_68]
                mov     rax, qword ptr [rsp+98h+var_68]
                xor     ebx, ebx
                test    rax, rax
                jnz     short loc_140279C9A
                mov     rcx, qword ptr [rsp+98h+var_68+8]
                lea     rax, [rsp+98h+var_68]
                lock cmpxchg [rcx], rbx
                lea     rcx, [rsp+98h+var_68]
                cmp     rax, rcx
                jz      short loc_140279CA5
                lea     rcx, [rsp+98h+var_68]
                call    sub_140313680

loc_140279C9A:                          ; CODE XREF: sub_140279270+A05↑j
                mov     qword ptr [rsp+98h+var_68], rbx
                lock xor qword ptr [rax+8], 1

loc_140279CA5:                          ; CODE XREF: sub_140279270+9F4↑j
                                        ; sub_140279270+A1E↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_140279CD0
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_140279CD0
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_140279CD0
                call    sub_1403F2EC4

loc_140279CD0:                          ; CODE XREF: sub_140279270+9D3↑j
                                        ; sub_140279270+A48↑j ...
                test    dil, 4
                jz      short loc_140279CE7
                lea     rcx, [r14+370h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_140279CE7:                          ; CODE XREF: sub_140279270+A64↑j
                add     rsp, 60h
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

loc_140279CF8:                          ; CODE XREF: sub_140279270+881↑j
                                        ; sub_140279270+8CB↑j
                mov     r8, r13
                mov     [rsp+98h+var_78], r9
                mov     edx, 6201h
                mov     ecx, 1Ah
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140279D10:                          ; CODE XREF: sub_140279270+8AB↑j
                mov     [rsp+98h+var_78], r9
                mov     r8, r13
                mov     r9, rax
                mov     edx, 6200h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_140279270   endp

algn_140279D2B:                         ; DATA XREF: .pdata:00000001400CE6E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140279D40   proc near               ; CODE XREF: sub_14022FC80:loc_14022FEDA↑p
                                        ; sub_140274000:loc_140274C52↑p ...
                mov     rax, [rcx+8]
                mov     rdx, 8000000000000000h
                or      rax, rdx
                mov     r9, 0FFFFF68000000000h
                mov     rdx, r9
                mov     r8, 3FFFFFFF78h
                add     rdx, r8
                cmp     rax, rdx
                jbe     short loc_140279D74

loc_140279D70:                          ; CODE XREF: sub_140279D40+3A↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140279D74:                          ; CODE XREF: sub_140279D40+2E↑j
                mov     rdx, r9
                cmp     rax, rdx
                jb      short loc_140279D70
                movzx   eax, byte ptr [rcx+23h]
                shr     eax, 5
                and     eax, 1
                retn
sub_140279D40   endp

; ---------------------------------------------------------------------------
                align 8
algn_140279D88:                         ; DATA XREF: .pdata:00000001400CE6F4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140279D90   proc near               ; CODE XREF: sub_14020A8C8+82↑p
                                        ; sub_140280660+232↓p ...

var_1A8         = dword ptr -1A8h
var_1A4         = word ptr -1A4h
var_1A2         = word ptr -1A2h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = byte ptr -188h
var_E8          = qword ptr -0E8h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140442ABA SIZE 00000019 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 190h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1C8h+var_48], rax
                mov     r15d, r8d
                mov     r13, rdx
                mov     r14, rcx
                xor     eax, eax
                xor     edx, edx
                mov     [rsp+1C8h+var_1A2], ax
                mov     r8d, 98h
                lea     rcx, [rsp+1C8h+var_188]
                call    memset
                mov     edi, [r13+0Ch]
                mov     rcx, r14
                xor     ebp, ebp
                mov     [rsp+1C8h+var_1A0], 14h
                call    sub_140289778
                test    byte ptr [r14+0B8h], 7
                mov     r12d, ebp
                mov     [rsp+1C8h+var_1A8], eax
                mov     [rsp+1C8h+var_1A4], bp
                mov     [rsp+1C8h+var_198], rbp
                mov     [rsp+1C8h+var_190], rbp
                jnz     short loc_140279E36
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+690h]
                cmp     [rax+168h], rbp
                jnz     loc_140442ABA

loc_140279E36:                          ; CODE XREF: sub_140279D90+80↑j
                                        ; sub_140279D90+1C8D2E↓j
                mov     esi, ebp

loc_140279E38:                          ; CODE XREF: sub_140279D90+11E↓j
                mov     rbx, rbp
                test    rdi, rdi
                jz      short loc_140279E9B
                lea     rcx, [rsp+1C8h+var_E8+1]
                mov     rbp, r13
                sub     rbp, rcx
                xchg    ax, ax

loc_140279E50:                          ; CODE XREF: sub_140279D90+107↓j
                lea     rax, [rsp+1C8h+var_E8+1]
                lea     rax, [rax+rbx*8]
                mov     rdx, [rax+rbp+18h]
                and     rdx, 0FFFFFFFFFFFFF000h
                test    esi, esi
                jnz     loc_140279F2F
                lea     r9, [rsp+1C8h+var_1A8]
                mov     r8d, r15d
                mov     rcx, r14
                call    sub_140279F60
                mov     [rsp+rbx*8+0E0h], rax
                test    rax, rax
                jz      loc_140442AC3

loc_140279E91:                          ; CODE XREF: sub_140279D90+1C3↓j
                                        ; sub_140279D90+1C8D36↓j ...
                inc     rbx
                cmp     rbx, rdi
                jb      short loc_140279E50
                xor     ebp, ebp

loc_140279E9B:                          ; CODE XREF: sub_140279D90+AE↑j
                test    esi, esi
                jnz     short loc_140279EA9
                lea     rcx, [rsp+1C8h+var_1A8]
                call    sub_14028EDB0

loc_140279EA9:                          ; CODE XREF: sub_140279D90+10D↑j
                inc     esi
                cmp     esi, 2
                jb      short loc_140279E38
                cmp     r12, rdi
                jz      short loc_140279EFC
                mov     r9, rdi
                lea     r8, [rsp+1C8h+var_E8]
                mov     rdx, r13
                mov     rcx, r14
                call    sub_14031DF70
                test    rax, rax
                jz      short loc_140279EFC
                mov     rcx, 0FFFFF68000000000h
                shl     rax, 19h
                shl     rcx, 19h
                sub     rax, rcx
                sar     rax, 10h
                shl     rax, 19h
                sub     rax, rcx
                sar     rax, 10h
                mov     rdx, rax
                call    sub_1402FD520

loc_140279EFC:                          ; CODE XREF: sub_140279D90+123↑j
                                        ; sub_140279D90+13E↑j
                mov     [r13+0Ch], ebp
                mov     rax, r12
                mov     rcx, [rsp+1C8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+1C8h+arg_10]
                add     rsp, 190h
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

loc_140279F2F:                          ; CODE XREF: sub_140279D90+DA↑j
                mov     r9, [rsp+rbx*8+1C8h+var_E8]
                test    r9, r9
                jz      loc_140442ACB
                mov     r8d, r15d
                mov     rcx, r14
                call    sub_14027A940
                mov     word ptr [rsp+rbx*8+1C8h+var_E8], ax
                jmp     loc_140279E91
; } // starts at 140279D90
sub_140279D90   endp

; ---------------------------------------------------------------------------
algn_140279F58:                         ; DATA XREF: .rdata:000000014005DF14↑o
                                        ; .pdata:00000001400CE700↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140279F60   proc near               ; CODE XREF: sub_140279D90+EB↑p
                                        ; DATA XREF: .rdata:000000014005DF40↑o ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, 7FFFFFFFF8h
                mov     r12, rdx
                shr     r12, 9
                mov     r9, rdx
                and     r12, rax
                mov     r11, rcx
                mov     rax, 0FFFFF68000000000h
                xor     r14d, r14d
                mov     rax, rax
                add     r12, rax
                mov     r8, 0FFFFF6FB7DBED000h
                mov     rbx, [r12]
                mov     rax, r8
                mov     rdx, 0FFFFF6FB7DBED7F8h
                cmp     r12, rax
                jb      short loc_14027A03F
                mov     rax, rdx
                cmp     r12, rax
                ja      short loc_14027A03F
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A035
                test    bl, 1
                jz      short loc_14027A035
                test    bl, 20h
                jz      short loc_140279FED
                test    bl, 42h
                jnz     short loc_14027A035

loc_140279FED:                          ; CODE XREF: sub_140279F60+86↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027A035
                mov     rax, r12
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
                jz      short loc_14027A035
                or      rbx, 42h

loc_14027A035:                          ; CODE XREF: sub_140279F60+7C↑j
                                        ; sub_140279F60+81↑j ...
                mov     rdx, 0FFFFF6FB7DBED7F8h

loc_14027A03F:                          ; CODE XREF: sub_140279F60+6B↑j
                                        ; sub_140279F60+73↑j
                mov     [rsp+78h+var_50], rbx
                mov     rax, r8
                lea     rcx, [rsp+78h+var_50]
                cmp     rcx, rax
                jb      short loc_14027A0C2
                mov     rax, rdx
                lea     rcx, [rsp+78h+var_50]
                cmp     rcx, rax
                ja      short loc_14027A0C2
                mov     rdx, rbx
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A0C5
                test    bl, 1
                jz      short loc_14027A0C5
                test    bl, 20h
                jz      short loc_14027A079
                test    bl, 42h
                jnz     short loc_14027A0C5

loc_14027A079:                          ; CODE XREF: sub_140279F60+112↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027A0C2
                lea     rax, [rsp+78h+var_50]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                test    al, 42h
                jz      short loc_14027A0C5
                or      rdx, 42h
                jmp     short loc_14027A0C5
; ---------------------------------------------------------------------------

loc_14027A0C2:                          ; CODE XREF: sub_140279F60+EF↑j
                                        ; sub_140279F60+FC↑j ...
                mov     rdx, rbx

loc_14027A0C5:                          ; CODE XREF: sub_140279F60+108↑j
                                        ; sub_140279F60+10D↑j ...
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax

loc_14027A0D6:                          ; DATA XREF: .rdata:000000014005DF40↑o
                                        ; .rdata:000000014005DF50↑o ...
                mov     [rsp+78h+var_30], rsi
                mov     [rsp+78h+var_38], r13
                lea     r15, [rdx+rdx*2]
                shl     r15, 4
                mov     rax, 0FFFFFA8000000000h
                add     r15, rax
                mov     rdi, 3FFFFFFFFFFFFFFFh
                mov     rax, [r15+18h]
                and     rax, rdi
                cmp     rax, 1
                jbe     short loc_14027A11C
                mov     rcx, r15
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_14027A455

loc_14027A11C:                          ; CODE XREF: sub_140279F60+1AA↑j
                test    byte ptr [r11+0B8h], 7
                jz      short loc_14027A171
                cmp     word ptr [r15+20h], 1
                ja      loc_14027A455
                mov     [rsp+78h+var_58], r14d
                mov     r13, r15
                lock bts qword ptr [r15+18h], 3Fh ; '?'
                jnb     short loc_14027A174

loc_14027A143:                          ; CODE XREF: sub_140279F60+1F4↓j
                                        ; sub_140279F60+1FD↓j
                lea     rcx, [rsp+78h+var_58]
                call    sub_1402C8C70
                mov     rax, [r15+18h]
                test    rax, rax
                js      short loc_14027A143
                lock bts qword ptr [r15+18h], 3Fh ; '?'
                jb      short loc_14027A143
                mov     r9, [rsp+78h+arg_8]
                mov     r11, [rsp+78h+arg_0]
                jmp     short loc_14027A174
; ---------------------------------------------------------------------------

loc_14027A171:                          ; CODE XREF: sub_140279F60+1C4↑j
                mov     r13, r14

loc_14027A174:                          ; CODE XREF: sub_140279F60+1E1↑j
                                        ; sub_140279F60+20F↑j
                mov     rax, [r15+18h]
                and     rax, rdi
                cmp     rax, 1
                jbe     short loc_14027A191
                mov     rcx, r15
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_14027A441

loc_14027A191:                          ; CODE XREF: sub_140279F60+21F↑j
                movzx   eax, byte ptr [r11+0B8h]
                and     al, 7
                jz      short loc_14027A1A9
                cmp     word ptr [r15+20h], 1
                ja      loc_14027A441

loc_14027A1A9:                          ; CODE XREF: sub_140279F60+23B↑j
                mov     rsi, rbx
                mov     rdx, 3FFFFFFF78h
                and     rsi, 0FFFFFFFFFFFFFFFBh
                test    al, al
                jnz     short loc_14027A213
                mov     rcx, r15
                call    sub_1403F41D8
                mov     r8, 0FFFFF68000000000h
                test    eax, eax
                jnz     short loc_14027A21D
                mov     rax, r8
                add     rax, rdx
                cmp     r12, rax
                ja      short loc_14027A21D
                mov     rax, r8
                cmp     r12, rax
                jb      short loc_14027A21D
                test    bl, 42h
                jz      short loc_14027A21D
                test    dword ptr [r11-21Ch], 8000h
                lea     rcx, [r11-680h]
                jz      short loc_14027A21D
                xor     r8d, r8d
                mov     rdx, r9
                call    sub_14026BA68
                mov     r11, [rsp+78h+arg_0]

loc_14027A213:                          ; CODE XREF: sub_140279F60+25C↑j
                mov     r8, 0FFFFF68000000000h

loc_14027A21D:                          ; CODE XREF: sub_140279F60+272↑j
                                        ; sub_140279F60+27D↑j ...
                mov     rcx, r15
                mov     edi, r14d
                call    sub_1403F41D8
                mov     rdx, 0FFFFF6FFFFFFFFFFh
                test    eax, eax
                jz      loc_14027A3DF
                mov     rdi, [r12]
                mov     rcx, r12
                mov     dword ptr [rsp+78h+var_48], r12d
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027A2B5
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A2B5
                test    dil, 1
                jz      short loc_14027A2B5
                test    dil, 20h
                jz      short loc_14027A26A
                test    dil, 42h
                jnz     short loc_14027A2B5

loc_14027A26A:                          ; CODE XREF: sub_140279F60+302↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14027A2B5
                mov     rcx, [rsp+78h+var_48]
                mov     rdx, rdi
                shr     rcx, 3
                or      rdx, 20h
                and     ecx, 1FFh
                mov     rax, [rax+rcx*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rdi
                mov     rdi, rdx
                test    al, 42h
                jz      short loc_14027A2B5
                or      rdi, 42h

loc_14027A2B5:                          ; CODE XREF: sub_140279F60+2ED↑j
                                        ; sub_140279F60+2F6↑j ...
                mov     rdx, rdi
                shr     rdi, 38h
                shr     rdx, 3Ch
                and     dil, 0Fh
                and     dl, 7
                shl     dl, 4
                or      dl, dil
                mov     rdi, [rsp+78h+arg_8]
                mov     rcx, rdi
                call    sub_1402C6870
                test    eax, eax
                jz      short loc_14027A300
                mov     ecx, eax
                and     ecx, 1Fh
                or      rcx, 0FFFFFFFFF8000020h
                shl     rcx, 5
                call    sub_14027C6C0
                mov     [rsp+78h+var_50], rax
                jmp     loc_14027A680
; ---------------------------------------------------------------------------

loc_14027A300:                          ; CODE XREF: sub_140279F60+37F↑j
                mov     rdx, [r15+8]
                mov     r10, 8000000000000000h
                mov     r9, rdx
                or      r9, r10
                mov     rcx, r9
                shl     rcx, 10h
                bts     rcx, 0Ah
                call    sub_14027C6C0
                mov     r11, [rsp+78h+arg_0]
                mov     r8, rax
                mov     [rsp+78h+var_50], rax
                mov     rcx, rax
                movzx   eax, byte ptr [r11+0B8h]
                and     al, 7
                cmp     al, 2
                jb      short loc_14027A360
                test    rbx, 0A00h
                jnz     short loc_14027A360
                test    rbx, rbx
                jns     short loc_14027A360
                or      r8, 8
                mov     [rsp+78h+var_50], r8
                mov     rcx, r8

loc_14027A360:                          ; CODE XREF: sub_140279F60+3E4↑j
                                        ; sub_140279F60+3ED↑j ...
                mov     rbx, 1000000000h
                test    [r15+28h], rbx
                jnz     short loc_14027A386
                test    rdx, rdx
                js      short loc_14027A386
                jz      short loc_14027A386
                bts     rcx, 0Bh
                mov     [rsp+78h+var_50], rcx
                jmp     loc_14027A68A
; ---------------------------------------------------------------------------

loc_14027A386:                          ; CODE XREF: sub_140279F60+40E↑j
                                        ; sub_140279F60+413↑j ...
                test    byte ptr [rsp+78h+arg_10], 2
                jz      loc_14027A68A
                cmp     [r11-190h], r14
                lea     rcx, [r11-680h]
                jz      loc_14027A68A
                mov     rdx, r9
                call    sub_1402C6E74
                test    rax, rax
                jz      loc_14027A68A
                mov     rcx, [rcx+690h]
                mov     rax, [rax+60h]
                cmp     [rcx+168h], rax
                jbe     loc_14027A68A
                or      r8, 8
                mov     [rsp+78h+var_50], r8
                jmp     loc_14027A68A
; ---------------------------------------------------------------------------

loc_14027A3DF:                          ; CODE XREF: sub_140279F60+2D4↑j
                mov     rax, r8
                mov     rcx, [rsp+78h+arg_8]
                cmp     rcx, rax
                jb      short loc_14027A45D
                mov     rax, rdx
                cmp     rcx, rax
                ja      short loc_14027A45D
                xor     r8d, r8d
                mov     rdx, r12
                mov     rcx, r11
                mov     edi, 1
                call    sub_140225CC0
                mov     rax, [r15+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, rdi
                jnz     short loc_14027A431
                mov     rcx, [rsp+78h+arg_8]
                call    sub_1403566BC
                test    eax, eax
                jz      short loc_14027A45D

loc_14027A431:                          ; CODE XREF: sub_140279F60+4BE↑j
                mov     rcx, [rsp+78h+arg_0]
                mov     rdx, r12
                call    sub_140312B40

loc_14027A441:                          ; CODE XREF: sub_140279F60+22B↑j
                                        ; sub_140279F60+243↑j
                test    r13, r13
                jz      short loc_14027A455
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r13+18h], rax

loc_14027A455:                          ; CODE XREF: sub_140279F60+1B6↑j
                                        ; sub_140279F60+1CC↑j ...
                mov     rax, r14
                jmp     loc_14027A921
; ---------------------------------------------------------------------------

loc_14027A45D:                          ; CODE XREF: sub_140279F60+48D↑j
                                        ; sub_140279F60+495↑j ...
                mov     rax, [r15+28h]
                shr     rax, 3Ch
                and     al, 7
                cmp     al, 4
                jnz     loc_14027A577
                mov     ecx, 2
                call    sub_1402A46FC
                mov     r11, [rsp+78h+arg_0]
                cmp     r11, rax
                jnz     loc_14027A57F
                mov     rdx, [r15+10h]
                lea     rcx, unk_140C50C00
                mov     r8d, 1
                call    sub_1402D9B64
                mov     rax, [rsp+78h+arg_8]
                and     rax, 0FFFFFFFFFFFFF000h
                mov     rcx, rax
                mov     [rsp+78h+arg_8], rax
                call    sub_1402805F0
                mov     rdi, rax
                mov     rcx, r12
                or      rdi, 2
                or      rsi, 4
                mov     [rsp+78h+var_50], rdi
                mov     rbx, rdi
                mov     r14d, 1
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027A546
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A518
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     rdx, rdi
                jnz     short loc_14027A50A
                test    r14b, dil
                jz      short loc_14027A50A
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14027A50A:                          ; CODE XREF: sub_140279F60+596↑j
                                        ; sub_140279F60+59B↑j
                mov     rcx, r12
                mov     [r12], rdx
                call    sub_140349620
                jmp     short loc_14027A54A
; ---------------------------------------------------------------------------

loc_14027A518:                          ; CODE XREF: sub_140279F60+58A↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027A546
                test    r14b, dil
                jz      short loc_14027A546
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14027A546:                          ; CODE XREF: sub_140279F60+581↑j
                                        ; sub_140279F60+5D2↑j ...
                mov     [r12], rbx

loc_14027A54A:                          ; CODE XREF: sub_140279F60+5B6↑j
                mov     rdx, [rsp+78h+arg_8]
                xor     r9d, r9d
                mov     rcx, [rsp+78h+arg_18]
                mov     r8, r14
                call    sub_1402882E0
                mov     rcx, [rsp+78h+arg_18]
                call    sub_14028EDB0
                jmp     loc_14027A79E
; ---------------------------------------------------------------------------

loc_14027A577:                          ; CODE XREF: sub_140279F60+509↑j
                mov     r11, [rsp+78h+arg_0]

loc_14027A57F:                          ; CODE XREF: sub_140279F60+524↑j
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                lea     rcx, [rsp+78h+var_50]
                cmp     rcx, rax
                jb      short loc_14027A60F
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                lea     rcx, [rsp+78h+var_50]
                cmp     rcx, rax
                ja      short loc_14027A60F
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A60F
                test    bl, 1
                jz      short loc_14027A60F
                test    bl, 20h
                jz      short loc_14027A5C5
                test    bl, 42h
                jnz     short loc_14027A60F

loc_14027A5C5:                          ; CODE XREF: sub_140279F60+65E↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027A60F
                lea     rax, [rsp+78h+var_50]
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
                jz      short loc_14027A60F
                or      rbx, 42h

loc_14027A60F:                          ; CODE XREF: sub_140279F60+634↑j
                                        ; sub_140279F60+64B↑j ...
                mov     r8d, [r15+10h]
                mov     rax, 0FFFFFFFFF000h
                shr     r8, 5
                and     rbx, rax
                mov     rax, cs:qword_140C4DDC0
                and     r8d, 1Fh
                or      r8, 40h
                shl     r8, 5
                or      r8, rbx
                test    rax, rax
                jz      short loc_14027A64D
                test    r8, rax
                jnz     short loc_14027A649
                or      r8, rax
                jmp     short loc_14027A64D
; ---------------------------------------------------------------------------

loc_14027A649:                          ; CODE XREF: sub_140279F60+6E2↑j
                or      r8, 10h

loc_14027A64D:                          ; CODE XREF: sub_140279F60+6DD↑j
                                        ; sub_140279F60+6E7↑j
                mov     [rsp+78h+var_50], r8
                test    edi, edi
                jz      short loc_14027A678
                xor     r9d, r9d
                mov     rdx, r12
                mov     rcx, r11
                call    sub_14029B94C
                mov     rdx, [rsp+78h+arg_8]
                and     rdx, 0FFFFFFFFFFFFF000h
                jmp     loc_14027A78A
; ---------------------------------------------------------------------------

loc_14027A678:                          ; CODE XREF: sub_140279F60+6F4↑j
                mov     rdi, [rsp+78h+arg_8]

loc_14027A680:                          ; CODE XREF: sub_140279F60+39B↑j
                mov     r10, 8000000000000000h

loc_14027A68A:                          ; CODE XREF: sub_140279F60+421↑j
                                        ; sub_140279F60+42E↑j ...
                mov     rdx, [r12]
                mov     rbx, 0FFFFF6FB7DBED000h
                mov     rax, rbx
                mov     rcx, 0FFFFF6FB7DBED7F8h
                cmp     r12, rax
                jb      short loc_14027A6C9
                mov     rax, rcx
                cmp     r12, rax
                ja      short loc_14027A6C9
                call    sub_140349680
                mov     rcx, 0FFFFF6FB7DBED7F8h
                test    eax, eax
                jz      short loc_14027A6C9
                or      rdx, 20h

loc_14027A6C9:                          ; CODE XREF: sub_140279F60+748↑j
                                        ; sub_140279F60+750↑j ...
                mov     eax, cs:dword_140CFC400
                bt      eax, 0Bh
                jnb     short loc_14027A6DC
                mov     edx, 20h ; ' '
                jmp     short loc_14027A6E5
; ---------------------------------------------------------------------------

loc_14027A6DC:                          ; CODE XREF: sub_140279F60+773↑j
                bt      eax, 1Ah
                jnb     short loc_14027A6E5
                lfence

loc_14027A6E5:                          ; CODE XREF: sub_140279F60+77A↑j
                                        ; sub_140279F60+780↑j
                test    dl, 20h
                jnz     short loc_14027A71B
                mov     r11, [rsp+78h+var_50]
                xchg    r11, [r12]
                mov     rax, rbx
                cmp     r12, rax
                jb      short loc_14027A710
                mov     rax, rcx
                cmp     r12, rax
                ja      short loc_14027A710
                mov     rdx, [rsp+78h+var_50]
                mov     rcx, r12
                call    sub_140349620

loc_14027A710:                          ; CODE XREF: sub_140279F60+799↑j
                                        ; sub_140279F60+7A1↑j
                test    r11b, 20h
                jnz     short loc_14027A780
                jmp     loc_14027A7A8
; ---------------------------------------------------------------------------

loc_14027A71B:                          ; CODE XREF: sub_140279F60+788↑j
                mov     rdx, [rsp+78h+var_50]
                mov     rax, rbx
                cmp     r12, rax
                jb      short loc_14027A77C
                mov     rax, rcx
                cmp     r12, rax
                ja      short loc_14027A77C
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A758
                cmp     byte ptr cs:word_140C4DE88+1, r14b
                jnz     short loc_14027A74A
                test    dl, 1
                jz      short loc_14027A74A
                or      rdx, r10

loc_14027A74A:                          ; CODE XREF: sub_140279F60+7E0↑j
                                        ; sub_140279F60+7E5↑j
                mov     rcx, r12
                mov     [r12], rdx
                call    sub_140349620
                jmp     short loc_14027A780
; ---------------------------------------------------------------------------

loc_14027A758:                          ; CODE XREF: sub_140279F60+7D7↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027A77C
                test    dl, 1
                jz      short loc_14027A77C
                or      rdx, r10

loc_14027A77C:                          ; CODE XREF: sub_140279F60+7C6↑j
                                        ; sub_140279F60+7CE↑j ...
                mov     [r12], rdx

loc_14027A780:                          ; CODE XREF: sub_140279F60+7B4↑j
                                        ; sub_140279F60+7F6↑j
                and     rdi, 0FFFFFFFFFFFFF000h
                mov     rdx, rdi

loc_14027A78A:                          ; CODE XREF: sub_140279F60+713↑j
                mov     rcx, [rsp+78h+arg_18]
                xor     r9d, r9d
                lea     r8d, [r9+1]
                call    sub_1402882E0

loc_14027A79E:                          ; CODE XREF: sub_140279F60+612↑j
                mov     rbx, 0FFFFF6FB7DBED000h

loc_14027A7A8:                          ; CODE XREF: sub_140279F60+7B6↑j
                test    r13, r13
                jz      short loc_14027A7BC
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [r13+18h], rax

loc_14027A7BC:                          ; CODE XREF: sub_140279F60+84B↑j
                cmp     r14d, 1
                jz      loc_14027A91E
                mov     rcx, r15
                call    sub_1403F41D8
                test    eax, eax
                jnz     loc_14027A91E
                mov     rdx, [r15+10h]
                lea     r8, [r15+10h]
                mov     rax, rbx
                cmp     r8, rax
                jb      short loc_14027A857
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                ja      short loc_14027A857
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027A857
                test    dl, 1
                jz      short loc_14027A860
                test    dl, 20h
                jz      short loc_14027A810
                test    dl, 42h
                jnz     short loc_14027A857

loc_14027A810:                          ; CODE XREF: sub_140279F60+8A9↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14027A857
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14027A857
                or      rdx, 42h

loc_14027A857:                          ; CODE XREF: sub_140279F60+884↑j
                                        ; sub_140279F60+896↑j ...
                test    dl, 1
                jnz     loc_14027A91E

loc_14027A860:                          ; CODE XREF: sub_140279F60+8A4↑j
                test    rdx, rdx
                jz      short loc_14027A87A
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14027A87A
                test    rax, rdx
                jz      loc_14027A91E

loc_14027A87A:                          ; CODE XREF: sub_140279F60+903↑j
                                        ; sub_140279F60+90F↑j
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [r15+28h]
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     r9, [rax+rcx*8]
                mov     eax, [r9+40Ch]
                test    eax, eax
                jz      loc_14027A91E
                movzx   eax, dl
                shr     al, 1
                test    al, 1
                jnz     short loc_14027A91E
                mov     r8, [rsp+78h+arg_0]
                mov     rcx, r8
                call    sub_140209D60
                test    rax, rax
                jnz     short loc_14027A91E
                mov     rcx, rdx
                call    sub_1402C9850
                test    eax, eax
                jz      short loc_14027A8DA
                test    byte ptr [r15+22h], 10h
                jnz     short loc_14027A8DA
                test    byte ptr [r12], 42h
                jz      short loc_14027A91E

loc_14027A8DA:                          ; CODE XREF: sub_140279F60+96A↑j
                                        ; sub_140279F60+971↑j
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                mov     rcx, 3FFFFFFF78h
                add     rax, rcx
                cmp     r12, rax
                ja      short loc_14027A91E
                mov     rax, rdx
                cmp     r12, rax
                jb      short loc_14027A91E
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r12, rax
                ja      short loc_14027A91E
                mov     rdx, r12
                mov     rcx, r9
                call    sub_1402C8CC0

loc_14027A91E:                          ; CODE XREF: sub_140279F60+860↑j
                                        ; sub_140279F60+870↑j ...
                mov     rax, rsi

loc_14027A921:                          ; CODE XREF: sub_140279F60+4F8↑j
                mov     r13, [rsp+78h+var_38]
                mov     rsi, [rsp+78h+var_30]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14027A938:                         ; DATA XREF: .pdata:00000001400CE718↑o
                                        ; .pdata:00000001400CE724↑o ...
                align 20h
sub_140279F60   endp


; =============== S U B R O U T I N E =======================================


sub_14027A940   proc near               ; CODE XREF: sub_140279D90+1B6↑p
                                        ; DATA XREF: .pdata:00000001400CE730↑o

var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = word ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+20h], r9
                mov     [r11+18h], r8d
                mov     [r11+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     r13, rdx
                mov     r15, 0FFFFF68000000000h
                shr     r13, 9
                mov     rax, 7FFFFFFFF8h
                and     r13, rax
                mov     rbx, r9
                mov     ebp, r8d
                mov     rdi, rdx
                mov     rsi, rcx
                mov     rax, r15
                lea     rcx, [r11+20h]
                add     r13, rax
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                lea     r14, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     r14, 4
                mov     rax, rax
                add     r14, rax
                mov     rax, r15
                mov     rcx, 0FFFFF6FFFFFFFFFFh
                cmp     rdi, rax
                jb      short loc_14027A9E8
                mov     rax, rcx
                cmp     rdi, rax
                ja      short loc_14027A9E8
                movzx   r12d, byte ptr [r14]
                shr     r12b, 1
                and     r12b, 7
                jmp     short loc_14027AA01
; ---------------------------------------------------------------------------

loc_14027A9E8:                          ; CODE XREF: sub_14027A940+91↑j
                                        ; sub_14027A940+99↑j
                mov     r12, rbx
                shr     rbx, 38h
                shr     r12, 3Ch
                and     bl, 0Fh
                and     r12b, 7
                shl     r12b, 4
                or      r12b, bl

loc_14027AA01:                          ; CODE XREF: sub_14027A940+A6↑j
                mov     rcx, r14
                call    sub_1403F41D8
                xor     r15d, r15d
                mov     [rsp+88h+arg_8], eax
                mov     ecx, 1
                test    bpl, 4
                jnz     loc_14027AAB2
                test    eax, eax
                jnz     loc_14027AB6A
                movzx   ecx, byte ptr [rsi+0B8h]
                and     cl, 7
                cmp     cl, 2
                jnb     short loc_14027AAB2
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r14
                call    sub_14027B160
                test    eax, 0FFFFFFFDh
                jnz     short loc_14027AAB2
                mov     rcx, r14
                call    sub_1403F41D8
                test    eax, eax
                jnz     short loc_14027AA92
                mov     rcx, r13
                mov     rdx, 0FFFFF68000000000h
                shl     rcx, 19h
                mov     rax, rdx
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, rdx
                cmp     rcx, rax
                jb      short loc_14027AA92
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rcx, rax
                jbe     short loc_14027AAB2

loc_14027AA92:                          ; CODE XREF: sub_14027A940+117↑j
                                        ; sub_14027A940+13E↑j
                mov     ecx, 1

loc_14027AA97:                          ; CODE XREF: sub_14027A940+252↓j
                cmp     word ptr [r14+20h], 1
                jnz     short loc_14027AAB2
                movzx   eax, byte ptr [r14+22h]
                and     al, 0C0h
                cmp     al, 40h ; '@'
                jnz     short loc_14027AAB2
                mov     ebp, ecx
                test    [r14+23h], al
                jz      short loc_14027AAB5

loc_14027AAB2:                          ; CODE XREF: sub_14027A940+DC↑j
                                        ; sub_14027A940+F7↑j ...
                mov     ebp, r15d

loc_14027AAB5:                          ; CODE XREF: sub_14027A940+170↑j
                lea     rsi, [r14+18h]
                mov     [rsp+88h+var_68], r15d
                lock bts qword ptr [rsi], 3Fh ; '?'
                jnb     short loc_14027AAE0

loc_14027AAC6:                          ; CODE XREF: sub_14027A940+196↓j
                                        ; sub_14027A940+19E↓j
                lea     rcx, [rsp+88h+var_68]
                call    sub_1402C8C70
                mov     rax, [rsi]
                test    rax, rax
                js      short loc_14027AAC6
                lock bts qword ptr [rsi], 3Fh ; '?'
                jb      short loc_14027AAC6

loc_14027AAE0:                          ; CODE XREF: sub_14027A940+184↑j
                mov     rcx, 3FFFFFFFFFFFFFFFh
                mov     rdx, 2AAAAAAAAAAAAAABh
                test    ebp, ebp
                jz      loc_14027AD29
                mov     rax, [rsi]
                and     rax, rcx
                cmp     rax, 1
                jnz     loc_14027AD26
                cmp     [r14+20h], ax
                jnz     loc_14027AD26
                mov     r9, 0FFFFFA8000000000h
                mov     rax, r9
                mov     rcx, r14
                mov     r8d, 4
                sub     rcx, rax
                mov     rax, rdx
                imul    rcx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                lea     rcx, [rdx+rdx*2]
                add     rcx, rcx
                mov     rax, r9
                movzx   eax, byte ptr [rax+rcx*8+22h]
                shr     eax, 6
                test    eax, eax
                jz      short loc_14027AB9D
                cmp     eax, 3
                jz      short loc_14027AB9D
                cmp     eax, 2
                jnz     short loc_14027ABA3
                lea     r8d, [rax+1Ah]
                jmp     short loc_14027ABA3
; ---------------------------------------------------------------------------

loc_14027AB6A:                          ; CODE XREF: sub_14027A940+E4↑j
                mov     rdx, 1000000000h
                test    [r14+28h], rdx
                jnz     short loc_14027AB89
                mov     rax, [r14+8]
                test    rax, rax
                js      short loc_14027AB89
                jnz     loc_14027AAB2

loc_14027AB89:                          ; CODE XREF: sub_14027A940+238↑j
                                        ; sub_14027A940+241↑j
                mov     eax, [r14+10h]
                bt      rax, 0Ah
                jnb     loc_14027AA97
                jmp     loc_14027AAB2
; ---------------------------------------------------------------------------

loc_14027AB9D:                          ; CODE XREF: sub_14027A940+218↑j
                                        ; sub_14027A940+21D↑j
                mov     r8d, 0Ch

loc_14027ABA3:                          ; CODE XREF: sub_14027A940+222↑j
                                        ; sub_14027A940+228↑j
                or      r8d, 0A0000000h
                xor     ecx, ecx
                call    sub_140280E60
                mov     r15, gs:20h
                mov     rbx, rax
                mov     rdi, [r15+7FF8h]
                test    rdi, rdi
                jz      short loc_14027AC15
                xor     r9d, r9d
                lea     rcx, [rdi+30A0h]
                lea     edx, [r9+3]
                lea     r8d, [r9+1]
                call    sub_140292240
                mov     r8, rax
                mov     rdx, 0FFFFF68000000000h
                shr     r8, 9
                mov     r9, 7FFFFFFFF8h
                and     r8, r9
                mov     r11, rax
                mov     rcx, rdx
                add     r8, rcx
                mov     [rdi+3038h], r8
                test    rax, rax
                jnz     short loc_14027AC57
                jmp     short loc_14027AC29
; ---------------------------------------------------------------------------

loc_14027AC15:                          ; CODE XREF: sub_14027A940+287↑j
                mov     rdx, 0FFFFF68000000000h
                mov     r9, 7FFFFFFFF8h

loc_14027AC29:                          ; CODE XREF: sub_14027A940+2D3↑j
                mov     rax, [r15+8200h]
                mov     r11, rax
                and     rax, 0FFFFFFFFFFFFF000h
                and     r11d, 0FFFh
                shl     r11, 0Ch
                add     r11, rax
                mov     r8, r11
                shr     r8, 9
                and     r8, r9
                mov     rax, rdx
                add     r8, rax

loc_14027AC57:                          ; CODE XREF: sub_14027A940+2D1↑j
                mov     rax, 0FFFFF6FB7DBED000h
                cmp     r8, rax
                jb      short loc_14027ACD7
                mov     rax, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                ja      short loc_14027ACD7
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027ACA9
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14027AC99
                test    bl, 1
                jz      short loc_14027AC99
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14027AC99:                          ; CODE XREF: sub_14027A940+345↑j
                                        ; sub_14027A940+34A↑j
                mov     rdx, rbx
                mov     [r8], rbx
                mov     rcx, r8
                call    sub_140349620
                jmp     short loc_14027ACDA
; ---------------------------------------------------------------------------

loc_14027ACA9:                          ; CODE XREF: sub_14027A940+33C↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027ACD7
                test    bl, 1
                jz      short loc_14027ACD7
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14027ACD7:                          ; CODE XREF: sub_14027A940+324↑j
                                        ; sub_14027A940+333↑j ...
                mov     [r8], rbx

loc_14027ACDA:                          ; CODE XREF: sub_14027A940+367↑j
                mov     rbx, r11
                lea     rdi, [r11+0FF8h]

loc_14027ACE4:                          ; CODE XREF: sub_14027A940+3B7↓j
                mov     rax, [rdi]
                or      rax, [rbx]
                jnz     short loc_14027ACF9
                add     rbx, 8
                sub     rdi, 8
                cmp     rbx, rdi
                jbe     short loc_14027ACE4

loc_14027ACF9:                          ; CODE XREF: sub_14027A940+3AA↑j
                mov     r8d, 80000000h
                mov     dl, 11h
                mov     rcx, r11
                call    sub_1402432B0
                cmp     rbx, rdi
                jbe     short loc_14027AD23
                mov     rcx, [rsp+88h+arg_0]
                mov     rdx, r14
                call    sub_1402CEE00
                xor     r15d, r15d
                jmp     short loc_14027AD29
; ---------------------------------------------------------------------------

loc_14027AD23:                          ; CODE XREF: sub_14027A940+3CC↑j
                xor     r15d, r15d

loc_14027AD26:                          ; CODE XREF: sub_14027A940+1C6↑j
                                        ; sub_14027A940+1D1↑j
                mov     ebp, r15d

loc_14027AD29:                          ; CODE XREF: sub_14027A940+1B6↑j
                                        ; sub_14027A940+3E1↑j
                mov     rbx, [rsp+88h+arg_18]
                mov     rdi, r15
                mov     [rsp+88h+var_58], r15
                mov     r11, 7FFFFFFFFFFFFFFFh
                test    ebp, ebp
                jnz     loc_14027AFD9
                test    bl, 4
                jnz     loc_14027AFD9
                test    bl, 42h
                jz      short loc_14027AD84
                mov     rcx, r14
                call    sub_1402A6940
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14027AD89
                mov     rcx, [r14+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rbp, [rax+rcx*8]
                jmp     short loc_14027AD8C
; ---------------------------------------------------------------------------

loc_14027AD84:                          ; CODE XREF: sub_14027A940+417↑j
                mov     rbp, rdi
                jmp     short loc_14027AD8C
; ---------------------------------------------------------------------------

loc_14027AD89:                          ; CODE XREF: sub_14027A940+427↑j
                mov     rbp, r15

loc_14027AD8C:                          ; CODE XREF: sub_14027A940+442↑j
                                        ; sub_14027A940+447↑j
                cmp     [rsp+88h+arg_8], 0
                jz      loc_14027AEB6
                shr     r13, 9
                mov     r15, 7FFFFFFFF8h
                and     r15, r13
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     r15, rax
                mov     rcx, r15
                mov     rbx, [r15]
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027AE2B
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027AE2B
                test    bl, 1
                jz      short loc_14027AE2B
                test    bl, 20h
                jz      short loc_14027ADE2
                test    bl, 42h
                jnz     short loc_14027AE2B

loc_14027ADE2:                          ; CODE XREF: sub_14027A940+49B↑j
                mov     rax, gs:188h
                mov     edx, r15d
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14027AE2B
                shr     rdx, 3
                and     edx, 1FFh
                mov     rax, [rax+rdx*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14027AE2B
                or      rbx, 42h

loc_14027AE2B:                          ; CODE XREF: sub_14027A940+488↑j
                                        ; sub_14027A940+491↑j ...
                lea     rcx, [rsp+88h+var_50]
                mov     [rsp+88h+var_50], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027AEA0
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027AEA0
                test    bl, 1
                jz      short loc_14027AEA0
                test    bl, 20h
                jz      short loc_14027AE56
                test    bl, 42h
                jnz     short loc_14027AEA0

loc_14027AE56:                          ; CODE XREF: sub_14027A940+50F↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027AEA0
                lea     rax, [rsp+88h+var_50]
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
                jz      short loc_14027AEA0
                or      rbx, 42h

loc_14027AEA0:                          ; CODE XREF: sub_14027A940+4FC↑j
                                        ; sub_14027A940+505↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                xor     r15d, r15d
                jmp     short loc_14027AEBD
; ---------------------------------------------------------------------------

loc_14027AEB6:                          ; CODE XREF: sub_14027A940+454↑j
                mov     rbx, 0FFFFFFFFFFFFFFFFh

loc_14027AEBD:                          ; CODE XREF: sub_14027A940+574↑j
                test    byte ptr [rsp+88h+arg_10], 1
                mov     r13, 3FFFFFFFFFFFFFFFh
                jz      short loc_14027AF05
                mov     rax, [rsi]
                and     rax, r13
                cmp     rax, 1
                jnz     short loc_14027AF05
                cmp     [r14+20h], ax
                jnz     short loc_14027AF05
                test    byte ptr [r14+22h], 10h
                jnz     short loc_14027AF05
                mov     rcx, r14
                call    sub_14022FC60
                cmp     eax, 5
                jnz     short loc_14027AF05
                movzx   eax, byte ptr [r14+23h]
                and     al, 0FCh
                or      al, 4
                mov     [r14+23h], al

loc_14027AF05:                          ; CODE XREF: sub_14027A940+58F↑j
                                        ; sub_14027A940+59B↑j ...
                movzx   eax, byte ptr [r14+22h]
                and     al, 7
                cmp     al, 6
                jnz     loc_14027B13E
                mov     rcx, [rsi]
                mov     rdx, rcx
                and     rdx, r13
                dec     rdx
                mov     rax, rdx
                xor     rax, rcx
                and     rax, r13
                xor     rax, rcx
                mov     [rsi], rax
                test    rdx, rdx
                jnz     short loc_14027AF3C
                mov     rcx, r14
                call    sub_140278C00

loc_14027AF3C:                          ; CODE XREF: sub_14027A940+5F2↑j
                mov     r14, 7FFFFFFFFFFFFFFFh
                cmp     rbx, 0FFFFFFFFFFFFFFFFh
                jz      loc_14027B0E6
                lock and [rsi], r14
                lea     rbx, [rbx+rbx*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     [rsp+88h+var_64], r15d
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                lea     rsi, [rbx+18h]
                jnb     short loc_14027AF9A
                xchg    ax, ax

loc_14027AF80:                          ; CODE XREF: sub_14027A940+650↓j
                                        ; sub_14027A940+658↓j
                lea     rcx, [rsp+88h+var_64]
                call    sub_1402C8C70
                mov     rax, [rsi]
                test    rax, rax
                js      short loc_14027AF80
                lock bts qword ptr [rsi], 3Fh ; '?'
                jb      short loc_14027AF80

loc_14027AF9A:                          ; CODE XREF: sub_14027A940+63C↑j
                movzx   eax, byte ptr [rbx+22h]
                and     al, 7
                cmp     al, 6
                jnz     loc_14027B147
                mov     rcx, [rsi]
                mov     rdx, rcx
                and     rdx, r13
                dec     rdx
                mov     rax, rdx
                xor     rax, rcx
                and     rax, r13
                xor     rax, rcx
                mov     [rsi], rax
                test    rdx, rdx
                jnz     loc_14027B0E6
                mov     rcx, rbx
                call    sub_140278C00
                jmp     loc_14027B0E6
; ---------------------------------------------------------------------------

loc_14027AFD9:                          ; CODE XREF: sub_14027A940+405↑j
                                        ; sub_14027A940+40E↑j
                mov     rcx, r13
                call    sub_1402C78A0
                movzx   ecx, byte ptr [r14+22h]
                mov     r15, rax
                and     [r14+28h], r11
                and     cl, 0C7h
                mov     [r14+22h], cl
                mov     rax, 0C000000000000000h
                movzx   ecx, byte ptr [r14+23h]
                xor     r13d, r13d
                and     [rsi], rax
                and     cl, 0DFh
                mov     [r14+23h], cl
                xor     r8d, r8d
                lea     rcx, [r14+10h]
                mov     [r14+20h], r13w
                xor     edx, edx
                call    sub_140338C90
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14027B046
                mov     rdx, [r14+28h]
                mov     rcx, cs:qword_140C4E4C8
                shr     rdx, 27h
                and     edx, 3FFh
                mov     rbp, [rcx+rdx*8]
                jmp     short loc_14027B04B
; ---------------------------------------------------------------------------

loc_14027B046:                          ; CODE XREF: sub_14027A940+6E9↑j
                mov     rbp, [rsp+88h+var_58]

loc_14027B04B:                          ; CODE XREF: sub_14027A940+704↑j
                test    bl, 4
                mov     rax, 0FFFFFA8000000000h
                mov     r8d, r13d
                setnz   r8b
                mov     rcx, rax
                sub     r14, rcx
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    r14
                mov     rcx, rdx
                lea     edx, [r8+1]
                sar     rcx, 3
                mov     rax, rcx
                shr     rax, 3Fh
                add     rcx, rax
                call    sub_140292A50
                mov     r14, 7FFFFFFFFFFFFFFFh
                lock and [rsi], r14
                lea     rbx, [r15+r15*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     [rsp+88h+var_60], r13d
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                lea     rsi, [rbx+18h]
                jnb     short loc_14027B0DE

loc_14027B0C4:                          ; CODE XREF: sub_14027A940+794↓j
                                        ; sub_14027A940+79C↓j
                lea     rcx, [rsp+88h+var_60]
                call    sub_1402C8C70
                mov     rax, [rsi]
                test    rax, rax
                js      short loc_14027B0C4
                lock bts qword ptr [rsi], 3Fh ; '?'
                jb      short loc_14027B0C4

loc_14027B0DE:                          ; CODE XREF: sub_14027A940+782↑j
                mov     rcx, rbx
                call    sub_1402C5FA0

loc_14027B0E6:                          ; CODE XREF: sub_14027A940+60A↑j
                                        ; sub_14027A940+686↑j ...
                lock and [rsi], r14
                test    rdi, rdi
                jz      short loc_14027B100
                mov     r8d, 1
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_14020B2C0

loc_14027B100:                          ; CODE XREF: sub_14027A940+7AD↑j
                cmp     [rsp+88h+arg_8], 0
                mov     eax, 1
                mov     ecx, 3
                mov     byte ptr [rsp+88h+arg_10], r12b
                cmovz   eax, ecx
                mov     byte ptr [rsp+88h+arg_10+1], al
                movzx   eax, [rsp+88h+arg_10]
                add     rsp, 48h
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
                align 2

loc_14027B13E:                          ; CODE XREF: sub_14027A940+5CE↑j
                mov     rcx, r14
                call    sub_1403F4244
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027B147:                          ; CODE XREF: sub_14027A940+662↑j
                mov     rcx, rbx
                call    sub_1403F4244
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027A940   endp

algn_14027B150:                         ; DATA XREF: .pdata:00000001400CE730↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027B160   proc near               ; CODE XREF: sub_140228E90+356↑p
                                        ; sub_140228E90+43D↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                push    rbx
                push    rbp
                push    rdi
                push    r13
                sub     rsp, 28h
                mov     r9d, cs:dword_140CFC400
                mov     rbx, r8
                mov     r13d, edx
                mov     rbp, rcx
                bt      r9d, 0Dh
                jnb     loc_14027B4F8
                mov     rax, [rcx+28h]
                shr     rax, 3Ch
                and     al, 7
                cmp     al, 3
                jnz     loc_14027B4F8
                call    sub_1402303F0
                test    eax, eax
                jnz     loc_14027B4F8
                xor     r8d, r8d
                test    rbx, rbx
                jz      short loc_14027B1B5
                bt      r9d, 0Fh
                cmovnb  rbx, r8

loc_14027B1B5:                          ; CODE XREF: sub_14027B160+4A↑j
                mov     rdx, [rbp+8]
                mov     rax, 8000000000000000h
                mov     rdi, rdx
                mov     rcx, rbp
                or      rdi, rax
                call    sub_1403F41D8
                test    eax, eax
                jnz     loc_14027B3C8

loc_14027B1D9:                          ; DATA XREF: .rdata:000000014005DF98↑o
                                        ; .rdata:000000014005DFA8↑o ...
                mov     [rsp+48h+arg_0], rsi
                mov     [rsp+48h+arg_8], r12
                bt      r9d, 12h
                jnb     short loc_14027B239
                shl     rdi, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                shl     rax, 19h
                mov     r12, 0FFFF800000000000h
                sub     rdi, rax
                mov     esi, 11h
                sar     rdi, 10h
                mov     r8d, 2
                cmp     rdi, r12
                mov     r12, [rsp+48h+arg_8]
                cmovb   esi, r8d
                mov     eax, esi
                mov     rsi, [rsp+48h+arg_0]
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14027B238  db 0CCh                 ; DATA XREF: .pdata:00000001400CE748↑o
                                        ; .pdata:00000001400CE754↑o
; ---------------------------------------------------------------------------

loc_14027B239:                          ; CODE XREF: sub_14027B160+88↑j
                                        ; DATA XREF: .pdata:00000001400CE754↑o ...
                test    rdx, rdx
                jnz     short loc_14027B268
                lea     esi, [rdx+4]
                test    rbx, rbx
                jz      loc_14027B3B1
                mov     r12, [rsp+48h+arg_8]
                mov     eax, esi
                mov     rsi, [rsp+48h+arg_0]
                mov     [rbx], r8
                mov     [rbx+8], r8
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14027B267:                         ; DATA XREF: .pdata:00000001400CE760↑o
                                        ; .pdata:00000001400CE76C↑o
                align 8

loc_14027B268:                          ; CODE XREF: sub_14027B160+DC↑j
                                        ; DATA XREF: .pdata:00000001400CE76C↑o ...
                shl     rdi, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                shl     rax, 19h
                mov     r12, 0FFFF800000000000h
                sub     rdi, rax
                sar     rdi, 10h
                cmp     rdi, r12
                jb      short loc_14027B2CF
                mov     eax, [rbp+10h]
                mov     esi, 1
                shr     al, 5
                test    al, 2
                mov     eax, 40h ; '@'
                cmovz   esi, eax
                test    rbx, rbx
                jz      loc_14027B3B1
                mov     r12, [rsp+48h+arg_8]
                mov     eax, esi
                mov     rsi, [rsp+48h+arg_0]
                mov     [rbx], rdi
                mov     [rbx+8], r8
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14027B2CE  db 0CCh                 ; DATA XREF: .pdata:00000001400CE778↑o
                                        ; .pdata:00000001400CE784↑o
; ---------------------------------------------------------------------------

loc_14027B2CF:                          ; CODE XREF: sub_14027B160+131↑j
                                        ; DATA XREF: .rdata:000000014005E030↑o ...
                mov     esi, 14h
                test    rbx, rbx
                jz      loc_14027B3B1

loc_14027B2DD:                          ; DATA XREF: .rdata:000000014005E030↑o
                                        ; .rdata:000000014005E044↑o ...
                mov     [rsp+48h+arg_10], r14
                mov     [rsp+48h+var_28], r15
                test    r13d, r13d
                jnz     short loc_14027B2F7
                call    sub_1402DAA00
                movzx   r14d, al
                jmp     short loc_14027B2FA
; ---------------------------------------------------------------------------

loc_14027B2F7:                          ; CODE XREF: sub_14027B160+18A↑j
                mov     r14b, 11h

loc_14027B2FA:                          ; CODE XREF: sub_14027B160+195↑j
                mov     rcx, rbp
                call    sub_1402E4150
                mov     rcx, 7FFFFFFFFFFFFFFFh
                mov     r15, [rax]
                shr     r15, 0Dh
                and     r15, 0FFFFFFFFFFFFFFF0h
                or      r15, r12
                lock and [rax+18h], rcx
                test    r13d, r13d
                jnz     short loc_14027B38B
                lock and [rbp+18h], rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027B383
                test    al, 1
                jz      short loc_14027B383
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027B383
                cmp     r14b, 0Fh
                ja      short loc_14027B383
                cmp     al, 2
                jb      short loc_14027B383
                mov     r10, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r14b
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14027B383
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14027B383:                          ; CODE XREF: sub_14027B160+1D1↑j
                                        ; sub_14027B160+1D5↑j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_14027B38B:                          ; CODE XREF: sub_14027B160+1C2↑j
                cmp     qword ptr [r15+3E0h], 0
                mov     r14, [rsp+48h+arg_10]
                jz      short loc_14027B3AA

loc_14027B39A:                          ; DATA XREF: .pdata:00000001400CE79C↑o
                                        ; .pdata:00000001400CE7A8↑o
                mov     [rbx], rdi
                mov     rax, [r15+3E0h]
                mov     [rbx+8], rax
                jmp     short loc_14027B3AC
; ---------------------------------------------------------------------------

loc_14027B3AA:                          ; CODE XREF: sub_14027B160+238↑j
                xor     esi, esi

loc_14027B3AC:                          ; CODE XREF: sub_14027B160+248↑j
                mov     r15, [rsp+48h+var_28]

loc_14027B3B1:                          ; CODE XREF: sub_14027B160+E4↑j
                                        ; sub_14027B160+14B↑j ...
                mov     r12, [rsp+48h+arg_8]
                mov     eax, esi
                mov     rsi, [rsp+48h+arg_0]
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14027B3C7:                         ; DATA XREF: .pdata:00000001400CE7B4↑o
                                        ; .pdata:00000001400CE7C0↑o
                align 8

loc_14027B3C8:                          ; CODE XREF: sub_14027B160+73↑j
                mov     r10, [rbp+10h]
                bt      r10, 0Ah
                jb      short loc_14027B3FA
                shr     r9d, 12h
                and     r9d, 1
                shl     r9d, 4
                test    rbx, rbx
                jz      short loc_14027B3EB
                mov     [rbx], r8
                mov     [rbx+8], r8

loc_14027B3EB:                          ; CODE XREF: sub_14027B160+282↑j
                lea     eax, [r9+3]
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027B3FA:                          ; CODE XREF: sub_14027B160+271↑j
                mov     rax, cs:qword_140C4DDC0
                mov     rdx, r10
                test    rax, rax
                jz      short loc_14027B414
                test    dl, 10h
                jnz     short loc_14027B414
                not     rax
                and     rdx, rax

loc_14027B414:                          ; CODE XREF: sub_14027B160+2A7↑j
                                        ; sub_14027B160+2AC↑j
                sar     rdx, 10h
                mov     r11, [rdx]
                mov     eax, [r11+38h]
                test    al, 20h
                jnz     short loc_14027B433
                mov     eax, 2
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027B433:                          ; CODE XREF: sub_14027B160+2C1↑j
                mov     rcx, [rdx+8]
                cmp     rdi, rcx
                jb      loc_14027B4F8
                mov     eax, [rdx+2Ch]
                lea     rcx, [rcx+rax*8]
                cmp     rdi, rcx
                jnb     loc_14027B4F8
                mov     ecx, [r11+5Ch]
                test    ecx, 0C0000h
                jz      short loc_14027B47E
                bt      ecx, 11h
                jnb     short loc_14027B47E
                lea     rax, [r11+80h]
                cmp     rdx, rax
                jz      short loc_14027B47E
                mov     eax, 28h ; '('
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027B47E:                          ; CODE XREF: sub_14027B160+2FA↑j
                                        ; sub_14027B160+300↑j ...
                shr     r10, 5
                and     ecx, 0C0000h
                bt      r9d, 12h
                jnb     short loc_14027B4AD
                mov     r8d, 2
                test    ecx, ecx
                jz      short loc_14027B4C7
                mov     r8d, 0Ah
                test    r10b, 2
                jz      short loc_14027B4C7
                mov     r8d, 0Bh
                jmp     short loc_14027B4C7
; ---------------------------------------------------------------------------

loc_14027B4AD:                          ; CODE XREF: sub_14027B160+32D↑j
                test    ecx, ecx
                jz      short loc_14027B4F8
                mov     r8d, 0Bh
                test    r10b, 2
                mov     eax, 8
                cmovnz  eax, r8d
                mov     r8d, eax

loc_14027B4C7:                          ; CODE XREF: sub_14027B160+337↑j
                                        ; sub_14027B160+343↑j ...
                test    rbx, rbx
                jz      short loc_14027B4EA
                mov     rcx, [r11+60h]
                mov     rdx, [rcx+38h]
                mov     [rbx+8], rdx
                sub     rdi, [r11+88h]
                sar     rdi, 3
                shl     rdi, 0Ch
                mov     [rbx], rdi

loc_14027B4EA:                          ; CODE XREF: sub_14027B160+36A↑j
                mov     eax, r8d
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14027B4F8:                          ; CODE XREF: sub_14027B160+1F↑j
                                        ; sub_14027B160+31↑j ...
                xor     eax, eax
                add     rsp, 28h
                pop     r13
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027B160   endp

algn_14027B505:                         ; DATA XREF: .pdata:00000001400CE7C0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14027B510   proc near               ; CODE XREF: sub_14022FC80+524↑p
                                        ; sub_140297FF0+445↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                and     edx, 1
                mov     r14d, 0FFFFFFFFh
                mov     eax, edx
                neg     eax
                sbb     rbx, rbx
                xor     edx, 1
                and     rbx, r14
                xor     r11b, r11b
                lea     r10d, ds:4[rdx*4]
                call    sub_1403F41D8
                mov     ebp, 1
                test    eax, eax
                jz      short loc_14027B569
                mov     eax, [rcx+10h]
                bt      rax, 0Ah
                jnb     short loc_14027B569
                movzx   edi, bpl
                jmp     short loc_14027B577
; ---------------------------------------------------------------------------

loc_14027B569:                          ; CODE XREF: sub_14027B510+47↑j
                                        ; sub_14027B510+51↑j
                call    sub_140279D40
                test    eax, eax
                movzx   edi, r11b
                cmovnz  edi, ebp

loc_14027B577:                          ; CODE XREF: sub_14027B510+57↑j
                mov     rcx, [rcx+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rsi, [rax+rcx*8]
                test    dil, dil
                jz      short loc_14027B5A7
                mov     r8d, r10d
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_140232160
                test    eax, eax
                jz      short loc_14027B602

loc_14027B5A7:                          ; CODE XREF: sub_14027B510+83↑j
                lea     rax, unk_140C50C00
                cmp     rsi, rax
                jnz     short loc_14027B5DC
                mov     rdx, gs:20h
                mov     eax, [rdx+831Ch]
                cmp     eax, ebp
                jb      short loc_14027B5DC

loc_14027B5C6:                          ; CODE XREF: sub_14027B510+CA↓j
                cmp     eax, r14d
                jz      short loc_14027B5DC
                lea     ecx, [rax-1]
                lock cmpxchg [rdx+831Ch], ecx
                jz      short loc_14027B61E
                cmp     eax, ebp
                jnb     short loc_14027B5C6

loc_14027B5DC:                          ; CODE XREF: sub_14027B510+A1↑j
                                        ; sub_14027B510+B4↑j ...
                mov     r8, rbx
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1403438BC
                mov     ebx, eax
                test    eax, eax
                jnz     short loc_14027B600
                test    dil, dil
                jz      short loc_14027B600
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_14026B700

loc_14027B600:                          ; CODE XREF: sub_14027B510+DE↑j
                                        ; sub_14027B510+E3↑j ...
                mov     eax, ebx

loc_14027B602:                          ; CODE XREF: sub_14027B510+95↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027B61E:                          ; CODE XREF: sub_14027B510+C6↑j
                mov     ebx, ebp
                jmp     short loc_14027B600
sub_14027B510   endp

; ---------------------------------------------------------------------------
algn_14027B622:                         ; DATA XREF: .pdata:00000001400CE7CC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14027B630   proc near               ; CODE XREF: sub_140221EA0+492↑p
                                        ; sub_140226D20+2A2↑p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                push    rbx
                sub     rsp, 20h
                movzx   edx, word ptr [rcx+20h]
                mov     rbx, rcx
                test    dx, dx
                jz      loc_14027B87C

loc_14027B646:                          ; DATA XREF: .rdata:000000014005E0B8↑o
                                        ; .rdata:000000014005E0C8↑o ...
                mov     [rsp+28h+arg_8], rbp
                mov     eax, 0FFFFh
                add     dx, ax
                mov     [rsp+28h+arg_10], rsi
                mov     [rcx+20h], dx
                mov     ebp, 1
                mov     [rsp+28h+arg_18], rdi
                jnz     short loc_14027B675
                call    sub_1402303F0
                test    eax, eax
                jnz     loc_14027B82D

loc_14027B675:                          ; CODE XREF: sub_14027B630+36↑j
                mov     r11, [rbx+28h]
                mov     rax, 1000000000h
                test    rax, r11
                jnz     loc_14027B864
                mov     rax, 2000000000000h
                test    rax, r11
                jnz     loc_14027B864
                mov     rdi, [rbx+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                mov     rax, rdi
                xor     r10d, r10d
                and     rax, rcx
                test    dx, dx
                jz      short loc_14027B6E9
                cmp     dx, bp
                jnz     short loc_14027B6C7
                test    rax, rax
                jnz     short loc_14027B6E4
                jmp     short loc_14027B6DA
; ---------------------------------------------------------------------------

loc_14027B6C7:                          ; CODE XREF: sub_14027B630+8E↑j
                cmp     dx, 2
                jnz     loc_14027B864
                test    rax, rax
                jz      loc_14027B864

loc_14027B6DA:                          ; CODE XREF: sub_14027B630+95↑j
                test    byte ptr [rbx+22h], 8
                jz      loc_14027B864

loc_14027B6E4:                          ; CODE XREF: sub_14027B630+93↑j
                mov     esi, r10d
                jmp     short loc_14027B6EB
; ---------------------------------------------------------------------------

loc_14027B6E9:                          ; CODE XREF: sub_14027B630+89↑j
                mov     esi, ebp

loc_14027B6EB:                          ; CODE XREF: sub_14027B630+B7↑j
                mov     r8, 0FFFFF68000000000h
                mov     rax, r8
                mov     rcx, 3FFFFFFF78h
                mov     rdx, 8000000000000000h
                add     rax, rcx
                mov     rcx, [rbx+8]
                or      rcx, rdx
                cmp     rcx, rax
                ja      short loc_14027B723
                mov     rax, r8
                cmp     rcx, rax
                jnb     short loc_14027B735

loc_14027B723:                          ; CODE XREF: sub_14027B630+E9↑j
                movzx   eax, byte ptr [rbx+23h]
                test    al, 20h
                jz      short loc_14027B735
                and     al, 0DFh
                mov     [rbx+23h], al
                jmp     loc_14027B829
; ---------------------------------------------------------------------------

loc_14027B735:                          ; CODE XREF: sub_14027B630+F1↑j
                                        ; sub_14027B630+F9↑j
                mov     rcx, rbx
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14027B750
                mov     eax, [rbx+10h]
                bt      rax, 0Ah
                jnb     short loc_14027B750
                mov     r10d, ebp
                jmp     short loc_14027B76D
; ---------------------------------------------------------------------------

loc_14027B750:                          ; CODE XREF: sub_14027B630+10F↑j
                                        ; sub_14027B630+119↑j
                call    sub_140279D40
                test    eax, eax
                jz      short loc_14027B75E
                mov     r10d, ebp
                jmp     short loc_14027B76D
; ---------------------------------------------------------------------------

loc_14027B75E:                          ; CODE XREF: sub_14027B630+127↑j
                cmp     esi, ebp
                jnz     short loc_14027B76D
                shr     rdi, 3Eh
                test    bpl, dil
                cmovnz  r10d, ebp

loc_14027B76D:                          ; CODE XREF: sub_14027B630+11E↑j
                                        ; sub_14027B630+12C↑j ...
                mov     rax, cs:qword_140C4E4C8
                shr     r11, 27h
                and     r11d, 3FFh
                mov     rdi, [rax+r11*8]
                cmp     r10d, ebp
                jnz     short loc_14027B793
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14026B700

loc_14027B793:                          ; CODE XREF: sub_14027B630+156↑j
                lea     rax, unk_140C50C00
                mov     r8, rbp
                cmp     rdi, rax
                jnz     short loc_14027B820
                mov     r9, gs:20h
                movsxd  rdx, dword ptr [r9+831Ch]
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14027B820
                lea     rcx, [rdx+1]
                cmp     rcx, 100h
                ja      short loc_14027B7F4
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_14027B7D0:                          ; CODE XREF: sub_14027B630+1C2↓j
                lea     ecx, [rdx+1]
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                movsxd  rdx, eax
                jz      short loc_14027B829
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14027B7F4
                lea     rax, [rdx+1]
                cmp     rax, 100h
                jbe     short loc_14027B7D0

loc_14027B7F4:                          ; CODE XREF: sub_14027B630+192↑j
                                        ; sub_14027B630+1B6↑j
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_14027B81B
                cmp     edx, 0FFFFFFFFh
                jz      short loc_14027B81B
                mov     eax, edx
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_14027B81B
                lea     eax, [rdx-0C0h]
                movsxd  r8, eax
                inc     r8

loc_14027B81B:                          ; CODE XREF: sub_14027B630+1CB↑j
                                        ; sub_14027B630+1D0↑j ...
                test    r8, r8
                jz      short loc_14027B829

loc_14027B820:                          ; CODE XREF: sub_14027B630+170↑j
                                        ; sub_14027B630+185↑j
                lock xadd [rdi+1C00h], r8

loc_14027B829:                          ; CODE XREF: sub_14027B630+100↑j
                                        ; sub_14027B630+1B1↑j ...
                test    esi, esi
                jz      short loc_14027B864

loc_14027B82D:                          ; CODE XREF: sub_14027B630+3F↑j
                mov     rdx, 0FFFFFA8000000000h
                mov     rcx, rbx
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rcx, rdx
                imul    rcx
                sar     rdx, 3
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rdx, rcx
                mov     rcx, rbx
                call    sub_140278860
                mov     eax, ebp
                jmp     short loc_14027B866
; ---------------------------------------------------------------------------

loc_14027B864:                          ; CODE XREF: sub_14027B630+56↑j
                                        ; sub_14027B630+69↑j ...
                xor     eax, eax

loc_14027B866:                          ; CODE XREF: sub_14027B630+232↑j
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14027B87B:                         ; DATA XREF: .pdata:00000001400CE7E4↑o
                                        ; .pdata:00000001400CE7F0↑o
                align 4

loc_14027B87C:                          ; CODE XREF: sub_14027B630+10↑j
                call    sub_1403F41EC
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027B630   endp

algn_14027B882:                         ; DATA XREF: .pdata:00000001400CE7F0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14027B890   proc near               ; CODE XREF: sub_140213C50+102↑p
                                        ; sub_14028E340+4F0↓p ...

var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 68h
                mov     rdi, cs:qword_14001D278
                xor     r11d, r11d
                mov     rbx, [rdx]
                mov     r14, rdx
                mov     [rsp+98h+var_50], r11
                mov     r8, rcx
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rax, r10
                mov     rdx, 0FFFFF6FB7DBED7F8h
                cmp     r14, rax
                jb      short loc_14027B952
                mov     rax, rdx
                cmp     r14, rax
                ja      short loc_14027B952
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027B948
                test    bl, 1
                jz      short loc_14027B948
                test    bl, 20h
                jz      short loc_14027B900
                test    bl, 42h
                jnz     short loc_14027B948

loc_14027B900:                          ; CODE XREF: sub_14027B890+69↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027B948
                mov     rax, r14
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
                jz      short loc_14027B948
                or      rbx, 42h

loc_14027B948:                          ; CODE XREF: sub_14027B890+5F↑j
                                        ; sub_14027B890+64↑j ...
                mov     rdx, 0FFFFF6FB7DBED7F8h

loc_14027B952:                          ; CODE XREF: sub_14027B890+4E↑j
                                        ; sub_14027B890+56↑j
                movzx   ecx, word ptr [r8+0AEh]
                mov     rax, cs:qword_140C4E4C8
                mov     [rsp+98h+var_60], rbx
                mov     r13, [rax+rcx*8]
                mov     rax, r10
                lea     rcx, [rsp+98h+var_60]
                cmp     rcx, rax
                jb      short loc_14027B9E8
                mov     rax, rdx
                lea     rcx, [rsp+98h+var_60]
                cmp     rcx, rax
                ja      short loc_14027B9E8
                mov     rdx, rbx
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027B9EB
                test    bl, 1
                jz      short loc_14027B9EB
                test    bl, 20h
                jz      short loc_14027B99F
                test    bl, 42h
                jnz     short loc_14027B9EB

loc_14027B99F:                          ; CODE XREF: sub_14027B890+108↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027B9E8
                lea     rax, [rsp+98h+var_60]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                test    al, 42h
                jz      short loc_14027B9EB
                or      rdx, 42h
                jmp     short loc_14027B9EB
; ---------------------------------------------------------------------------

loc_14027B9E8:                          ; CODE XREF: sub_14027B890+E5↑j
                                        ; sub_14027B890+F2↑j ...
                mov     rdx, rbx

loc_14027B9EB:                          ; CODE XREF: sub_14027B890+FE↑j
                                        ; sub_14027B890+103↑j ...
                shr     rdx, 0Ch
                mov     r10, 0FFFFFFFFFh
                and     rdx, r10

loc_14027B9FC:                          ; DATA XREF: .rdata:000000014005E0F8↑o
                                        ; .rdata:000000014005E108↑o ...
                mov     [rsp+98h+var_38], rbp
                mov     [rsp+98h+var_40], r15
                mov     r8, 0FFFFFA8000000000h
                lea     r12, [rdx+rdx*2]
                shl     r12, 4
                mov     rax, r8
                mov     rdx, [r12+rax+28h]
                lea     rsi, [r12+rax]
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, rdx
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rax, [rax+rcx*8]
                mov     rcx, rsi
                mov     [rsp+98h+var_58], rax
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_14027BB68
                mov     rax, 1000000000h
                mov     r15, 8000000000000000h
                test    rax, rdx
                jnz     short loc_14027BA83
                mov     rax, [rsi+8]
                test    rax, rax
                js      short loc_14027BA83
                jz      short loc_14027BA83
                mov     r11, rax
                or      r11, r15
                mov     [rsp+98h+var_50], r11
                xor     r11d, r11d

loc_14027BA83:                          ; CODE XREF: sub_14027B890+1D8↑j
                                        ; sub_14027B890+1E1↑j ...
                mov     rcx, r14
                call    sub_1402C78A0
                lea     rbp, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbp, 4
                mov     rax, rax
                add     rbp, rax
                mov     [rsp+98h+arg_8], r11d
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jnb     short loc_14027BADF
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_14027BAC0:                          ; CODE XREF: sub_14027B890+244↓j
                                        ; sub_14027B890+24D↓j
                lea     rcx, [rsp+98h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rsi+18h]
                test    rax, rax
                js      short loc_14027BAC0
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jb      short loc_14027BAC0

loc_14027BADF:                          ; CODE XREF: sub_14027B890+222↑j
                test    bl, 42h
                jz      short loc_14027BAEF
                mov     rcx, rsi
                call    sub_1402A6940
                mov     rdi, rax

loc_14027BAEF:                          ; CODE XREF: sub_14027B890+252↑j
                mov     rcx, [rsi+10h]
                bt      rcx, 0Ah
                jnb     short loc_14027BB4E
                bt      rbx, 9
                jb      short loc_14027BB4E
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14027BB18
                test    cl, 10h
                jnz     short loc_14027BB18
                not     rax
                and     rcx, rax

loc_14027BB18:                          ; CODE XREF: sub_14027B890+27B↑j
                                        ; sub_14027B890+280↑j
                mov     r12, [rsp+98h+arg_18]
                mov     r10d, [rsp+98h+arg_10]
                sar     rcx, 10h
                mov     rax, [rcx]
                mov     ecx, [rax+38h]
                and     ecx, 820h
                cmp     ecx, 820h
                jnz     loc_14027BCD5
                inc     qword ptr [r12+18h]
                jmp     loc_14027BCD5
; ---------------------------------------------------------------------------

loc_14027BB4E:                          ; CODE XREF: sub_14027B890+268↑j
                                        ; sub_14027B890+26F↑j
                mov     r12, [rsp+98h+arg_18]
                mov     r10d, [rsp+98h+arg_10]
                inc     qword ptr [r12+18h]
                jmp     loc_14027BCD5
; ---------------------------------------------------------------------------

loc_14027BB68:                          ; CODE XREF: sub_14027B890+1BB↑j
                cmp     rsi, cs:qword_140C4EBE0
                jnz     loc_14027BBF5
                mov     rbx, cs:qword_14001D278
                mov     rcx, r14
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027BBED
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027BBBF
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14027BBAC
                test    bl, 1
                jz      short loc_14027BBAC
                mov     r15, 8000000000000000h
                or      rbx, r15

loc_14027BBAC:                          ; CODE XREF: sub_14027B890+308↑j
                                        ; sub_14027B890+30D↑j
                mov     rdx, rbx
                mov     [r14], rbx
                mov     rcx, r14
                call    sub_140349620
                jmp     loc_14027BE5A
; ---------------------------------------------------------------------------

loc_14027BBBF:                          ; CODE XREF: sub_14027B890+2FF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027BBED
                test    bl, 1
                jz      short loc_14027BBED
                mov     r15, 8000000000000000h
                or      rbx, r15

loc_14027BBED:                          ; CODE XREF: sub_14027B890+2F6↑j
                                        ; sub_14027B890+349↑j ...
                mov     [r14], rbx
                jmp     loc_14027BE5A
; ---------------------------------------------------------------------------

loc_14027BBF5:                          ; CODE XREF: sub_14027B890+2DF↑j
                mov     rcx, [rsi+8]
                mov     r15, 8000000000000000h
                mov     rax, rcx
                or      rax, r15
                cmp     rax, r14
                jnz     loc_14027BE73
                and     rdx, r10
                lea     rbp, [rdx+rdx*2]
                shl     rbp, 4
                mov     rax, r8
                inc     qword ptr [r9+18h]
                add     rbp, rax
                mov     [rsp+98h+var_68], r11d
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jnb     short loc_14027BC51

loc_14027BC35:                          ; CODE XREF: sub_14027B890+3B6↓j
                                        ; sub_14027B890+3BF↓j
                lea     rcx, [rsp+98h+var_68]
                call    sub_1402C8C70
                mov     rax, [rsi+18h]
                test    rax, rax
                js      short loc_14027BC35
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jb      short loc_14027BC35

loc_14027BC51:                          ; CODE XREF: sub_14027B890+3A3↑j
                mov     rax, 4000000000000000h
                or      [rsi+18h], rax
                mov     rax, [rsi+28h]
                shr     rax, 3Ch
                and     al, 7
                cmp     al, 2
                jnz     short loc_14027BCAA
                mov     rcx, rsi
                call    sub_1402A6940
                movzx   ecx, word ptr [rsi+20h]
                mov     rdi, rax
                test    cx, cx
                jz      short loc_14027BC91
                cmp     ecx, 2
                jbe     short loc_14027BC9C
                cmp     ecx, 3
                jnz     short loc_14027BC91
                test    byte ptr [rsi+22h], 8
                jnz     short loc_14027BC9C

loc_14027BC91:                          ; CODE XREF: sub_14027B890+3EF↑j
                                        ; sub_14027B890+3F9↑j
                cmp     [rsp+98h+var_58], r13
                jnz     loc_14027BE8E

loc_14027BC9C:                          ; CODE XREF: sub_14027B890+3F4↑j
                                        ; sub_14027B890+3FF↑j
                mov     rax, 8FFFFFFFFFFFFFFFh
                and     [rsi+28h], rax

loc_14027BCAA:                          ; CODE XREF: sub_14027B890+3DB↑j
                mov     r10d, [rsp+98h+arg_10]
                test    r10b, 4
                jz      short loc_14027BCCD
                mov     rcx, rsi
                call    sub_14037CC28
                test    eax, eax
                jz      short loc_14027BCCD
                call    sub_1405359C4
                and     byte ptr [rsi+23h], 0DFh

loc_14027BCCD:                          ; CODE XREF: sub_14027B890+426↑j
                                        ; sub_14027B890+432↑j
                mov     r12, [rsp+98h+arg_18]

loc_14027BCD5:                          ; CODE XREF: sub_14027B890+2AE↑j
                                        ; sub_14027B890+2B9↑j ...
                test    r10b, 10h
                jz      short loc_14027BCDF
                and     byte ptr [rsi+23h], 0F7h

loc_14027BCDF:                          ; CODE XREF: sub_14027B890+449↑j
                mov     rdx, cs:qword_14001D278
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r14, rax
                jb      short loc_14027BD55
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_14027BD55
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027BD31
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14027BD24
                test    dl, 1
                jz      short loc_14027BD24
                or      rdx, r15

loc_14027BD24:                          ; CODE XREF: sub_14027B890+48A↑j
                                        ; sub_14027B890+48F↑j
                mov     rcx, r14
                mov     [r14], rdx
                call    sub_140349620
                jmp     short loc_14027BD58
; ---------------------------------------------------------------------------

loc_14027BD31:                          ; CODE XREF: sub_14027B890+481↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027BD55
                test    dl, 1
                jz      short loc_14027BD55
                or      rdx, r15

loc_14027BD55:                          ; CODE XREF: sub_14027B890+466↑j
                                        ; sub_14027B890+478↑j ...
                mov     [r14], rdx

loc_14027BD58:                          ; CODE XREF: sub_14027B890+49F↑j
                movzx   eax, byte ptr [rsi+22h]
                and     al, 7
                cmp     al, 6
                jnz     loc_14027BEC1
                mov     rcx, [rsi+18h]
                mov     r14, 3FFFFFFFFFFFFFFFh
                mov     rdx, rcx
                mov     rax, rcx
                and     rdx, r14
                dec     rdx
                xor     rax, rdx
                and     rax, r14
                xor     rax, rcx
                mov     [rsi+18h], rax
                test    rdx, rdx
                jnz     short loc_14027BD9E
                mov     rcx, rsi
                call    sub_140278C00
                mov     ebx, eax
                jmp     short loc_14027BDA3
; ---------------------------------------------------------------------------

loc_14027BD9E:                          ; CODE XREF: sub_14027B890+500↑j
                mov     ebx, 2

loc_14027BDA3:                          ; CODE XREF: sub_14027B890+50C↑j
                mov     r15, 7FFFFFFFFFFFFFFFh
                lock and [rsi+18h], r15
                mov     [rsp+98h+var_64], 0
                lock bts qword ptr [rbp+18h], 3Fh ; '?'
                jnb     short loc_14027BDDF

loc_14027BDC3:                          ; CODE XREF: sub_14027B890+544↓j
                                        ; sub_14027B890+54D↓j
                lea     rcx, [rsp+98h+var_64]
                call    sub_1402C8C70
                mov     rax, [rbp+18h]
                test    rax, rax
                js      short loc_14027BDC3
                lock bts qword ptr [rbp+18h], 3Fh ; '?'
                jb      short loc_14027BDC3

loc_14027BDDF:                          ; CODE XREF: sub_14027B890+531↑j
                movzx   eax, byte ptr [rbp+22h]
                and     al, 7
                cmp     al, 6
                jnz     loc_14027BECA
                mov     rcx, [rbp+18h]
                mov     rdx, rcx
                mov     rax, rcx
                and     rdx, r14
                dec     rdx
                xor     rax, rdx
                and     rax, r14
                xor     rax, rcx
                mov     [rbp+18h], rax
                test    rdx, rdx
                jnz     short loc_14027BE17
                mov     rcx, rbp
                call    sub_140278C00

loc_14027BE17:                          ; CODE XREF: sub_14027B890+57D↑j
                lock and [rbp+18h], r15
                test    rdi, rdi
                jz      short loc_14027BE34
                mov     rcx, [rsp+98h+var_58]
                mov     r8d, 1
                mov     rdx, rdi
                call    sub_14020B2C0

loc_14027BE34:                          ; CODE XREF: sub_14027B890+58F↑j
                mov     rax, [rsp+98h+var_50]
                test    rax, rax
                jz      short loc_14027BE50
                mov     rcx, [rsp+98h+arg_0]
                mov     rdx, rax
                call    sub_140366EF4
                mov     ebx, eax

loc_14027BE50:                          ; CODE XREF: sub_14027B890+5AC↑j
                cmp     ebx, 3
                jnz     short loc_14027BE5A
                inc     qword ptr [r12+8]

loc_14027BE5A:                          ; CODE XREF: sub_14027B890+32A↑j
                                        ; sub_14027B890+360↑j ...
                mov     r15, [rsp+98h+var_40]
                mov     rbp, [rsp+98h+var_38]
                add     rsp, 68h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14027BE72  db 0CCh                 ; DATA XREF: .pdata:00000001400CE808↑o
                                        ; .pdata:00000001400CE814↑o
; ---------------------------------------------------------------------------

loc_14027BE73:                          ; CODE XREF: sub_14027B890+37C↑j
                                        ; DATA XREF: .pdata:00000001400CE814↑o ...
                mov     [rsp+98h+var_78], rcx
                mov     r9, rbx
                mov     ecx, 1Ah
                mov     r8, r14
                mov     edx, 404h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14027BE8E:                          ; CODE XREF: sub_14027B890+406↑j
                mov     [rsp+98h+var_78], rcx
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    r12
                mov     r8, r14
                mov     ecx, 1Ah
                sar     rdx, 3
                mov     r9, rdx
                shr     r9, 3Fh
                add     r9, rdx
                mov     edx, 406h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14027BEC1:                          ; CODE XREF: sub_14027B890+4D0↑j
                mov     rcx, rsi
                call    sub_1403F4244
; ---------------------------------------------------------------------------
                align 2

loc_14027BECA:                          ; CODE XREF: sub_14027B890+557↑j
                mov     rcx, rbp
                call    sub_1403F4244
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027B890   endp

algn_14027BED3:                         ; DATA XREF: .pdata:00000001400CE820↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027BEE0   proc near               ; CODE XREF: sub_140278930+296↑p
                                        ; sub_140278C00+630↑p ...

var_78          = dword ptr -78h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xorps   xmm0, xmm0
                mov     r10, 0FFFFFA8000000000h
                xor     eax, eax
                mov     r14, rdx
                movups  [rsp+78h+var_58], xmm0
                mov     [rsp+78h+var_48], rax
                mov     rbp, rcx
                mov     rax, r10
                mov     rsi, [r14+28h]
                mov     r8, rdx
                sub     r8, rax
                mov     r9, 2AAAAAAAAAAAAAABh
                mov     rax, r9
                imul    r8
                mov     r15, rdx
                sar     r15, 3
                mov     rax, r15
                shr     rax, 3Fh
                add     r15, rax
                mov     rax, 2000000000000h
                test    rax, rsi
                jnz     loc_14027C079
                cmp     cs:byte_140C51EDE, 0
                jz      short loc_14027BF78
                mov     rax, cs:qword_140C52408
                mov     rcx, r15
                shr     rcx, 9
                bt      [rax], rcx
                jb      loc_14027C079

loc_14027BF78:                          ; CODE XREF: sub_14027BEE0+7E↑j
                test    rbp, rbp
                jz      loc_14027C079
                movzx   r8d, byte ptr [r14+23h]
                test    r8b, 10h
                jnz     loc_14027C079
                test    r8b, 40h
                jnz     loc_14027C079
                mov     rdx, cs:qword_140C4E4C8
                mov     rcx, [rbp+28h]
                shr     rcx, 27h
                shr     rsi, 27h
                and     ecx, 3FFh
                and     esi, 3FFh
                mov     rcx, [rdx+rcx*8]
                mov     rsi, [rdx+rsi*8]
                cmp     rcx, rsi
                jnz     loc_14027C079
                mov     ecx, r8d
                and     ecx, 7
                cmp     ecx, 5
                jnb     loc_14027C079
                mov     rcx, r10
                xor     r13d, r13d
                lea     rbx, [rsi+0A68h]
                mov     qword ptr [rsp+78h+var_58+8], rbx
                mov     rdx, rbp
                sub     rdx, rcx
                mov     qword ptr [rsp+78h+var_58], r13
                mov     rcx, gs:20h
                mov     rax, r9
                imul    rdx
                mov     r8, [rcx+84B8h]
                mov     r12, rdx
                sar     r12, 3
                mov     rax, r12
                shr     rax, 3Fh
                add     r12, rax
                test    r8, r8
                jz      short loc_14027C03A
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14027C03A
                mov     eax, [r8+18h]
                add     eax, 1
                mov     [r8+18h], eax
                jnz     short loc_14027C03A
                call    sub_1403F2EC4

loc_14027C03A:                          ; CODE XREF: sub_14027BEE0+140↑j
                                        ; sub_14027BEE0+146↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_14027C052
                mov     rdx, rbx
                lea     rcx, [rsp+78h+var_58]
                call    sub_14051652C
                jmp     short loc_14027C069
; ---------------------------------------------------------------------------

loc_14027C052:                          ; CODE XREF: sub_14027BEE0+161↑j
                lea     rdx, [rsp+78h+var_58]
                xchg    rdx, [rbx]
                test    rdx, rdx
                jz      short loc_14027C069
                lea     rcx, [rsp+78h+var_58]
                call    sub_14025FC20

loc_14027C069:                          ; CODE XREF: sub_14027BEE0+170↑j
                                        ; sub_14027BEE0+17D↑j
                test    byte ptr [rbp+23h], 8
                jnz     short loc_14027C09F
                lea     rcx, [rsp+78h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_14027C079:                          ; CODE XREF: sub_14027BEE0+71↑j
                                        ; sub_14027BEE0+92↑j ...
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140278860

loc_14027C084:                          ; CODE XREF: sub_14027BEE0+3EF↓j
                                        ; sub_14027BEE0+3F9↓j ...
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027C09F:                          ; CODE XREF: sub_14027BEE0+18D↑j
                movzx   eax, byte ptr [r14+23h]
                mov     rcx, r14
                or      al, 8

loc_14027C0A9:                          ; DATA XREF: .rdata:000000014005E150↑o
                                        ; .rdata:000000014005E160↑o ...
                mov     [rsp+78h+arg_0], rdi
                mov     [r14+23h], al
                call    sub_1403F41D8
                test    eax, eax
                mov     ecx, 1100h
                mov     edx, 13C0h
                cmovz   ecx, edx
                lock inc qword ptr [rcx+rsi]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+78h+var_40], xmm0
                mov     [rsp+78h+var_30], rax
                mov     edi, 1
                lock xadd [rsi+1BC0h], rdi
                inc     rdi
                cmp     rdi, 420h
                ja      short loc_14027C159
                cmp     rdi, 0A0h
                jnz     short loc_14027C105
                lea     eax, [rdx-58h]
                jmp     short loc_14027C120
; ---------------------------------------------------------------------------

loc_14027C105:                          ; CODE XREF: sub_14027BEE0+21E↑j
                cmp     rdi, 420h
                jnz     short loc_14027C115
                mov     eax, 1388h
                jmp     short loc_14027C120
; ---------------------------------------------------------------------------

loc_14027C115:                          ; CODE XREF: sub_14027BEE0+22C↑j
                cmp     rdi, 22h ; '"'
                jnz     short loc_14027C159
                mov     eax, 1348h

loc_14027C120:                          ; CODE XREF: sub_14027BEE0+223↑j
                                        ; sub_14027BEE0+233↑j
                lea     rdx, [rsi+1340h]
                mov     qword ptr [rsp+78h+var_40], r13
                lea     rcx, [rsp+78h+var_40]
                mov     qword ptr [rsp+78h+var_40+8], rdx
                lea     rbx, [rsi+rax]
                call    sub_14024B3F0
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    KeSetEvent
                inc     dword ptr [rbx+18h]
                lea     rcx, [rsp+78h+var_40]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_14027C159:                          ; CODE XREF: sub_14027BEE0+215↑j
                                        ; sub_14027BEE0+239↑j
                dec     rdi
                cmp     rdi, [rsi+1430h]
                jz      short loc_14027C16E
                cmp     rdi, [rsi+1438h]
                jnz     short loc_14027C176

loc_14027C16E:                          ; CODE XREF: sub_14027BEE0+283↑j
                mov     rcx, rsi
                call    sub_1403B69C4

loc_14027C176:                          ; CODE XREF: sub_14027BEE0+28C↑j
                lock or [rsp+78h+var_78], r13d
                mov     ecx, cs:dword_140D23080
                mov     rax, 0F00000000000000h
                mov     rdi, [rsp+78h+arg_0]
                shl     rcx, 38h
                xor     rcx, [r14+18h]
                and     rcx, rax
                movzx   eax, byte ptr [r14+22h]
                xor     [r14+18h], rcx
                and     al, 0FAh
                or      al, 2
                mov     [r14+22h], al
                mov     rax, cs:qword_140C4DDC0
                mov     rcx, [rbp+10h]
                test    rax, rax
                jz      short loc_14027C1CA

loc_14027C1BF:                          ; DATA XREF: .pdata:00000001400CE838↑o
                                        ; .pdata:00000001400CE844↑o
                test    cl, 10h
                jnz     short loc_14027C1CA
                not     rax
                and     rcx, rax

loc_14027C1CA:                          ; CODE XREF: sub_14027BEE0+2DD↑j
                                        ; sub_14027BEE0+2E2↑j
                mov     rdx, [rbp+28h]
                mov     r9, 0FFFFFFFFFh
                mov     rax, [r14]
                and     rdx, r9
                xor     rax, r12
                shr     rcx, 0Ch
                and     rax, r9
                mov     r10, 0FFFFFFF000000000h
                xor     [r14], rax
                mov     r8, r15
                mov     rax, [r14+18h]
                and     rcx, r9
                and     rax, r10
                and     r8, r9
                or      rax, rdx
                mov     [r14+18h], rax
                cmp     rcx, r12
                jnz     short loc_14027C224
                mov     edx, 4
                mov     rcx, r15
                call    sub_1402810E0
                mov     [rbp+10h], rax
                jmp     short loc_14027C248
; ---------------------------------------------------------------------------

loc_14027C224:                          ; CODE XREF: sub_14027BEE0+32F↑j
                lea     rcx, [rdx+rdx*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                add     rcx, rax
                mov     rax, [rcx]
                and     rax, r10
                or      rax, r8
                mov     [rcx], rax

loc_14027C248:                          ; CODE XREF: sub_14027BEE0+342↑j
                mov     rax, [rbp+28h]
                mov     rcx, r14
                and     rax, r10
                or      rax, r8
                mov     [rbp+28h], rax
                call    sub_14027C300
                inc     qword ptr [rsi+0A48h]
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_14027C27F
                mov     rdx, [rsp+78h]
                lea     rcx, [rsp+78h+var_58]
                call    sub_1405165EC
                jmp     short loc_14027C2BC
; ---------------------------------------------------------------------------

loc_14027C27F:                          ; CODE XREF: sub_14027BEE0+38C↑j
                prefetchw byte ptr [rsp+78h+var_58]
                mov     rax, qword ptr [rsp+78h+var_58]
                test    rax, rax
                jnz     short loc_14027C2B1
                mov     rcx, qword ptr [rsp+78h+var_58+8]
                lea     rax, [rsp+78h+var_58]
                lock cmpxchg [rcx], r13
                lea     rcx, [rsp+78h+var_58]
                cmp     rax, rcx
                jz      short loc_14027C2BC
                lea     rcx, [rsp+78h+var_58]
                call    sub_140313680

loc_14027C2B1:                          ; CODE XREF: sub_14027BEE0+3AC↑j
                mov     qword ptr [rsp+78h+var_58], r13
                lock xor qword ptr [rax+8], 1

loc_14027C2BC:                          ; CODE XREF: sub_14027BEE0+39D↑j
                                        ; sub_14027BEE0+3C5↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      loc_14027C084
                cmp     byte ptr [rcx+20h], 1
                ja      loc_14027C084
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     loc_14027C084
                call    sub_1403F2EC4
                jmp     loc_14027C084
sub_14027BEE0   endp

; ---------------------------------------------------------------------------
algn_14027C2F8:                         ; DATA XREF: .pdata:00000001400CE844↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C300   proc near               ; CODE XREF: sub_14027BEE0+379↑p
                                        ; sub_1402E3A38+17B4B3↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140442AD4 SIZE 0000001A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, rcx
                mov     r15, 0FFFFFA8000000000h
                mov     rax, r15
                mov     rdx, rcx
                mov     rcx, [rcx+28h]
                sub     rdx, rax
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rdx
                mov     rsi, rdx
                sar     rsi, 3
                mov     rax, rsi
                shr     rax, 3Fh
                add     rsi, rax
                mov     rax, cs:qword_140C4E4C8
                mov     rbp, [rax+rcx*8]
                movzx   eax, byte ptr [rdi+23h]
                test    al, 8
                jz      loc_140442AD4
                mov     r14d, 5

loc_14027C377:                          ; CODE XREF: sub_14027C300+1C67DB↓j
                mov     rcx, rsi
                call    sub_14027DEC0
                cmp     cs:qword_140C4DD50, 0
                mov     ebx, [rax+8]
                jnz     loc_140442AE0
                xor     eax, eax

loc_14027C392:                          ; CODE XREF: sub_14027C300+1C67E9↓j
                mov     eax, eax
                mov     r10, 0FFFFFFFFFh
                lea     rcx, [r14+rax*8]
                lea     rdx, [rcx+rcx*2]
                imul    rcx, rbx, 11C0h
                lea     r9, [rcx+rdx*8]
                add     r9, [rbp+10h]
                inc     qword ptr [r9+0CB8h]
                mov     rax, [r9+0CC8h]
                cmp     rax, r10
                jz      short loc_14027C443
                lea     r8, [rax+rax*2]
                shl     r8, 4
                mov     rcx, r15
                add     r8, rcx
                mov     rdx, rsi
                shl     rdx, 1Ch
                mov     rcx, rsi
                shl     rcx, 1Ch
                xor     rdx, [r8]
                and     rdx, r10
                mov     [r8+27h], sil
                xor     rdx, rcx
                mov     [r8], rdx

loc_14027C3F4:                          ; CODE XREF: sub_14027C300+14A↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rcx, 0FFFFFFF000000000h
                or      [rdi], rcx
                mov     rcx, 0FFFFF000000000h
                mov     rbp, [rsp+38h+arg_8]
                mov     [rdi+24h], ax
                shl     rax, 14h
                xor     rax, [rdi+18h]
                and     rax, rcx
                mov     byte ptr [rdi+27h], 0FFh
                xor     [rdi+18h], rax
                mov     [r9+0CC8h], rsi
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027C443:                          ; CODE XREF: sub_14027C300+C6↑j
                mov     [r9+0CC0h], rsi
                jmp     short loc_14027C3F4
sub_14027C300   endp

; ---------------------------------------------------------------------------
algn_14027C44C:                         ; DATA XREF: .rdata:000000014005E18C↑o
                                        ; .pdata:00000001400CE850↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C460   proc near               ; CODE XREF: sub_140320C3C+F6↓p
                                        ; DATA XREF: .pdata:00000001400CE85C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, edx
                lea     r13, qword_14001A848
                lea     r14, [rcx+rcx*2]
                mov     r12d, r8d
                mov     rsi, rcx
                shl     r14, 4
                xor     ebp, ebp
                mov     r13, [r13+rax*8+0]
                mov     rax, 0FFFFFA8000000000h
                add     r14, rax
                mov     rcx, r14
                mov     rbx, r14
                call    sub_14054FB04
                mov     rcx, [r14]
                mov     rdx, 0FFFFFFFFFh
                xor     rcx, r13
                and     rcx, rdx
                movzx   edx, al
                xor     [r14], rcx
                mov     rcx, r14
                call    sub_1403423EC
                lea     r15, [rsi+r13]
                cmp     rsi, r15
                jnb     loc_14027C5F7
                mov     rdi, 4000000000000000h
                nop     word ptr [rax+rax+00h]

loc_14027C4F0:                          ; CODE XREF: sub_14027C460+143↓j
                cmp     word ptr [rbx+20h], 2
                jz      short loc_14027C526
                mov     rcx, rbx
                call    sub_14054FB04
                cmp     word ptr [rbx+20h], 2
                movzx   edx, al
                mov     rcx, rbx
                jz      short loc_14027C521
                or      [rbx+18h], rdi
                call    sub_1403423EC
                test    r12b, 4
                jnz     loc_14027C617
                jmp     short loc_14027C599
; ---------------------------------------------------------------------------

loc_14027C521:                          ; CODE XREF: sub_14027C460+AA↑j
                call    sub_1403423EC

loc_14027C526:                          ; CODE XREF: sub_14027C460+95↑j
                mov     rcx, [rbx+28h]
                mov     rax, rcx
                shr     rax, 3Ch
                and     al, 7
                cmp     al, 3
                jnz     short loc_14027C569
                mov     rcx, rbx
                call    sub_14054FB04
                mov     edx, 0Ch
                mov     rcx, rbx
                movzx   edi, al
                call    sub_1402D69E8
                movzx   edx, dil
                mov     rcx, rbx
                call    sub_1403423EC
                mov     rcx, [rbx+28h]
                mov     rdi, 4000000000000000h

loc_14027C569:                          ; CODE XREF: sub_14027C460+D5↑j
                shr     rcx, 3Ch
                and     cl, 7
                cmp     cl, 1
                jnz     short loc_14027C596
                mov     rcx, rbx
                call    sub_14054FB04
                mov     rcx, 8FFFFFFFFFFFFFFFh
                movzx   edx, al
                and     [rbx+28h], rcx
                mov     rcx, rbx
                call    sub_1403423EC

loc_14027C596:                          ; CODE XREF: sub_14027C460+113↑j
                inc     rbp

loc_14027C599:                          ; CODE XREF: sub_14027C460+BF↑j
                add     rbx, 30h ; '0'
                inc     rsi
                cmp     rsi, r15
                jb      loc_14027C4F0
                test    rbp, rbp
                jz      short loc_14027C5F7
                cmp     rbp, r13
                jz      short loc_14027C5F0
                mov     rcx, r14
                call    sub_14054FB04
                mov     r8, [r14]
                mov     rcx, 0FFFFFFFFFh
                mov     rbx, r8
                mov     rdx, r8
                and     rbx, rcx
                sub     rbx, rbp
                xor     rdx, rbx
                and     rdx, rcx
                mov     rcx, r14
                xor     rdx, r8
                mov     [r14], rdx
                movzx   edx, al
                call    sub_1403423EC
                test    rbx, rbx
                jnz     short loc_14027C5F7

loc_14027C5F0:                          ; CODE XREF: sub_14027C460+151↑j
                mov     eax, 1
                jmp     short loc_14027C5F9
; ---------------------------------------------------------------------------

loc_14027C5F7:                          ; CODE XREF: sub_14027C460+7A↑j
                                        ; sub_14027C460+14C↑j ...
                xor     eax, eax

loc_14027C5F9:                          ; CODE XREF: sub_14027C460+195↑j
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

loc_14027C617:                          ; CODE XREF: sub_14027C460+B9↑j
                mov     rcx, rbx
                call    sub_1403F41EC
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027C460   endp

byte_14027C620  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400CE85C↑o

; =============== S U B R O U T I N E =======================================


sub_14027C630   proc near               ; CODE XREF: sub_14026C660+36D↑p
                                        ; sub_140320C3C+88↓p ...
                xor     dl, [rcx+22h]
                and     dl, 7
                xor     dl, [rcx+22h]
                mov     [rcx+22h], dl
                retn
sub_14027C630   endp

; ---------------------------------------------------------------------------
                align 2
byte_14027C63E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400CE868↑o

; =============== S U B R O U T I N E =======================================


sub_14027C650   proc near               ; DATA XREF: .rdata:0000000140008D98↑o
                                        ; .pdata:00000001400CE874↑o ...
                movzx   eax, byte ptr [rcx]
                retn
sub_14027C650   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14027C655:                         ; DATA XREF: .pdata:00000001400CE874↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C660   proc near               ; CODE XREF: sub_14026C660+C8↑p
                                        ; sub_14026C660+38E↑p ...
                sub     rsp, 28h
                mov     rax, [rcx]
                mov     rdx, rcx
                test    rax, rax
                jnz     short loc_14027C682
                mov     ecx, 80h
                call    sub_14027C6C0
                mov     [rdx], rax

loc_14027C67C:                          ; CODE XREF: sub_14027C660+30↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027C682:                          ; CODE XREF: sub_14027C660+D↑j
                and     rax, 0FFFFFFFFFFFFFC9Fh
                bts     rax, 7
                mov     [rcx], rax
                jmp     short loc_14027C67C
sub_14027C660   endp

; ---------------------------------------------------------------------------
algn_14027C692:                         ; DATA XREF: .pdata:00000001400CE880↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C6A0   proc near               ; CODE XREF: sub_14053DBE4+12A↓p
                                        ; sub_1406A1D1C+A9↓p ...
                sub     rsp, 28h
                and     ecx, 1Fh
                shl     rcx, 5
                call    sub_14027C6C0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027C6A0   endp

algn_14027C6B6:                         ; DATA XREF: .pdata:00000001400CE88C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C6C0   proc near               ; CODE XREF: sub_140209860+B4↑p
                                        ; sub_14020ACA0+73↑p ...
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14027C6DA
                test    rcx, rax
                jnz     short loc_14027C6D6
                or      rax, rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027C6D6:                          ; CODE XREF: sub_14027C6C0+F↑j
                or      rcx, 10h

loc_14027C6DA:                          ; CODE XREF: sub_14027C6C0+A↑j
                mov     rax, rcx
                retn
sub_14027C6C0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14027C6DF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400CE898↑o
; Exported entry 1149. KeExpandKernelStackAndCalloutEx

; =============== S U B R O U T I N E =======================================


