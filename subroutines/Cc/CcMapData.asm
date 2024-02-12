CcMapData       proc near               ; DATA XREF: .rdata:000000014005DB64↑o
                                        ; .pdata:00000001400FFDB0↑o

var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_34          = byte ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407E6E30 SIZE 00000056 BYTES
; FUNCTION CHUNK AT 00000001408096AA SIZE 0000009B BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9d
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 70h
                mov     ebx, r9d
                mov     r14d, r8d
                xor     edi, edi
                mov     [rsp+88h+arg_0], edi
                mov     [rsp+88h+var_28], rdi
                mov     [rsp+88h+var_30], rdi
                and     r9d, 1
                jz      loc_1408096AA
                mov     eax, 8110h

loc_14065D62A:                          ; CODE XREF: CcMapData+1AC0BF↓j
                inc     dword ptr gs:[rax]
                mov     rax, gs:188h
                mov     [rax+54Ch], edi
                mov     rax, [rcx+28h]
                mov     r10, [rax+8]
                test    r9d, r9d
                jz      loc_1408096B4
                mov     eax, ebx
                shr     eax, 6
                and     eax, 1
                mov     [rsp+88h+var_60], edi
                mov     [rsp+88h+var_68], eax
                lea     r9, [rsp+88h+var_34]
                lea     r8, [rsp+88h+var_30]
                mov     rdx, [rdx]
                mov     rcx, r10
                call    sub_140273980
                mov     rsi, [rsp+88h+arg_28]
                mov     [rsi], rax

loc_14065D67D:                          ; CODE XREF: CcMapData+1AC0F8↓j
                test    bl, 10h
                jnz     short loc_14065D6A7
                and     ebx, 100h
                jnz     loc_1408096FB

loc_14065D68E:                          ; CODE XREF: CcMapData+1AC137↓j
                                        ; DATA XREF: .rdata:000000014005DB50↑o
;   __try { // __finally(loc_1407E6E30)
                mov     r9, [rsi]
                mov     r8b, 1
                xor     edx, edx
                mov     ecx, r14d
                call    sub_140273E50
                nop
;   } // starts at 14065D68E

loc_14065D69F:                          ; DATA XREF: .rdata:000000014005DB50↑o
                test    ebx, ebx
                jnz     loc_14080972C

loc_14065D6A7:                          ; CODE XREF: CcMapData+90↑j
                                        ; CcMapData+1AC150↓j
                mov     rax, gs:188h
                mov     ecx, [rax+54Ch]
                add     gs:8150h, ecx
                mov     rcx, [rsp+88h+var_30]
                inc     rcx
                mov     rax, [rsp+88h+arg_20]
                mov     [rax], rcx
                mov     al, 1

loc_14065D6D3:                          ; CODE XREF: CcMapData+1AC106↓j
                mov     rbx, [rsp+88h+arg_8]
                add     rsp, 70h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14065D5F0
CcMapData       endp

algn_14065D6E5:                         ; DATA XREF: .rdata:000000014005DB64↑o
                                        ; .pdata:00000001400FFDB0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14065D6F0   proc near               ; CODE XREF: sub_14065E998+91↓p
                                        ; DATA XREF: .rdata:000000014005E1E0↑o ...

var_C8          = dword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140809746 SIZE 00000182 BYTES

                mov     r11, rsp
                mov     [r11+18h], r8
                mov     [r11+10h], rdx
                push    rbx
                push    rbp
                push    r13
                sub     rsp, 0D0h
                mov     r13, rcx
                xorps   xmm0, xmm0
                xor     ecx, ecx
                mov     [rdx], rcx
                movups  xmmword ptr [r11-60h], xmm0
                mov     ebx, [r13+10h]
                mov     [r11+8], rcx
                test    ebx, 180h
                jnz     loc_1408098BE
                cmp     dword ptr [r13+0Ch], 0
                mov     rax, [r13+0]
                mov     r8d, [r13+8]
                mov     [rsp+0E8h+var_90], r8d
                mov     rdx, [rax+28h]
                lea     rcx, [rdx+10h]
                cmovz   rcx, rdx
                mov     rbp, [rcx]
                mov     [rsp+0E8h+var_98], rbp
                test    dword ptr [rbp+38h], 400h
                jnz     loc_1408098BE
                cmp     qword ptr [rbp+40h], 0
                jz      loc_1408098BE
                lea     eax, [r8-1]

