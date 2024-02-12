PsGetThreadId   proc near               ; CODE XREF: sub_14062778C+1D91A4↓p
                                        ; sub_1406981E8+17DE92↓p ...
                mov     rax, [rcx+480h]
                retn
PsGetThreadId   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140347179:                         ; DATA XREF: .pdata:00000001400D7874↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140347180   proc near               ; CODE XREF: sub_140577ED0:loc_1405781B8↓p
                                        ; DATA XREF: .rdata:00000001400089C8↑o ...

arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = word ptr  20h

; FUNCTION CHUNK AT 000000014047F55E SIZE 00000220 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                xor     r8d, r8d
                mov     r11d, 1
                cmp     cs:dword_140C1E67C, r8d
                jnz     loc_14047F55E

loc_1403471A3:                          ; CODE XREF: sub_140347180+138446↓j
                                        ; sub_140347180+1385F9↓j
                mov     al, r11b
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
                db 0CCh
sub_140347180   endp

byte_1403471B4  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140081B78↑o
                                        ; .pdata:00000001400D7880↑o

; =============== S U B R O U T I N E =======================================


sub_1403471BC   proc near               ; CODE XREF: sub_14024B450+5A1↑p
                                        ; sub_14024BD20+328↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     byte ptr [rcx+1], 2
                mov     rbx, rcx
                mov     rdi, cs:qword_140C54350
                jb      short loc_1403471F5
                mov     al, [rdi]
                cmp     [rcx], al
                jnz     short loc_1403471F5
                lea     rdx, [rdi+2]
                add     rcx, 2
                mov     r8d, 6
                call    RtlCompareMemory
                cmp     rax, 6
                jz      short loc_140347203

loc_1403471F5:                          ; CODE XREF: sub_1403471BC+18↑j
                                        ; sub_1403471BC+1E↑j ...
                xor     al, al

loc_1403471F7:                          ; CODE XREF: sub_1403471BC+51↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140347203:                          ; CODE XREF: sub_1403471BC+37↑j
                mov     eax, [rdi+8]
                cmp     [rbx+8], eax
                jnz     short loc_1403471F5
                mov     al, 1
                jmp     short loc_1403471F7
sub_1403471BC   endp

; ---------------------------------------------------------------------------
byte_14034720F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D788C↑o

; =============== S U B R O U T I N E =======================================


sub_140347218   proc near               ; CODE XREF: sub_1406FCB00+43↓p
                                        ; DATA XREF: .pdata:00000001400D7898↑o

; FUNCTION CHUNK AT 000000014047F77E SIZE 00000006 BYTES

                and     ecx, 0FFFh
                mov     eax, 1
                cmp     ecx, 0Fh
                jbe     short loc_140347247
                cmp     ecx, 15h
                ja      short loc_14034728E
                jz      loc_14047F77E
                sub     ecx, 10h
                jz      short loc_140347273
                sub     ecx, eax
                jz      short locret_140347245
                sub     ecx, eax
                jnz     short loc_1403472A1

loc_140347240:                          ; CODE XREF: sub_140347218+4C↓j
                                        ; sub_140347218+85↓j
                mov     eax, 2

locret_140347245:                       ; CODE XREF: sub_140347218+22↑j
                                        ; sub_140347218+50↓j ...
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140347247:                          ; CODE XREF: sub_140347218+E↑j
                jz      short loc_140347273
                cmp     ecx, 0Ah
                ja      short loc_14034727A
                jz      short loc_14034725A
                cmp     ecx, 5
                jbe     short loc_140347261
                cmp     ecx, 7
                ja      short loc_14034726E

loc_14034725A:                          ; CODE XREF: sub_140347218+36↑j
                                        ; sub_140347218+79↓j ...
                mov     eax, 4
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140347261:                          ; CODE XREF: sub_140347218+3B↑j
                cmp     ecx, 4
                jnb     short loc_140347240
                cmp     ecx, eax
                ja      short locret_140347245

loc_14034726A:                          ; CODE XREF: sub_140347218+59↓j
                                        ; sub_140347218+87↓j ...
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034726E:                          ; CODE XREF: sub_140347218+40↑j
                cmp     ecx, 9
                ja      short loc_14034726A

