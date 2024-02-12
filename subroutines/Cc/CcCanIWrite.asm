CcCanIWrite     proc near               ; CODE XREF: FsRtlCopyWrite+78↓p
                                        ; FsRtlPrepareMdlWriteDev+77↓p
                                        ; DATA XREF: ...

var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = byte ptr -148h
var_147         = byte ptr -147h
var_146         = byte ptr -146h
var_144         = dword ptr -144h
var_140         = xmmword ptr -140h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = xmmword ptr -110h
var_100         = qword ptr -100h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = byte ptr -0C8h
var_B8          = qword ptr -0B8h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043CF42 SIZE 00000487 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                push    rbp
                push    rsi
                push    r12
                push    r13
                push    r14
                lea     rbp, [r11-78h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+70h+var_38], rax
                xor     eax, eax
                mov     byte ptr [rsp+170h+var_140+2], r8b
                mov     [rsp+170h+var_128], rax
                xor     esi, esi
                mov     [rsp+78h], rax
                xorps   xmm0, xmm0
                movups  [rsp+170h+var_140+8], xmm0
                mov     byte ptr [rsp+170h+var_140+1], r9b
                mov     r14, rcx
                xorps   xmm1, xmm1
                mov     dword ptr [rsp+170h+var_140+4], edx
                movups  [rsp+170h+var_110+8], xmm1
                mov     rax, gs:188h
                xor     r12b, r12b
                mov     r8d, edx
                mov     r13d, esi
                mov     ecx, [rax+514h]
                test    cl, 2
                jnz     loc_14026561E
; } // starts at 140265330

loc_1402653A4:                          ; DATA XREF: .rdata:000000014005B708↑o
                                        ; .rdata:000000014005B71C↑o ...
; __unwind { // __GSHandlerCheck
                mov     [r11+18h], rbx
                lea     ecx, [rsi+2]
                mov     [r11-30h], rdi
                lea     rbx, [rsi-1]
                mov     [r11-38h], r15
                test    r14, r14
                jz      loc_14043D07A
                mov     eax, [r14+50h]
                test    al, 10h
                jnz     loc_14026561A
                bt      eax, 18h
                jb      loc_14026561A
                lea     rdi, qword_140CDB640
                mov     qword ptr [rsp+170h+var_140+8], rsi
                mov     [rsp+170h+var_130], rdi
                mov     r10, cr8
                mov     cr8, rcx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043CF42

loc_1402653FD:                          ; CODE XREF: CcCanIWrite+1D7C14↓j
                                        ; CcCanIWrite+1D7C1E↓j ...
                mov     byte ptr [rsp+170h+var_128], r10b
                mov     rcx, gs:20h
                mov     r8, [rcx+84B8h]
                test    r8, r8
                jnz     loc_14043CF83

loc_14026541B:                          ; CODE XREF: CcCanIWrite+1D7C57↓j
                                        ; CcCanIWrite+1D7C68↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14043CFA9
                lea     rdx, [rsp+170h+var_140+8]
                xchg    rdx, cs:qword_140CDB640
                test    rdx, rdx
                jnz     loc_1402655F1

loc_14026543D:                          ; CODE XREF: CcCanIWrite+2CB↓j
                                        ; CcCanIWrite+1D7C87↓j
                mov     rax, [r14+28h]
                test    rax, rax
                jz      loc_1402655E1
                mov     rcx, [rax+8]
                test    rcx, rcx
                jz      loc_1402655E1
                call    sub_140265960
                mov     rdi, rax

loc_14026545F:                          ; CODE XREF: CcCanIWrite+2BC↓j
                mov     eax, 1
                lock xadd [rdi+3C8h], rax
                inc     rax
                cmp     rax, 1
                jle     loc_14043CFBC

loc_14026547A:                          ; CODE XREF: CcCanIWrite+1D7C93↓j
                xor     eax, eax
                xor     r15b, r15b
                mov     [rbp+70h+var_70], rax
                xorps   xmm0, xmm0
                mov     rax, [r14+28h]
                mov     r12b, 1
                movups  [rbp+70h+var_80], xmm0
                test    rax, rax
                jz      short loc_1402654AF
                mov     rax, [rax+8]
                test    rax, rax
                jz      short loc_1402654AF
                mov     eax, [rax+98h]
                bt      eax, 1Eh
                jb      loc_14043CFC8

loc_1402654AF:                          ; CODE XREF: CcCanIWrite+164↑j
                                        ; CcCanIWrite+16D↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, r12b
                jnz     loc_14043CFD1
                prefetchw byte ptr [rsp+170h+var_140+8]
                mov     rax, qword ptr [rsp+170h+var_140+8]
                test    rax, rax
                jnz     loc_14026560A
                mov     rcx, [rsp+170h+var_130]
                lea     rax, [rsp+170h+var_140+8]
                lock cmpxchg [rcx], rsi
                lea     rcx, [rsp+170h+var_140+8]
                cmp     rax, rcx
                jnz     loc_140265600

loc_1402654EC:                          ; CODE XREF: CcCanIWrite+2E5↓j
                                        ; CcCanIWrite+1D7CB0↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043CFE5

loc_140265505:                          ; CODE XREF: CcCanIWrite+1D7CB9↓j
                                        ; CcCanIWrite+1D7CC8↓j ...
                mov     eax, cs:dword_140CFC660
                movzx   esi, byte ptr [rsp+170h+var_128]
                test    eax, eax
                jnz     loc_14043D009

loc_140265518:                          ; CODE XREF: CcCanIWrite+1D7CDC↓j
                                        ; CcCanIWrite+1D7CE8↓j ...
                mov     cr8, rsi
                test    r15b, r15b
                jnz     loc_14043D071

loc_140265525:                          ; CODE XREF: CcCanIWrite+1D7E56↓j
                mov     r8d, dword ptr [rsp+170h+var_140+4]
                movzx   r9d, byte ptr [rsp+170h+var_140+1]

loc_140265530:                          ; CODE XREF: CcCanIWrite+1D7D55↓j
                xor     r15b, r15b
                inc     r13d
                xor     sil, sil
                mov     byte ptr [rsp+170h+var_140], r15b
                test    r9b, r9b
                jnz     short loc_140265553
                lea     rax, [rdi+310h]
                cmp     [rax], rax
                jnz     loc_14043D08A

loc_140265553:                          ; CODE XREF: CcCanIWrite+211↑j
                                        ; CcCanIWrite+1D7D6E↓j
                lea     rax, [rsp+170h+var_140]
                xor     r9d, r9d
                mov     qword ptr [rsp+170h+var_148], rax
                mov     rdx, r14
                mov     rcx, rdi
                mov     dword ptr [rsp+170h+var_150], 0
                call    sub_140265630
                movzx   r15d, byte ptr [rsp+170h+var_140]
                movzx   esi, al
                test    al, al
                jz      loc_14043D0A3
                test    r15b, r15b
                jnz     loc_14043D0A3

loc_14026558D:                          ; CODE XREF: CcCanIWrite+1D7D7B↓j
                                        ; CcCanIWrite+1D7E1B↓j ...
                mov     sil, 1

loc_140265590:                          ; CODE XREF: CcCanIWrite+1D7E0D↓j
                                        ; CcCanIWrite+1D7E5E↓j
                test    r12b, r12b
                jz      short loc_1402655A8

loc_140265595:                          ; CODE XREF: CcCanIWrite+1D7D45↓j
                lock xadd [rdi+3C8h], rbx
                sub     rbx, 1
                jle     loc_14043D3A1

loc_1402655A8:                          ; CODE XREF: CcCanIWrite+263↑j
                                        ; CcCanIWrite+1D807D↓j ...
                movzx   eax, sil

loc_1402655AC:                          ; CODE XREF: CcCanIWrite+2EC↓j
                mov     rdi, [rsp+148h]
                mov     rbx, [rsp+170h+arg_10]
                mov     r15, [rsp+170h+var_30]
; } // starts at 1402653A4

loc_1402655C4:                          ; CODE XREF: CcCanIWrite+2F0↓j
                                        ; DATA XREF: .pdata:00000001400CDB00↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rbp+70h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 150h
                pop     r14
                pop     r13
                pop     r12
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402655C4
; ---------------------------------------------------------------------------

loc_1402655E1:                          ; CODE XREF: CcCanIWrite+114↑j
                                        ; CcCanIWrite+121↑j
                                        ; DATA XREF: ...
; __unwind { // __GSHandlerCheck
                mov     rax, cs:qword_140CFC760
                mov     rdi, [rax+8]
                jmp     loc_14026545F
; ---------------------------------------------------------------------------

loc_1402655F1:                          ; CODE XREF: CcCanIWrite+107↑j
                lea     rcx, [rsp+170h+var_140+8]
                call    sub_14025FC20
                jmp     loc_14026543D
; ---------------------------------------------------------------------------

loc_140265600:                          ; CODE XREF: CcCanIWrite+1B6↑j
                lea     rcx, [rsp+170h+var_140+8]
                call    sub_140313680

loc_14026560A:                          ; CODE XREF: CcCanIWrite+199↑j
                mov     qword ptr [rsp+170h+var_140+8], rsi
                lock xor qword ptr [rax+8], 1
                jmp     loc_1402654EC
; ---------------------------------------------------------------------------

loc_14026561A:                          ; CODE XREF: CcCanIWrite+96↑j
                                        ; CcCanIWrite+A0↑j
                mov     al, 1
                jmp     short loc_1402655AC
; } // starts at 1402655E1
; ---------------------------------------------------------------------------

loc_14026561E:                          ; CODE XREF: CcCanIWrite+6E↑j
                                        ; DATA XREF: .pdata:00000001400CDB18↑o ...
; __unwind { // __GSHandlerCheck
                mov     al, 1
                jmp     short loc_1402655C4
; } // starts at 14026561E
CcCanIWrite     endp

; ---------------------------------------------------------------------------
algn_140265622:                         ; DATA XREF: .pdata:00000001400CDB24↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140265630   proc near               ; CODE XREF: sub_140260AA4+159↑p
                                        ; CcCanIWrite+23E↑p ...

var_48          = dword ptr -48h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  48h
arg_8           = qword ptr  50h
arg_10          = byte ptr  58h
arg_18          = dword ptr  60h
arg_20          = dword ptr  68h
arg_28          = qword ptr  70h

; FUNCTION CHUNK AT 000000014043D3CA SIZE 00000315 BYTES

                mov     [rsp-40h+arg_8], rdx
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
                sub     rsp, 68h
                mov     ebx, r9d
                xor     r10d, r10d
                xor     dil, dil
                mov     r9, rdx
                xor     dl, dl
                mov     byte ptr [rbp+var_48], dil
                mov     [rbp+arg_10], dl
                mov     r15d, r8d
                lea     eax, [r10+1]
                mov     r8, rcx
                test    ebx, 0FFFh
                jnz     short loc_140265677
                mov     eax, r10d

loc_140265677:                          ; CODE XREF: sub_140265630+42↑j
                mov     r14, [rbp+arg_28]
                xorps   xmm0, xmm0
                shr     ebx, 0Ch
                xorps   xmm1, xmm1
                add     ebx, eax
                xor     eax, eax
                mov     [rbp+var_18], rax
                mov     [rbp+var_30], rax
                movups  [rbp+var_28], xmm0
                movups  [rbp+var_40], xmm1
                test    r14, r14
                jz      short loc_1402656A0
                mov     [r14], al

loc_1402656A0:                          ; CODE XREF: sub_140265630+6B↑j
                cmp     r15d, 1000000h
                ja      loc_14043D3CA

loc_1402656AD:                          ; CODE XREF: sub_140265630+1D7DA0↓j
                mov     ecx, [rbp+arg_20]
                test    r15d, 0FFFh
                mov     r12d, r10d
                mov     eax, r15d
                setnz   r12b
                mov     r13d, ecx
                shr     eax, 0Ch
                add     r12d, eax
                and     r13d, 8
                jnz     short loc_14026573C
                lea     rsi, [r8+80h]
                mov     qword ptr [rbp+var_40], r10
                mov     qword ptr [rbp+var_40+8], rsi
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043D3D5

loc_1402656FA:                          ; CODE XREF: sub_140265630+1D7DA7↓j
                                        ; sub_140265630+1D7DB1↓j ...
                mov     byte ptr [rbp+var_30], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043D422

loc_140265717:                          ; CODE XREF: sub_140265630+1D7DF6↓j
                                        ; sub_140265630+1D7E05↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14043D44D
                lea     rdx, [rbp+var_40]
                xchg    rdx, [rsi]
                test    rdx, rdx
                jnz     loc_1402658E6

loc_140265734:                          ; CODE XREF: sub_140265630+2C7↓j
                mov     ecx, [rbp+arg_20]
                xor     dl, dl
                xor     r10d, r10d

loc_14026573C:                          ; CODE XREF: sub_140265630+9E↑j
                lea     rax, [r12+rbx]
                add     rax, [r8+280h]
                cmp     rax, [r8+298h]
                jnb     loc_14043D45F
                mov     byte ptr [rbp+arg_18], dil

loc_140265758:                          ; CODE XREF: sub_140265630+1D7E36↓j
                                        ; sub_140265630+1D7E68↓j
                test    r14, r14
                jz      short loc_14026576B
                mov     eax, cs:dword_140C50940
                test    eax, eax
                jnz     loc_14043D49D

loc_14026576B:                          ; CODE XREF: sub_140265630+12B↑j
                                        ; sub_140265630+1D7E75↓j ...
                test    r13d, r13d
                jnz     short loc_1402657DB
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14043D503
                prefetchw byte ptr [rbp+var_40]
                mov     rax, qword ptr [rbp+var_40]
                test    rax, rax
                jnz     loc_14026590C
                mov     rcx, qword ptr [rbp+var_40+8]
                lea     rax, [rbp+var_40]
                lock cmpxchg [rcx], r10
                lea     rcx, [rbp+var_40]
                cmp     rax, rcx
                jnz     loc_1402658FC

loc_1402657A8:                          ; CODE XREF: sub_140265630+2E6↓j
                                        ; sub_140265630+1D7EE7↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043D51C

loc_1402657C1:                          ; CODE XREF: sub_140265630+1D7EF0↓j
                                        ; sub_140265630+1D7EFF↓j ...
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_30]
                test    eax, eax
                jnz     loc_14043D546

loc_1402657D3:                          ; CODE XREF: sub_140265630+1D7F18↓j
                                        ; sub_140265630+1D7F24↓j ...
                mov     cr8, rbx
                movzx   edx, [rbp+arg_10]

loc_1402657DB:                          ; CODE XREF: sub_140265630+13E↑j
                mov     rbx, r10
                test    dl, dl
                jnz     loc_14043D673
                mov     rsi, [rbp+arg_8]
                test    rsi, rsi
                jz      loc_14043D673
                mov     r15d, [rbp+arg_20]
                mov     r14d, [rbp+arg_18]
                test    r15b, 0Ah
                jnz     short loc_140265857
                mov     rax, [rsi+18h]
                test    byte ptr [rax+4], 4
                jnz     short loc_140265857
                test    r14b, r14b
                jnz     short loc_140265857

loc_140265810:                          ; CODE XREF: sub_140265630+2A1↓j
                mov     rdx, cs:qword_140C527C0
                xor     dil, dil
                cmp     byte ptr cs:dword_140CFB19C, dil
                mov     eax, 1C2h
                mov     ecx, 4000h
                cmovnz  eax, ecx
                cmp     rdx, rax
                jb      loc_14026591B

loc_140265837:                          ; CODE XREF: sub_140265630+1D805E↓j
                mov     dil, 1

loc_14026583A:                          ; CODE XREF: sub_140265630+29B↓j
                                        ; sub_140265630+319↓j ...
                test    dil, dil
                jz      loc_14043D6D8
                mov     al, 1

loc_140265845:                          ; CODE XREF: sub_140265630+1D80AA↓j
                add     rsp, 68h
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140265857:                          ; CODE XREF: sub_140265630+1CF↑j
                                        ; sub_140265630+1D9↑j ...
                test    r13d, r13d
                jz      loc_14043D5B1

loc_140265860:                          ; CODE XREF: sub_140265630+1D7F94↓j
                mov     rbx, [rsi+28h]
                test    rbx, rbx
                jz      loc_14043D5F8
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      loc_14043D5EF
                mov     edx, [rcx+108h]
                test    edx, edx
                jnz     loc_14043D5C9

loc_140265888:                          ; CODE XREF: sub_140265630+1D7F9E↓j
                mov     r12d, [rbp+var_48]

loc_14026588C:                          ; CODE XREF: sub_140265630+1D7FBA↓j
                mov     rcx, [rcx+1F8h]
                mov     eax, cs:dword_140C0F3D4
                cmp     [rcx+20h], rax
                jbe     short loc_1402658D6

loc_14026589F:                          ; CODE XREF: sub_140265630+2AA↓j
                                        ; sub_140265630+2B4↓j ...
                mov     rcx, rbx
                call    sub_1402D45A4
                movzx   edi, al
                xor     r10d, r10d

loc_1402658AD:                          ; CODE XREF: sub_140265630+1D7FCC↓j
                test    r13d, r13d
                jz      loc_14043D601

loc_1402658B6:                          ; CODE XREF: sub_140265630+1D803E↓j
                test    r12b, r12b
                jnz     loc_14043D6D8

loc_1402658BF:                          ; CODE XREF: sub_140265630+1D8047↓j
                test    r14b, r14b
                jnz     loc_14043D6D8
                test    rbx, rbx
                jnz     loc_14026583A
                jmp     loc_140265810
; ---------------------------------------------------------------------------

loc_1402658D6:                          ; CODE XREF: sub_140265630+26D↑j
                test    r15b, 4
                jnz     short loc_14026589F
                mov     byte ptr [rbp+arg_18], dil
                mov     r14d, [rbp+arg_18]
                jmp     short loc_14026589F
; ---------------------------------------------------------------------------

loc_1402658E6:                          ; CODE XREF: sub_140265630+FE↑j
                lea     rcx, [rbp+var_40]
                call    sub_14025FC20

loc_1402658EF:                          ; CODE XREF: sub_140265630+1D7E2A↓j
                mov     r9, [rbp+arg_8]
                mov     r8, [rbp+arg_0]
                jmp     loc_140265734
; ---------------------------------------------------------------------------

loc_1402658FC:                          ; CODE XREF: sub_140265630+172↑j
                lea     rcx, [rbp+var_40]
                call    sub_140313680
                mov     r8, [rbp+arg_0]
                xor     r10d, r10d

loc_14026590C:                          ; CODE XREF: sub_140265630+158↑j
                mov     qword ptr [rbp+var_40], r10
                lock xor qword ptr [rax+8], 1
                jmp     loc_1402657A8
; ---------------------------------------------------------------------------

loc_14026591B:                          ; CODE XREF: sub_140265630+201↑j
                mov     r11d, cs:dword_140C4DD7C
                lea     r8, unk_140C51C68
                lea     rbx, unk_140C51C70
                jmp     loc_14043D67C
; ---------------------------------------------------------------------------

loc_140265935:                          ; CODE XREF: sub_140265630+1D807F↓j
                mov     rax, cs:qword_140C529B0
                add     rax, 320h
                cmp     cs:qword_140C52940, rax
                jnb     loc_14026583A
                jmp     loc_14043D6B4
sub_140265630   endp

; ---------------------------------------------------------------------------
algn_140265954:                         ; DATA XREF: .rdata:000000014005B790↑o
                                        ; .pdata:00000001400CDB30↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140265960   proc near               ; CODE XREF: CcInitializeCacheMapEx+124↑p
                                        ; CcInitializeCacheMapEx+1A1↑p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043D6E0 SIZE 0000019D BYTES

                push    rbx
                push    r15
                sub     rsp, 38h
                cmp     qword ptr [rcx+0A8h], 0
                mov     rbx, [rcx+210h]
                jz      loc_140265A99
                mov     rax, [rcx+60h]

loc_140265981:                          ; DATA XREF: .rdata:000000014005B7B0↑o
                                        ; .rdata:000000014005B7CC↑o ...
                mov     [rsp+48h+arg_8], rbp
                and     rax, 0FFFFFFFFFFFFFFF0h

loc_14026598A:                          ; DATA XREF: .rdata:000000014005B7CC↑o
                                        ; .rdata:000000014005B7E4↑o ...
                mov     [rsp+48h+arg_10], rsi
                mov     [rsp+48h+arg_18], rdi
                mov     [rsp+48h+var_18], r14
                mov     rsi, [rax+28h]
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     r14, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043D6E0

loc_1402659BC:                          ; CODE XREF: sub_140265960+1D7D82↓j
                                        ; sub_140265960+1D7D8C↓j ...
                xor     r15d, r15d
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14043D721
                mov     rdi, gs:20h
                mov     [rsp+48h+arg_0], r15d
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14043D737

loc_1402659EA:                          ; CODE XREF: sub_140265960+1D7DDB↓j
                                        ; sub_140265960+1D7DEA↓j ...
                lock bts cs:dword_140C4C800, 1Fh
                jb      loc_140265AA5

loc_1402659F9:                          ; CODE XREF: sub_140265960+169↓j
                mov     edx, cs:dword_140C4C800
                mov     eax, edx
                btr     eax, 1Eh
                cmp     eax, 80000000h
                jnz     loc_14043D785

loc_140265A10:                          ; CODE XREF: sub_140265960+1D7DD2↓j
                                        ; sub_140265960+1D7E5C↓j
                mov     rax, [rsi]
                mov     rsi, [rsp+48h+arg_10]
                test    rax, rax
                jz      loc_140265ACE