loc_14065D76C:                          ; DATA XREF: .rdata:000000014005E1E0↑o
                                        ; .rdata:000000014005E1F4↑o ...
                mov     [r11-28h], rdi
                lea     rdx, ds:90h[rax*8]
                mov     [r11-38h], r14
                mov     ecx, 40h ; '@'
                mov     r8d, 6C526D4Dh
                call    sub_140268720
                mov     [rsp+0E8h+var_A8], rax
                mov     r14, rax
                test    rax, rax
                jz      loc_14065DDE6
                mov     [rax+8], rbp
                mov     rcx, rbp
                add     rax, 78h ; 'x'

loc_14065D7A8:                          ; DATA XREF: .rdata:000000014005E1F4↑o
                                        ; .rdata:000000014005E20C↑o ...
                mov     [rsp+0E8h+var_20], rsi
                lea     rsi, [rbp+80h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [r14+18h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rsp+0E8h+var_78], rax
                mov     rax, gs:188h
                mov     rdi, [rax+0B8h]
                call    sub_1402675C4
                mov     ecx, [rbp+38h]
                mov     [rsp+0E8h+var_68], rax
                mov     rax, 3FFFFFFFFFF000h
                test    cl, 20h
                jnz     loc_14065DD33
                mov     rdx, [r13+10h]
                cmp     rdx, rax
                ja      loc_14065DDD5
                lea     r8, [rsp+0E8h+arg_0]
                mov     rcx, rbp
                call    sub_1402735C0
                mov     rsi, rax
                test    rax, rax
                jz      loc_14065DDD5
                mov     [rsp+0E8h+arg_18], 0FFFFFFFFh

loc_14065D835:                          ; CODE XREF: sub_14065D6F0+652↓j
                mov     rcx, [rsp+0E8h+var_A8]
                lea     r8, [rsp+0E8h+var_60]
                xor     edx, edx

loc_14065D844:                          ; DATA XREF: .rdata:000000014005E20C↑o
                                        ; .rdata:000000014005E21C↑o ...
                mov     [rsp+0E8h+var_30], r12
                mov     r14d, edx
                mov     [rsp+0E8h+var_80], rdx
                mov     r12d, edx
                mov     [rsp+0E8h+var_70], rdx
                lea     rax, [rcx+88h]
                mov     [rsp+0E8h+var_B8], rdx
                mov     [rsp+0E8h+var_A0], rax
                mov     r11d, edx
                mov     eax, ebx
                mov     [rsp+0E8h+var_B0], rdx
                and     al, 40h
                mov     [rsp+0E8h+var_88], rdx
                mov     r10d, ebx
                mov     [rsp+0E8h+var_40], r15
                mov     r15d, edx
                and     r10d, 7
                mov     [rcx+50h], r10d
                neg     al
                mov     [rsp+0E8h+var_8C], r10d
                sbb     eax, eax
                shr     ebx, 3
                and     eax, 5
                and     ebx, 7
                mov     [rcx+54h], eax
                mov     [rsp+0E8h+arg_0], edx
                mov     [rcx+58h], ebx
                lea     rcx, [rdi+680h]
                mov     edx, [rbp+38h]
                shr     edx, 14h
                and     edx, 3Fh
                call    sub_1402C68C0
                xor     edi, edi
                cmp     [rsp+0E8h+var_90], edi
                jbe     loc_1408098B9

loc_14065D8D4:                          ; CODE XREF: sub_14065D6F0+27A↓j
                mov     rbx, [r13+rdi*8+10h]
                and     rbx, 0FFFFFFFFFFFFFF80h
                mov     r8, 0FFFFF6FB7DBED7F8h
                mov     rdx, 0FFFFF6FB7DBED000h
                cmp     rbx, r12
                jnb     loc_14065DAE8
                cmp     r14, rbx
                ja      loc_14065DAE8
                mov     rcx, [rsi+8]
                sub     rbx, r14
                mov     eax, [rsi+2Ch]
                shr     rbx, 0Ch
                lea     r9, [rcx+rbx*8]
                lea     rcx, [rcx+rax*8]
                cmp     r9, rcx
                jnb     loc_14065DBDF
                test    byte ptr [rsi+22h], 2
                jnz     loc_140809746

loc_14065D92C:                          ; CODE XREF: sub_14065D6F0+4CD↓j
                                        ; sub_14065D6F0+1AC063↓j
                cmp     r9, r15
                jz      short loc_14065D94F
                mov     rbx, [r9]
                mov     r15, r9
                mov     rax, rdx
                cmp     r9, rax
                jnb     short loc_14065D96F

loc_14065D93F:                          ; CODE XREF: sub_14065D6F0+285↓j
                                        ; sub_14065D6F0+1AC08B↓j
                test    bl, 1
                jz      short loc_14065D97C
                mov     edx, r10d
                mov     rcx, r9
                call    sub_14027E640

loc_14065D94F:                          ; CODE XREF: sub_14065D6F0+23F↑j
                                        ; sub_14065D6F0+2A9↓j ...
                inc     edi
                cmp     edi, [rsp+0E8h+var_90]
                jnb     loc_14065DBDF
                mov     rbp, [rsp+0E8h+var_98]
                mov     r10d, [rsp+0E8h+var_8C]
                mov     r11, [rsp+0E8h+var_80]
                jmp     loc_14065D8D4
; ---------------------------------------------------------------------------

loc_14065D96F:                          ; CODE XREF: sub_14065D6F0+24D↑j
                mov     rax, r8
                cmp     r9, rax
                ja      short loc_14065D93F
                jmp     loc_14080976D
; ---------------------------------------------------------------------------

loc_14065D97C:                          ; CODE XREF: sub_14065D6F0+252↑j
                bt      rbx, 0Ah
                jb      short loc_14065D99B
                bt      rbx, 0Bh
                jnb     loc_1408097B0
                mov     edx, r10d
                mov     rcx, r9
                call    sub_14027E640
                jmp     short loc_14065D94F
; ---------------------------------------------------------------------------

loc_14065D99B:                          ; CODE XREF: sub_14065D6F0+291↑j
                mov     rcx, rbp
                call    sub_1402851C0
                test    eax, eax
                jnz     loc_140809780
                call    sub_14026B65C
                test    eax, eax
                jnz     short loc_14065D94F

loc_14065D9B4:                          ; CODE XREF: sub_14065D6F0+1AC0D0↓j
                mov     rcx, [rsp+0E8h+var_B0]
                mov     r8, r9
                mov     r10, [rsp+0E8h+var_A0]
                test    rcx, rcx
                mov     rax, r10
                cmovnz  rax, rcx
                mov     [rsp+0E8h+var_B0], rax
                mov     [r10], r9
                cmp     [rsp+0E8h+var_88], rsi
                jnz     loc_14065DD47
                mov     rcx, [rsp+0E8h+var_70]
                call    sub_14026B560
                mov     rcx, r9
                mov     rdx, rax
                call    sub_14026B560
                cmp     rdx, rax
                jnz     loc_14065DD47

loc_14065D9FC:                          ; CODE XREF: sub_14065D6F0+663↓j
                mov     [rsp+0E8h+var_70], r9
                cmp     r9, r11
                jz      loc_14065DDA3

loc_14065DA0A:                          ; CODE XREF: sub_14065D6F0+6BA↓j
                mov     rbp, [rsp+0E8h+var_A8]
                add     r10, 8
                mov     rcx, [rsp+0E8h+var_68]
                mov     [rsp+0E8h+var_A0], r10
                mov     edx, [rbp+58h]
                inc     edx
                call    sub_1402FFB68
                test    eax, eax
                jz      loc_14065DBE9
                mov     rdx, [rsp+0E8h+arg_10]
                test    rdx, rdx
                jnz     loc_14065DD1C

loc_14065DA43:                          ; CODE XREF: sub_14065D6F0+63E↓j
                mov     eax, 1
                mov     r8d, eax
                mov     edx, eax
                call    sub_140233120
                test    eax, eax
                jz      loc_140809864
                lea     rcx, [rsp+0E8h+var_60]
                call    sub_140303D08
                mov     r8, rbx
                xor     r9d, r9d
                mov     rbx, [rsp+0E8h+var_68]
                mov     rdx, rsi
                mov     rcx, rbx
                mov     r11d, eax
                call    sub_14026B5F8
                mov     rcx, rbx
                test    eax, eax
                jnz     loc_1408097C5
                mov     r8d, 200h
                mov     edx, r11d
                call    sub_14022ACA0

loc_14065DA9C:                          ; CODE XREF: sub_14065D6F0+1AC0F3↓j
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      loc_14080983B
                lea     r11, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     r11, 4
                mov     rax, rax
                add     r11, rax
                mov     rcx, r11
                call    sub_1402D9900
                test    eax, eax
                jnz     loc_1408097E8
                mov     rdx, [rbp+28h]
                mov     rcx, r11
                call    sub_14026B5EC
                mov     [rbp+28h], r11

loc_14065DADE:                          ; CODE XREF: sub_14065D6F0+1AC128↓j
                inc     [rsp+0E8h+var_B8]
                jmp     loc_14065D94F
; ---------------------------------------------------------------------------

loc_14065DAE8:                          ; CODE XREF: sub_14065D6F0+204↑j
                                        ; sub_14065D6F0+20D↑j
                mov     rcx, [rsp+0E8h+var_98]
                xor     ebp, ebp

loc_14065DAEF:                          ; CODE XREF: sub_14065D6F0+4E9↓j
                mov     eax, [rcx+38h]
                test    al, 20h
                jz      short loc_14065DAFF
                cmp     [rsi+24h], ebp
                jz      loc_14065DCFD

loc_14065DAFF:                          ; CODE XREF: sub_14065D6F0+404↑j
                                        ; sub_14065D6F0+618↓j
                mov     edx, [rsp+0E8h+arg_18]
                mov     rcx, rsi
                call    sub_14026FA74
                mov     rcx, rsi
                mov     r14, rax
                call    sub_140261C00
                mov     r12, rax
                cmp     r14, rbx
                ja      loc_14065D94F
                cmp     rbx, rax
                jnb     loc_14065DBC2
                mov     r8, [rsp+0E8h+var_98]
                mov     eax, [r8+38h]
                test    al, 20h
                jz      loc_14065DC58

loc_14065DB3F:                          ; CODE XREF: sub_14065D6F0+5FE↓j
                                        ; sub_14065D6F0+608↓j
                mov     rdx, [rsi+8]
                sub     rbx, r14
                mov     eax, [rsi+2Ch]
                shr     rbx, 0Ch
                lea     rcx, [rdx+rax*8]
                lea     r9, [rdx+rbx*8]
                cmp     r9, rcx
                jnb     loc_14065DBDF
                test    byte ptr [rsi+22h], 2
                jnz     loc_140809758

loc_14065DB68:                          ; CODE XREF: sub_14065D6F0+1AC078↓j
                mov     eax, r12d
                sub     eax, r14d
                test    eax, 0FFFh
                jz      loc_14065DC50
                mov     r11, r12
                sub     r11, r14
                add     r11, 0FFFh
                shr     r11, 0Ch
                dec     r11
                lea     r11, [rdx+r11*8]

loc_14065DB91:                          ; CODE XREF: sub_14065D6F0+563↓j
                mov     [rsp+0E8h+var_80], r11
                cmp     ebp, 1
                jz      loc_14065D94F
                mov     rbp, [rsp+0E8h+var_98]
                mov     r10d, [rsp+0E8h+var_8C]
                mov     rdx, 0FFFFF6FB7DBED000h
                mov     r8, 0FFFFF6FB7DBED7F8h
                jmp     loc_14065D92C
; ---------------------------------------------------------------------------

loc_14065DBC2:                          ; CODE XREF: sub_14065D6F0+438↑j
                mov     rcx, [rsp+0E8h+var_98]
                mov     eax, [rcx+38h]
                test    al, 20h
                jz      loc_14065DDAF
                mov     rsi, [rsi+10h]

loc_14065DBD6:                          ; CODE XREF: sub_14065D6F0+627↓j
                test    rsi, rsi
                jnz     loc_14065DAEF

loc_14065DBDF:                          ; CODE XREF: sub_14065D6F0+22C↑j
                                        ; sub_14065D6F0+265↑j ...
                mov     rbp, [rsp+0E8h+var_A8]
                mov     r10, [rsp+0E8h+var_A0]

loc_14065DBE9:                          ; CODE XREF: sub_14065D6F0+33C↑j
                                        ; sub_14065D6F0+632↓j
                mov     rcx, [rsp+0E8h+var_B8]

loc_14065DBEE:                          ; CODE XREF: sub_14065D6F0+1AC197↓j
                mov     rax, [rsp+0E8h+var_B0]
                test    rcx, rcx
                jnz     loc_14065DD58
                mov     edi, [rsp+0E8h+arg_0]

loc_14065DC03:                          ; CODE XREF: sub_14065D6F0+1AC0BB↓j
                                        ; sub_14065D6F0+1AC16F↓j ...
                mov     rcx, [rsp+0E8h+var_A8]
                call    sub_14065ED14
                mov     rcx, [rsp+0E8h+var_A8]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     eax, edi

loc_14065DC1B:                          ; CODE XREF: sub_14065D6F0+6AE↓j
                mov     r12, [rsp+0E8h+var_30]
                mov     r15, [rsp+0E8h+var_40]

loc_14065DC2B:                          ; CODE XREF: sub_14065D6F0+6F1↓j
                                        ; DATA XREF: .pdata:00000001400FFDE0↑o ...
                mov     rsi, [rsp+0E8h+var_20]

loc_14065DC33:                          ; CODE XREF: sub_14065D6F0+6FB↓j
                                        ; DATA XREF: .pdata:00000001400FFDEC↑o ...
                mov     rdi, [rsp+0E8h+var_28]
                mov     r14, [rsp+0E8h+var_38]

loc_14065DC43:                          ; CODE XREF: sub_14065D6F0+1AC1D3↓j
                                        ; DATA XREF: .pdata:00000001400FFDF8↑o ...
                add     rsp, 0D0h
                pop     r13
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14065DC50:                          ; CODE XREF: sub_14065D6F0+483↑j
                                        ; DATA XREF: .pdata:00000001400FFE04↑o ...
                xor     r11d, r11d
                jmp     loc_14065DB91
; ---------------------------------------------------------------------------

loc_14065DC58:                          ; CODE XREF: sub_14065D6F0+449↑j
                mov     edx, [rsi+2Ch]
                mov     r8d, 4
                mov     rcx, rsi
                call    sub_140267B50
                mov     [rsp+0E8h+arg_0], eax
                test    eax, eax
                js      loc_14065DBDF
                mov     r8, [rsp+0E8h+var_78]
                mov     rcx, [rsp+0E8h+var_A8]
                mov     rcx, [rcx+20h]
                cmp     [r8], r8
                jnz     loc_14065DDF0

loc_14065DC8F:                          ; CODE XREF: sub_14065D6F0+70C↓j
                mov     edx, 40h ; '@'
                mov     ecx, 100h
                mov     r8d, 6C536D4Dh
                call    sub_140268720
                mov     rcx, rax
                test    rax, rax
                jz      loc_140809824
                mov     r8, [rsp+0E8h+var_78]
                mov     [rax+10h], ebp
                mov     rax, [r8+8]
                cmp     [rax], r8
                jnz     loc_14080981D
                mov     [rcx], r8
                mov     [rcx+8], rax
                mov     [rax], rcx
                mov     [r8+8], rcx
                mov     edx, [rcx+10h]

loc_14065DCD6:                          ; CODE XREF: sub_14065D6F0+706↓j
                mov     r8, [rsp+0E8h+var_98]
                mov     eax, edx
                mov     [rcx+rax*8+18h], rsi
                mov     rax, [rsp+0E8h+var_A8]
                inc     dword ptr [rcx+10h]
                cmp     [rax+10h], rbp
                jnz     loc_14065DB3F
                mov     [rax+10h], rsi
                jmp     loc_14065DB3F
; ---------------------------------------------------------------------------

loc_14065DCFD:                          ; CODE XREF: sub_14065D6F0+409↑j
                mov     rax, [rcx]
                mov     rcx, [rax+40h]
                cmp     [rsi+8], rcx
                jz      loc_14065DAFF
                mov     rsi, [rsi+10h]

loc_14065DD12:                          ; CODE XREF: sub_14065D6F0+6E0↓j
                mov     rcx, [rsp+0E8h+var_98]
                jmp     loc_14065DBD6
; ---------------------------------------------------------------------------

loc_14065DD1C:                          ; CODE XREF: sub_14065D6F0+34D↑j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_14065DBE9
                dec     rax
                mov     [rdx], rax
                jmp     loc_14065DA43
; ---------------------------------------------------------------------------

loc_14065DD33:                          ; CODE XREF: sub_14065D6F0+10B↑j
                                        ; DATA XREF: .pdata:00000001400FFE10↑o ...
                mov     rcx, rdi
                call    sub_140245840
                mov     [rsp+0E8h+arg_18], eax
                jmp     loc_14065D835
; ---------------------------------------------------------------------------

loc_14065DD47:                          ; CODE XREF: sub_14065D6F0+2E8↑j
                                        ; sub_14065D6F0+306↑j
                                        ; DATA XREF: ...
                or      r8, 2
                mov     [rsp+0E8h+var_88], rsi
                mov     [r10], r8
                jmp     loc_14065D9FC
; ---------------------------------------------------------------------------

loc_14065DD58:                          ; CODE XREF: sub_14065D6F0+506↑j
                                        ; sub_14065D6F0+1AC1AB↓j
                mov     edx, [rsp+0E8h+arg_18]
                sub     r10, rbp
                sub     r10, 88h
                mov     [rbp+60h], rax
                sar     r10, 3
                xor     r8d, r8d
                mov     rcx, rbp
                mov     [rbp+5Ch], r10d
                call    sub_14065EEA0
                mov     ebx, eax
                lea     rax, [rbp+78h]
                cmp     [rax], rax
                jz      loc_1408098A0
                xor     ebx, ebx

loc_14065DD91:                          ; CODE XREF: sub_14065D6F0+1AC1C4↓j
                mov     rax, [rsp+0E8h+arg_8]
                mov     [rax], rbp
                mov     eax, ebx
                jmp     loc_14065DC1B
; ---------------------------------------------------------------------------

loc_14065DDA3:                          ; CODE XREF: sub_14065D6F0+314↑j
                or      r8, 1
                mov     [r10], r8
                jmp     loc_14065DA0A
; ---------------------------------------------------------------------------

loc_14065DDAF:                          ; CODE XREF: sub_14065D6F0+4DC↑j
                mov     rax, 3FFFFFFFFFF000h
                cmp     rbx, rax
                ja      loc_14065DBDF
                xor     r8d, r8d
                mov     rdx, rbx
                call    sub_140269B00
                mov     rsi, rax
                jmp     loc_14065DD12
; ---------------------------------------------------------------------------

loc_14065DDD5:                          ; CODE XREF: sub_14065D6F0+118↑j
                                        ; sub_14065D6F0+134↑j
                                        ; DATA XREF: ...
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                xor     eax, eax
                jmp     loc_14065DC2B
; ---------------------------------------------------------------------------

loc_14065DDE6:                          ; CODE XREF: sub_14065D6F0+A7↑j
                                        ; DATA XREF: .pdata:00000001400FFE34↑o ...
                mov     eax, 0C000009Ah
                jmp     loc_14065DC33
; ---------------------------------------------------------------------------

loc_14065DDF0:                          ; CODE XREF: sub_14065D6F0+599↑j
                                        ; DATA XREF: .pdata:00000001400FFE40↑o ...
                mov     edx, [rcx+10h]
                cmp     edx, 5
                jnz     loc_14065DCD6
                jmp     loc_14065DC8F
sub_14065D6F0   endp

; ---------------------------------------------------------------------------
algn_14065DE01:                         ; DATA XREF: .pdata:00000001400FFE4C↑o
                align 10h
; Exported entry 1356. KeUserModeCallback

; =============== S U B R O U T I N E =======================================