loc_140347273:                          ; CODE XREF: sub_140347218+1E↑j
                                        ; sub_140347218:loc_140347247↑j ...
                mov     eax, 8
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034727A:                          ; CODE XREF: sub_140347218+34↑j
                sub     ecx, 0Bh
                jz      short loc_140347273
                sub     ecx, eax
                jz      short loc_140347287
                sub     ecx, eax
                jnz     short loc_1403472A7

loc_140347287:                          ; CODE XREF: sub_140347218+69↑j
                mov     eax, 10h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034728E:                          ; CODE XREF: sub_140347218+13↑j
                sub     ecx, 16h
                jz      short loc_14034725A
                sub     ecx, eax
                jz      short loc_14034725A
                sub     ecx, eax
                jz      short loc_14034725A

loc_14034729B:                          ; CODE XREF: sub_140347218+8D↓j
                cmp     ecx, eax
                jz      short loc_140347240
                jmp     short loc_14034726A
; ---------------------------------------------------------------------------

loc_1403472A1:                          ; CODE XREF: sub_140347218+26↑j
                sub     ecx, eax
                jz      short locret_140347245
                jmp     short loc_14034729B
; ---------------------------------------------------------------------------

loc_1403472A7:                          ; CODE XREF: sub_140347218+6D↑j
                cmp     ecx, eax
                jz      short loc_140347273
                jmp     short loc_14034726A
sub_140347218   endp

; ---------------------------------------------------------------------------
byte_1403472AD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7898↑o

; =============== S U B R O U T I N E =======================================


sub_1403472B4   proc near               ; CODE XREF: sub_1406FCB00+80↓p
                                        ; sub_1406FCB00+1F7↓p
                                        ; DATA XREF: ...
                and     ecx, 0FFFh
                cmp     ecx, 12h
                jnb     short loc_1403472C3

loc_1403472BF:                          ; CODE XREF: sub_1403472B4+1D↓j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403472C3:                          ; CODE XREF: sub_1403472B4+9↑j
                cmp     ecx, 14h
                ja      short loc_1403472CC

loc_1403472C8:                          ; CODE XREF: sub_1403472B4+1B↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403472CC:                          ; CODE XREF: sub_1403472B4+12↑j
                cmp     ecx, 19h
                jz      short loc_1403472C8
                jmp     short loc_1403472BF
sub_1403472B4   endp

; ---------------------------------------------------------------------------
byte_1403472D3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D78A4↑o

; =============== S U B R O U T I N E =======================================


sub_1403472DC   proc near               ; CODE XREF: sub_1403BD7A8+2D↓p
                                        ; sub_1405C1138+7A↓p ...
                xor     r10d, r10d
                shr     rdx, 1
                mov     r9, r8
                mov     eax, r10d
                test    rcx, rcx
                jz      short loc_140347341
                cmp     rdx, 7FFFFFFFh
                ja      short loc_140347341
                mov     r8, rdx
                test    rdx, rdx
                jz      short loc_14034730E

loc_1403472FE:                          ; CODE XREF: sub_1403472DC+30↓j
                cmp     [rcx], r10w
                jz      short loc_14034730E
                add     rcx, 2
                sub     r8, 1
                jnz     short loc_1403472FE

loc_14034730E:                          ; CODE XREF: sub_1403472DC+20↑j
                                        ; sub_1403472DC+26↑j
                mov     rax, r8
                neg     rax
                sbb     ecx, ecx
                not     ecx
                and     ecx, 0C000000Dh
                test    r8, r8
                jz      short loc_14034733C
                mov     rax, rdx
                sub     rax, r8

loc_140347329:                          ; CODE XREF: sub_1403472DC+63↓j
                                        ; sub_1403472DC+6A↓j
                test    r9, r9
                jz      short loc_140347338
                test    ecx, ecx
                js      short loc_140347348
                add     rax, rax
                mov     [r9], rax

loc_140347338:                          ; CODE XREF: sub_1403472DC+50↑j
                                        ; sub_1403472DC+6F↓j
                mov     eax, ecx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14034733C:                          ; CODE XREF: sub_1403472DC+45↑j
                mov     rax, r10
                jmp     short loc_140347329
; ---------------------------------------------------------------------------

loc_140347341:                          ; CODE XREF: sub_1403472DC+F↑j
                                        ; sub_1403472DC+18↑j
                mov     ecx, 0C000000Dh
                jmp     short loc_140347329
; ---------------------------------------------------------------------------