loc_140265A21:                          ; DATA XREF: .pdata:00000001400CDB54↑o
                                        ; .pdata:00000001400CDB60↑o
                movzx   edx, word ptr [rax+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     edx, 3FFh
                mov     rdi, [rax+rdx*8]

loc_140265A36:                          ; CODE XREF: sub_140265960+175↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14043D7C1
                mov     cs:dword_140C4C800, r15d

loc_140265A4A:                          ; CODE XREF: sub_140265960+1D7E73↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043D7D8

loc_140265A63:                          ; CODE XREF: sub_140265960+1D7E7C↓j
                                        ; sub_140265960+1D7E8B↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043D7FC

loc_140265A71:                          ; CODE XREF: sub_140265960+1D7E9E↓j
                                        ; sub_140265960+1D7EAA↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rax, [rdi+0B0h]
                mov     r14, [rsp+48h+var_18]
                mov     rdi, [rsp+48h+arg_18]
                mov     rbp, [rsp+48h+arg_8]
                cmp     rbx, [rax+8]
                jnz     loc_14043D85F

loc_140265A99:                          ; CODE XREF: sub_140265960+17↑j
                                        ; DATA XREF: .pdata:00000001400CDB60↑o ...
                mov     rax, rbx
                add     rsp, 38h
                pop     r15
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140265AA5:                          ; CODE XREF: sub_140265960+93↑j
                                        ; DATA XREF: .pdata:00000001400CDB6C↑o ...
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14043D75E

loc_140265AB5:                          ; CODE XREF: sub_140265960+1D7E02↓j
                                        ; sub_140265960+1D7E11↓j ...
                movzx   edx, bpl
                lea     rcx, dword_140C4C800
                call    sub_14028EAE0
                mov     [rsp+48h+arg_0], eax
                jmp     loc_1402659F9
; ---------------------------------------------------------------------------

loc_140265ACE:                          ; CODE XREF: sub_140265960+BB↑j
                                        ; DATA XREF: .pdata:00000001400CDB78↑o ...
                lea     rdi, unk_140C50C00
                jmp     loc_140265A36
sub_140265960   endp

; ---------------------------------------------------------------------------
algn_140265ADA:                         ; DATA XREF: .pdata:00000001400CDB84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140265AE0   proc near               ; CODE XREF: sub_140262B20+119↑p
                                        ; sub_1404EB418+34↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     qword ptr [rcx+20h], 2000000h
                mov     rdi, r8
                mov     r8b, 1
                mov     rbx, rcx
                jg      short loc_140265B32
                cmp     rdi, 0FFFFFFFFFFFFFFFEh
                jnb     short loc_140265B11
                mov     rax, [rbx+58h]
                mov     ecx, edx
                shr     rcx, 12h
                mov     [rax+rcx*8], rdi

loc_140265B11:                          ; CODE XREF: sub_140265AE0+21↑j
                                        ; sub_140265AE0+5D↓j
                cmp     rdi, 0FFFFFFFFFFFFFFFDh
                ja      short loc_140265B23
                test    rdi, rdi
                jz      short loc_140265B3F
                lock inc dword ptr [rbx+21Ch]

loc_140265B23:                          ; CODE XREF: sub_140265AE0+35↑j
                                        ; sub_140265AE0+66↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     al, r8b
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140265B32:                          ; CODE XREF: sub_140265AE0+1B↑j
                mov     r8, rdi
                call    sub_1402F862C
                mov     r8b, al
                jmp     short loc_140265B11
; ---------------------------------------------------------------------------

loc_140265B3F:                          ; CODE XREF: sub_140265AE0+3A↑j
                lock dec dword ptr [rbx+21Ch]
                jmp     short loc_140265B23
sub_140265AE0   endp

; ---------------------------------------------------------------------------
algn_140265B48:                         ; DATA XREF: .pdata:00000001400CDB90↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140265B50   proc near               ; CODE XREF: sub_140265E70+604↓p
                                        ; sub_1408C9B00+77↓p
                                        ; DATA XREF: ...

var_A0          = byte ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014043D87E SIZE 000000FC BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                xor     eax, eax
                mov     [rbp+57h+var_A0], 0
                mov     r12, rcx
                mov     [rbp+57h+var_78], rax
                xorps   xmm0, xmm0
                lea     rcx, [rbp+57h+var_70]
                xor     edx, edx
                lea     r8d, [rax+40h]
                movups  [rbp+57h+var_88], xmm0
                call    memset
                xor     esi, esi
                xor     r15d, r15d
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                mov     rbx, r12
                shl     rbx, 19h
                sub     rbx, rax
                mov     [rbp+57h+var_90], rax
                sar     rbx, 10h
                mov     rcx, rbx
                call    sub_140264110
                lea     rcx, qword_140C4E228
                mov     edx, [rax+20h]
                mov     rax, cs:qword_140C4E4C8
                shr     rdx, 6
                and     edx, 3FFh
                mov     r13, [rax+rdx*8]
                lea     rdx, [rbp+57h+var_88]
                mov     [rbp+57h+var_98], r13
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rbx
                call    sub_140265D88
                test    al, al
                jz      short loc_140265C6E
                lea     rcx, [r13+6F8h]
                mov     rdx, r12
                call    sub_140264400

loc_140265C18:                          ; CODE XREF: sub_140265B50+135↓j
                                        ; sub_140265B50+19E↓j
                lea     rcx, [rbp+57h+var_88]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+57h+var_78]
                test    eax, eax
                jnz     loc_14043D8F7

loc_140265C33:                          ; CODE XREF: sub_140265B50+1D7DA9↓j
                                        ; sub_140265B50+1D7DB5↓j ...
                mov     cr8, rbx
                test    r15, r15
                jnz     loc_140265CF3

loc_140265C40:                          ; CODE XREF: sub_140265B50+22B↓j
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_20]
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
                align 2

loc_140265C6E:                          ; CODE XREF: sub_140265B50+B7↑j
                mov     r15, r12
                and     r15, 0FFFFFFFFFFFFF000h
                mov     rdi, r15
                lea     rbx, [r15+1000h]
                cmp     r15, rbx
                jnb     short loc_140265C18

loc_140265C87:                          ; CODE XREF: sub_140265B50+19C↓j
                cmp     rdi, r12
                jz      short loc_140265CE2
                lea     rcx, [r13+6F8h]
                mov     rdx, rdi
                call    sub_1403504C8
                lea     r14, [rdi+18h]
                mov     rcx, [r14]
                call    sub_140264D40
                cmp     rax, 1
                jz      loc_14043D87E
                mov     rbx, cs:qword_14001D278
                mov     rcx, r14
                xor     r13d, r13d
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043D88A

loc_140265CCB:                          ; CODE XREF: sub_140265B50+1D7D50↓j
                                        ; sub_140265B50+1D7D75↓j ...
                mov     [r14], rbx
                test    r13d, r13d
                jnz     loc_14043D8E6

loc_140265CD7:                          ; CODE XREF: sub_140265B50+1D7DA2↓j
                mov     r13, [rbp+57h+var_98]
                lea     rbx, [r15+1000h]

loc_140265CE2:                          ; CODE XREF: sub_140265B50+13A↑j
                                        ; sub_140265B50+1D7D35↓j
                add     rdi, 200h
                cmp     rdi, rbx
                jb      short loc_140265C87
                jmp     loc_140265C18
; ---------------------------------------------------------------------------

loc_140265CF3:                          ; CODE XREF: sub_140265B50+EA↑j
                test    esi, esi
                jnz     loc_14043D95D

loc_140265CFB:                          ; CODE XREF: sub_140265B50+1D7E25↓j
                shl     r15, 19h
                lea     rdi, [r13+1C40h]
                mov     r14, r15
                lea     r8, [rbp+57h+var_A0]
                sub     r14, [rbp+57h+var_90]
                mov     rdx, r12
                mov     rcx, rdi
                sar     r14, 10h
                call    sub_1402A69A0
                mov     rcx, r14
                mov     rbx, rax
                call    sub_140264110
                xor     edx, edx
                mov     rcx, r14
                mov     rsi, rax
                call    sub_1402E9E54
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140312B40
                mov     dl, [rbp+57h+var_A0]
                mov     rcx, rdi
                call    sub_140226960
                sub     r15, [rbp+57h+var_90]
                mov     rdx, 2000000000h
                add     rdx, r15
                mov     r8d, 8
                sar     rdx, 10h
                mov     rcx, r14
                call    sub_1402A4CDC
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                jmp     loc_140265C40
; } // starts at 140265B50
sub_140265B50   endp

; ---------------------------------------------------------------------------
byte_140265D80  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014005B8BC↑o
                                        ; .pdata:00000001400CDB9C↑o

; =============== S U B R O U T I N E =======================================


sub_140265D88   proc near               ; CODE XREF: sub_140265B50+B0↑p
                                        ; DATA XREF: .pdata:00000001400CDBA8↑o

arg_0           = qword ptr  8

                push    rbx
                sub     rsp, 20h
                shr     rcx, 12h
                and     ecx, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                add     rcx, rax
                call    sub_1402805F0
                lea     rcx, [rsp+28h+arg_0]
                mov     [rsp+28h+arg_0], rax
                mov     rbx, rax
                call    sub_1402433C0
                mov     r8b, 1
                test    eax, eax
                jz      short loc_140265E2A
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140265E2A
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rcx+390h], r8b
                jz      short loc_140265E2A
                test    r8b, bl
                jz      short loc_140265E2A
                test    bl, 20h
                jnz     short loc_140265E60