loc_140347348:                          ; CODE XREF: sub_1403472DC+54↑j
                mov     [r9], r10
                jmp     short loc_140347338
sub_1403472DC   endp

; ---------------------------------------------------------------------------
byte_14034734D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D78B0↑o

; =============== S U B R O U T I N E =======================================


sub_140347354   proc near               ; CODE XREF: sub_1402144B0+73↑p
                                        ; DATA XREF: .rdata:0000000140081C1C↑o ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047F786 SIZE 000000C3 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r12d, r12d
                xor     eax, eax
                cmp     r12w, cs:word_140CFB000
                xorps   xmm0, xmm0
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                mov     ebp, r12d
                mov     ebx, r12d
                jnb     short loc_1403473D5

loc_140347392:                          ; CODE XREF: sub_140347354+77↓j
                mov     r14d, ebx
                mov     esi, r12d
                shl     r14, 3
                mov     rdi, r14
                shl     rdi, 6

loc_1403473A3:                          ; CODE XREF: sub_140347354+6A↓j
                                        ; sub_140347354+13846A↓j
                mov     rax, cs:qword_140C4EAB8
                cmp     word ptr [rdi+rax], 2
                ja      loc_14047F786

loc_1403473B5:                          ; CODE XREF: sub_140347354+138449↓j
                inc     esi
                add     rdi, 40h ; '@'
                cmp     esi, 8
                jb      short loc_1403473A3
                movzx   eax, cs:word_140CFB000
                inc     ebx
                cmp     ebx, eax
                jb      short loc_140347392
                test    ebp, ebp
                jnz     loc_14047F7C3

loc_1403473D5:                          ; CODE XREF: sub_140347354+3C↑j
                                        ; sub_140347354+1384F0↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140347354   endp

byte_1403473F5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140081C1C↑o
                                        ; .pdata:00000001400D78BC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=90h

sub_1403473FC   proc near               ; CODE XREF: DnsPrint_RpcZoneInfo+F4C↑p
                                        ; sub_1403882C8+70↓p
                                        ; DATA XREF: ...

var_170         = dword ptr -170h
var_16C         = dword ptr -16Ch
var_168         = dword ptr -168h
var_164         = dword ptr -164h
var_160         = dword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = dword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F0          = dword ptr -0F0h
var_EC          = word ptr -0ECh
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-70h]
                sub     rsp, 170h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+90h+var_30], rax
                mov     r14, rcx
                mov     [rsp+190h+var_128], rcx
                lea     rcx, [rbp+90h+var_F0]
                xor     edx, edx
                mov     r8d, 0B8h
                call    memset
                mov     r12, [r14+18h]
                xor     r15d, r15d
                mov     rsi, [r14+8]
                mov     rcx, [r14+20h]
                mov     rax, [r14+10h]
                lea     rdi, [r12+r12*2]
                mov     dword ptr [r14+38h], 0C0000001h
                shl     rdi, 4
                mov     [rsp+190h+var_120], rsi
                mov     [rsp+190h+var_140], r12
                mov     [rsp+190h+var_118], rcx
                mov     [rsp+190h+var_138], rax
                mov     [rsp+190h+var_150], r12
                mov     rdx, 0FFFFFA8000000000h
                mov     rax, rdx
                lea     r13, [rcx+rcx*2]
                add     rdi, rax
                shl     r13, 4
                mov     rax, rdx
                mov     ebx, [r14+3Ch]
                xor     ecx, ecx
                add     r13, rax
                mov     [rsp+190h+var_16C], ecx
                xor     r8d, r8d
                mov     [rsp+190h+var_170], ecx
                mov     [rsp+190h+var_164], ecx
                lea     ecx, [r15+1]
                mov     [rbp+90h+var_100], r13
                mov     [rsp+190h+var_168], r8d
                mov     rdx, 0FFFFF68000000000h
                cmp     ebx, ecx
                jnz     short loc_14034752C
                mov     rax, [r14+30h]
                mov     rcx, [rax+788h]
                test    rcx, rcx
                jz      loc_140347B95
                shr     rcx, 9
                mov     rax, 7FFFFFFFF8h
                and     rcx, rax
                mov     rax, rdx
                add     rcx, rax
                call    sub_1402805F0
                lea     rcx, [rbp+90h+var_108]
                mov     [rbp+90h+var_108], rax
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                cmp     rax, r12
                jnz     loc_140347B95
                lea     ecx, [r15+1]

loc_14034752C:                          ; CODE XREF: sub_1403473FC+D3↑j
                mov     rax, [rdi+28h]
                mov     rdx, 0FFFFFFFFFh
                and     rax, rdx
                mov     r11, 0FFFFF6FFFFFFFFFFh
                mov     r10d, ecx
                cmp     rax, r12
                jnz     short loc_14034756A
                mov     [rsp+190h+var_148], ecx
                cmp     ebx, ecx
                jnz     short loc_1403475CB
                mov     rax, [r14+30h]
                mov     rax, [rax+28h]
                shr     rax, 0Ch
                mov     [rsp+190h+var_150], rax
                jmp     short loc_1403475CB
; ---------------------------------------------------------------------------

loc_14034756A:                          ; CODE XREF: sub_1403473FC+151↑j
                and     [rsp+190h+var_148], r15d
                mov     rcx, rsi
                call    sub_14027F590
                mov     r9, rax
                mov     rax, 7FFFFFFEFFFFh
                cmp     r9, rax
                jbe     short loc_1403475CB
                cmp     r9, cs:qword_140C4F9B8
                jb      short loc_14034759B
                cmp     r9, cs:qword_140C4E1E8
                jbe     short loc_1403475CB

loc_14034759B:                          ; CODE XREF: sub_1403473FC+194↑j
                mov     rax, 0FFFFF68000000000h
                mov     rcx, rax
                cmp     r9, rcx
                jb      short loc_1403475B5
                mov     rax, r11
                cmp     r9, rax
                jbe     short loc_1403475CB

loc_1403475B5:                          ; CODE XREF: sub_1403473FC+1AF↑j
                mov     rcx, r9
                call    sub_140245330
                xor     r10d, r10d
                cmp     eax, 1
                lea     ecx, [r10+2]
                cmovz   r10d, ecx

loc_1403475CB:                          ; CODE XREF: sub_1403473FC+159↑j
                                        ; sub_1403473FC+16C↑j ...
                and     [rbp+90h+var_E0], r15
                mov     rax, rsi
                and     [rbp+90h+var_D8], r15
                mov     r14, rsi
                mov     r12, [rsp+190h+var_138]
                neg     rax
                mov     [rbp+90h+var_110], rax
                mov     [rbp+90h+var_F0], r10d
                mov     [rbp+90h+var_EC], r15w
                mov     [rbp+90h+var_E8], 14h

loc_1403475F5:                          ; CODE XREF: sub_1403473FC+29B↓j
                                        ; sub_1403473FC+3E1↓j
                mov     rcx, r14
                call    sub_1402805F0
                mov     ecx, 1
                mov     [rsp+190h+var_158], rax
                mov     rbx, rax
                mov     rsi, 7FFFFFFFFFFFFFFFh
                test    cl, al
                jnz     loc_140347706
                mov     rdx, rax
                bt      rax, 0Ah
                jb      loc_1403477AC
                bt      rax, 0Bh
                jnb     loc_1403477AC
                xor     ebx, ebx
                mov     rdx, 0FFFFF68000000000h
                test    r15d, r15d
                mov     rcx, r14
                setnz   bl
                shl     rcx, 19h
                mov     rax, rdx
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, rdx
                cmp     rcx, rax
                jb      short loc_140347686
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rcx, rax
                ja      short loc_140347686
                mov     rcx, r14
                call    sub_140361E20
                test    eax, eax
                jz      loc_140347B15

loc_140347686:                          ; CODE XREF: sub_1403473FC+266↑j
                                        ; sub_1403473FC+278↑j
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_1402A886C
                mov     rsi, rax
                test    rax, rax
                jz      loc_1403475F5
                mov     rcx, r14
                call    sub_1402805F0
                mov     rbx, rax
                mov     [rsp+190h+var_158], rax
                mov     rax, [rsi+28h]
                mov     r8, 0FFFFFFFFFh
                mov     rcx, rax
                mov     rdx, rbx
                and     rcx, r8
                cmp     rcx, [rsp+190h+var_150]
                jz      short loc_1403476E5
                mov     rcx, 1000000000h
                test    rcx, rax
                mov     ecx, 1
                jz      short loc_1403476EA
                add     [rsp+190h+var_164], ecx
                jmp     short loc_1403476EA
; ---------------------------------------------------------------------------