loc_140265DF2:                          ; CODE XREF: sub_140265D88+DD↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140265E2A
                lea     rax, [rsp+28h+arg_0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_140265E28
                or      rbx, 20h

loc_140265E28:                          ; CODE XREF: sub_140265D88+9A↑j
                test    al, 42h

loc_140265E2A:                          ; CODE XREF: sub_140265D88+39↑j
                                        ; sub_140265D88+45↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                lea     rcx, [rbx+rbx*2]
                shl     rcx, 4
                mov     rax, 0FFFFFA8000000000h
                add     rcx, rax
                mov     al, [rcx+27h]
                sub     al, r8b
                mov     [rcx+27h], al
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140265E60:                          ; CODE XREF: sub_140265D88+68↑j
                test    bl, 42h
                jnz     short loc_140265E2A
                jmp     short loc_140265DF2
sub_140265D88   endp

; ---------------------------------------------------------------------------
algn_140265E67:                         ; DATA XREF: .pdata:00000001400CDBA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140265E70   proc near               ; CODE XREF: sub_140657258+5E↓p
                                        ; DATA XREF: .rdata:000000014005B904↑o ...

var_118         = dword ptr -118h
var_F8          = qword ptr -0F8h
var_E8          = byte ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014043D97A SIZE 000008A6 BYTES

                mov     rax, rsp
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0D8h
                mov     byte ptr [rax+20h], 0
                mov     r14, rcx
                mov     rax, 7FFFFFFFF8h
                shr     r14, 9
                and     r14, rax
                mov     r12, rdx
                mov     rax, 0FFFFF68000000000h
                mov     r15, rcx
                mov     rax, rax
                add     r14, rax
                mov     rcx, r14
                mov     [rsp+118h+var_58], r14
                lea     rax, [r14+200h]
                mov     [rsp+118h+var_78], rax
                call    sub_1402C78A0
                lea     rcx, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                add     rcx, rax
                mov     [rsp+118h+var_68], rcx
                mov     rcx, r12
                call    sub_140267410
                mov     rcx, cs:qword_140C4E4C8
                xor     esi, esi
                mov     rbp, rax
                mov     [rsp+118h+var_60], rax
                mov     r13d, esi
                mov     [rsp+118h+var_C8], esi
                mov     rax, [rax+40h]
                and     rax, 0FFFFFFFFFFFFFFF0h
                mov     [rsp+118h+var_E4], esi
                movzx   edx, word ptr [rbp+3Ch]
                and     edx, 3FFh
                mov     [rsp+118h+var_A0], rax
                mov     [rsp+118h+var_E0], esi
                mov     [rsp+118h+var_C0], esi
                mov     [rsp+118h+var_98], rsi
                mov     rdx, [rcx+rdx*8]
                mov     rcx, r15
                mov     [rsp+118h+var_80], rdx
                mov     [rsp+118h+var_C4], 2
                lea     rbx, [rdx+1C40h]
                mov     [rsp+118h+var_B8], rbx
                call    sub_140264110
                mov     rcx, rax
                mov     [rsp+118h+var_88], rax
                mov     rax, [rax+18h]
                mov     [rsp+118h+var_A8], rax
                test    rax, rax
                jz      short loc_140265F9F
                test    al, 1
                jnz     loc_1402668E3

loc_140265F96:                          ; CODE XREF: sub_140265E70+A88↓j
                cmp     [rax], rbp
                jnz     loc_14043D97A

loc_140265F9F:                          ; CODE XREF: sub_140265E70+11C↑j
                lea     r8, [rsp+118h+arg_18]
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1402A69A0
                mov     rcx, gs:20h
                mov     [rsp+118h+var_70], rax
                mov     rbx, [rcx+7FF8h]
                mov     rdx, [rbx]
                mov     ecx, [rbx+18h]
                mov     [rdx+0Ch], esi
                mov     [rdx], esi
                mov     [rdx+4], si
                mov     [rdx+10h], rsi
                mov     [rdx+8], ecx
                mov     [rdx+18h], rsi
                xor     edx, edx
                mov     r8d, [rbx+18h]
                mov     rbp, [rbx+8]
                mov     rcx, [rbx+10h]
                shl     r8, 3
                mov     [rsp+118h+var_D8], rbp
                mov     [rsp+118h+var_90], rcx
                call    memset
                mov     rdi, [rbx]
                mov     r12, rsi
                mov     r8, 0FFFFF6FFFFFFFFFFh
                mov     rdx, 0FFFFF6FB7DBED7F8h
                or      byte ptr [rdi+4], 4
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140266030:                          ; CODE XREF: sub_140265E70+32D↓j
                mov     ebx, 1
                mov     rsi, r15
                cmp     [rdi], ebx
                jz      short loc_14026605B
                movzx   ecx, byte ptr [rdi+4]
                test    cl, 8
                jnz     short loc_14026605B
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                cmp     r15, rax
                jnb     loc_14026648E

loc_14026605B:                          ; CODE XREF: sub_140265E70+1CA↑j
                                        ; sub_140265E70+1D3↑j ...
                mov     r9d, [rdi+0Ch]
                test    r9d, r9d
                jz      short loc_14026607C
                movzx   r8d, byte ptr [rdi+4]
                and     r8b, 4
                jz      loc_14043D9A0

loc_140266073:                          ; CODE XREF: sub_140265E70+1D7B43↓j
                                        ; sub_140265E70+1D7B87↓j ...
                test    r8b, r8b
                jz      loc_14043DA29

loc_14026607C:                          ; CODE XREF: sub_140265E70+1F2↑j
                                        ; sub_140265E70+1D7BCC↓j ...
                cmp     r9d, [rdi+8]
                jnb     loc_14043DAB3

loc_140266086:                          ; CODE XREF: sub_140265E70+26A↓j
                lea     rax, [rbx-1]
                cmp     rax, 3FFh
                ja      loc_14043DABB
                mov     rdx, rbx

loc_140266099:                          ; CODE XREF: sub_140265E70+1D7C50↓j
                lea     rax, [rdx-1]
                mov     rcx, rsi
                and     rcx, 0FFFFFFFFFFFFF000h
                and     eax, 3FFh
                or      rax, rcx
                sub     rbx, rdx
                mov     rcx, rdx
                shl     rcx, 0Ch
                add     rsi, rcx
                mov     ecx, [rdi+0Ch]
                mov     [rdi+rcx*8+18h], rax
                inc     dword ptr [rdi+0Ch]
                mov     ecx, [rdi+0Ch]
                add     [rdi+10h], rdx
                cmp     ecx, [rdi+8]
                jz      loc_14043DAC5

loc_1402660D7:                          ; CODE XREF: sub_140265E70+1D7C59↓j
                                        ; sub_140265E70+1D7C86↓j
                test    rbx, rbx
                jnz     short loc_140266086
                mov     rdx, 0FFFFF6FB7DBED7F8h

loc_1402660E6:                          ; CODE XREF: sub_140265E70+1D7BA5↓j
                                        ; sub_140265E70+1D7C2F↓j ...
                mov     rbx, [r14]
                mov     rsi, 0FFFFF6FB7DBED000h
                mov     rax, rsi
                cmp     r14, rax
                jnb     loc_14026649F

loc_1402660FF:                          ; CODE XREF: sub_140265E70+635↓j
                                        ; sub_140265E70+1D7CB6↓j ...
                mov     [rsp+118h+var_D0], rbx
                mov     [rbp+r12*8+0], rbx
                test    bl, 1
                jnz     loc_140266592
                bt      rbx, 0Ah
                jnb     loc_14043DEA5
                cmp     [rsp+118h+var_A0], 0
                jz      short loc_140266149
                mov     rax, cs:qword_140C4DDC0
                mov     rcx, rbx
                test    rax, rax
                jz      short loc_14026613D
                test    bl, 10h
                jz      loc_1402664B0

loc_14026613D:                          ; CODE XREF: sub_140265E70+2C2↑j
                                        ; sub_140265E70+649↓j
                sar     rcx, 10h
                mov     [rsp+118h+var_98], rcx

loc_140266149:                          ; CODE XREF: sub_140265E70+2B3↑j
                mov     rbx, cs:qword_14001D278
                mov     rcx, r14
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043DE32

loc_140266160:                          ; CODE XREF: sub_140265E70+1D8014↓j
                                        ; sub_140265E70+1D801D↓j ...
                mov     [r14], rbx

loc_140266163:                          ; CODE XREF: sub_140265E70+8E7↓j
                                        ; sub_140265E70+1D7FF5↓j
                inc     r13d
                mov     rdx, 0FFFFF6FB7DBED7F8h
                add     r15, 1000h
                mov     [rsp+118h+var_C8], r13d
                inc     r12
                mov     [rsp+118h+arg_0], r15
                add     r14, 8
                mov     r8, 0FFFFF6FFFFFFFFFFh
                cmp     r14, [rsp+118h+var_78]
                jb      loc_140266030

loc_1402661A3:                          ; CODE XREF: sub_140265E70+1D807B↓j
                                        ; sub_140265E70+1D80B1↓j
                movsxd  rcx, [rsp+118h+var_E0]
                mov     rbx, [rsp+118h+var_B8]
                test    ecx, ecx
                jz      short loc_1402661FB
                mov     r8, [rsp+118h+var_90]
                mov     r9, rcx
                mov     rcx, rbx
                mov     rdx, rdi
                call    sub_14031DF70
                test    rax, rax
                jz      short loc_1402661FB
                mov     rcx, 0FFFFF68000000000h
                mov     rcx, rcx
                shl     rax, 19h
                shl     rcx, 19h
                sub     rax, rcx
                sar     rax, 10h
                shl     rax, 19h
                sub     rax, rcx
                sar     rax, 10h
                mov     rdx, rax
                call    sub_1402FD520

loc_1402661FB:                          ; CODE XREF: sub_140265E70+33F↑j
                                        ; sub_140265E70+35A↑j
                mov     rax, [rsp+118h+var_88]
                cmp     qword ptr [rax+10h], 0
                jz      loc_14043DF26
                xor     r12d, r12d
                mov     bpl, 1
                mov     [rax+10h], r12

loc_140266218:                          ; CODE XREF: sub_140265E70+1D80B9↓j
                mov     rdx, [rsp+118h+var_70]
                mov     rcx, rbx
                mov     [rsp+118h+var_E8], bpl
                call    sub_140312B40
                mov     dl, 2
                mov     rcx, rbx
                call    sub_140226960
                lock or [rsp+118h+var_118], 0
                movsxd  rsi, [rsp+118h+var_C8]
                xor     edx, edx
                mov     r14d, cs:dword_140D23080
                mov     r13d, edx
                mov     [rsp+118h+var_E0], r14d
                mov     r12d, edx
                mov     edi, edx
                test    rsi, rsi
                jle     short loc_1402662A1
                mov     r9, [rsp+118h+var_D8]
                mov     ecx, edx

loc_140266263:                          ; CODE XREF: sub_140265E70+40A↓j
                test    byte ptr [r9+rdi*8], 1
                jnz     loc_1402664BE

loc_14026626E:                          ; CODE XREF: sub_140265E70+71D↓j
                                        ; sub_140265E70+A06↓j ...
                inc     ecx
                inc     rdi
                mov     [rsp+118h+var_E4], ecx
                cmp     rdi, rsi
                jl      short loc_140266263
                test    r12d, r12d
                jz      short loc_14026628F
                mov     r8b, 2
                mov     edx, r12d
                mov     rcx, r9
                call    sub_14027EB10

loc_14026628F:                          ; CODE XREF: sub_140265E70+40F↑j
                mov     r15, [rsp+118h+arg_0]
                mov     r14d, [rsp+118h+var_E0]
                movzx   ebp, [rsp+118h+var_E8]

loc_1402662A1:                          ; CODE XREF: sub_140265E70+3EA↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043DFE2

loc_1402662AF:                          ; CODE XREF: sub_140265E70+1D8174↓j
                                        ; sub_140265E70+1D8180↓j
                movzx   ebx, [rsp+118h+arg_18]

loc_1402662B7:                          ; CODE XREF: sub_140265E70+1D8191↓j
                                        ; sub_140265E70+1D8199↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rsi, [rsp+118h+var_A8]
                cmp     bpl, 1
                jnz     short loc_1402662DE
                mov     r8d, [rsp+118h+var_C4]
                mov     rcx, rsi
                mov     rdx, [rsp+118h+var_88]
                call    sub_140263260

loc_1402662DE:                          ; CODE XREF: sub_140265E70+457↑j
                test    r13, r13
                jz      loc_1402668B6
                mov     rbx, [rsp+118h+var_68]
                mov     rcx, rbx
                call    sub_1402DAA00
                mov     rax, [rbx+18h]
                mov     rdx, 3FFFFFFFFFFFFFFFh
                mov     rcx, rax
                sub     rcx, r13
                xor     rcx, rax
                and     rcx, rdx
                xor     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     [rbx+18h], rcx
                lock and [rbx+18h], rax
                movzx   ebx, [rsp+118h+arg_18]

loc_14026632F:                          ; CODE XREF: sub_140265E70+A68↓j
                xor     r12d, r12d
                cmp     [rsp+118h+var_A0], r12
                jz      loc_14043E09D

loc_14026633D:                          ; CODE XREF: sub_140265E70+1D8230↓j
                mov     rbp, [rsp+118h+var_60]
                lea     rcx, [rbp+48h]
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                test    rsi, rsi
                jz      short loc_14026638C
                mov     rdi, [rsp+118h+var_98]

loc_14026635B:                          ; CODE XREF: sub_140265E70+A94↓j
                mov     edx, [rsi+2Ch]
                mov     r8d, 4
                mov     rcx, rsi
                call    sub_14026712C
                mov     rcx, [rsi+8]
                add     r12, rax
                cmp     rdi, rcx
                jb      loc_1402668FD
                mov     eax, [rsi+2Ch]
                lea     rcx, [rcx+rax*8]
                cmp     rdi, rcx
                jnb     loc_1402668FD

loc_14026638C:                          ; CODE XREF: sub_140265E70+4E1↑j
                dec     qword ptr [rbp+28h]
                movzx   edx, bl
                dec     dword ptr [rbp+58h]
                mov     rcx, rbp
                call    sub_140266E30
                test    r12, r12
                jnz     loc_14043E0CA

loc_1402663A7:                          ; CODE XREF: sub_140265E70+1D8270↓j
                mov     ecx, r14d
                and     ecx, 0FFFFFh
                shl     rcx, 1Ch
                call    sub_14027C6C0
                mov     rbp, [rsp+118h+var_58]
                mov     rsi, rax
                mov     [rsp+118h+var_D0], rax
                mov     rbx, rax
                lea     rcx, [rbp+10h]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043E0E5

loc_1402663DD:                          ; CODE XREF: sub_140265E70+1D82CA↓j
                                        ; sub_140265E70+1D82D4↓j
                mov     r14, 8000000000000000h

loc_1402663E7:                          ; CODE XREF: sub_140265E70+1D82E7↓j
                mov     [rbp+10h], rbx

loc_1402663EB:                          ; CODE XREF: sub_140265E70+1D82AB↓j
                mov     rbx, cs:qword_14001D278
                lea     rcx, [rbp+8]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043E15C

loc_140266403:                          ; CODE XREF: sub_140265E70+1D8336↓j
                                        ; sub_140265E70+1D833F↓j ...
                mov     [rbp+8], rbx

loc_140266407:                          ; CODE XREF: sub_140265E70+1D8317↓j
                cmp     [rsp+118h+var_C0], 1
                mov     rcx, [rsp+118h+var_D0]
                mov     rdx, cs:qword_140C4DDC0
                mov     rax, rcx
                jnz     loc_140266899
                test    rdx, rdx
                jz      short loc_140266437
                test    al, 10h
                jnz     loc_140266890
                mov     rcx, rdx
                not     rcx
                and     rcx, rax

loc_140266437:                          ; CODE XREF: sub_140265E70+5B4↑j
                                        ; sub_140265E70+A24↓j
                and     ecx, 0FFFFFFFh
                bts     rcx, 1Dh

loc_140266442:                          ; CODE XREF: sub_140265E70+A41↓j
                call    sub_14027C6C0
                lea     rcx, [rbp+18h]
                mov     [rsp+118h+var_D0], rax
                mov     rsi, rax
                mov     rbx, rax
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043E1BD

loc_140266463:                          ; CODE XREF: sub_140265E70+1D8398↓j
                                        ; sub_140265E70+1D83A2↓j ...
                mov     [rbp+18h], rbx

loc_140266467:                          ; CODE XREF: sub_140265E70+1D8379↓j
                test    [rsp+118h+arg_10], 2
                jnz     short loc_140266479
                mov     rcx, rbp
                call    sub_140265B50

loc_140266479:                          ; CODE XREF: sub_140265E70+5FF↑j
                add     rsp, 0D8h
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

loc_14026648E:                          ; CODE XREF: sub_140265E70+1E5↑j
                mov     rax, r8
                cmp     r15, rax
                ja      loc_14026605B
                jmp     loc_14043D995
; ---------------------------------------------------------------------------

loc_14026649F:                          ; CODE XREF: sub_140265E70+289↑j
                mov     rax, rdx
                cmp     r14, rax
                ja      loc_1402660FF
                jmp     loc_14043DB1C
; ---------------------------------------------------------------------------

loc_1402664B0:                          ; CODE XREF: sub_140265E70+2C7↑j
                mov     rcx, rax
                not     rcx
                and     rcx, rbx
                jmp     loc_14026613D
; ---------------------------------------------------------------------------

loc_1402664BE:                          ; CODE XREF: sub_140265E70+3F8↑j
                movsxd  rax, [rsp+118h+var_E4]
                inc     r13
                mov     r14, [r9+rax*8]
                lea     r15, [r9+rax*8]
                mov     rcx, r15
                mov     rbx, rdx
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043DF2E

loc_1402664E1:                          ; CODE XREF: sub_140265E70+1D80C8↓j
                                        ; sub_140265E70+1D80E5↓j ...
                mov     rax, 0FFFFFFFFFh
                shr     r14, 0Ch
                and     r14, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rbp, [r14+r14*2]
                shl     rbp, 4
                mov     rax, rax
                add     rbp, rax
                lock bts qword ptr [rbp+18h], 3Fh ; '?'
                setb    al
                test    r12d, r12d
                jz      loc_1402667FD
                test    al, al
                jnz     loc_140266925

loc_140266525:                          ; CODE XREF: sub_140265E70+9BA↓j
                xor     edx, edx

loc_140266527:                          ; CODE XREF: sub_140265E70+995↓j
                mov     r9, [rsp+118h+var_D8]
                test    byte ptr [r9+rdi*8], 42h
                jnz     loc_140266832
                mov     rcx, [rbp+18h]
                mov     r8, 3FFFFFFFFFFFFFFFh
                mov     rax, rcx
                and     rax, r8
                cmp     rax, 1
                jnz     loc_140266842
                cmp     [rbp+20h], ax
                jnz     loc_140266842
                shr     rcx, 3Eh
                test    al, cl
                jnz     loc_140266842
                test    byte ptr [rbp+23h], 40h
                jnz     loc_140266842
                test    byte ptr [rbp+22h], 10h
                jnz     loc_140266842
                mov     ecx, [rsp+118h+var_E4]
                mov     eax, r12d
                inc     r12d
                mov     [r9+rax*8], rbp
                jmp     loc_14026626E
; ---------------------------------------------------------------------------

loc_140266592:                          ; CODE XREF: sub_140265E70+29C↑j
                lea     rcx, [rsp+118h+var_D0]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043DBB5

loc_1402665A4:                          ; CODE XREF: sub_140265E70+1D7D4F↓j
                                        ; sub_140265E70+1D7D6C↓j ...
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rbp, [rbx+rbx*2]
                shl     rbp, 4
                mov     rax, rax
                add     rbp, rax
                mov     rbx, 0FFFFF68000000000h
                cmp     cs:dword_140C4E6A8, 0
                jz      short loc_14026665B
                mov     rcx, r14
                shl     rcx, 19h
                mov     rax, rbx
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, rbx
                cmp     rcx, rax
                jb      short loc_140266613
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rcx, rax
                jbe     loc_1402667E1

loc_140266613:                          ; CODE XREF: sub_140265E70+78B↑j
                shr     rcx, 9
                mov     r8, 7FFFFFFFF8h
                and     r8, rcx
                mov     rax, rbx
                add     r8, rax
                mov     rcx, [r8]
                mov     rax, rsi
                cmp     r8, rax
                jb      short loc_14026664B
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                jbe     loc_14043DC47

loc_14026664B:                          ; CODE XREF: sub_140265E70+7C3↑j
                                        ; sub_140265E70+1D7DE1↓j ...
                shr     rcx, 38h
                and     ecx, 0Fh
                cmp     ecx, 7
                jnz     loc_1402667E1

loc_14026665B:                          ; CODE XREF: sub_140265E70+76E↑j
                                        ; sub_140265E70+975↓j ...
                test    [rsp+118h+arg_10], 1
                jnz     loc_140266792

loc_140266669:                          ; CODE XREF: sub_140265E70+937↓j
                                        ; sub_140265E70+94B↓j ...
                mov     r8, r15
                mov     rax, 7FFFFFFFF8h
                shr     r8, 9
                and     r8, rax
                mov     rax, rbx
                add     r8, rax
                mov     rcx, [r8]
                mov     rax, rsi
                cmp     r8, rax
                jnb     loc_14026675C

loc_140266692:                          ; CODE XREF: sub_140265E70+8FC↓j
                                        ; sub_140265E70+1D7E79↓j ...
                mov     rsi, rcx
                shr     rcx, 38h
                shr     rsi, 3Ch
                and     cl, 0Fh
                and     sil, 7
                shl     sil, 4
                or      sil, cl
                movzx   eax, sil
                and     al, 0Fh
                cmp     al, 8
                jz      loc_14043DD77

loc_1402666B9:                          ; CODE XREF: sub_140265E70+1D7F22↓j
                mov     rbx, cs:qword_14001D278
                mov     rdx, [r14]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rcx, rax
                cmp     r14, rcx
                jnb     loc_140266777

loc_1402666D9:                          ; CODE XREF: sub_140265E70+917↓j
                                        ; sub_140265E70+1D7F2E↓j ...
                mov     eax, cs:dword_140CFC400
                bt      eax, 0Bh
                jb      loc_14043DDAD
                bt      eax, 1Ah
                jb      loc_14043DDB7

loc_1402666F3:                          ; CODE XREF: sub_140265E70+1D7F42↓j
                                        ; sub_140265E70+1D7F4A↓j
                mov     rcx, r14
                test    dl, 20h
                jz      loc_14026687B
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14043DDBF

loc_14026670C:                          ; CODE XREF: sub_140265E70+1D7FA1↓j
                                        ; sub_140265E70+1D7FAA↓j ...
                mov     [r14], rbx

loc_14026670F:                          ; CODE XREF: sub_140265E70+A1B↓j
                                        ; sub_140265E70+1D7F82↓j
                mov     [rsp+118h+var_C0], 1

loc_140266717:                          ; CODE XREF: sub_140265E70+A15↓j
                cmp     [rsp+118h+var_A0], 0
                mov     rax, [rsp+118h+var_90]
                mov     [rax+r12*8], sil
                mov     byte ptr [rax+r12*8+1], 1
                jz      short loc_14026674A
                mov     rax, [rbp+8]
                mov     rcx, 8000000000000000h
                or      rax, rcx
                mov     [rsp+118h+var_98], rax

loc_14026674A:                          ; CODE XREF: sub_140265E70+8BF↑j
                mov     rbp, [rsp+118h+var_D8]
                lea     eax, [r13+1]
                mov     [rsp+118h+var_E0], eax
                jmp     loc_140266163
; ---------------------------------------------------------------------------

loc_14026675C:                          ; CODE XREF: sub_140265E70+81C↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                ja      loc_140266692
                jmp     loc_14043DCDF
; ---------------------------------------------------------------------------

loc_140266777:                          ; CODE XREF: sub_140265E70+863↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rcx, rax
                cmp     r14, rcx
                ja      loc_1402666D9
                jmp     loc_14043DD97
; ---------------------------------------------------------------------------

loc_140266792:                          ; CODE XREF: sub_140265E70+7F3↑j
                mov     rax, [rbp+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, 1
                jnz     loc_140266669
                movzx   eax, byte ptr [rbp+23h]
                test    al, 8
                jnz     short loc_1402667C1
                and     eax, 7
                cmp     eax, 2
                jbe     loc_140266669

loc_1402667C1:                          ; CODE XREF: sub_140265E70+943↑j
                mov     rcx, rbp
                call    sub_14022FC60
                cmp     eax, 5
                ja      loc_140266669
                mov     edx, 2
                call    sub_14031B1DC
                jmp     loc_140266669
; ---------------------------------------------------------------------------

loc_1402667E1:                          ; CODE XREF: sub_140265E70+79D↑j
                                        ; sub_140265E70+7E5↑j
                test    byte ptr [r14], 20h
                jz      loc_14026665B
                mov     rcx, [rsp+118h+var_B8]
                mov     rdx, r14
                call    sub_14028CE50
                jmp     loc_14026665B
; ---------------------------------------------------------------------------

loc_1402667FD:                          ; CODE XREF: sub_140265E70+6A7↑j
                xor     edx, edx
                mov     [rsp+118h+var_B0], edx
                test    al, al
                jz      loc_140266527
                nop     dword ptr [rax+rax+00h]

loc_140266810:                          ; CODE XREF: sub_140265E70+9B1↓j
                                        ; sub_140265E70+9C0↓j
                lea     rcx, [rsp+118h+var_B0]
                call    sub_1402C8C70
                mov     rax, [rbp+18h]
                test    rax, rax
                js      short loc_140266810
                lock bts qword ptr [rbp+18h], 3Fh ; '?'
                jnb     loc_140266525
                jmp     short loc_140266810
; ---------------------------------------------------------------------------

loc_140266832:                          ; CODE XREF: sub_140265E70+6C1↑j
                mov     rcx, rbp
                call    sub_1402A6940
                mov     r9, [rsp+118h+var_D8]
                mov     rbx, rax

loc_140266842:                          ; CODE XREF: sub_140265E70+6DF↑j
                                        ; sub_140265E70+6E9↑j ...
                test    r12d, r12d
                jnz     loc_14026690F

loc_14026684B:                          ; CODE XREF: sub_140265E70+AB0↓j
                mov     rcx, rbp
                call    sub_1402C5FA0
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbp+18h], rax
                test    rbx, rbx
                jnz     loc_14043DFC9

loc_14026686B:                          ; CODE XREF: sub_140265E70+1D816D↓j
                mov     ecx, [rsp+118h+var_E4]
                xor     edx, edx
                mov     r9, [rsp+118h+var_D8]
                jmp     loc_14026626E
; ---------------------------------------------------------------------------

loc_14026687B:                          ; CODE XREF: sub_140265E70+889↑j
                mov     rdx, rbx
                call    sub_14034E08C
                test    al, 20h
                jz      loc_140266717
                jmp     loc_14026670F
; ---------------------------------------------------------------------------

loc_140266890:                          ; CODE XREF: sub_140265E70+5B8↑j
                and     rcx, 0FFFFFFFFFFFFFFEFh
                jmp     loc_140266437
; ---------------------------------------------------------------------------

loc_140266899:                          ; CODE XREF: sub_140265E70+5AB↑j
                test    rdx, rdx
                jz      short loc_1402668AB
                test    al, 10h
                jnz     short loc_1402668DD
                mov     rcx, rdx
                not     rcx
                and     rcx, rax

loc_1402668AB:                          ; CODE XREF: sub_140265E70+A2C↑j
                                        ; sub_140265E70+A71↓j
                and     ecx, 0FFFFFFFh
                jmp     loc_140266442
; ---------------------------------------------------------------------------

loc_1402668B6:                          ; CODE XREF: sub_140265E70+471↑j
                mov     rbx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E058

loc_1402668D1:                          ; CODE XREF: sub_140265E70+1D81EA↓j
                                        ; sub_140265E70+1D81F3↓j ...
                mov     [rsp+118h+arg_18], bl
                jmp     loc_14026632F
; ---------------------------------------------------------------------------

loc_1402668DD:                          ; CODE XREF: sub_140265E70+A30↑j
                and     rcx, 0FFFFFFFFFFFFFFEFh
                jmp     short loc_1402668AB
; ---------------------------------------------------------------------------

loc_1402668E3:                          ; CODE XREF: sub_140265E70+120↑j
                and     rax, 0FFFFFFFFFFFFFFFEh
                mov     [rsp+118h+var_C4], 4
                mov     [rsp+118h+var_A8], rax
                mov     [rcx+18h], rax
                jmp     loc_140265F96
; ---------------------------------------------------------------------------

loc_1402668FD:                          ; CODE XREF: sub_140265E70+506↑j
                                        ; sub_140265E70+516↑j
                mov     rsi, [rsi+10h]
                test    rsi, rsi
                jnz     loc_14026635B
                jmp     loc_14043E0A5
; ---------------------------------------------------------------------------

loc_14026690F:                          ; CODE XREF: sub_140265E70+9D5↑j
                mov     r8b, 11h
                mov     edx, r12d
                mov     rcx, r9
                call    sub_14027EB10
                xor     r12d, r12d
                jmp     loc_14026684B
; ---------------------------------------------------------------------------

loc_140266925:                          ; CODE XREF: sub_140265E70+6AF↑j
                mov     rcx, [rsp+118h+var_D8]
                mov     r8b, 2
                mov     edx, r12d
                call    sub_14027EB10
                mov     ecx, [rsp+118h+var_E4]
                xor     edx, edx
                mov     r9, [rsp+118h+var_D8]
                dec     ecx
                dec     rdi
                mov     r12d, edx
                dec     r13
                jmp     loc_14026626E
sub_140265E70   endp

; ---------------------------------------------------------------------------
byte_140266950  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014005B904↑o
                                        ; .pdata:00000001400CDBB4↑o

; =============== S U B R O U T I N E =======================================


sub_140266958   proc near               ; CODE XREF: sub_1402335C0+69E↑p
                                        ; sub_140358D34+10A↓p ...

var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043E220 SIZE 0000002D BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     byte ptr [rcx+518h], 7Fh
                lea     rsi, [rdx+28h]
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rbp, rcx
                mov     rax, rdi
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_140266B39

loc_14026698C:                          ; CODE XREF: sub_140266958+1E9↓j
                and     [rsp+58h+arg_8], 0
                mov     rcx, rsi
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r15d, 1
                cmp     eax, r15d
                jz      loc_140266B05
                or      edx, 0FFFFFFFFh

loc_1402669B4:                          ; CODE XREF: sub_140266958+1BB↓j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r15b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, rsi
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_1402669EF:                          ; CODE XREF: sub_140266958+C2↓j
                                        ; sub_140266958+CA↓j ...
                bsr     ecx, r8d
                mov     [rsp+58h+arg_0], ecx
                jz      loc_140266B2B
                lea     rdi, [rcx+rcx*2]
                mov     eax, r15d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r15b
                jz      short loc_1402669EF
                mov     eax, [rdi+20h]
                test    r15b, al
                jnz     short loc_1402669EF
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1402669EF
                cmp     [rdi+28h], edx
                jnz     short loc_1402669EF
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_1402669EF
                test    rdi, rdi
                jz      loc_140266B2B
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_140266B46

loc_140266A63:                          ; CODE XREF: sub_140266958+1F6↓j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rsp+58h+arg_8], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r15b
                jnz     loc_14043E220
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_140266ABD:                          ; CODE XREF: sub_140266958+1DA↓j
                                        ; sub_140266958+1D78D6↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_8]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r15w
                jnz     short loc_140266AE9
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     short loc_140266B53

loc_140266AE9:                          ; CODE XREF: sub_140266958+183↑j
                                        ; sub_140266958+200↓j
                add     [rbp+1E6h], r15w
                jz      short loc_140266B18

loc_140266AF3:                          ; CODE XREF: sub_140266958+1CA↓j
                                        ; sub_140266958+1D1↓j
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140266B05:                          ; CODE XREF: sub_140266958+53↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax
                jmp     loc_1402669B4
; ---------------------------------------------------------------------------

loc_140266B18:                          ; CODE XREF: sub_140266958+199↑j
                lea     rax, [rbp+98h]
                cmp     [rax], rax
                jz      short loc_140266AF3
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140266AF3
; ---------------------------------------------------------------------------

loc_140266B2B:                          ; CODE XREF: sub_140266958+9F↑j
                                        ; sub_140266958+ED↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_140266ABD
                jmp     loc_14043E233
; ---------------------------------------------------------------------------

loc_140266B39:                          ; CODE XREF: sub_140266958+2E↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_14026698C
; ---------------------------------------------------------------------------

loc_140266B46:                          ; CODE XREF: sub_140266958+105↑j
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_140266A63
; ---------------------------------------------------------------------------

loc_140266B53:                          ; CODE XREF: sub_140266958+18F↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140266AE9
sub_140266958   endp

; ---------------------------------------------------------------------------
algn_140266B5A:                         ; DATA XREF: .rdata:000000014005B92C↑o
                                        ; .pdata:00000001400CDBC0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140266B60   proc near               ; CODE XREF: sub_140208A24+9E↑p
                                        ; sub_1403F48A0+26E↓p ...

var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043E24E SIZE 0000002D BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     byte ptr [rcx+518h], 0FEh
                lea     rsi, [rdx+4C8h]
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rbp, rcx
                mov     rax, rdi
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_140266D3D

loc_140266B97:                          ; CODE XREF: sub_140266B60+1E5↓j
                and     [rsp+58h+arg_8], 0
                mov     rcx, rsi
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r15d, 1
                cmp     eax, r15d
                jz      loc_140266D1C
                or      edx, 0FFFFFFFFh

loc_140266BBF:                          ; CODE XREF: sub_140266B60+1CA↓j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r15b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, rsi
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_140266BFA:                          ; CODE XREF: sub_140266B60+C5↓j
                                        ; sub_140266B60+CD↓j ...
                bsr     ecx, r8d
                mov     [rsp+58h+arg_0], ecx
                jz      loc_140266D2F
                lea     rdi, [rcx+rcx*2]
                mov     eax, r15d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r15b
                jz      short loc_140266BFA
                mov     eax, [rdi+20h]
                test    r15b, al
                jnz     short loc_140266BFA
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_140266BFA
                cmp     [rdi+28h], edx
                jnz     short loc_140266BFA
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_140266BFA
                test    rdi, rdi
                jz      loc_140266D2F
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_140266D4A

loc_140266C6E:                          ; CODE XREF: sub_140266B60+1F2↓j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rsp+58h+arg_8], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r15b
                jnz     loc_14043E24E
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_140266CC8:                          ; CODE XREF: sub_140266B60+1D6↓j
                                        ; sub_140266B60+1D76FC↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_8]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r15w
                jnz     short loc_140266CF4
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     short loc_140266D5E

loc_140266CF4:                          ; CODE XREF: sub_140266B60+186↑j
                                        ; sub_140266B60+203↓j
                add     [rbp+1E6h], r15w
                jnz     short loc_140266D0A
                lea     rax, [rbp+98h]
                cmp     [rax], rax
                jnz     short loc_140266D57

loc_140266D0A:                          ; CODE XREF: sub_140266B60+19C↑j
                                        ; sub_140266B60+1FC↓j
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140266D1C:                          ; CODE XREF: sub_140266B60+56↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax
                jmp     loc_140266BBF
; ---------------------------------------------------------------------------

loc_140266D2F:                          ; CODE XREF: sub_140266B60+A2↑j
                                        ; sub_140266B60+F0↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_140266CC8
                jmp     loc_14043E261
; ---------------------------------------------------------------------------

loc_140266D3D:                          ; CODE XREF: sub_140266B60+31↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_140266B97
; ---------------------------------------------------------------------------

loc_140266D4A:                          ; CODE XREF: sub_140266B60+108↑j
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_140266C6E
; ---------------------------------------------------------------------------

loc_140266D57:                          ; CODE XREF: sub_140266B60+1A8↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140266D0A
; ---------------------------------------------------------------------------

loc_140266D5E:                          ; CODE XREF: sub_140266B60+192↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140266CF4
sub_140266B60   endp

; ---------------------------------------------------------------------------
byte_140266D65  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014005B954↑o
                                        ; .pdata:00000001400CDBCC↑o

; =============== S U B R O U T I N E =======================================