loc_1403476E5:                          ; CODE XREF: sub_1403473FC+2CD↑j
                mov     ecx, 1

loc_1403476EA:                          ; CODE XREF: sub_1403473FC+2E1↑j
                                        ; sub_1403473FC+2E7↑j
                test    byte ptr [rsi+22h], 20h
                jnz     loc_1403477EF
                add     r15d, ecx
                mov     rsi, 7FFFFFFFFFFFFFFFh
                jmp     loc_1403477AC
; ---------------------------------------------------------------------------

loc_140347706:                          ; CODE XREF: sub_1403473FC+21A↑j
                add     [rsp+190h+var_16C], ecx
                test    al, al
                js      short loc_14034776F
                lea     rcx, [rsp+190h+var_158]
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                cmp     rax, cs:qword_140C4EBE8
                jnz     short loc_140347738
                inc     [rsp+190h+var_168]
                jmp     short loc_140347773
; ---------------------------------------------------------------------------

loc_140347738:                          ; CODE XREF: sub_1403473FC+334↑j
                lea     rcx, [rax+rax*2]
                mov     rax, 0FFFFFA8000000028h
                add     rcx, rcx
                mov     rax, rax
                mov     rdx, [rax+rcx*8]
                mov     ecx, 1
                mov     rax, rdx
                shr     rax, 32h
                and     eax, ecx
                jz      short loc_140347773
                mov     rax, 1000000000h
                test    rax, rdx
                jz      short loc_140347773

loc_14034776F:                          ; CODE XREF: sub_1403473FC+310↑j
                add     [rsp+190h+var_170], ecx

loc_140347773:                          ; CODE XREF: sub_1403473FC+33A↑j
                                        ; sub_1403473FC+362↑j ...
                mov     rax, [rsp+190h+var_140]
                cmp     [rsp+190h+var_150], rax
                jz      short loc_1403477CA
                mov     rax, [rsp+190h+var_128]
                mov     rcx, [rbp+90h+var_110]
                add     rcx, r14
                sar     rcx, 3
                mov     rax, [rax+40h]
                lea     rcx, [rax+rcx*8]
                call    sub_1402805F0
                mov     rbx, rax
                mov     [rsp+190h+var_158], rax
                mov     rdx, rax
                mov     ecx, 1

loc_1403477AC:                          ; CODE XREF: sub_1403473FC+228↑j
                                        ; sub_1403473FC+233↑j ...
                mov     rax, [rsp+190h+var_140]
                cmp     [rsp+190h+var_150], rax
                jz      short loc_1403477CA
                and     dl, cl
                neg     dl
                sbb     rax, rax
                and     rax, rbx
                mov     rbx, rax
                mov     [rsp+190h+var_158], rax

loc_1403477CA:                          ; CODE XREF: sub_1403473FC+381↑j
                                        ; sub_1403473FC+3BA↑j
                mov     [r12], rbx
                add     r14, 8
                add     r12, 8
                test    r14, 0FFFh
                jnz     loc_1403475F5
                test    r15d, r15d
                jnz     short loc_140347821
                and     [rsp+190h+var_130], r15d
                jmp     short loc_140347816
; ---------------------------------------------------------------------------

loc_1403477EF:                          ; CODE XREF: sub_1403473FC+2F2↑j
                mov     rbx, 7FFFFFFFFFFFFFFFh
                lock and [rsi+18h], rbx
                jmp     loc_140347B1F
; ---------------------------------------------------------------------------

loc_140347803:                          ; CODE XREF: sub_1403473FC+418↓j
                                        ; sub_1403473FC+421↓j
                lea     rcx, [rsp+190h+var_130]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140347803

loc_140347816:                          ; CODE XREF: sub_1403473FC+3F1↑j
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140347803
                jmp     short loc_140347829
; ---------------------------------------------------------------------------

loc_140347821:                          ; CODE XREF: sub_1403473FC+3EA↑j
                mov     rcx, rdi
                call    sub_14032F060

loc_140347829:                          ; CODE XREF: sub_1403473FC+423↑j
                mov     rdx, [rdi+18h]
                mov     rax, 3FFFFFFFFFFFFFFFh
                mov     rbx, rdx
                and     rbx, rax
                cmp     [rsp+190h+var_148], 0
                jnz     short loc_140347867
                mov     ecx, [rsp+190h+var_16C]
                mov     eax, r15d
                sub     eax, [rsp+190h+var_168]
                inc     ecx
                sub     eax, [rsp+190h+var_164]
                sub     eax, [rsp+190h+var_170]
                add     ecx, eax
                movzx   eax, dx
                cmp     rax, rcx
                jnz     loc_140347B10

loc_140347867:                          ; CODE XREF: sub_1403473FC+446↑j
                mov     eax, 1
                cmp     [rdi+20h], ax
                jnz     loc_140347B10
                cmp     rbx, 10000h
                jnb     loc_140347B10
                mov     rcx, r13
                call    sub_14032F060
                mov     rax, [r13+18h]
                mov     rcx, 0C000000000000000h
                and     rax, rcx
                mov     r14, 7FFFFFFFFFFFFFFFh
                or      rax, rbx
                mov     [r13+18h], rax
                lock and [r13+18h], r14
                lock and [rdi+18h], r14
                mov     r12, [rsp+190h+var_120]
                or      esi, 0FFFFFFFFh
                mov     rbx, r12
                test    r15d, r15d
                jz      loc_140347976
                mov     r12, [rsp+190h+var_140]
                mov     rdi, [rsp+190h+var_118]
                mov     r13, 0FFFFFA8000000000h

loc_1403478DF:                          ; CODE XREF: sub_1403473FC+56F↓j
                mov     rcx, rbx
                call    sub_1402805F0
                mov     ecx, 1
                test    cl, al
                jnz     short loc_140347964
                bt      rax, 0Ah
                jb      short loc_140347964
                bt      rax, 0Bh
                jnb     short loc_140347964
                mov     rcx, cs:qword_140C4DDC0
                test    rcx, rcx
                jz      short loc_140347914
                test    al, 10h
                jnz     short loc_140347914
                not     rcx
                and     rax, rcx

loc_140347914:                          ; CODE XREF: sub_1403473FC+50C↑j
                                        ; sub_1403473FC+510↑j
                shr     rax, 0Ch
                mov     r9, 0FFFFFFFFFh
                and     rax, r9
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, r13
                mov     r8, [rsp+190h+var_150]
                add     rcx, rax
                mov     rdx, [rcx+28h]
                mov     rax, rdx
                and     rax, r9
                cmp     rax, r8
                jnz     short loc_14034795C
                cmp     r8, r12
                jnz     short loc_14034795C
                mov     rax, rdx
                xor     rax, rdi
                and     rax, r9
                xor     rax, rdx
                mov     [rcx+28h], rax

loc_14034795C:                          ; CODE XREF: sub_1403473FC+549↑j
                                        ; sub_1403473FC+54E↑j
                add     r15d, esi
                lock and [rcx+18h], r14

loc_140347964:                          ; CODE XREF: sub_1403473FC+4F2↑j
                                        ; sub_1403473FC+4F9↑j ...
                add     rbx, 8
                test    r15d, r15d
                jnz     loc_1403478DF
                mov     r12, [rsp+190h+var_120]

loc_140347976:                          ; CODE XREF: sub_1403473FC+4C9↑j
                mov     r13d, [rsp+190h+var_16C]
                test    r13d, r13d
                jz      loc_140347AF9
                sub     [rsp+190h+var_138], r12
                mov     r15, r14
                mov     r14d, 1

loc_140347992:                          ; CODE XREF: sub_1403473FC+6F7↓j
                mov     rcx, r12
                call    sub_1402805F0
                mov     [rsp+190h+var_158], rax
                mov     rbx, rax
                test    r14b, al
                jz      loc_140347AEC
                lea     rcx, [rsp+190h+var_158]
                add     r13d, esi
                call    sub_1402805F0
                mov     rcx, 0FFFFFFFFFh
                shr     rax, 0Ch
                and     rax, rcx
                mov     rcx, 0FFFFFA8000000028h
                lea     rdi, [rax+rax*2]
                shl     rdi, 4
                mov     rcx, rcx
                mov     rdx, [rdi+rcx]
                shr     rdx, 32h
                and     edx, r14d
                mov     r14, [rsp+190h+var_150]
                jz      short loc_140347A66
                cmp     rax, r14
                jz      short loc_140347A66
                mov     rax, 0FFFFFA8000000000h
                mov     rbx, rax
                and     [rsp+190h+var_160], 0
                jmp     short loc_140347A1D
; ---------------------------------------------------------------------------