sub_140266D6C   proc near               ; CODE XREF: sub_1402735C0+29D↓p
                                        ; sub_14032E938+80↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     rax, [rcx]
                mov     r10, rdx
                mov     r11, [rdx]
                mov     r9, rcx
                mov     r8d, [rax+38h]
                mov     ebx, [rax+60h]
                mov     eax, 40000000h
                bt      r8d, 0Ch
                jb      short loc_140266DA7
                cmp     [rcx+30h], eax
                jnb     short loc_140266DAA
                mov     eax, [rcx+2Ch]
                cmp     r11, rax
                jnb     short loc_140266DEA

loc_140266D9D:                          ; CODE XREF: sub_140266D6C+7C↓j
                mov     rax, r9

loc_140266DA0:                          ; CODE XREF: sub_140266D6C+80↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140266DA7:                          ; CODE XREF: sub_140266D6C+22↑j
                cmp     [rcx+30h], eax

loc_140266DAA:                          ; CODE XREF: sub_140266D6C+27↑j
                sbb     rcx, rcx
                mov     rax, r11
                and     rcx, 0FFFFFFFFFFFE0000h
                xor     edx, edx
                add     rcx, 40000h
                div     rcx
                mov     ecx, eax
                test    rdx, rdx
                lea     r8, [rcx+1]
                cmovz   r8, rcx
                cmp     r8, rbx
                ja      short loc_140266DEA
                imul    rax, 58h ; 'X'
                add     r9, rax
                mov     eax, [r9+2Ch]
                cmp     rdx, rax
                jnb     short loc_140266DEA
                mov     [r10], rdx
                jmp     short loc_140266D9D
; ---------------------------------------------------------------------------

loc_140266DEA:                          ; CODE XREF: sub_140266D6C+2F↑j
                                        ; sub_140266D6C+67↑j ...
                xor     eax, eax
                jmp     short loc_140266DA0
sub_140266D6C   endp

; ---------------------------------------------------------------------------
byte_140266DEE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDBD8↑o

; =============== S U B R O U T I N E =======================================


sub_140266DF4   proc near               ; CODE XREF: sub_1402D36B0+92↓p
                                        ; sub_1406579E0+7E↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     ebx, edx
                add     rcx, 48h ; 'H'
                call    ExAcquireSpinLockExclusive
                dec     qword ptr [rdi+18h]
                mov     dl, al
                sub     [rdi+30h], rbx
                mov     rcx, rdi
                call    sub_140266E30
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140266DF4   endp

algn_140266E2A:                         ; DATA XREF: .pdata:00000001400CDBE4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140266E30   proc near               ; CODE XREF: sub_1402335C0+B82↑p
                                        ; sub_140265E70+529↑p ...

var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014043E27C SIZE 000001B3 BYTES

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, cs:qword_140C4E4C8
                xor     r12d, r12d
                mov     rdi, rcx
                movzx   ebp, dl
                mov     rdx, [rcx+40h]
                xor     r14d, r14d
                movzx   ecx, word ptr [rcx+3Ch]
                xor     esi, esi
                xor     ebx, ebx
                xorps   xmm0, xmm0
                test    rdx, rdx
                mov     r15, 0FFFFFFFFFFFFFFFFh
                movdqu  [rsp+78h+var_50], xmm0
                setnz   r12b
                mov     [rsp+78h+var_58], r15
                and     ecx, 3FFh
                mov     r13, [rax+rcx*8]
                cmp     [rdi+28h], rbx
                jz      loc_140266F27

loc_140266E93:                          ; CODE XREF: sub_140266E30+FB↓j
                cmp     [rdi+50h], rbx
                jnz     loc_1402670B9

loc_140266E9D:                          ; CODE XREF: sub_140266E30+149↓j
                                        ; sub_140266E30+1B1↓j ...
                cmp     ebx, 4
                jnb     loc_1402670A1

loc_140266EA6:                          ; CODE XREF: sub_140266E30+284↓j
                test    ebx, ebx
                jnz     loc_140266FFA
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14043E380
                mov     [rdi+48h], ebx

loc_140266EBE:                          ; CODE XREF: sub_140266E30+1D755F↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043E394

loc_140266ED7:                          ; CODE XREF: sub_140266E30+1D7568↓j
                                        ; sub_140266E30+1D7577↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E3B8

loc_140266EE5:                          ; CODE XREF: sub_140266E30+1D758A↓j
                                        ; sub_140266E30+1D7596↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                test    r14, r14
                jnz     loc_140267082

loc_140266EF6:                          ; CODE XREF: sub_140266E30+269↓j
                call    sub_1402670D0

loc_140266EFB:                          ; CODE XREF: sub_140266E30+1FA↓j
                                        ; sub_140266E30+1D74E8↓j
                test    rsi, rsi
                jnz     loc_14043E41B

loc_140266F04:                          ; CODE XREF: sub_140266E30+1D75FA↓j
                lea     rcx, [rsp+78h+var_58]
                call    sub_140657AB8
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 40h
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

loc_140266F27:                          ; CODE XREF: sub_140266E30+5D↑j
                cmp     [rdi+18h], rbx
                jnz     loc_140266E93
                and     rdx, 0FFFFFFFFFFFFFFF0h
                jz      loc_14026702F
                mov     ecx, [rdi+38h]
                cmp     [rdi+20h], rbx
                jz      loc_14026706A
                bt      ecx, 12h
                jb      loc_14043E27C
                mov     eax, ecx
                and     eax, 20020h
                cmp     eax, 20020h
                jnz     loc_14026703D

loc_140266F64:                          ; CODE XREF: sub_140266E30+21B↓j
                test    cl, 20h
                jnz     loc_140267050

loc_140266F6D:                          ; CODE XREF: sub_140266E30+235↓j
                                        ; sub_140266E30+1D7451↓j
                mov     eax, ecx
                and     eax, 20020h
                cmp     eax, 20020h
                jnz     loc_140266E9D
                or      ecx, 4
                mov     qword ptr [rdi+28h], 1
                mov     [rdi+38h], ecx
                lea     rcx, [rdi+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E286

loc_140266FA4:                          ; CODE XREF: sub_140266E30+1D7458↓j
                                        ; sub_140266E30+1D7464↓j ...
                mov     cr8, rbp
                mov     rcx, rdi
                call    sub_1403A53B4
                lea     rcx, [rdi+48h]
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rdi+38h], 0FFFFFFFBh
                movzx   ebp, al
                sub     qword ptr [rdi+28h], 1
                jnz     loc_1402670B9
                cmp     [rdi+18h], r14
                jnz     loc_1402670B9
                cmp     [rdi+20h], r14
                jz      loc_14043E2E9
                test    ebx, ebx
                jnz     loc_140266E9D
                mov     rcx, rdi
                call    sub_14026BB1C
                mov     rsi, rax
                or      ebx, 4
                jmp     loc_140266E9D
; ---------------------------------------------------------------------------