loc_140347A09:                          ; CODE XREF: sub_1403473FC+61F↓j
                                        ; sub_1403473FC+629↓j
                lea     rcx, [rsp+190h+var_160]
                call    sub_1402C8C70
                mov     rax, [rdi+rbx+18h]
                test    rax, rax
                js      short loc_140347A09

loc_140347A1D:                          ; CODE XREF: sub_1403473FC+60B↑j
                lock bts qword ptr [rdi+rbx+18h], 3Fh ; '?'
                jb      short loc_140347A09
                mov     rcx, [rdi+rbx+28h]
                mov     rdx, 0FFFFFFFFFh
                mov     rax, rcx
                and     rax, rdx
                cmp     rax, r14
                jnz     short loc_140347A5B
                cmp     r14, [rsp+190h+var_140]
                jnz     short loc_140347A5B
                mov     rax, rcx
                xor     rax, [rsp+190h+var_118]
                and     rax, rdx
                xor     rax, rcx
                mov     [rdi+rbx+28h], rax

loc_140347A5B:                          ; CODE XREF: sub_1403473FC+643↑j
                                        ; sub_1403473FC+64A↑j
                lock and [rdi+rbx+18h], r15
                mov     rbx, [rsp+190h+var_158]

loc_140347A66:                          ; CODE XREF: sub_1403473FC+5F2↑j
                                        ; sub_1403473FC+5F7↑j
                cmp     r14, [rsp+190h+var_140]
                jz      short loc_140347A8D
                mov     rax, [rsp+190h+var_128]
                mov     rcx, [rbp+90h+var_110]
                add     rcx, r12
                sar     rcx, 3
                mov     rax, [rax+40h]
                lea     rcx, [rax+rcx*8]
                call    sub_1402805F0
                mov     rbx, rax

loc_140347A8D:                          ; CODE XREF: sub_1403473FC+66F↑j
                mov     r14d, 1
                test    r14b, bl
                jz      short loc_140347AEC
                mov     rcx, [rsp+190h+var_138]
                or      rbx, 20h
                add     rcx, r12
                mov     rdx, rbx
                call    sub_1402A6830
                mov     eax, cs:dword_140CFC400
                bt      eax, 8
                jb      short loc_140347AEC
                bt      eax, 9
                jb      short loc_140347AEC
                mov     rdx, r12
                mov     rax, 0FFFFF68000000000h
                shl     rdx, 19h
                mov     rax, rax
                shl     rax, 19h
                lea     rcx, [rbp+90h+var_F0]
                sub     rdx, rax
                xor     r9d, r9d
                sar     rdx, 10h
                mov     r8d, r14d
                call    sub_1402882E0

loc_140347AEC:                          ; CODE XREF: sub_1403473FC+5A9↑j
                                        ; sub_1403473FC+69A↑j ...
                add     r12, 8
                test    r13d, r13d
                jnz     loc_140347992

loc_140347AF9:                          ; CODE XREF: sub_1403473FC+582↑j
                lea     rcx, [rbp+90h+var_F0]
                call    sub_14028EDB0
                mov     rax, [rsp+190h+var_128]
                and     dword ptr [rax+38h], 0
                jmp     loc_140347B9E
; ---------------------------------------------------------------------------

loc_140347B10:                          ; CODE XREF: sub_1403473FC+465↑j
                                        ; sub_1403473FC+474↑j ...
                lock and [rdi+18h], rsi

loc_140347B15:                          ; CODE XREF: sub_1403473FC+284↑j
                mov     rbx, 7FFFFFFFFFFFFFFFh

loc_140347B1F:                          ; CODE XREF: sub_1403473FC+402↑j
                test    r15d, r15d
                jz      short loc_140347B95
                or      esi, 0FFFFFFFFh
                mov     r13d, 1

loc_140347B2D:                          ; CODE XREF: sub_1403473FC+793↓j
                sub     r14, 8
                mov     rcx, r14
                call    sub_1402805F0
                test    r13b, al
                jnz     short loc_140347B8C
                bt      rax, 0Ah
                jb      short loc_140347B8C
                bt      rax, 0Bh
                jnb     short loc_140347B8C
                mov     rcx, cs:qword_140C4DDC0
                test    rcx, rcx
                jz      short loc_140347B62
                test    al, 10h
                jnz     short loc_140347B62
                not     rcx
                and     rax, rcx