loc_140266FFA:                          ; CODE XREF: sub_140266E30+78↑j
                test    bl, 1
                jnz     loc_14043E300
                lea     rcx, [rdi+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E31D

loc_14026701A:                          ; CODE XREF: sub_140266E30+1D74EF↓j
                                        ; sub_140266E30+1D74FB↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rcx, rdi
                call    sub_1406A11D0
                jmp     loc_140266EFB
; ---------------------------------------------------------------------------

loc_14026702F:                          ; CODE XREF: sub_140266E30+105↑j
                or      dword ptr [rdi+38h], 1
                mov     ebx, 2
                jmp     loc_140266E9D
; ---------------------------------------------------------------------------

loc_14026703D:                          ; CODE XREF: sub_140266E30+12E↑j
                mov     rcx, rdi
                call    sub_14026BB1C
                mov     ecx, [rdi+38h]
                mov     rsi, rax
                jmp     loc_140266F64
; ---------------------------------------------------------------------------

loc_140267050:                          ; CODE XREF: sub_140266E30+137↑j
                lea     r8, [rsp+78h+var_58]
                mov     edx, 1
                mov     rcx, rdi
                call    sub_14034E4E0
                mov     ecx, [rdi+38h]
                jmp     loc_140266F6D
; ---------------------------------------------------------------------------

loc_14026706A:                          ; CODE XREF: sub_140266E30+112↑j
                or      ecx, 1
                mov     ebx, 2
                mov     [rdi+38h], ecx
                mov     rcx, rdi
                call    sub_14032B0F8
                jmp     loc_140266E9D
; ---------------------------------------------------------------------------

loc_140267082:                          ; CODE XREF: sub_140266E30+C0↑j
                                        ; sub_140266E30+26F↓j
                mov     rbx, [r14]
                lea     rcx, [r14+10h]
                mov     edx, 1
                call    sub_1402FDDC0
                mov     r14, rbx
                test    rbx, rbx
                jz      loc_140266EF6
                jmp     short loc_140267082
; ---------------------------------------------------------------------------

loc_1402670A1:                          ; CODE XREF: sub_140266E30+70↑j
                mov     edx, 3
                mov     rcx, rdi
                call    sub_14026CE10
                mov     r14, rax
                and     ebx, 0FFFFFFFBh
                jmp     loc_140266EA6
; ---------------------------------------------------------------------------

loc_1402670B9:                          ; CODE XREF: sub_140266E30+67↑j
                                        ; sub_140266E30+195↑j ...
                mov     ebx, 4
                jmp     loc_140266E9D
sub_140266E30   endp

; ---------------------------------------------------------------------------
algn_1402670C3:                         ; DATA XREF: .rdata:000000014005BAF4↑o
                                        ; .pdata:00000001400CDBF0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402670D0   proc near               ; CODE XREF: sub_140238E40:loc_1402390DA↑p
                                        ; sub_140266E30:loc_140266EF6↑p ...

var_8           = qword ptr -8

; FUNCTION CHUNK AT 000000014043E430 SIZE 00000059 BYTES

                sub     rsp, 28h
                mov     r8, cs:qword_140C52928
                mov     rax, 0CCCCCCCCCCCCCCCDh
                mov     rcx, cs:qword_140C529A8
                mul     rcx
                shr     rdx, 3
                lea     rax, [rdx+rdx*8]
                cmp     r8, rax
                jnb     loc_14043E430

loc_140267100:                          ; CODE XREF: sub_1402670D0+1D7367↓j
                                        ; sub_1402670D0+1D73B4↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402670D0   endp

byte_140267106  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014005BB38↑o
                                        ; .pdata:00000001400CDBFC↑o

; =============== S U B R O U T I N E =======================================


sub_14026710C   proc near               ; CODE XREF: sub_1406587E0+8DF↓p
                                        ; DATA XREF: .pdata:00000001400CDC08↑o

; FUNCTION CHUNK AT 000000014043E48A SIZE 00000015 BYTES

                mov     eax, [rcx+30h]
                and     eax, 3100000h
                cmp     eax, 2100000h
                jz      loc_14043E48A

loc_14026711F:                          ; CODE XREF: sub_14026710C+1D738E↓j
                xor     eax, eax

locret_140267121:                       ; CODE XREF: sub_14026710C+1D7388↓j
                retn
sub_14026710C   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140267123  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDC08↑o

; =============== S U B R O U T I N E =======================================


sub_14026712C   proc near               ; CODE XREF: sub_140265E70+4F7↑p
                                        ; sub_14026CE70+72↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043E4A0 SIZE 0000001F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     ebp, r8d
                mov     rsi, rdx
                mov     rbx, rcx
                xor     edi, edi
                mov     r14, [rax+40h]

loc_140267157:                          ; CODE XREF: sub_14026712C+1D7388↓j
                mov     edx, ebp
                mov     rcx, rbx
                call    sub_140267320
                add     rdi, rax
                test    r14, r14
                jz      short loc_140267170
                cmp     qword ptr [rbx+60h], 0
                jz      short loc_1402671A0

loc_140267170:                          ; CODE XREF: sub_14026712C+3B↑j
                                        ; sub_14026712C+78↓j ...
                test    rsi, rsi
                jz      loc_14043E4A0
                mov     eax, [rbx+2Ch]
                cmp     rsi, rax
                ja      short loc_1402671B3

loc_140267181:                          ; CODE XREF: sub_14026712C+1D738E↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rdi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402671A0:                          ; CODE XREF: sub_14026712C+42↑j
                test    byte ptr [rbx+22h], 1
                jnz     short loc_140267170
                mov     rcx, rbx
                call    sub_14026BC98
                add     rdi, rax
                jmp     short loc_140267170
; ---------------------------------------------------------------------------

loc_1402671B3:                          ; CODE XREF: sub_14026712C+53↑j
                sub     rsi, rax
                jmp     loc_14043E4A0
sub_14026712C   endp

; ---------------------------------------------------------------------------
byte_1402671BB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014005BC1C↑o
                                        ; .pdata:00000001400CDC14↑o

; =============== S U B R O U T I N E =======================================


sub_1402671C4   proc near               ; CODE XREF: sub_1402D4688+EA↓p
                                        ; sub_1402E00A8+70↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043E4C0 SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   r9d, word ptr [rcx+3Ch]
                mov     rbx, rcx
                mov     rax, cs:qword_140C4E4C8
                and     r9d, 3FFh
                add     rcx, 48h ; 'H'
                mov     r15, r8
                mov     rsi, rdx
                xor     edi, edi
                mov     rbp, [rax+r9*8]
                call    ExAcquireSpinLockExclusive
                mov     r14b, al
                test    rsi, rsi
                jz      short loc_140267231
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rsi
                call    sub_140267270
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, r15
                mov     rdi, rax
                call    sub_140267270
                add     rdi, rax

loc_140267231:                          ; CODE XREF: sub_1402671C4+49↑j
                dec     qword ptr [rbx+28h]
                mov     dl, r14b
                mov     rcx, rbx
                call    sub_140266E30
                test    rdi, rdi
                jnz     loc_14043E4C0

loc_140267249:                          ; CODE XREF: sub_1402671C4+1D730D↓j
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
sub_1402671C4   endp

algn_140267263:                         ; DATA XREF: .rdata:000000014005BC48↑o
                                        ; .pdata:00000001400CDC20↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140267270   proc near               ; CODE XREF: sub_1402335C0+B4F↑p
                                        ; sub_1402671C4+54↑p ...

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
                mov     rax, [rcx]
                mov     edi, r8d
                mov     rsi, rdx
                mov     rbx, rcx
                xor     r14d, r14d
                mov     rbp, [rax+40h]
                nop     dword ptr [rax]

loc_1402672A0:                          ; CODE XREF: sub_140267270+50↓j
                cmp     qword ptr [rbx+8], 0
                jnz     short loc_1402672E1

loc_1402672A7:                          ; CODE XREF: sub_140267270+81↓j
                                        ; sub_140267270+88↓j ...
                cmp     rbx, rsi
                jz      short loc_1402672C2
                mov     rbx, [rbx+10h]
                mov     ecx, edi
                and     ecx, 0FFFFFFF7h
                test    rbp, rbp
                cmovnz  ecx, edi
                mov     edi, ecx
                test    rbx, rbx
                jnz     short loc_1402672A0

loc_1402672C2:                          ; CODE XREF: sub_140267270+3A↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, r14
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402672E1:                          ; CODE XREF: sub_140267270+35↑j
                mov     edx, edi
                mov     rcx, rbx
                call    sub_140267320
                add     r14, rax
                test    rbp, rbp
                jz      short loc_1402672A7
                cmp     qword ptr [rbx+60h], 0
                jnz     short loc_1402672A7
                test    byte ptr [rbx+22h], 1
                jnz     short loc_1402672A7
                mov     rcx, rbx
                call    sub_14026BC98
                add     r14, rax
                jmp     short loc_1402672A7
sub_140267270   endp

; ---------------------------------------------------------------------------
algn_14026730D:                         ; DATA XREF: .pdata:00000001400CDC2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140267320   proc near               ; CODE XREF: sub_140231440+687↑p
                                        ; sub_14026712C+30↑p ...

var_18          = qword ptr -18h
var_8           = qword ptr -8

; FUNCTION CHUNK AT 000000014043E4D6 SIZE 000000A5 BYTES

                sub     rsp, 38h
                mov     r9, [rcx]
                mov     r10, rcx
                cmp     qword ptr [r9+40h], 0
                jz      short loc_14026734A
                mov     eax, [r9+38h]
                test    al, 20h
                jnz     short loc_14026734A
                test    byte ptr [rcx+22h], 1
                jnz     short loc_14026734A
                cmp     qword ptr [rcx+60h], 0
                jz      loc_14043E4D6

loc_14026734A:                          ; CODE XREF: sub_140267320+F↑j
                                        ; sub_140267320+17↑j ...
                xor     r11d, r11d
                test    dl, 4
                jnz     short loc_140267357
                test    dl, 8
                jnz     short loc_14026738B

loc_140267357:                          ; CODE XREF: sub_140267320+30↑j
                                        ; sub_140267320+75↓j ...
                cmp     qword ptr [r9+40h], 0
                jz      short loc_140267382
                mov     ecx, [r9+38h]
                test    cl, 20h
                jnz     short loc_140267382
                test    byte ptr [r10+22h], 1
                jnz     short loc_140267382
                mov     rax, [r10+60h]
                test    rax, rax
                jz      loc_14043E55D
                dec     rax
                mov     [r10+60h], rax

loc_140267382:                          ; CODE XREF: sub_140267320+3C↑j
                                        ; sub_140267320+45↑j ...
                mov     rax, r11
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14026738B:                          ; CODE XREF: sub_140267320+35↑j
                mov     rcx, r9
                call    sub_140268430
                test    eax, eax
                jnz     short loc_140267357
                movzx   ecx, word ptr [r9+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     ecx, 3FFh
                mov     r8, [rax+rcx*8]
                test    dl, 10h
                jnz     short loc_1402673F0
                test    dl, dl
                js      short loc_1402673F4
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                bt      edx, 8
                jb      loc_14043E4F4
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rax, [rax+rcx*8]

loc_1402673E2:                          ; CODE XREF: sub_140267320+D2↓j
                                        ; sub_140267320+DB↓j ...
                cmp     rax, r8
                jz      loc_140267357
                jmp     loc_14043E512
; ---------------------------------------------------------------------------

loc_1402673F0:                          ; CODE XREF: sub_140267320+90↑j
                xor     eax, eax
                jmp     short loc_1402673E2
; ---------------------------------------------------------------------------

loc_1402673F4:                          ; CODE XREF: sub_140267320+94↑j
                lea     rax, unk_140C50C00
                jmp     short loc_1402673E2
sub_140267320   endp

; ---------------------------------------------------------------------------
byte_1402673FD  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014005BC80↑o
                                        ; .pdata:00000001400CDC38↑o

; =============== S U B R O U T I N E =======================================


sub_140267410   proc near               ; CODE XREF: sub_140262F40+6D↑p
                                        ; sub_140265E70+92↑p ...

; FUNCTION CHUNK AT 000000014043E57C SIZE 00000009 BYTES

                mov     rdx, [rcx+28h]
                mov     rax, rdx
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    dl, 1
                jnz     loc_14043E57C
                test    dl, 2
                jnz     short loc_14026742B
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14026742B:                          ; CODE XREF: sub_140267410+17↑j
                mov     rax, [rax+28h]
                mov     rax, [rax]
                retn
sub_140267410   endp

; ---------------------------------------------------------------------------
                align 4
byte_140267434  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDC44↑o

; =============== S U B R O U T I N E =======================================


sub_14026743C   proc near               ; CODE XREF: sub_1405CE758+6A↓p
                                        ; sub_1406587E0+202↓p ...
                push    rbx
                sub     rsp, 20h
                dec     word ptr [rcx+1E6h]
                mov     rbx, rcx
                lea     rcx, [rdx+4C8h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                or      byte ptr [rbx+518h], 2
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14026743C   endp

algn_140267468:                         ; DATA XREF: .pdata:00000001400CDC50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140267470   proc near               ; CODE XREF: sub_1402DC818+35D↓p
                                        ; sub_1402DC818+11CA↓p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043E586 SIZE 00000007 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     eax, 0FFFFFFFFh
                lock xadd [rcx+24h], eax
                dec     eax
                cmp     eax, 0FFFFFFFFh
                jz      loc_14043E586

loc_14026748E:                          ; DATA XREF: .rdata:000000014005BE4C↑o
                                        ; .rdata:000000014005BE64↑o ...
                mov     [rsp+28h+arg_8], rbp
                xor     ecx, ecx
                mov     [rsp+28h+arg_10], rsi
                mov     [rsp+28h+arg_18], rdi
                test    eax, eax
                jnz     short loc_1402674AA
                mov     eax, [rbx+30h]
                test    al, 4
                jnz     short loc_14026750E

loc_1402674AA:                          ; CODE XREF: sub_140267470+31↑j
                mov     esi, ecx

loc_1402674AC:                          ; CODE XREF: sub_140267470+A3↓j
                mov     rdi, gs:188h
                mov     eax, 11h
                and     byte ptr [rdi+519h], 0BFh
                lock cmpxchg [rbx+28h], rcx
                jnz     short loc_140267503

loc_1402674C9:                          ; CODE XREF: sub_140267470+9C↓j
                lea     rcx, [rbx+28h]
                call    sub_140243660
                add     word ptr [rdi+1E6h], 1
                mov     rbp, [rsp+28h+arg_8]
                jnz     short loc_1402674ED

loc_1402674E1:                          ; DATA XREF: .pdata:00000001400CDC68↑o
                                        ; .pdata:00000001400CDC74↑o
                lea     rax, [rdi+98h]
                cmp     [rax], rax
                jnz     short loc_140267521

loc_1402674ED:                          ; CODE XREF: sub_140267470+6F↑j
                                        ; sub_140267470+B6↓j
                mov     rdi, [rsp+28h+arg_18]
                cmp     esi, 1
                mov     rsi, [rsp+28h+arg_10]
                jz      short loc_140267515

loc_1402674FC:                          ; CODE XREF: sub_140267470+AF↓j
                                        ; DATA XREF: .pdata:00000001400CDC74↑o ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140267503:                          ; CODE XREF: sub_140267470+57↑j
                                        ; DATA XREF: .pdata:00000001400CDC80↑o ...
                lea     rcx, [rbx+28h]
                call    ExfReleasePushLockShared
                jmp     short loc_1402674C9
; ---------------------------------------------------------------------------

loc_14026750E:                          ; CODE XREF: sub_140267470+38↑j
                mov     esi, 1
                jmp     short loc_1402674AC
; ---------------------------------------------------------------------------

loc_140267515:                          ; CODE XREF: sub_140267470+8A↑j
                                        ; DATA XREF: .pdata:00000001400CDC8C↑o ...
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_1402674FC
; ---------------------------------------------------------------------------

loc_140267521:                          ; CODE XREF: sub_140267470+7B↑j
                                        ; DATA XREF: .pdata:00000001400CDC98↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1402674ED
sub_140267470   endp

; ---------------------------------------------------------------------------
algn_140267528:                         ; DATA XREF: .pdata:00000001400CDCA4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140267530   proc near               ; CODE XREF: sub_140281E60+547↓p
                                        ; sub_1402A6A10+32F↓p ...

; FUNCTION CHUNK AT 000000014043E58E SIZE 0000002C BYTES

                mov     r8d, [rcx+30h]
                mov     ecx, 1100000h
                mov     eax, r8d
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_14043E58E
                xor     eax, eax
                retn
sub_140267530   endp

; ---------------------------------------------------------------------------
                align 2
algn_14026754A:                         ; DATA XREF: .pdata:00000001400CDCB0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140267550   proc near               ; CODE XREF: sub_14063CB90+70E↓p
                                        ; sub_1406587E0+2CC↓p ...
                mov     eax, [rcx+30h]
                shr     eax, 2
                and     eax, 1
                retn
sub_140267550   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14026755B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDCBC↑o

; =============== S U B R O U T I N E =======================================


sub_140267564   proc near               ; CODE XREF: sub_1406587E0+2BA↓p
                                        ; sub_14067C2D0+151↓p ...
                push    rbx
                sub     rsp, 20h
                dec     word ptr [rcx+1E6h]
                mov     rbx, rcx
                lea     rcx, [rdx+28h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                or      byte ptr [rbx+519h], 40h
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140267564   endp

algn_14026758D:                         ; DATA XREF: .pdata:00000001400CDCC8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402675A0   proc near               ; CODE XREF: sub_14060DA00+DCB↓p
                                        ; sub_140653C50+3DA↓p ...
                dec     word ptr [rcx+1E4h]
                retn
sub_1402675A0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402675A9:                         ; DATA XREF: .pdata:00000001400CDCD4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402675B0   proc near               ; CODE XREF: sub_1406573B0+42D↓p
                                        ; sub_1406587E0+296↓p ...

; FUNCTION CHUNK AT 000000014043E5BC SIZE 00000007 BYTES

                lock inc dword ptr [rcx+24h]
                jz      loc_14043E5BC
                retn
sub_1402675B0   endp

; ---------------------------------------------------------------------------
                align 4
byte_1402675BC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDCE0↑o

; =============== S U B R O U T I N E =======================================


sub_1402675C4   proc near               ; CODE XREF: sub_14061BEE0+2F4↓p
                                        ; sub_14063CB90+37D↓p ...
                movzx   edx, word ptr [rcx+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     edx, 3FFh
                mov     rax, [rax+rdx*8]
                retn
sub_1402675C4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402675DB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400CDCEC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402675F0   proc near               ; CODE XREF: sub_1406587E0+837↓p
                                        ; DATA XREF: .pdata:00000001400CDCF8↑o

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_0           = word ptr  48h
arg_8           = word ptr  50h
arg_10          = dword ptr  58h
arg_18          = dword ptr  60h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 78h
                movzx   eax, byte ptr [r9+21h]
                xor     ebx, ebx
                shl     rax, 20h
                mov     r14, rcx
                mov     ecx, [r9+1Ch]
                mov     r15, r9
                or      rax, rcx
                mov     [rbp+arg_10], ebx
                shl     rax, 0Ch
                mov     rdi, r8
                or      rax, 0FFFh
                mov     [rbp+var_24], ebx
                inc     rax
                mov     [rbp+var_18], rbx
                mov     [rbp+var_28], ebx
                mov     rsi, rdx
                mov     [rbp+arg_18], ebx
                mov     [rbp+var_20], ebx
                mov     [rbp+arg_0], bx
                mov     [rbp+arg_8], bx
                cmp     r8, rax
                ja      short loc_140267654
                test    r8, r8
                jnz     short loc_140267657

loc_140267654:                          ; CODE XREF: sub_1402675F0+5D↑j
                mov     rdi, rax

loc_140267657:                          ; CODE XREF: sub_1402675F0+62↑j
                mov     rax, gs:188h
                mov     r12, [rax+0B8h]
                add     r12, 680h
                mov     rcx, r12
                call    sub_140231340
                movzx   r13d, al
                lea     rdx, [rdi-1]
                lea     rax, [rbp+var_28]
                mov     r9, r15
                mov     [rsp+78h+var_30], rax
                movzx   r8d, r13b
                lea     rax, [rbp+var_18]
                mov     rcx, rsi
                mov     [rsp+78h+var_38], rax
                lea     rax, [rbp+arg_0]
                mov     [rsp+78h+var_40], rax
                lea     rax, [rbp+arg_18]
                mov     [rsp+78h+var_48], rax
                lea     rax, [rbp+arg_10]
                mov     [rsp+78h+var_50], rax
                mov     [rsp+78h+var_58], rbx
                call    sub_140281E60
                mov     [r14+20h], eax
                mov     eax, [rbp+arg_10]
                test    eax, eax
                jz      loc_1402677AF
                lea     rcx, dword_140011250
                mov     eax, [rcx+rax*4]
                mov     [r14+24h], eax
                or      eax, [rbp+arg_18]

loc_1402676DF:                          ; CODE XREF: sub_1402675F0+1C1↓j
                mov     [r14+24h], eax
                mov     rsi, [rbp+var_18]
                movzx   eax, [rbp+arg_0]
                mov     [r14+14h], ax
                cmp     rsi, rdi
                jb      short loc_140267720

loc_1402676F5:                          ; CODE XREF: sub_1402675F0+179↓j
                                        ; sub_1402675F0+181↓j ...
                movzx   edx, r13b
                mov     rcx, r12
                call    sub_140226960
                mov     rax, rsi
                add     rsp, 78h
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
                align 20h

loc_140267720:                          ; CODE XREF: sub_1402675F0+103↑j
                                        ; sub_1402675F0+1B4↓j
                lea     rax, [rbp+var_28]
                mov     r9, r15
                mov     [rsp+78h+var_30], rax
                lea     rdx, [rdi-1]
                lea     rax, [rbp+var_18]
                movzx   r8d, r13b
                mov     [rsp+78h+var_38], rax
                mov     rcx, rsi
                lea     rax, [rbp+arg_8]
                mov     [rsp+78h+var_40], rax
                lea     rax, [rbp+var_20]
                mov     [rsp+78h+var_48], rax
                lea     rax, [rbp+var_24]
                mov     [rsp+78h+var_50], rax
                mov     [rsp+78h+var_58], r14
                call    sub_140281E60
                cmp     eax, [r14+20h]
                jnz     short loc_1402676F5
                mov     eax, [rbp+arg_10]
                cmp     [rbp+var_24], eax
                jnz     short loc_1402676F5
                movzx   eax, [rbp+arg_0]
                cmp     [rbp+arg_8], ax
                jnz     loc_1402676F5
                mov     eax, [rbp+arg_18]
                cmp     [rbp+var_20], eax
                jnz     loc_1402676F5
                mov     rsi, [rbp+var_18]
                inc     ebx
                test    bl, 1Fh
                jz      short loc_1402677B6

loc_140267798:                          ; CODE XREF: sub_1402675F0+1D0↓j
                call    KeShouldYieldProcessor
                test    eax, eax
                jnz     short loc_1402677C2

loc_1402677A1:                          ; CODE XREF: sub_1402675F0+1E6↓j
                cmp     rsi, rdi
                jb      loc_140267720
                jmp     loc_1402676F5
; ---------------------------------------------------------------------------

loc_1402677AF:                          ; CODE XREF: sub_1402675F0+D8↑j
                mov     eax, ebx
                jmp     loc_1402676DF
; ---------------------------------------------------------------------------

loc_1402677B6:                          ; CODE XREF: sub_1402675F0+1A6↑j
                mov     rcx, r12
                call    sub_14029A5E0
                test    eax, eax
                jz      short loc_140267798

loc_1402677C2:                          ; CODE XREF: sub_1402675F0+1AF↑j
                movzx   edx, r13b
                mov     rcx, r12
                call    sub_140226960
                mov     rcx, r12
                call    sub_140231340
                jmp     short loc_1402677A1
sub_1402675F0   endp

; ---------------------------------------------------------------------------
algn_1402677D8:                         ; DATA XREF: .pdata:00000001400CDCF8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402677E0   proc near               ; CODE XREF: sub_1403F48A0+75↓p
                                        ; sub_1406573B0+231↓p ...
                push    rbx
                sub     rsp, 20h
                dec     word ptr [rcx+1E6h]
                mov     rbx, rcx
                lea     rcx, [rdx+4C8h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                or      byte ptr [rbx+518h], 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402677E0   endp

algn_14026780C:                         ; DATA XREF: .pdata:00000001400CDD04↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140267820   proc near               ; CODE XREF: sub_1402966E0+102↓p
                                        ; sub_1402D481C+62↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014043E5C4 SIZE 00000145 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                cmp     qword ptr [rcx+20h], 0
                mov     r15, r9
                mov     rsi, r8
                movzx   r12d, dl
                mov     rbx, rcx
                jz      loc_1402679E2
                xor     ebp, ebp
                lea     rdi, [rcx+80h]
                test    r8, r8
                jz      loc_1402679B2
                mov     rdx, [r8]
                lea     r8d, [rbp+1]
                mov     r14, rdx
                shr     r14, 0Ch
                call    sub_140269B00
                mov     rdi, rax
                test    rax, rax
                jz      loc_140267A33
                movzx   ecx, word ptr [rax+20h]
                mov     eax, [rax+24h]
                and     rcx, 0FFFFFFFFFFFFFFC0h
                shl     rcx, 1Ah
                or      rcx, rax
                sub     r14, rcx
                test    r15, r15
                jz      loc_140267A01
                lea     rdx, [r15-1]
                mov     rcx, rbx
                add     rdx, [rsi]
                lea     r8d, [rbp+1]
                mov     r13, rdx
                shr     r13, 0Ch
                call    sub_140269B00
                mov     rsi, rax
                test    rax, rax
                jz      loc_140267A01
                movzx   ecx, word ptr [rax+20h]
                mov     eax, [rax+24h]
                and     rcx, 0FFFFFFFFFFFFFFC0h
                shl     rcx, 1Ah
                or      rcx, rax
                sub     r13, rcx

loc_1402678DE:                          ; CODE XREF: sub_140267820+1B4↓j
                cmp     [rdi+68h], ebp
                jz      loc_140267A39
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140267ABC
                cmp     eax, 1
                jle     loc_140267A39
                mov     rax, [rdi+8]
                mov     r15d, ebp
                lea     r14, [rax+r14*8]

loc_140267905:                          ; CODE XREF: sub_140267820+28E↓j
                cmp     [rsi+68h], ebp
                jz      loc_140267A06
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140267ABC
                cmp     eax, 1
                jle     loc_140267A06

loc_140267921:                          ; CODE XREF: sub_140267820+20E↓j
                inc     qword ptr [rbx+28h]
                mov     edx, 4
                mov     rcx, rbx
                call    sub_14026CE10
                mov     rcx, rbx
                mov     rbp, rax
                call    sub_14026CD38
                cmp     [rsp+48h+arg_20], 1
                jz      loc_1402679D9

loc_140267948:                          ; CODE XREF: sub_140267820+1BD↓j
                lea     rcx, [rbx+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_14043E636

loc_14026795F:                          ; CODE XREF: sub_140267820+1D6E19↓j
                                        ; sub_140267820+1D6E25↓j ...
                mov     cr8, r12
                mov     rcx, rbp
                call    sub_1402D380C
                mov     rdx, [rsp+48h+arg_28]
                mov     rax, [rsi+8]
                mov     [rdx], rbx
                lea     rcx, [rax+r13*8]
                mov     [rdx+8], r14
                mov     [rdx+10h], rcx
                mov     eax, 103h
                mov     [rdx+18h], rdi
                mov     [rdx+20h], rsi
                mov     [rdx+28h], r15d

loc_140267994:                          ; CODE XREF: sub_140267820+1DF↓j
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
                align 2

loc_1402679B2:                          ; CODE XREF: sub_140267820+40↑j
                mov     r14, rbp

loc_1402679B5:                          ; CODE XREF: sub_140267820+1E4↓j
                mov     edx, 1
                call    sub_14032BB9C
                mov     rsi, rax
                mov     eax, [rax+34h]
                mov     r13d, [rsi+2Ch]
                and     eax, 3FFFFFFFh
                sub     r13d, eax
                dec     r13d
                jmp     loc_1402678DE
; ---------------------------------------------------------------------------

loc_1402679D9:                          ; CODE XREF: sub_140267820+122↑j
                or      dword ptr [rbx+38h], 4
                jmp     loc_140267948
; ---------------------------------------------------------------------------

loc_1402679E2:                          ; CODE XREF: sub_140267820+2E↑j
                add     rcx, 48h ; 'H'

loc_1402679E6:                          ; CODE XREF: sub_140267820+217↓j
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E5C4

loc_1402679F9:                          ; CODE XREF: sub_140267820+236↓j
                                        ; sub_140267820+1D6DA6↓j ...
                mov     cr8, r12
                xor     eax, eax
                jmp     short loc_140267994
; ---------------------------------------------------------------------------

loc_140267A01:                          ; CODE XREF: sub_140267820+7D↑j
                                        ; sub_140267820+A3↑j
                mov     rcx, rbx
                jmp     short loc_1402679B5
; ---------------------------------------------------------------------------

loc_140267A06:                          ; CODE XREF: sub_140267820+E8↑j
                                        ; sub_140267820+FB↑j
                mov     rax, [rdi+10h]
                cmp     rax, rsi
                jnz     short loc_140267A60

loc_140267A0F:                          ; CODE XREF: sub_140267820+252↓j
                mov     rsi, rdi

loc_140267A12:                          ; CODE XREF: sub_140267820+257↓j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_140267ABC
                mov     eax, [rsi+34h]
                mov     r13d, [rsi+2Ch]
                and     eax, 3FFFFFFFh
                sub     r13d, eax
                dec     r13d
                jmp     loc_140267921
; ---------------------------------------------------------------------------

loc_140267A33:                          ; CODE XREF: sub_140267820+5F↑j
                                        ; sub_140267820+26C↓j
                lea     rcx, [rbx+48h]
                jmp     short loc_1402679E6
; ---------------------------------------------------------------------------

loc_140267A39:                          ; CODE XREF: sub_140267820+C1↑j
                                        ; sub_140267820+D4↑j
                mov     r15d, [rdi+2Ch]
                sub     r15d, r14d
                cmp     rdi, rsi
                jnz     short loc_140267A85

loc_140267A45:                          ; CODE XREF: sub_140267820+1D6E11↓j
                lea     rcx, [rbx+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402679F9
                jmp     loc_14043E6A0
; ---------------------------------------------------------------------------
                align 20h

loc_140267A60:                          ; CODE XREF: sub_140267820+1ED↑j
                                        ; sub_140267820+24D↓j
                cmp     dword ptr [rax+68h], 0
                jnz     short loc_140267A79

loc_140267A66:                          ; CODE XREF: sub_140267820+25E↓j
                                        ; sub_140267820+263↓j
                mov     rax, [rax+10h]
                cmp     rax, rsi
                jnz     short loc_140267A60
                test    rbp, rbp
                jz      short loc_140267A0F
                mov     rsi, rbp
                jmp     short loc_140267A12
; ---------------------------------------------------------------------------

loc_140267A79:                          ; CODE XREF: sub_140267820+244↑j
                cmp     qword ptr [rax+8], 0
                jz      short loc_140267A66
                mov     rbp, rax
                jmp     short loc_140267A66
; ---------------------------------------------------------------------------

loc_140267A85:                          ; CODE XREF: sub_140267820+223↑j
                                        ; sub_140267820+1D6E0B↓j
                mov     rdi, [rdi+10h]
                test    rdi, rdi
                jz      short loc_140267A33
                cmp     [rdi+68h], ebp
                jz      loc_14043E624
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140267ABC
                cmp     eax, 1
                jle     loc_14043E624
                mov     r14, [rdi+8]
                jmp     loc_140267905
sub_140267820   endp

; ---------------------------------------------------------------------------
byte_140267AB3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014005BFB8↑o
                                        ; .pdata:00000001400CDD10↑o

; =============== S U B R O U T I N E =======================================


sub_140267ABC   proc near               ; CODE XREF: sub_140267820+CC↑p
                                        ; sub_140267820+F3↑p ...

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
                cmp     qword ptr [rcx+8], 0
                mov     rbx, rcx
                mov     rsi, [rcx]
                jz      short loc_140267B35
                mov     r14, [rsi+40h]
                call    sub_140268340
                mov     edi, 1
                mov     ebp, eax
                cmp     eax, edi
                jle     short loc_140267B0D
                test    r14, r14
                jz      short loc_140267B0D
                mov     ecx, [rsi+38h]
                test    cl, 20h
                jnz     short loc_140267B0D
                test    byte ptr [rbx+22h], 8
                jnz     short loc_140267B2B

loc_140267B09:                          ; CODE XREF: sub_140267ABC+77↓j
                or      [rbx+20h], di

loc_140267B0D:                          ; CODE XREF: sub_140267ABC+38↑j
                                        ; sub_140267ABC+3D↑j ...
                mov     eax, ebp

loc_140267B0F:                          ; CODE XREF: sub_140267ABC+7E↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140267B2B:                          ; CODE XREF: sub_140267ABC+4B↑j
                mov     rcx, rbx
                call    sub_1402FBE44
                jmp     short loc_140267B09
; ---------------------------------------------------------------------------

loc_140267B35:                          ; CODE XREF: sub_140267ABC+24↑j
                mov     eax, 1
                jmp     short loc_140267B0F
sub_140267ABC   endp

; ---------------------------------------------------------------------------
byte_140267B3C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400CDD1C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140267B50   proc near               ; CODE XREF: sub_140262F40+BF↑p
                                        ; sub_1402A4C04+7A↓p ...

var_D0          = qword ptr -0D0h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 000000014043E70A SIZE 0000085B BYTES

                mov     [rsp-8+arg_8], rdx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0B8h
                mov     r15, [rcx]
                xor     r14d, r14d
                mov     edi, r8d
                mov     [rbp+57h+var_C0], r8d
                mov     r13, rcx
                mov     [rbp+57h+var_78], r14
                mov     rsi, rcx
                cmp     [r15+40h], r14
                jz      loc_140267E66
                mov     dword ptr [rbp+57h+arg_0], 1
                mov     [rbp+57h+var_A0], r14
                mov     [rbp+57h+var_A8], r14

loc_140267B9D:                          ; CODE XREF: sub_140267B50+340↓j
                mov     eax, edi
                lea     rcx, [r15+48h]
                and     eax, 180h
                mov     [rbp+57h+var_50], rcx
                mov     [rbp+57h+var_7C], eax
                mov     r12, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rbx, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E70A

loc_140267BCE:                          ; CODE XREF: sub_140267B50+1D6BBC↓j
                                        ; sub_140267B50+1D6BC6↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                movzx   edx, r12b
                jnz     loc_14043E74E
                call    sub_140234420

loc_140267BE4:                          ; CODE XREF: sub_140267B50+1D6C04↓j
                test    dil, 1
                jnz     loc_140267E95
                mov     ecx, edi

loc_140267BF0:                          ; CODE XREF: sub_140267B50+355↓j
                movzx   eax, r12b
                inc     eax
                mov     [rbp+57h+var_B0], 0FFFFFFFFh
                mov     [rbp+57h+var_BC], eax
                mov     rax, 7FFFFFFFFFFFFFFCh
                mov     [rbp+57h+var_48], rax

loc_140267C0E:                          ; CODE XREF: sub_140267B50+429↓j
                mov     eax, [rsi+2Ch]
                mov     [rbp+57h+arg_18], eax
                mov     [rbp+57h+var_70], rsi
                cmp     [rsi+8], r14
                jz      loc_140267EBE
                bt      edi, 0Ah
                jb      loc_14043ECB4
                mov     edx, ecx
                movzx   r8d, r12b
                mov     rcx, rsi
                call    sub_140268260
                mov     [rbp+57h+arg_18], eax
                test    eax, eax
                js      loc_1402681E1
                cmp     dword ptr [rbp+57h+arg_0], 1
                mov     [rbp+57h+var_78], rsi
                jnz     short loc_140267C5C
                mov     eax, [rsi+34h]
                bt      eax, 1Eh
                jb      loc_14043E7E9

loc_140267C5C:                          ; CODE XREF: sub_140267B50+FD↑j
                                        ; sub_140267B50+3E0↓j ...
                mov     rax, [rbp+57h+arg_8]
                test    rax, rax
                jz      loc_140267F5D
                mov     ecx, [rsi+2Ch]
                cmp     rax, rcx
                ja      loc_140267F56

loc_140267C75:                          ; CODE XREF: sub_140267B50+42F↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14043EBEF
                mov     rax, [rbp+57h+var_50]
                mov     [rax], r14d

loc_140267C89:                          ; CODE XREF: sub_140267B50+1D70AD↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043EC02

loc_140267CA2:                          ; CODE XREF: sub_140267B50+1D70B6↓j
                                        ; sub_140267B50+1D70C5↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043EC26

loc_140267CB0:                          ; CODE XREF: sub_140267B50+1D70D8↓j
                                        ; sub_140267B50+1D70E4↓j ...
                movzx   eax, r12b
                mov     cr8, rax
                cmp     dword ptr [rbp+57h+arg_0], r14d
                jz      short loc_140267CD5

loc_140267CBE:                          ; CODE XREF: sub_140267B50+311↓j
                xor     eax, eax

loc_140267CC0:                          ; CODE XREF: sub_140267B50+1D6D4E↓j
                                        ; sub_140267B50+1D73EC↓j ...
                add     rsp, 0B8h
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140267CD5:                          ; CODE XREF: sub_140267B50+16C↑j
                mov     rsi, [rbp+57h+var_A8]
                add     rsi, 28h ; '('
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      loc_140267F84

loc_140267CEE:                          ; CODE XREF: sub_140267B50+43C↓j
                mov     [rbp+57h+var_88], r14d
                mov     rcx, rsi
                mov     rdi, gs:188h
                call    sub_140245330
                cmp     eax, 1
                jz      loc_140267EAA

loc_140267D0C:                          ; CODE XREF: sub_140267B50+369↓j
                dec     word ptr [rdi+1E6h]
                inc     byte ptr [rdi+31Ah]
                movsx   ecx, byte ptr [rdi+318h]
                mov     r8, rsi
                movsx   edx, byte ptr [rdi+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                movzx   r15d, byte ptr [rdi+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                and     r8, r10
                bsr     ecx, edx
                mov     [rbp+57h+var_8C], ecx
                jz      loc_140267F41
                mov     r9d, 1

loc_140267D56:                          ; CODE XREF: sub_140267B50+3EB↓j
                lea     rbx, [rcx+rcx*2]
                mov     eax, r9d
                shl     rbx, 5
                add     rbx, [rdi+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rbx+1Ah], r9b
                jz      loc_140267F35
                mov     eax, [rbx+20h]
                test    r9b, al
                jnz     loc_140267F35
                mov     rax, [rbx+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     loc_140267F35
                mov     ecx, [rbp+57h+var_B0]
                cmp     [rbx+28h], ecx
                jnz     loc_140267F35
                and     byte ptr [rbx+1Ah], 0FEh
                mov     rax, [rbx+20h]
                test    rax, rax
                jz      loc_140267F35
                test    rbx, rbx
                jz      loc_140267F44
                movzx   eax, byte ptr [rbx+20h]
                or      al, 2
                mov     [rbx+20h], al
                mov     rax, [rbx+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_14026816A

loc_140267DD3:                          ; CODE XREF: sub_140267B50+628↓j
                mov     eax, [rbx+58h]
                and     eax, 1FFFFh
                mov     [rbp+57h+var_88], eax
                and     dword ptr [rbx+58h], 0FFFE0000h
                and     byte ptr [rbx+19h], 0FEh
                mov     [rbx+20h], r14
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rbx, [rdi+320h]
                imul    rbx
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r15b, 1
                jnz     loc_14043EC89
                movzx   eax, byte ptr [rdi+318h]
                bts     eax, edx
                mov     [rdi+318h], al

loc_140267E29:                          ; CODE XREF: sub_140267B50+3FB↓j
                                        ; sub_140267B50+1D7146↓j
                dec     byte ptr [rdi+31Ah]
                lea     r8, [rbp+57h+var_88]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402456E0
                add     word ptr [rdi+1E6h], 1
                jnz     short loc_140267E58
                lea     rax, [rdi+98h]
                cmp     [rax], rax
                jnz     loc_140268195

loc_140267E58:                          ; CODE XREF: sub_140267B50+2F6↑j
                                        ; sub_140267B50+64A↓j
                mov     rcx, [rbp+57h+var_A0]
                call    sub_140245770
                jmp     loc_140267CBE
; ---------------------------------------------------------------------------

loc_140267E66:                          ; CODE XREF: sub_140267B50+38↑j
                mov     rax, gs:188h
                mov     rcx, [r15]
                mov     dword ptr [rbp+57h+arg_0], r14d
                mov     [rbp+57h+var_A0], rax
                dec     word ptr [rax+1E6h]
                mov     [rbp+57h+var_A8], rcx
                add     rcx, 28h ; '('
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                jmp     loc_140267B9D
; ---------------------------------------------------------------------------

loc_140267E95:                          ; CODE XREF: sub_140267B50+98↑j
                inc     qword ptr [r15+28h]
                inc     dword ptr [r15+58h]
                or      edi, 4
                mov     ecx, edi
                mov     [rbp+57h+var_C0], ecx
                jmp     loc_140267BF0
; ---------------------------------------------------------------------------

loc_140267EAA:                          ; CODE XREF: sub_140267B50+1B6↑j
                mov     rcx, [rdi+0B8h]
                call    sub_140245840
                mov     [rbp+57h+var_B0], eax
                jmp     loc_140267D0C
; ---------------------------------------------------------------------------

loc_140267EBE:                          ; CODE XREF: sub_140267B50+CC↑j
                mov     eax, [rsi+34h]
                lea     rcx, [r15+48h]
                and     eax, 3FFFFFFFh
                mov     [rbp+57h+var_60], eax
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043E759

loc_140267EE0:                          ; CODE XREF: sub_140267B50+1D6C0B↓j
                                        ; sub_140267B50+1D6C17↓j ...
                movzx   eax, r12b
                mov     cr8, rax
                cmp     dword ptr [rbp+57h+arg_0], r14d
                jz      loc_140267F91

loc_140267EF2:                          ; CODE XREF: sub_140267B50+5ED↓j
                test    dil, 2
                jnz     loc_14043E899
                mov     r9d, [rbp+57h+arg_18]
                mov     rcx, rsi
                mov     edx, [rbp+57h+var_C0]
                mov     r8d, r9d
                sub     r8d, [rbp+57h+var_60]
                call    sub_1402FB078
                mov     [rbp+57h+arg_18], eax
                test    eax, eax
                js      loc_1402681BE
                cmp     dword ptr [rbp+57h+arg_0], r14d
                jz      loc_140268142

loc_140267F27:                          ; CODE XREF: sub_140267B50+6F7↓j
                lea     rcx, [r15+48h]
                call    ExAcquireSpinLockExclusive
                jmp     loc_140267C5C
; ---------------------------------------------------------------------------

loc_140267F35:                          ; CODE XREF: sub_140267B50+222↑j
                                        ; sub_140267B50+22E↑j ...
                bsr     ecx, edx
                mov     [rbp+57h+var_8C], ecx
                jnz     loc_140267D56

loc_140267F41:                          ; CODE XREF: sub_140267B50+1FA↑j
                mov     ecx, [rbp+57h+var_B0]

loc_140267F44:                          ; CODE XREF: sub_140267B50+264↑j
                mov     eax, [rdi+78h]
                bt      eax, 10h
                jb      loc_140267E29
                jmp     loc_14043EC9B
; ---------------------------------------------------------------------------

loc_140267F56:                          ; CODE XREF: sub_140267B50+11F↑j
                sub     rax, rcx
                mov     [rbp+57h+arg_8], rax

loc_140267F5D:                          ; CODE XREF: sub_140267B50+113↑j
                mov     rax, [rbp+57h+var_70]
                mov     rsi, [rsi+10h]
                mov     [rbp+57h+var_78], rax
                cmp     dword ptr [rbp+57h+arg_0], r14d
                jz      loc_14043E871

loc_140267F73:                          ; CODE XREF: sub_140267B50+68C↓j
                                        ; sub_140267B50+696↓j
                mov     ecx, [rbp+57h+var_C0]

loc_140267F76:                          ; CODE XREF: sub_140267B50+1D6D2E↓j
                test    rsi, rsi
                jnz     loc_140267C0E
                jmp     loc_140267C75
; ---------------------------------------------------------------------------

loc_140267F84:                          ; CODE XREF: sub_140267B50+198↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_140267CEE
; ---------------------------------------------------------------------------

loc_140267F91:                          ; CODE XREF: sub_140267B50+39C↑j
                mov     rcx, [rbp+57h+var_A8]
                mov     rax, rbx
                add     rcx, 28h ; '('
                mov     [rbp+57h+var_B8], rcx
                lock xadd [rcx], rax
                and     al, 6
                cmp     al, 2
                jz      loc_1402681F1

loc_140267FAF:                          ; CODE XREF: sub_140267B50+6AA↓j
                mov     [rbp+57h+var_AC], r14d
                mov     rax, gs:188h
                mov     [rbp+57h+var_68], rax
                call    sub_140245330
                cmp     eax, 1
                jz      loc_14026817D
                mov     r9d, 0FFFFFFFFh

loc_140267FD4:                          ; CODE XREF: sub_140267B50+640↓j
                mov     r10, [rbp+57h+var_68]
                dec     word ptr [r10+1E6h]
                inc     byte ptr [r10+31Ah]
                movzx   eax, byte ptr [r10+31Ah]
                mov     r11, [rbp+57h+var_B8]
                mov     byte ptr [rbp+57h+arg_10], al
                mov     r8, r11
                mov     rax, 7FFFFFFFFFFFFFFCh
                and     r8, rax
                movsx   eax, byte ptr [r10+318h]
                movsx   edx, byte ptr [r10+366h]
                or      edx, eax
                xor     edx, 3Fh
                bsr     ecx, edx
                mov     [rbp+57h+var_98], ecx
                jz      loc_1402681AB

loc_140268027:                          ; CODE XREF: sub_140267B50+655↓j
                mov     eax, 1
                shl     eax, cl
                lea     rcx, [rcx+rcx*2]
                shl     rcx, 5
                not     eax
                add     rcx, [r10+320h]
                and     edx, eax
                mov     [rbp+57h+var_58], rcx
                test    byte ptr [rcx+1Ah], 1
                jz      loc_14026819F
                mov     eax, [rcx+20h]
                test    al, 1
                jnz     loc_14026819F
                mov     rax, [rcx+20h]
                and     rax, [rbp+57h+var_48]
                cmp     rax, r8
                jnz     loc_14026819F
                cmp     [rcx+28h], r9d
                jnz     loc_14026819F
                and     byte ptr [rcx+1Ah], 0FEh
                mov     rax, [rcx+20h]
                test    rax, rax
                jz      loc_14026819F
                test    rcx, rcx
                jz      loc_1402681AB
                movzx   eax, byte ptr [rcx+20h]
                or      al, 2
                mov     [rcx+20h], al
                mov     rax, [rcx+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_1402681FF

loc_1402680A8:                          ; CODE XREF: sub_140267B50+6C0↓j
                mov     [rbp+57h+var_AC], r14d
                mov     eax, [rcx+58h]
                and     eax, 1FFFFh
                mov     [rbp+57h+var_AC], eax
                and     dword ptr [rcx+58h], 0FFFE0000h
                and     byte ptr [rcx+19h], 0FEh
                mov     [rcx+20h], r14
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rcx, [r10+320h]
                imul    rcx
                mov     eax, 1
                sar     rdx, 4
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rcx, rdx
                shl     al, cl
                cmp     byte ptr [rbp+57h+arg_10], 1
                jnz     loc_14043E7BC
                or      [r10+318h], al

loc_140268100:                          ; CODE XREF: sub_140267B50+663↓j
                                        ; sub_140267B50+1D6C74↓j
                dec     byte ptr [r10+31Ah]
                lea     r8, [rbp+57h+var_AC]
                mov     rdx, r11
                mov     rcx, r10
                call    sub_1402456E0
                mov     rcx, [rbp+57h+var_68]
                add     word ptr [rcx+1E6h], 1
                jnz     short loc_140268134
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jnz     loc_140268215

loc_140268134:                          ; CODE XREF: sub_140267B50+5D2↑j
                                        ; sub_140267B50+6CA↓j
                mov     rcx, [rbp+57h+var_A0]
                call    sub_140245770
                jmp     loc_140267EF2
; ---------------------------------------------------------------------------

loc_140268142:                          ; CODE XREF: sub_140267B50+3D1↑j
                mov     rax, [rbp+57h+var_A0]
                dec     word ptr [rax+1E6h]
                mov     rcx, [rbp+57h+var_A8]
                xor     edx, edx
                add     rcx, 28h ; '('
                call    ExAcquirePushLockExclusiveEx
                lea     rcx, [r15+48h]
                call    ExAcquireSpinLockExclusive
                jmp     loc_140267C5C
; ---------------------------------------------------------------------------

loc_14026816A:                          ; CODE XREF: sub_140267B50+27D↑j
                mov     rcx, rbx
                call    sub_14031EC80
                mov     r9d, 1
                jmp     loc_140267DD3
; ---------------------------------------------------------------------------

loc_14026817D:                          ; CODE XREF: sub_140267B50+478↑j
                mov     rcx, [rbp+57h+var_68]
                mov     rcx, [rcx+0B8h]
                call    sub_140245840
                mov     r9d, eax
                jmp     loc_140267FD4
; ---------------------------------------------------------------------------

loc_140268195:                          ; CODE XREF: sub_140267B50+302↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_140267E58
; ---------------------------------------------------------------------------

loc_14026819F:                          ; CODE XREF: sub_140267B50+4F9↑j
                                        ; sub_140267B50+504↑j ...
                bsr     ecx, edx
                mov     [rbp+57h+var_98], ecx
                jnz     loc_140268027

loc_1402681AB:                          ; CODE XREF: sub_140267B50+4D1↑j
                                        ; sub_140267B50+539↑j
                mov     eax, [r10+78h]
                bt      eax, 10h
                jb      loc_140268100
                jmp     loc_14043E883
; ---------------------------------------------------------------------------

loc_1402681BE:                          ; CODE XREF: sub_140267B50+3C7↑j
                cmp     eax, 0C000020Ah
                jnz     loc_14043EEF5
                cmp     dword ptr [rbp+57h+arg_0], r14d
                jz      loc_14043E7C9

loc_1402681D3:                          ; CODE XREF: sub_140267B50+1D6C94↓j
                lea     rcx, [r15+48h]
                call    ExAcquireSpinLockExclusive
                jmp     loc_140267F73
; ---------------------------------------------------------------------------

loc_1402681E1:                          ; CODE XREF: sub_140267B50+EF↑j
                cmp     eax, 0C000020Ah
                jz      loc_140267F73
                jmp     loc_14043E8A3
; ---------------------------------------------------------------------------

loc_1402681F1:                          ; CODE XREF: sub_140267B50+459↑j
                call    ExfTryToWakePushLock
                mov     rcx, [rbp+57h+var_B8]
                jmp     loc_140267FAF
; ---------------------------------------------------------------------------

loc_1402681FF:                          ; CODE XREF: sub_140267B50+552↑j
                call    sub_14031EC80
                mov     rcx, [rbp+57h+var_58]
                mov     r10, [rbp+57h+var_68]
                mov     r11, [rbp+57h+var_B8]
                jmp     loc_1402680A8
; ---------------------------------------------------------------------------

loc_140268215:                          ; CODE XREF: sub_140267B50+5DE↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_140268134
; ---------------------------------------------------------------------------

loc_14026821F:                          ; CODE XREF: sub_140267B50+1D6CB8↓j
                                        ; sub_140267B50+1D6CC0↓j ...
                movzx   eax, r12b
                mov     cr8, rax
                mov     r9d, [rbp+57h+arg_10]
                xor     edx, edx
                sub     r9d, [rbp+57h+arg_18]
                mov     rcx, rsi
                mov     r8, [rsi+8]
                mov     dword ptr [rsp+0F0h+var_D0], r14d
                call    sub_1408D0BF0
                mov     [rbp+57h+arg_18], eax
                test    eax, eax
                jns     loc_140267F27
                jmp     loc_14043EEF5
sub_140267B50   endp

; ---------------------------------------------------------------------------
algn_140268252:                         ; DATA XREF: .rdata:000000014005C000↑o
                                        ; .pdata:00000001400CDD28↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140268260   proc near               ; CODE XREF: sub_140267B50+E5↑p
                                        ; sub_1402A3920+1A702F↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043EF66 SIZE 0000043A BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 28h
                mov     rdi, [rcx]
                xor     r14d, r14d
                xor     r13d, r13d
                mov     [rsp+68h+arg_18], r14
                xor     r12d, r12d
                mov     [rsp+68h+arg_0], rdi
                movzx   ebp, r8b
                mov     esi, edx
                cmp     [rdi+40h], r12
                mov     rbx, rcx
                setnz   r13b
                cmp     r8b, 11h
                jz      loc_14043EF66

loc_1402682A5:                          ; CODE XREF: sub_140268260+1D6D18↓j
                movzx   eax, bpl
                inc     eax
                mov     [rsp+68h+arg_10], eax

loc_1402682B2:                          ; CODE XREF: sub_140268260+1D6D57↓j
                                        ; sub_140268260+1D6DFC↓j ...
                cmp     qword ptr [rbx+8], 0
                mov     r15, [rbx]
                jz      loc_14043EF92
                xor     r14d, r14d
                mov     edx, esi
                cmp     [r15+40h], r14
                mov     rcx, rbx
                setnz   r14b
                call    sub_140268340
                mov     edi, eax
                cmp     eax, 1
                jle     short loc_1402682F4
                test    r14d, r14d
                jz      short loc_1402682F4
                mov     eax, [r15+38h]
                test    al, 20h
                jnz     short loc_1402682F4
                test    byte ptr [rbx+22h], 8
                jnz     short loc_140268326

loc_1402682EF:                          ; CODE XREF: sub_140268260+CE↓j
                or      word ptr [rbx+20h], 1

loc_1402682F4:                          ; CODE XREF: sub_140268260+7A↑j
                                        ; sub_140268260+7F↑j ...
                cmp     edi, 2
                jl      loc_14043EF7D
                jnz     short loc_140268309
                test    sil, 20h
                jnz     loc_14043F1B5

loc_140268309:                          ; CODE XREF: sub_140268260+9D↑j
                                        ; sub_140268260+1D6F60↓j
                test    r12d, r12d
                jnz     loc_14043F26E

loc_140268312:                          ; CODE XREF: sub_140268260+1D6FF9↓j
                                        ; sub_140268260+1D7009↓j ...
                xor     eax, eax

loc_140268314:                          ; CODE XREF: sub_140268260+1D6EB3↓j
                                        ; sub_140268260+1D6F50↓j ...
                add     rsp, 28h
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

loc_140268326:                          ; CODE XREF: sub_140268260+8D↑j
                mov     rcx, rbx
                call    sub_1402FBE44
                jmp     short loc_1402682EF
sub_140268260   endp

; ---------------------------------------------------------------------------
algn_140268330:                         ; DATA XREF: .rdata:000000014005C02C↑o
                                        ; .pdata:00000001400CDD34↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140268340   proc near               ; CODE XREF: sub_140231440+215↑p
                                        ; sub_140267ABC+2A↑p ...

var_18          = qword ptr -18h
var_8           = qword ptr -8

; FUNCTION CHUNK AT 000000014043F3A0 SIZE 0000008F BYTES

                sub     rsp, 38h
                mov     r9, [rcx]
                mov     r8d, edx
                mov     r10, rcx
                mov     r11d, 2
                test    dl, 8
                jnz     short loc_140268382

loc_140268358:                          ; CODE XREF: sub_140268340+4C↓j
                                        ; sub_140268340+A5↓j ...
                mov     eax, [r9+38h]
                test    al, 20h
                jnz     short loc_140268379
                cmp     qword ptr [r9+40h], 0
                jz      short loc_140268379
                test    byte ptr [r10+22h], 1
                jnz     short loc_140268379
                add     qword ptr [r10+60h], 1
                jz      loc_14043F411

loc_140268379:                          ; CODE XREF: sub_140268340+1E↑j
                                        ; sub_140268340+25↑j ...
                mov     eax, r11d

loc_14026837C:                          ; CODE XREF: sub_140268340+1D707C↓j
                                        ; sub_140268340+1D70B6↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140268382:                          ; CODE XREF: sub_140268340+16↑j
                mov     rcx, r9
                call    sub_140268430
                test    eax, eax
                jnz     short loc_140268358
                movzx   ecx, word ptr [r9+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     ecx, 3FFh

loc_1402683A0:                          ; DATA XREF: .rdata:000000014005C04C↑o
                                        ; .rdata:000000014005C05C↑o ...
                mov     [rsp+38h+var_8], rbx
                mov     rbx, [rax+rcx*8]
                test    r8b, r8b
                js      short loc_1402683F0
                bt      r8d, 8
                jb      short loc_1402683F9
                test    r8b, 10h
                jnz     short loc_140268424
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, cs:qword_140C4E4C8
                movzx   edx, word ptr [rcx+72Eh]
                mov     rax, [rax+rdx*8]

loc_1402683DD:                          ; CODE XREF: sub_140268340+B7↓j
                                        ; sub_140268340+E2↓j ...
                cmp     rax, rbx
                mov     rbx, [rsp+38h+var_8]
                jz      loc_140268358

loc_1402683EB:                          ; DATA XREF: .pdata:00000001400CDD4C↑o
                                        ; .pdata:00000001400CDD58↑o
                jmp     loc_14043F3A0
; ---------------------------------------------------------------------------

loc_1402683F0:                          ; CODE XREF: sub_140268340+6C↑j
                                        ; DATA XREF: .pdata:00000001400CDD58↑o ...
                lea     rax, unk_140C50C00
                jmp     short loc_1402683DD
; ---------------------------------------------------------------------------

loc_1402683F9:                          ; CODE XREF: sub_140268340+73↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+558h]
                movzx   ecx, word ptr [rax+1AEh]
                mov     rax, cs:qword_140C4E4C8
                mov     rax, [rax+rcx*8]
                jmp     short loc_1402683DD
; ---------------------------------------------------------------------------

loc_140268424:                          ; CODE XREF: sub_140268340+79↑j
                xor     eax, eax
                jmp     short loc_1402683DD
sub_140268340   endp

; ---------------------------------------------------------------------------
algn_140268428:                         ; DATA XREF: .pdata:00000001400CDD64↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140268430   proc near               ; CODE XREF: sub_140267320+6E↑p
                                        ; sub_140268340+45↑p ...
                test    dword ptr [rcx+38h], 40000000h
                jnz     short loc_14026844D
                cmp     qword ptr [rcx+40h], 0
                jnz     short loc_140268449
                test    dword ptr [rcx+5Ch], 10000h
                jnz     short loc_14026844D

loc_140268449:                          ; CODE XREF: sub_140268430+E↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14026844D:                          ; CODE XREF: sub_140268430+7↑j
                                        ; sub_140268430+17↑j
                mov     eax, 1
                retn
sub_140268430   endp

; ---------------------------------------------------------------------------
                align 4
byte_140268454  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDD70↑o

; =============== S U B R O U T I N E =======================================


sub_14026845C   proc near               ; CODE XREF: sub_140659560+189↓p
                                        ; sub_14065BC40+5D↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014043F430 SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, [rcx+38h]
                mov     rdi, rcx
                test    al, 20h
                jnz     short loc_14026847C
                cmp     qword ptr [rcx+40h], 0
                jnz     short loc_1402684A3

loc_14026847C:                          ; CODE XREF: sub_14026845C+17↑j
                                        ; sub_14026845C+4B↓j
                mov     rcx, [rcx]
                movzx   eax, word ptr [rcx+0Ch]
                mov     ecx, [rcx+8]
                and     eax, 3FFh
                shl     rax, 20h
                or      rax, rcx

loc_140268492:                          ; CODE XREF: sub_14026845C+AB↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402684A3:                          ; CODE XREF: sub_14026845C+1E↑j
                bt      eax, 0Ah
                jb      short loc_14026847C
                lea     rbx, [rcx+48h]
                mov     rcx, rbx
                call    ExAcquireSpinLockShared
                mov     edx, 1
                movzx   esi, al
                mov     rcx, rdi
                call    sub_14032BB9C
                mov     rcx, rbx
                mov     edx, [rax+24h]
                movzx   r8d, word ptr [rax+20h]
                mov     edi, [rax+2Ch]
                and     r8, 0FFFFFFFFFFFFFFC0h
                shl     r8, 1Ah
                or      r8, rdx
                mov     edx, [rax+34h]
                and     edx, 3FFFFFFFh
                sub     rdi, rdx
                add     rdi, r8
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043F430

loc_140268500:                          ; CODE XREF: sub_14026845C+1D6FD6↓j
                                        ; sub_14026845C+1D6FE2↓j ...
                mov     cr8, rsi
                mov     rax, rdi
                jmp     short loc_140268492
sub_14026845C   endp

; ---------------------------------------------------------------------------
algn_140268509:                         ; DATA XREF: .rdata:000000014005C0A4↑o
                                        ; .pdata:00000001400CDD7C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140268510   proc near               ; CODE XREF: sub_140659560+164↓p
                                        ; sub_14065FA54+50↓p ...

var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014043F494 SIZE 00000127 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xorps   xmm0, xmm0
                lea     rsi, [rcx+48h]
                mov     rbx, rcx
                xor     eax, eax
                mov     rcx, rsi
                mov     [rbp+var_10], rax
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                call    ExAcquireSpinLockExclusive
                mov     edx, [rbx+38h]
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     dil, al
                test    dl, 4
                jnz     loc_14043F494

loc_14026855E:                          ; CODE XREF: sub_140268510+1D7043↓j
                inc     qword ptr [rbx+28h]
                mov     rcx, rsi
                inc     qword ptr [rbx+30h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043F558

loc_14026857C:                          ; CODE XREF: sub_140268510+1D704A↓j
                                        ; sub_140268510+1D7056↓j ...
                movzx   eax, dil
                mov     cr8, rax
                mov     rbx, [rsp+50h+arg_0]
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                mov     r14, [rsp+50h+arg_18]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140268510   endp

byte_14026859F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014005C0D0↑o
                                        ; .pdata:00000001400CDD88↑o

; =============== S U B R O U T I N E =======================================


sub_1402685A8   proc near               ; CODE XREF: sub_14026B9D8+15↓p
                                        ; sub_14054DE1C+7C↓p ...
                cmp     qword ptr [rcx+40h], 0
                jz      short loc_1402685B3

loc_1402685AF:                          ; CODE XREF: sub_1402685A8+12↓j
                                        ; sub_1402685A8+1B↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402685B3:                          ; CODE XREF: sub_1402685A8+5↑j
                test    dword ptr [rcx+38h], 400h
                jnz     short loc_1402685AF
                test    dword ptr [rcx+5Ch], 20000h
                jz      short loc_1402685AF
                mov     eax, 1
                retn
sub_1402685A8   endp

; ---------------------------------------------------------------------------
                align 4
algn_1402685CC:                         ; DATA XREF: .pdata:00000001400CDD94↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402685E0   proc near               ; CODE XREF: sub_14028CE50+219↓p
                                        ; DATA XREF: .rdata:000000014005C0F8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043F5BC SIZE 00000029 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                movzx   edx, word ptr [rcx+0AEh]
                mov     rbx, rcx
                mov     rax, cs:qword_140C4E4C8
                mov     rdi, [rax+rdx*8]
                mov     edx, 420h
                mov     rcx, rdi
                call    sub_140269070
                test    eax, eax
                jz      loc_14026870D
                cmp     qword ptr [rdi+1C00h], 420h
                jl      loc_14026870D
                mov     rax, cs:qword_140C4C748
                mov     rcx, cs:qword_140C4C740
                sub     rcx, rax
                cmp     rcx, 800h
                jb      loc_14026870D
                mov     ebp, 1000h

loc_140268652:                          ; CODE XREF: sub_1402685E0+132↓j
                movzx   eax, byte ptr [rbx+0B8h]
                and     al, 7
                cmp     al, 2
                jz      loc_140268701
                lea     rdi, [rbx+0E8h]

loc_14026866A:                          ; CODE XREF: sub_1402685E0+128↓j
                mov     rsi, [rdi]
                test    rsi, rsi
                jnz     short loc_1402686D8

loc_140268672:                          ; CODE XREF: sub_1402685E0+107↓j
                                        ; sub_1402685E0+10D↓j ...
                mov     rax, gs:20h
                mov     r8d, 63416D4Dh
                mov     rdx, rbp
                mov     rcx, [rax+0C0h]
                movzx   r9d, word ptr [rcx+92h]
                mov     ecx, 40h ; '@'
                bts     r9d, 1Fh
                call    sub_1402687E0
                mov     rdx, rax
                test    rax, rax
                jz      loc_14043F5BC
                mov     r8, rbp
                mov     [rdi], rax
                mov     rcx, rbx
                call    sub_140268A18
                mov     rax, rdx
                mov     [rdx], rsi

loc_1402686C2:                          ; CODE XREF: sub_1402685E0+1D7000↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402686D8:                          ; CODE XREF: sub_1402685E0+90↑j
                mov     rax, [rsi]
                cmp     rbp, 200h
                jz      short loc_1402686EF
                test    rax, rax
                jz      short loc_140268672
                cmp     qword ptr [rax], 0
                jz      short loc_140268672

loc_1402686EF:                          ; CODE XREF: sub_1402685E0+102↑j
                mov     rcx, rsi
                call    sub_1402A9060
                xor     esi, esi
                mov     [rdi], rsi
                jmp     loc_140268672
; ---------------------------------------------------------------------------

loc_140268701:                          ; CODE XREF: sub_1402685E0+7D↑j
                lea     rdi, unk_140C4F628
                jmp     loc_14026866A
; ---------------------------------------------------------------------------

loc_14026870D:                          ; CODE XREF: sub_1402685E0+38↑j
                                        ; sub_1402685E0+49↑j ...
                mov     ebp, 200h
                jmp     loc_140268652
sub_1402685E0   endp

; ---------------------------------------------------------------------------
algn_140268717:                         ; DATA XREF: .rdata:000000014005C0F8↑o
                                        ; .pdata:00000001400CDDA0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140268720   proc near               ; CODE XREF: sub_14020C4F4+47D↑p
                                        ; sub_14021FD10+522↑p ...

var_28          = dword ptr -28h
var_18          = byte ptr -18h
var_14          = dword ptr -14h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                mov     rax, gs:20h
                xor     edi, edi
                mov     rbp, rdx
                mov     [rsp+48h+var_14], edi
                mov     esi, r8d
                mov     [rsp+48h+var_18], dil
                lea     r8, [r11-14h]
                mov     [rsp+48h+arg_18], dil
                mov     r9, [rax+0C0h]
                lea     edx, [rdi+1]
                lea     rax, [r11+20h]
                mov     [r11-28h], rax
                movzx   ebx, word ptr [r9+92h]
                lea     r9, [r11-18h]
                call    sub_1409B60D0
                test    eax, eax
                js      short loc_1402687C3
                cmp     [rsp+48h+arg_18], dil
                jnz     short loc_1402687C8

loc_140268785:                          ; CODE XREF: sub_140268720+AD↓j
                cmp     [rsp+48h+var_18], 0
                mov     r8d, esi
                mov     ecx, [rsp+48h+var_14]
                mov     rdx, rbp
                jnz     short loc_1402687BC
                bts     ebx, 1Fh
                mov     [rsp+48h+var_28], edi
                mov     r9d, ebx
                call    sub_140236960

loc_1402687A6:                          ; CODE XREF: sub_140268720+A1↓j
                                        ; sub_140268720+A6↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402687BC:                          ; CODE XREF: sub_140268720+74↑j
                call    ExAllocatePoolWithQuotaTag
                jmp     short loc_1402687A6
; ---------------------------------------------------------------------------

loc_1402687C3:                          ; CODE XREF: sub_140268720+5C↑j
                mov     rax, rdi
                jmp     short loc_1402687A6
; ---------------------------------------------------------------------------

loc_1402687C8:                          ; CODE XREF: sub_140268720+63↑j
                mov     edi, 1
                jmp     short loc_140268785
sub_140268720   endp

; ---------------------------------------------------------------------------
algn_1402687CF:                         ; DATA XREF: .pdata:00000001400CDDAC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402687E0   proc near               ; CODE XREF: sub_1402685E0+BD↑p
                                        ; sub_1403AB224+88↓p ...

var_28          = qword ptr -28h
var_18          = byte ptr -18h
var_17          = byte ptr -17h
var_14          = dword ptr -14h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                xor     ebx, ebx
                mov     ebp, r9d
                mov     [rax-14h], ebx
                mov     rsi, rdx
                mov     [rax-17h], bl
                mov     edi, r8d
                mov     [rax-18h], bl
                lea     rax, [rax-18h]
                lea     edx, [rbx+1]
                mov     [rsp+48h+var_28], rax
                lea     r9, [rsp+48h+var_17]
                lea     r8, [rsp+48h+var_14]
                call    sub_1409B60D0
                test    eax, eax
                js      short loc_140268860
                cmp     [rsp+48h+var_18], bl
                jnz     short loc_140268865

loc_14026882D:                          ; CODE XREF: sub_1402687E0+8A↓j
                cmp     [rsp+48h+var_17], 0
                mov     r8d, edi
                mov     ecx, [rsp+48h+var_14]
                mov     rdx, rsi
                jnz     short loc_14026886C
                mov     r9d, ebp
                mov     dword ptr [rsp+48h+var_28], ebx
                call    sub_140236960

loc_14026884A:                          ; CODE XREF: sub_1402687E0+83↓j
                                        ; sub_1402687E0+91↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140268860:                          ; CODE XREF: sub_1402687E0+45↑j
                mov     rax, rbx
                jmp     short loc_14026884A
; ---------------------------------------------------------------------------

loc_140268865:                          ; CODE XREF: sub_1402687E0+4B↑j
                mov     ebx, 1
                jmp     short loc_14026882D
; ---------------------------------------------------------------------------

loc_14026886C:                          ; CODE XREF: sub_1402687E0+5C↑j
                call    ExAllocatePoolWithQuotaTag
                jmp     short loc_14026884A
sub_1402687E0   endp

; ---------------------------------------------------------------------------
algn_140268873:                         ; DATA XREF: .pdata:00000001400CDDB8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140268880   proc near               ; CODE XREF: sub_1402335C0+207↑p
                                        ; sub_140269F00+B9↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043F5E6 SIZE 000000EC BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, r8d
                mov     [rsp+38h+arg_8], 0
                mov     edi, edx
                mov     rbx, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     r14, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043F5E6

loc_1402688C1:                          ; CODE XREF: sub_140268880+1D6D68↓j
                                        ; sub_140268880+1D6D72↓j ...
                mov     eax, [rbx+30h]

loc_1402688C4:                          ; CODE XREF: sub_140268880+59↓j
                                        ; sub_140268880+1D6DB5↓j ...
                test    al, 1
                jnz     loc_14043F627
                mov     ecx, eax
                and     ecx, 0FFFFFFFDh
                or      ecx, 1
                lock cmpxchg [rbx+30h], ecx
                jnz     short loc_1402688C4
                mov     eax, [rbx+30h]
                mov     r10d, edi
                mov     r11d, edi
                and     r10d, 1
                and     r11d, 2
                and     edi, 4
                mov     r9d, ebp
                and     r9d, 1

loc_1402688F6:                          ; CODE XREF: sub_140268880+B2↓j
                mov     ecx, eax
                test    r10d, r10d
                jz      short loc_140268913
                mov     r9d, ebp
                mov     edx, eax
                and     r9d, 1
                and     edx, 0FFFFFFF7h
                lea     ecx, ds:0[r9*8]
                or      ecx, edx

loc_140268913:                          ; CODE XREF: sub_140268880+7B↑j
                test    r11d, r11d
                jz      short loc_14026896D
                lea     edx, ds:0[r9*4]
                and     ecx, 0FFFFFFFBh
                or      ecx, edx

loc_140268925:                          ; CODE XREF: sub_140268880+F4↓j
                test    edi, edi
                jnz     loc_14043F658

loc_14026892D:                          ; CODE XREF: sub_140268880+1D6DEA↓j
                lock cmpxchg [rbx+30h], ecx
                jnz     short loc_1402688F6
                mov     eax, [rbx+30h]

loc_140268937:                          ; CODE XREF: sub_140268880+C1↓j
                mov     ecx, eax
                and     ecx, 0FFFFFFFCh
                lock cmpxchg [rbx+30h], ecx
                jnz     short loc_140268937
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043F66F

loc_140268951:                          ; CODE XREF: sub_140268880+1D6DF1↓j
                                        ; sub_140268880+1D6DFD↓j ...
                movzx   eax, sil
                mov     cr8, rax
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14026896D:                          ; CODE XREF: sub_140268880+96↑j
                mov     r9d, ebp
                and     r9d, 1
                jmp     short loc_140268925
sub_140268880   endp

; ---------------------------------------------------------------------------
byte_140268976  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014005C180↑o
                                        ; .pdata:00000001400CDDC4↑o

; =============== S U B R O U T I N E =======================================


sub_14026897C   proc near               ; CODE XREF: sub_14055C010+69↓p
                                        ; sub_14065A100+D2↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     rbp, rcx
                cmp     r8d, 1
                jnz     short loc_140268A09
                mov     rax, gs:188h
                lea     rdi, unk_140C4F600
                mov     rbx, [rax+0B8h]
                mov     al, [rbx+738h]
                add     rbx, 680h
                and     al, 7
                cmp     al, 2
                jz      short loc_1402689CD
                lea     rdi, [rbx+0C0h]

loc_1402689CD:                          ; CODE XREF: sub_14026897C+48↑j
                mov     rcx, rdi
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rdi+4], 0
                mov     dl, al

loc_1402689DB:                          ; CODE XREF: sub_14026897C+91↓j
                mov     rax, [rbp+38h]
                mov     [rsi], rax
                mov     [rbp+38h], rsi
                cmp     dl, 11h
                jz      short loc_1402689F3
                mov     rcx, rbx
                call    sub_140234180

loc_1402689F3:                          ; CODE XREF: sub_14026897C+6D↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140268A09:                          ; CODE XREF: sub_14026897C+1E↑j
                mov     dl, 11h
                xor     ebx, ebx
                jmp     short loc_1402689DB
sub_14026897C   endp

; ---------------------------------------------------------------------------
byte_140268A0F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400CDDD0↑o

; =============== S U B R O U T I N E =======================================


sub_140268A18   proc near               ; CODE XREF: sub_1402685E0+D7↑p
                                        ; sub_14070D40C+F6↓p
                                        ; DATA XREF: ...
                xor     r9d, r9d
                lea     rax, [rdx+48h]
                mov     [rdx+20h], rax
                lea     rax, [r8-8]
                add     rax, rdx
                mov     [rdx+8], r9d
                mov     [rax], r9
                mov     [rdx+30h], rax
                add     rax, 0FFFFFFFFFFFFFFF8h
                mov     [rdx+28h], rax
                mov     [rdx], r9
                mov     [rdx+40h], r9d
                mov     al, [rcx+0B8h]
                and     al, 7
                cmp     al, 2
                jnb     short loc_140268A72
                test    al, al
                jnz     short loc_140268A78
                lea     rax, [rcx-680h]
                mov     [rdx+38h], rax

loc_140268A5F:                          ; CODE XREF: sub_140268A18+5E↓j
                                        ; sub_140268A18+71↓j
                mov     rax, 0FFFFF78000000320h
                mov     rax, [rax]
                mov     [rdx+10h], rax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140268A72:                          ; CODE XREF: sub_140268A18+36↑j
                mov     [rdx+38h], r9
                jmp     short loc_140268A5F
; ---------------------------------------------------------------------------

loc_140268A78:                          ; CODE XREF: sub_140268A18+3A↑j
                mov     qword ptr [rdx+38h], 1
                mov     eax, [rcx-0F8h]
                mov     [rdx+40h], eax
                jmp     short loc_140268A5F
sub_140268A18   endp

; ---------------------------------------------------------------------------
algn_140268A8B:                         ; DATA XREF: .pdata:00000001400CDDDC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140268AA0   proc near               ; CODE XREF: sub_140302D40+4B6↓p
                                        ; sub_1403620A4+D7↓p ...

var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = word ptr -0C8h
var_C6          = dword ptr -0C6h
var_C2          = word ptr -0C2h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014043F6D2 SIZE 00000185 BYTES

                mov     r11, rsp
                push    rbx
                push    rsi
                push    r12
                push    r13
                sub     rsp, 0D8h
                xor     eax, eax
                mov     [rsp+0F8h+arg_18], 0
                mov     [rsp+0F8h+var_C6], eax
                mov     ebx, r9d
                mov     [rsp+0F8h+var_C2], ax
                mov     r12, rdx
                mov     [r11-74h], eax
                mov     r13, r8
                mov     [rsp+0F8h+var_B0], rax
                mov     [rsp+0F8h+var_A8], rax
                lea     rax, [rsp+0F8h+var_A0]
                mov     [rsp+0F8h+var_98], rax
                lea     rax, [rsp+0F8h+var_A0]
                mov     [rsp+0F8h+var_A0], rax
                lea     rax, [rsp+0F8h+var_90]
                mov     [rsp+0F8h+var_88], rax
                lea     rax, [rsp+0F8h+var_90]
                mov     [rsp+0F8h+var_90], rax
                mov     [rsp+0F8h+var_C8], 1
                mov     [rsp+0F8h+var_C0], rdx
                mov     [rsp+0F8h+var_B8], rcx
                mov     qword ptr [r11-80h], 0
                mov     qword ptr [r11-70h], 0
                mov     [r11-78h], ebx
                mov     rsi, gs:188h
                mov     [rsp+0F8h+arg_0], 0
                mov     [rsp+0F8h+arg_8], rsi
                movzx   edx, byte ptr [rsi+51Eh]
                mov     rcx, [rsi+0B8h]
                cmp     dl, 2
                jnb     loc_14043F6D2

loc_140268B5D:                          ; DATA XREF: .rdata:000000014005C1BC↑o
                                        ; .rdata:000000014005C1D4↑o ...
                mov     [r11-38h], r15
                cmp     r8, 1
                jz      loc_140268FBC
                movzx   eax, byte ptr [r8+0B8h]
                and     al, 7
                cmp     al, 1
                jnz     loc_140268F75
                mov     rax, [rcx+558h]
                test    rax, rax
                jz      loc_14043F84D
                movzx   ecx, word ptr [rax+1AEh]

loc_140268B94:                          ; CODE XREF: sub_140268AA0+4E4↓j
                mov     rax, cs:qword_140C4E4C8
                mov     r15, [rax+rcx*8]

loc_140268B9F:                          ; CODE XREF: sub_140268AA0+523↓j
                xorps   xmm0, xmm0

loc_140268BA2:                          ; DATA XREF: .rdata:000000014005C1D4↑o
                                        ; .rdata:000000014005C1E4↑o ...
                mov     [rsp+0F8h+var_28], rdi
                inc     dl
                mov     [rsp+0F8h+var_30], r14
                mov     [rsi+51Eh], dl
                dec     word ptr [rsi+1E4h]
                movups  [rsp+0F8h+var_68], xmm0
                movups  [rsp+0F8h+var_58], xmm0
                movups  [rsp+0F8h+var_48], xmm0
                mov     rax, [rsp+0F8h+var_B8]
                cmp     [rsp+0F8h+var_B0], rax
                jnb     loc_14043F80E
                lea     r11, qword_140C4C740
                mov     r14, 0FFFFF6FFFFFFFFFFh

loc_140268BFA:                          ; CODE XREF: sub_140268AA0+33B↓j
                test    [rsp+0F8h+var_78], 40000h
                mov     r9, 0FFFF800000000000h
                mov     r10, 0FFFFF68000000000h
                jnz     loc_140268E90

loc_140268C1F:                          ; CODE XREF: sub_140268AA0+3F8↓j
                mov     rsi, [rsp+0F8h+var_B0]
                shl     rsi, 4
                add     rsi, r12
                mov     eax, [rsi]
                mov     rdx, [rsi+8]
                and     eax, 0FFFh
                lea     rcx, [rdx+0FFFh]
                add     rcx, rax
                shr     rcx, 0Ch
                cmp     [rsp+0F8h+var_A8], rcx
                jnb     loc_14043F6DC
                test    rdx, rdx
                jz      loc_14043F7F6
                mov     rdi, [rsp+0F8h+var_A8]
                shl     rdi, 0Ch
                add     rdi, [rsi]
                cmp     rdi, cs:qword_140C4F9B8
                mov     r8, rdi
                jnb     loc_140268F4B

loc_140268C74:                          ; CODE XREF: sub_140268AA0+4B2↓j
                cmp     rdi, r9
                jnb     loc_140268EA3

loc_140268C7D:                          ; CODE XREF: sub_140268AA0+42D↓j
                                        ; sub_140268AA0+43D↓j ...
                mov     rax, r10
                cmp     rdi, rax
                jnb     loc_140268F3A

loc_140268C89:                          ; CODE XREF: sub_140268AA0+4A0↓j
                                        ; sub_140268AA0+1D6CAC↓j
                cmp     r8, r9
                jnb     loc_140268EF7

loc_140268C92:                          ; CODE XREF: sub_140268AA0+4C0↓j
                cmp     r13, 1
                jz      loc_14043F6DC
                test    byte ptr [r13+0B8h], 7
                jnz     loc_14043F6DC

loc_140268CAA:                          ; CODE XREF: sub_140268AA0+485↓j
                                        ; sub_140268AA0+4CA↓j
                test    byte ptr [rsp+0F8h+var_78], 80h
                jnz     short loc_140268D00
                mov     edx, 120h
                mov     rcx, r15
                call    sub_140269070
                test    eax, eax
                jz      loc_140269043
                mov     rax, [r15+1DA8h]
                mov     rcx, [r15+1D28h]
                cmp     rcx, rax
                ja      loc_140269043
                sub     rax, rcx
                cmp     rax, 1080h
                jb      loc_140269043
                cmp     qword ptr [r15+1C00h], 120h
                jl      loc_140269043

loc_140268D00:                          ; CODE XREF: sub_140268AA0+212↑j
                bt      ebx, 11h
                jb      loc_14043F761

loc_140268D0A:                          ; CODE XREF: sub_140268AA0+1D6CE4↓j
                mov     rsi, [rsp+0F8h+var_B0]
                lea     r9, [rsp+0F8h+var_C8]
                mov     r14, [rsp+0F8h+var_A8]
                or      r9, 1
                xor     r8d, r8d
                mov     rdx, rdi
                xor     ecx, ecx
                call    sub_140224260
                movzx   ecx, byte ptr [rsp+0F8h+var_C8+1]
                mov     r9d, eax
                cmp     cl, 2
                jz      loc_140269039
                cmp     cl, 1
                jz      loc_14026902F
                mov     rax, [rsp+0F8h+var_B0]
                cmp     rax, rsi
                jnz     short loc_140268D8F
                cmp     [rsp+0F8h+var_A8], r14
                jnz     short loc_140268D8F
                mov     r8, [rsp+0F8h+var_C0]
                add     rax, rax
                mov     rdx, [rsp+0F8h+var_A8]
                inc     rdx
                mov     rcx, [r8+rax*8+8]
                mov     eax, [r8+rax*8]
                add     rcx, 0FFFh
                and     eax, 0FFFh
                mov     [rsp+0F8h+var_A8], rdx
                add     rax, rcx
                shr     rax, 0Ch
                cmp     rdx, rax
                jz      loc_140268E58

loc_140268D8F:                          ; CODE XREF: sub_140268AA0+2AC↑j
                                        ; sub_140268AA0+2B3↑j ...
                test    r9d, r9d
                js      loc_140268FE7

loc_140268D98:                          ; CODE XREF: sub_140268AA0+575↓j
                cmp     [rsp+0F8h+var_80], 200000h
                jnb     loc_14043F793

loc_140268DA7:                          ; CODE XREF: sub_140268AA0+1D6D08↓j
                test    [rsp+0F8h+var_78], 400h
                jnz     loc_140268F89

loc_140268DB8:                          ; CODE XREF: sub_140268AA0+517↓j
                                        ; sub_140268AA0+1D6D3F↓j
                lea     r11, qword_140C4C740
                mov     r14, 0FFFFF6FFFFFFFFFFh

loc_140268DC9:                          ; CODE XREF: sub_140268AA0+495↓j
                                        ; sub_140268AA0+1D6C47↓j ...
                mov     rax, [rsp+0F8h+var_B8]
                mov     rsi, [rsp+0F8h+arg_8]
                cmp     [rsp+0F8h+var_B0], rax
                jb      loc_140268BFA

loc_140268DE1:                          ; CODE XREF: sub_140268AA0+5AB↓j
                mov     edi, [rsp+0F8h+arg_18]
                mov     r14d, [rsp+0F8h+arg_0]

loc_140268DF0:                          ; CODE XREF: sub_140268AA0+58A↓j
                                        ; sub_140268AA0+1D6D51↓j ...
                bt      ebx, 11h
                jb      loc_14043F81D

loc_140268DFA:                          ; CODE XREF: sub_140268AA0+1D6D99↓j
                mov     r8, r13
                lea     rdx, [rsp+0F8h+var_90]
                lea     rcx, [rsp+0F8h+var_A0]
                call    sub_14029F2BC
                test    eax, eax
                js      loc_14043F83E

loc_140268E14:                          ; CODE XREF: sub_140268AA0+1D6DA8↓j
                test    edi, edi
                js      short loc_140268E21
                test    r14d, r14d
                js      loc_140269050

loc_140268E21:                          ; CODE XREF: sub_140268AA0+376↑j
                                        ; sub_140268AA0+5BB↓j ...
                mov     rcx, rsi
                call    sub_14021E1F0
                dec     byte ptr [rsi+51Eh]
                mov     eax, edi
                mov     rdi, [rsp+0F8h+var_28]
                mov     r14, [rsp+0F8h+var_30]

loc_140268E41:                          ; CODE XREF: sub_140268AA0+1D6DB2↓j
                                        ; DATA XREF: .pdata:00000001400CDE00↑o ...
                mov     r15, [rsp+0F8h+var_38]

loc_140268E49:                          ; CODE XREF: sub_140268AA0+1D6C37↓j
                                        ; DATA XREF: .pdata:00000001400CDE0C↑o ...
                add     rsp, 0D8h
                pop     r13
                pop     r12
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140268E58:                          ; CODE XREF: sub_140268AA0+2E9↑j
                                        ; DATA XREF: .pdata:00000001400CDE18↑o ...
                mov     rax, [rsp+0F8h+var_B0]
                mov     rcx, [rsp+0F8h+var_B8]
                inc     rax
                mov     [rsp+0F8h+var_B0], rax
                mov     [rsp+0F8h+var_A8], 0
                cmp     rax, rcx
                jnb     loc_140268D8F
                add     rax, rax
                cmp     qword ptr [r8+rax*8+8], 0
                jnz     loc_140268D8F
                jmp     loc_14043F789
; ---------------------------------------------------------------------------

loc_140268E90:                          ; CODE XREF: sub_140268AA0+179↑j
                mov     eax, [rsi+510h]
                test    al, 1
                jz      loc_140268C1F
                jmp     loc_14043F7E4
; ---------------------------------------------------------------------------

loc_140268EA3:                          ; CODE XREF: sub_140268AA0+1D7↑j
                mov     rcx, rdi
                call    sub_140344B50
                test    eax, eax
                jnz     loc_14043F6FC
                mov     rax, rdi
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+r11+3108h], 1
                jnz     loc_140268C7D
                mov     rax, cs:qword_140C4DC60
                cmp     rdi, rax
                jb      loc_140268C7D
                add     rax, 47000h
                cmp     rdi, rax
                jnb     loc_140268C7D
                jmp     loc_14043F70C
; ---------------------------------------------------------------------------

loc_140268EF7:                          ; CODE XREF: sub_140268AA0+1EC↑j
                mov     rax, r8
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+r11+3108h], 1
                jnz     short loc_140268F5D
                cmp     r13, 1
                jz      short loc_140268F2B
                movzx   eax, byte ptr [r13+0B8h]
                and     al, 7
                cmp     al, 1
                jz      loc_140268CAA

loc_140268F2B:                          ; CODE XREF: sub_140268AA0+477↑j
                lea     rcx, [rsp+0F8h+var_C8]
                call    sub_14031D4E8
                jmp     loc_140268DC9
; ---------------------------------------------------------------------------

loc_140268F3A:                          ; CODE XREF: sub_140268AA0+1E3↑j
                mov     rax, r14
                cmp     rdi, rax
                ja      loc_140268C89
                jmp     loc_14043F71C
; ---------------------------------------------------------------------------

loc_140268F4B:                          ; CODE XREF: sub_140268AA0+1CE↑j
                cmp     rdi, cs:qword_140C4E1E8
                ja      loc_140268C74
                jmp     loc_14043F6EC
; ---------------------------------------------------------------------------

loc_140268F5D:                          ; CODE XREF: sub_140268AA0+471↑j
                cmp     r8, r9
                jb      loc_140268C92
                cmp     r13, 1
                jz      loc_140268CAA
                jmp     loc_14043F751
; ---------------------------------------------------------------------------

loc_140268F75:                          ; CODE XREF: sub_140268AA0+D7↑j
                                        ; DATA XREF: .pdata:00000001400CDE24↑o ...
                test    al, al
                jnz     loc_14043F84D
                movzx   ecx, word ptr [rcx+72Eh]
                jmp     loc_140268B94
; ---------------------------------------------------------------------------

loc_140268F89:                          ; CODE XREF: sub_140268AA0+312↑j
                                        ; DATA XREF: .pdata:00000001400CDE30↑o ...
                xor     r8d, r8d
                xor     eax, eax

loc_140268F8E:                          ; CODE XREF: sub_140268AA0+515↓j
                test    eax, eax
                lea     rdx, [rsp+0F8h+var_90]
                lea     rcx, [rsp+0F8h+var_A0]
                cmovz   rcx, rdx
                mov     rdx, [rcx]
                cmp     rdx, rcx
                jnz     short loc_140268FD0

loc_140268FA6:                          ; CODE XREF: sub_140268AA0+543↓j
                cmp     r8d, 4
                jz      loc_14043F7AD
                inc     eax
                cmp     eax, 2
                jb      short loc_140268F8E
                jmp     loc_140268DB8
; ---------------------------------------------------------------------------

loc_140268FBC:                          ; CODE XREF: sub_140268AA0+C5↑j
                                        ; DATA XREF: .pdata:00000001400CDE3C↑o ...
                lea     r15, unk_140C50C00
                jmp     loc_140268B9F
; ---------------------------------------------------------------------------
                align 10h

loc_140268FD0:                          ; CODE XREF: sub_140268AA0+504↑j
                                        ; sub_140268AA0+545↓j
                                        ; DATA XREF: ...
                inc     r8d
                cmp     r8d, 4
                jz      loc_14043F7AD
                mov     rdx, [rdx]
                cmp     rdx, rcx
                jz      short loc_140268FA6
                jmp     short loc_140268FD0
; ---------------------------------------------------------------------------

loc_140268FE7:                          ; CODE XREF: sub_140268AA0+2F2↑j
                mov     [rsp+0F8h+arg_0], r9d
                mov     r14d, r9d
                cmp     r9d, 0C0000005h
                jnz     short loc_14026901B
                mov     rax, [rsp+0F8h+var_B8]
                cmp     [rsp+0F8h+var_B0], rax
                jz      short loc_14026901B
                xor     edx, edx
                lea     rcx, [rsp+0F8h+var_C8]
                call    sub_14037C3A4
                test    eax, eax
                jnz     loc_140268D98

loc_14026901B:                          ; CODE XREF: sub_140268AA0+559↑j
                                        ; sub_140268AA0+565↑j
                mov     rsi, [rsp+0F8h+arg_8]
                mov     edi, [rsp+0F8h+arg_18]
                jmp     loc_140268DF0
; ---------------------------------------------------------------------------

loc_14026902F:                          ; CODE XREF: sub_140268AA0+29E↑j
                                        ; sub_140268AA0+5A1↓j
                mov     byte ptr [rsp+0F8h+var_C8+1], 0
                jmp     loc_140268D8F
; ---------------------------------------------------------------------------

loc_140269039:                          ; CODE XREF: sub_140268AA0+295↑j
                test    byte ptr [rsp+0F8h+var_78], 80h
                jnz     short loc_14026902F

loc_140269043:                          ; CODE XREF: sub_140268AA0+223↑j
                                        ; sub_140268AA0+23A↑j ...
                mov     rsi, [rsp+0F8h+arg_8]
                jmp     loc_140268DE1
; ---------------------------------------------------------------------------

loc_140269050:                          ; CODE XREF: sub_140268AA0+37B↑j
                test    [rsp+0F8h+var_78], 8000h
                jz      loc_140268E21
                mov     edi, r14d
                jmp     loc_140268E21
sub_140268AA0   endp

; ---------------------------------------------------------------------------
algn_140269069:                         ; DATA XREF: .pdata:00000001400CDE54↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140269070   proc near               ; CODE XREF: sub_14020C4F4+2D0↑p
                                        ; sub_140214168+16↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014043F858 SIZE 00000049 BYTES

                mov     [rsp+arg_0], rbx
                mov     r8, [rcx+1BC0h]
                mov     r11, rdx
                cmp     r8, rdx
                jb      loc_14043F858

loc_140269088:                          ; CODE XREF: sub_140269070+1D680B↓j
                mov     eax, 1

loc_14026908D:                          ; CODE XREF: sub_140269070+1D682C↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140269070   endp

algn_140269094:                         ; DATA XREF: .rdata:000000014005C2D0↑o
                                        ; .pdata:00000001400CDE60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402690A0   proc near               ; CODE XREF: sub_140659560+954↓p
                                        ; sub_140661DB0+50F↓p ...

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014043F8A2 SIZE 0000002F BYTES

                push    rbx
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     rax, gs:188h
                mov     r14d, 1
                mov     r8d, r14d
                mov     rbx, rcx
                mov     rdi, [rax+0B8h]
                mov     rdx, rdi
                call    sub_140269350
                test    dword ptr [rbx+30h], 100000h
                jnz     loc_1402692EC
                mov     rax, [rbx+48h]
                or      rdi, r14
                mov     [rbx+70h], rdi
                lea     rdi, [rbx+60h]

loc_1402690E9:                          ; DATA XREF: .rdata:000000014005C2FC↑o
                                        ; .rdata:000000014005C310↑o ...
                mov     [rsp+58h+arg_18], rsi
                mov     rbx, [rax]
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                lea     rsi, [rbx+68h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                test    dword ptr [rbx+38h], 400h
                jnz     short loc_140269138
                mov     rcx, [rbx+8]
                lea     rax, [rbx+8]
                cmp     [rcx+8], rax
                jnz     FatalListEntryError_9
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rcx+8], rdi
                mov     [rax], rdi

loc_140269138:                          ; CODE XREF: sub_1402690A0+76↑j
                mov     [rsp+58h+arg_10], rbp
                mov     rax, 0FFFFFFFFFFFFFFFFh
                mov     rbp, gs:188h
                mov     [rsp+58h+var_20], r12
                mov     [rsp+58h+var_28], r15
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_140269325

loc_140269166:                          ; CODE XREF: sub_1402690A0+28D↓j
                xor     r12d, r12d
                mov     rcx, rsi
                mov     [rsp+58h+arg_8], r12d
                mov     rbx, gs:188h
                call    sub_140245330
                cmp     eax, r14d
                jz      loc_1402692F6
                mov     r9d, 0FFFFFFFFh

loc_14026918E:                          ; CODE XREF: sub_1402690A0+265↓j
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rsi
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                movzx   r15d, byte ptr [rbx+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                and     r8, r10
                bsr     ecx, edx
                mov     [rsp+58h+arg_0], ecx
                jz      loc_140269317

loc_1402691D3:                          ; CODE XREF: sub_1402690A0+271↓j
                lea     rdi, [rcx+rcx*2]
                mov     eax, r14d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rdi+1Ah], r14b
                jz      loc_14026930A
                mov     eax, [rdi+20h]
                test    r14b, al
                jnz     loc_14026930A
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     loc_14026930A
                cmp     [rdi+28h], r9d
                jnz     loc_14026930A
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      loc_14026930A
                test    rdi, rdi
                jz      loc_140269317
                movzx   eax, byte ptr [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_140269332

loc_14026924E:                          ; CODE XREF: sub_1402690A0+29A↓j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rsp+58h+arg_8], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rdi+20h], r12
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r15b, r14b
                jnz     loc_14043F8A9
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1402692A4:                          ; CODE XREF: sub_1402690A0+27E↓j
                                        ; sub_1402690A0+1D6816↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_8]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_1402692D0
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_14026933F

loc_1402692D0:                          ; CODE XREF: sub_1402690A0+222↑j
                                        ; sub_1402690A0+2A4↓j
                mov     rcx, rbp
                call    sub_140245770
                mov     r12, [rsp+58h+var_20]
                mov     rbp, [rsp+58h+arg_10]
                mov     r15, [rsp+58h+var_28]
                mov     rsi, [rsp+58h+arg_18]

loc_1402692EC:                          ; CODE XREF: sub_1402690A0+34↑j
                                        ; DATA XREF: .pdata:00000001400CDE78↑o ...
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402692F6:                          ; CODE XREF: sub_1402690A0+E2↑j
                                        ; DATA XREF: .pdata:00000001400CDE84↑o ...
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r9d, eax
                jmp     loc_14026918E
; ---------------------------------------------------------------------------

loc_14026930A:                          ; CODE XREF: sub_1402690A0+14F↑j
                                        ; sub_1402690A0+15B↑j ...
                bsr     ecx, edx
                mov     [rsp+58h+arg_0], ecx
                jnz     loc_1402691D3

loc_140269317:                          ; CODE XREF: sub_1402690A0+12D↑j
                                        ; sub_1402690A0+18F↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_1402692A4
                jmp     loc_14043F8BB
; ---------------------------------------------------------------------------

loc_140269325:                          ; CODE XREF: sub_1402690A0+C0↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_140269166
; ---------------------------------------------------------------------------

loc_140269332:                          ; CODE XREF: sub_1402690A0+1A8↑j
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_14026924E
; ---------------------------------------------------------------------------

loc_14026933F:                          ; CODE XREF: sub_1402690A0+22E↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1402692D0
sub_1402690A0   endp

; ---------------------------------------------------------------------------
algn_140269346:                         ; DATA XREF: .pdata:00000001400CDE90↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140269350   proc near               ; CODE XREF: sub_1402690A0+28↑p
                                        ; sub_14026A1E0+26↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043F8D2 SIZE 000000CB BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, [rcx+1Ch]
                xor     ebp, ebp
                movzx   ebx, byte ptr [rcx+21h]
                mov     r15d, r8d
                movzx   r14d, byte ptr [rcx+20h]
                mov     rdi, rdx
                shl     rbx, 20h
                mov     rsi, rcx
                or      rbx, rax
                shl     r14, 20h
                mov     eax, [rcx+18h]
                or      r14, rax
                test    r8b, 1
                jz      loc_14043F930
                movzx   eax, byte ptr [rdx+738h]
                and     al, 7
                cmp     al, 2
                jz      loc_14043F8D2
                lea     rbp, [rdx+740h]

loc_1402693B6:                          ; CODE XREF: sub_140269350+1D6589↓j
                mov     r12, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043F8DE

loc_1402693D1:                          ; CODE XREF: sub_140269350+1D6590↓j
                                        ; sub_140269350+1D659A↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                movzx   edx, r12b
                mov     rcx, rbp
                jnz     loc_14043F925
                call    sub_140234420

loc_1402693EA:                          ; CODE XREF: sub_140269350+1D65DB↓j
                mov     dword ptr [rbp+4], 0
                xor     ebp, ebp

loc_1402693F3:                          ; CODE XREF: sub_140269350+1D65E3↓j
                mov     rax, [rdi+5D8h]
                inc     qword ptr [rdi+7E8h]
                shr     rax, 0Ch
                mov     [rdi+7E0h], rsi
                cmp     rbx, rax
                ja      short loc_140269440
                test    r15b, 2
                jnz     short loc_140269440
                sub     rbx, r14
                shl     rbx, 0Ch
                add     rbx, 1000h
                add     [rdi+498h], rbx
                mov     rax, [rdi+498h]
                cmp     [rdi+490h], rax
                jb      loc_14026953E

loc_140269440:                          ; CODE XREF: sub_140269350+BF↑j
                                        ; sub_140269350+C5↑j ...
                mov     eax, [rsi+18h]
                movzx   r8d, byte ptr [rsi+20h]
                mov     rdx, [rdi+7D8h]
                shl     r8, 20h
                or      r8, rax
                xor     al, al
                test    rdx, rdx
                jz      short loc_1402694A0
                nop     dword ptr [rax]

loc_140269460:                          ; CODE XREF: sub_140269350+14E↓j
                movzx   ecx, byte ptr [rdx+21h]
                mov     eax, [rdx+1Ch]
                shl     rcx, 20h
                or      rcx, rax
                cmp     r8, rcx
                ja      short loc_140269486
                movzx   ecx, byte ptr [rdx+20h]
                mov     eax, [rdx+18h]
                shl     rcx, 20h
                or      rcx, rax
                cmp     r8, rcx
                jb      short loc_140269493

loc_140269486:                          ; CODE XREF: sub_140269350+121↑j
                mov     rax, [rdx+8]
                test    rax, rax
                jnz     short loc_14026949B
                mov     al, 1
                jmp     short loc_1402694A0
; ---------------------------------------------------------------------------

loc_140269493:                          ; CODE XREF: sub_140269350+134↑j
                mov     rax, [rdx]
                test    rax, rax
                jz      short loc_1402694A0

loc_14026949B:                          ; CODE XREF: sub_140269350+13D↑j
                mov     rdx, rax
                jmp     short loc_140269460
; ---------------------------------------------------------------------------

loc_1402694A0:                          ; CODE XREF: sub_140269350+10B↑j
                                        ; sub_140269350+141↑j ...
                mov     r9, rsi
                lea     rcx, [rdi+7D8h]
                movzx   r8d, al
                call    RtlAvlInsertNodeEx
                mov     ecx, [rsi+30h]
                bt      ecx, 14h
                jb      short loc_140269521

loc_1402694BC:                          ; CODE XREF: sub_140269350+1E7↓j
                mov     rcx, rsi
                call    sub_1402342C0
                test    eax, eax
                jnz     loc_14043F938

loc_1402694CC:                          ; CODE XREF: sub_140269350+1D6603↓j
                                        ; sub_140269350+1D660F↓j
                mov     ecx, [rsi+30h]
                mov     eax, ecx
                and     al, 70h
                cmp     al, 10h
                jz      short loc_14026954A

loc_1402694D7:                          ; CODE XREF: sub_140269350+20B↓j
                mov     eax, ecx
                and     eax, 70h
                cmp     al, 30h ; '0'
                jz      loc_14043F964

loc_1402694E4:                          ; CODE XREF: sub_140269350+1D6620↓j
                                        ; sub_140269350+1D6637↓j
                cmp     r12b, 11h
                jz      short loc_1402694FA
                movzx   edx, r12b
                lea     rcx, [rdi+680h]
                call    sub_140234180

loc_1402694FA:                          ; CODE XREF: sub_140269350+198↑j
                test    rbp, rbp
                jnz     loc_14043F98C

loc_140269503:                          ; CODE XREF: sub_140269350+1D6648↓j
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

loc_140269521:                          ; CODE XREF: sub_140269350+16A↑j
                bt      ecx, 16h
                jb      loc_14043F93B
                mov     eax, ecx
                and     eax, 0C0000h
                cmp     eax, 80000h
                jb      short loc_1402694BC
                jmp     loc_14043F93B
; ---------------------------------------------------------------------------

loc_14026953E:                          ; CODE XREF: sub_140269350+EA↑j
                mov     [rdi+490h], rax
                jmp     loc_140269440
; ---------------------------------------------------------------------------

loc_14026954A:                          ; CODE XREF: sub_140269350+185↑j
                mov     rax, [rdi+690h]
                inc     qword ptr [rax+130h]
                mov     ecx, [rsi+30h]
                jmp     loc_1402694D7
sub_140269350   endp

; ---------------------------------------------------------------------------
byte_140269560  db 10h dup(0CCh)        ; DATA XREF: .rdata:000000014005C394↑o
                                        ; .pdata:00000001400CDE9C↑o
; Exported entry 2001. RtlAvlInsertNodeEx

; =============== S U B R O U T I N E =======================================