loc_140347B62:                          ; CODE XREF: sub_1403473FC+75A↑j
                                        ; sub_1403473FC+75E↑j
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                add     r15d, esi
                lea     rcx, [rax+rax*2]
                add     rcx, rcx
                mov     rax, 0FFFFFA8000000018h
                lock and [rax+rcx*8], rbx

loc_140347B8C:                          ; CODE XREF: sub_1403473FC+740↑j
                                        ; sub_1403473FC+747↑j ...
                test    r15d, r15d
                jnz     short loc_140347B2D
                mov     r13, [rbp+90h+var_100]

loc_140347B95:                          ; CODE XREF: sub_1403473FC+E3↑j
                                        ; sub_1403473FC+126↑j ...
                lea     rcx, [r13+10h]
                call    sub_14027C660

loc_140347B9E:                          ; CODE XREF: sub_1403473FC+70F↑j
                mov     rcx, [rbp+90h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+190h+var_20]
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
; } // starts at 1403473FC
sub_1403473FC   endp

byte_140347BCC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D78C8↑o

; =============== S U B R O U T I N E =======================================


sub_140347BD4   proc near               ; CODE XREF: sub_140281E60+623↑p
                                        ; sub_140281E60+709↑p ...

arg_20          = word ptr  28h

                cmp     edx, [rcx+20h]
                jnz     short loc_140347C07
                xor     eax, eax
                test    r8d, r8d
                jz      short loc_140347BF0
                mov     eax, r8d
                lea     rdx, dword_140011250
                mov     eax, [rdx+rax*4]
                or      eax, r9d

loc_140347BF0:                          ; CODE XREF: sub_140347BD4+A↑j
                cmp     eax, [rcx+24h]
                jnz     short loc_140347C07
                movzx   eax, word ptr [rcx+14h]
                cmp     [rsp+arg_20], ax
                jnz     short loc_140347C07
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140347C07:                          ; CODE XREF: sub_140347BD4+3↑j
                                        ; sub_140347BD4+1F↑j ...
                xor     eax, eax
                retn
sub_140347BD4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140347C0B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D78D4↑o

; =============== S U B R O U T I N E =======================================


sub_140347C14   proc near               ; CODE XREF: sub_14023F430+291↑p
                                        ; sub_14023FBB0+137↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+0C0h]
                mov     rsi, rdx
                mov     rdx, [rax+18h]
                mov     rbx, [rcx+0C8h]
                mov     rax, [rsi]
                not     rbx
                and     rbx, [rcx+8458h]
                and     rax, rbx
                jnz     short loc_140347C5D

loc_140347C4A:                          ; CODE XREF: sub_140347C14+4F↓j
                                        ; sub_140347C14+58↓j ...
                xor     al, al

loc_140347C4C:                          ; CODE XREF: sub_140347C14+89↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140347C5D:                          ; CODE XREF: sub_140347C14+34↑j
                and     rax, rdx
                cmp     rax, rbx
                jnz     short loc_140347C4A
                test    byte ptr [rcx+312Ch], 1
                jnz     short loc_140347C4A
                cmp     dword ptr [rcx+7C18h], 0
                jnz     short loc_140347C4A
                cmp     byte ptr [rcx+20h], 0
                mov     rdi, [rcx+8]
                jnz     short loc_140347C8E
                cli
                xor     r8d, r8d
                mov     rdx, rdi
                call    sub_1402CDFD0
                sti

loc_140347C8E:                          ; CODE XREF: sub_140347C14+6B↑j
                mov     edx, [rdi+50h]
                mov     ecx, [rdi+54h]
                cmp     edx, ecx
                jb      short loc_140347C9F

loc_140347C98:                          ; CODE XREF: sub_140347C14+95↓j
                and     [rsi], rbx
                mov     al, 1
                jmp     short loc_140347C4C
; ---------------------------------------------------------------------------

loc_140347C9F:                          ; CODE XREF: sub_140347C14+82↑j
                sub     ecx, edx
                cmp     ecx, cs:dword_140CFC6B0
                jnb     short loc_140347C4A
                jmp     short loc_140347C98
sub_140347C14   endp

; ---------------------------------------------------------------------------
algn_140347CAB:                         ; DATA XREF: .pdata:00000001400D78E0↑o
                align 20h
; Exported entry 650. HalRequestIpi

; =============== S U B R O U T I N E =======================================


