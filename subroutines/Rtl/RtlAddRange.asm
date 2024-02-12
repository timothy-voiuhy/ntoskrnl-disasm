RtlAddRange     proc near               ; CODE XREF: sub_1407A18D4+A4↓p
                                        ; sub_1407A1B00+1B3↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001408439A0 SIZE 00000018 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     bl, r9b
                mov     r10, r8
                mov     r11, rdx
                mov     rdi, rcx
                cmp     r8, rdx
                jb      loc_1408439A0
                mov     rax, [rsp+38h+arg_30]
                mov     r8b, bl
                mov     r9, [rsp+38h+arg_28]
                mov     rdx, r10
                mov     rcx, r11
                mov     [rsp+38h+var_18], rax
                call    sub_140763240
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140763184
                mov     r8d, [rsp+38h+arg_20]
                test    r8b, 2
                jnz     short loc_140763178

loc_140763144:                          ; CODE XREF: RtlAddRange+8C↓j
                test    r8b, 10h
                jnz     short loc_14076317E

loc_14076314A:                          ; CODE XREF: RtlAddRange+92↓j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140763194
                mov     esi, eax
                test    eax, eax
                js      loc_1408439AA
                inc     dword ptr [rdi+14h]
                inc     dword ptr [rdi+18h]

loc_140763165:                          ; CODE XREF: RtlAddRange+E08C3↓j
                mov     eax, esi

loc_140763167:                          ; CODE XREF: RtlAddRange+99↓j
                                        ; RtlAddRange+E08B5↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140763178:                          ; CODE XREF: RtlAddRange+52↑j
                or      byte ptr [rax+21h], 1
                jmp     short loc_140763144
; ---------------------------------------------------------------------------

loc_14076317E:                          ; CODE XREF: RtlAddRange+58↑j
                or      byte ptr [rax+21h], 10h
                jmp     short loc_14076314A
; ---------------------------------------------------------------------------

loc_140763184:                          ; CODE XREF: RtlAddRange+47↑j
                mov     eax, 0C0000001h
                jmp     short loc_140763167
RtlAddRange     endp

; ---------------------------------------------------------------------------
byte_14076318B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140092B7C↑o
                                        ; .pdata:000000014010A010↑o

; =============== S U B R O U T I N E =======================================


sub_140763194   proc near               ; CODE XREF: RtlAddRange+60↑p
                                        ; sub_1407C49D4+AA↓p ...

; FUNCTION CHUNK AT 00000001408439B8 SIZE 00000007 BYTES

                push    rbx
                sub     rsp, 20h
                and     byte ptr [rdx+21h], 0FDh
                mov     r10, rdx
                mov     rbx, [rdx+8]
                xor     r11d, r11d
                mov     r9, [rdx]
                mov     rdx, [rcx]
                cmp     rdx, rcx
                jz      short loc_1407631BD
                mov     rax, [rcx+8]
                cmp     r9, [rax-20h]
                jbe     short loc_1407631E6

loc_1407631BD:                          ; CODE XREF: sub_140763194+1D↑j
                                        ; sub_140763194+76↓j
                mov     rdx, [rcx+8]
                lea     rax, [r10+28h]
                cmp     [rdx], rcx
                jnz     FatalListEntryError_106
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax

loc_1407631DC:                          ; CODE XREF: sub_140763194+91↓j
                                        ; sub_140763194+A1↓j
                mov     eax, r11d
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407631E6:                          ; CODE XREF: sub_140763194+27↑j
                add     rdx, 0FFFFFFFFFFFFFFD8h

loc_1407631EA:                          ; CODE XREF: sub_140763194+74↓j
                mov     rax, [rdx]
                cmp     rbx, rax
                jb      short loc_14076320C
                cmp     rax, r9
                jnb     short loc_140763227
                cmp     [rdx+8], r9
                jnb     short loc_140763227
                mov     rax, [rdx+28h]
                lea     rdx, [rax-28h]
                cmp     rcx, rax
                jnz     short loc_1407631EA
                jmp     short loc_1407631BD
; ---------------------------------------------------------------------------

loc_14076320C:                          ; CODE XREF: sub_140763194+5C↑j
                mov     rdx, [rdx+30h]
                lea     rax, [r10+28h]
                mov     rcx, [rdx]
                mov     [rax], rcx
                mov     [r10+30h], rdx
                mov     [rcx+8], rax
                mov     [rdx], rax
                jmp     short loc_1407631DC
; ---------------------------------------------------------------------------

loc_140763227:                          ; CODE XREF: sub_140763194+61↑j
                                        ; sub_140763194+67↑j
                mov     r9d, r8d
                mov     r8, r10
                call    sub_1407BC4D4
                mov     r11d, eax
                jmp     short loc_1407631DC
sub_140763194   endp

; ---------------------------------------------------------------------------
algn_140763237:                         ; DATA XREF: .rdata:0000000140092B98↑o
                                        ; .pdata:000000014010A01C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140763240   proc near               ; CODE XREF: RtlAddRange+3C↑p
                                        ; DATA XREF: .pdata:000000014010A028↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, rcx
                mov     rbx, r9
                lea     rcx, unk_140CEC9C0
                mov     dil, r8b
                mov     rsi, rdx
                call    sub_14030E5D4
                xor     ecx, ecx
                test    rax, rax
                jz      short loc_140763292
                mov     [rax+21h], cl
                mov     [rax+22h], cx
                mov     rcx, [rsp+28h+arg_20]
                mov     [rax+18h], rcx
                mov     [rax], rbp
                mov     [rax+8], rsi
                mov     [rax+20h], dil
                mov     [rax+10h], rbx

loc_140763292:                          ; CODE XREF: sub_140763240+31↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140763240   endp

algn_1407632A8:                         ; DATA XREF: .pdata:000000014010A028↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1407632B0   proc near               ; CODE XREF: sub_1403B4EB0+F6356↑p
                                        ; KeAllocateProcessorProfileStructures+F5393↑p ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 00000001408439C0 SIZE 00000092 BYTES

                mov     [rsp-38h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_30], 0
                mov     esi, 0
                and     [rbp+var_28], 0
                xorps   xmm0, xmm0
                test    rdx, 0FFFh
                movdqu  [rbp+var_18], xmm0
                setnz   sil
                shr     rdx, 0Ch
                add     rsi, rdx
                mov     [rbp+arg_18], rsi
                mov     [rbp+var_38], rsi
                mov     [rbp+var_20], rsi
                call    sub_14026B560
                mov     rdi, rax
                mov     [rbp+var_40], rax
                lea     rcx, [rbp+arg_8]
                lea     rax, [rax+rsi*8]
                mov     [rbp+arg_10], rax
                call    sub_1402433C0
                mov     r13, [rbp+arg_10]
                mov     esi, eax
                mov     r15, 0FFFFFFFFFh
                mov     rbx, 0FFFFFA8000000000h

loc_140763333:                          ; CODE XREF: sub_1407632B0+12E↓j
                mov     rcx, rdi
                call    sub_1402805F0
                mov     [rbp+arg_8], rax
                test    esi, esi
                jnz     loc_1408439C0

loc_140763347:                          ; CODE XREF: sub_1407632B0+E071D↓j
                shr     rax, 0Ch
                and     rax, r15
                lea     r14, [rax+rax*2]
                shl     r14, 4
                mov     rax, rbx
                add     r14, rax
                mov     rax, [r14+28h]
                and     rax, r15
                lea     r12, [rax+rax*2]
                shl     r12, 4
                mov     rax, rbx
                mov     rbx, cs:qword_14001D278
                mov     rcx, rdi
                add     r12, rax
                xor     r15d, r15d
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1408439D2

loc_14076338B:                          ; CODE XREF: sub_1407632B0+E0738↓j
                                        ; sub_1407632B0+E075D↓j ...
                mov     [rdi], rbx
                test    r15d, r15d
                jnz     loc_140843A2E

loc_140763397:                          ; CODE XREF: sub_1407632B0+E078A↓j
                mov     rcx, r14
                call    sub_1402D9900
                mov     edx, 1
                mov     rcx, r14
                test    eax, eax
                jnz     loc_140843A3F
                call    sub_140209CE0
                cmp     eax, 3
                jz      short loc_14076341F

loc_1407633B9:                          ; CODE XREF: sub_1407632B0+173↓j
                                        ; sub_1407632B0+E079D↓j
                xor     edx, edx
                mov     rcx, r12
                call    sub_140209CE0
                add     rdi, 8
                mov     rbx, 0FFFFFA8000000000h
                mov     r15, 0FFFFFFFFFh
                cmp     rdi, r13
                jb      loc_140763333
                mov     r8, [rbp+arg_18]
                lea     rcx, qword_140C4EDC0
                mov     rdx, [rbp+var_40]
                call    sub_14025EFB0
                mov     edx, 1
                lea     rcx, [rbp+var_38]
                call    sub_140207AA0
                mov     rbx, [rsp+60h+arg_0]
                add     rsp, 60h
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

loc_14076341F:                          ; CODE XREF: sub_1407632B0+107↑j
                inc     [rbp+var_30]
                jmp     short loc_1407633B9
sub_1407632B0   endp

; ---------------------------------------------------------------------------
byte_140763425  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140092BC4↑o
                                        ; .pdata:000000014010A034↑o

; =============== S U B R O U T I N E =======================================


sub_14076342C   proc near               ; CODE XREF: sub_140379990+2C↑p
                                        ; HalGetAdapter+9↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140843A52 SIZE 00000020 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                xor     ebx, ebx
                mov     r14, r8
                mov     [r8], ebx
                mov     rsi, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      short loc_140763464
                mov     rcx, rdx
                call    sub_1403799D4
                lea     r8d, [rbx+2]
                test    al, al
                jnz     short loc_140763467

loc_140763464:                          ; CODE XREF: sub_14076342C+26↑j
                mov     r8d, ebx

loc_140763467:                          ; CODE XREF: sub_14076342C+36↑j
                mov     eax, [rdi]
                cmp     eax, 2
                ja      short loc_14076349E
                test    r8d, r8d
                jnz     short loc_14076349E
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1407634F0

loc_140763481:                          ; CODE XREF: sub_14076342C+89↓j
                mov     rbx, rax

loc_140763484:                          ; CODE XREF: sub_14076342C+E0629↓j
                                        ; sub_14076342C+E0632↓j ...
                mov     rsi, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076349E:                          ; CODE XREF: sub_14076342C+40↑j
                                        ; sub_14076342C+45↑j
                cmp     eax, 3
                jnz     loc_140843A52

loc_1407634A7:                          ; CODE XREF: sub_14076342C+E0641↓j
                mov     r9, r14
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1407C2C90
                jmp     short loc_140763481
sub_14076342C   endp

; ---------------------------------------------------------------------------
algn_1407634B7:                         ; DATA XREF: .rdata:0000000140092BEC↑o
                                        ; .pdata:000000014010A040↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407634C0   proc near               ; DATA XREF: .pdata:000000014010A04C↑o
                                        ; sub_140A65CA0+16↓o
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                xor     r8d, r8d
                test    rdx, rdx
                jnz     short loc_1407634E0
                mov     dl, 1
                call    sub_140379B30

loc_1407634D7:                          ; CODE XREF: sub_1407634C0+27↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1407634E0:                          ; CODE XREF: sub_1407634C0+E↑j
                call    sub_140379A34
                mov     ebx, eax
                jmp     short loc_1407634D7
sub_1407634C0   endp

; ---------------------------------------------------------------------------
algn_1407634E9:                         ; DATA XREF: .pdata:000000014010A04C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407634F0   proc near               ; CODE XREF: sub_14076342C+50↑p
                                        ; DATA XREF: .rdata:0000000140092C90↑o ...

var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_68          = byte ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140843A72 SIZE 00000230 BYTES

                mov     rax, rsp
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                xor     r13d, r13d
                mov     rdi, rcx
                cmp     dword ptr [rcx], 2
                mov     [rax+20h], r13b
                mov     [rsp+98h+var_50], r13
                ja      loc_140763762
                cmp     [rcx+4], r13b
                jz      loc_140843A7C
                cmp     dword ptr [rcx+14h], 1
                jz      loc_140843A72

loc_140763537:                          ; CODE XREF: sub_1407634F0+E0586↓j
                mov     sil, r13b
                mov     [rsp+98h+arg_0], r13b

loc_140763542:                          ; CODE XREF: sub_1407634F0+E05B7↓j
                mov     r15d, [rdi+20h]
                mov     cl, [rdi+4]
                btr     r15d, 1Fh
                test    cl, cl
                jz      short loc_14076355C
                cmp     [rdi+5], r13b
                jz      short loc_14076355C
                mov     byte ptr [rdi+8], 1

loc_14076355C:                          ; CODE XREF: sub_1407634F0+60↑j
                                        ; sub_1407634F0+66↑j
                cmp     [rdi+0Bh], r13b
                jz      loc_140843AAC
                mov     byte ptr [rdi+8], 1

loc_14076356A:                          ; CODE XREF: sub_1407634F0+E05C0↓j
                mov     ebx, 1

loc_14076356F:                          ; CODE XREF: sub_1407634F0+E05D4↓j
                mov     r12b, 1

loc_140763572:                          ; CODE XREF: sub_1407634F0+E05CE↓j
                mov     [rsp+98h+var_58], r12b
                test    sil, sil
                jnz     loc_140843AC9
                test    rdx, rdx
                jz      loc_140843AC9
                lea     r8, [rsp+98h+arg_18]
                xor     ecx, ecx
                call    sub_1407639DC
                mov     r14b, byte ptr [rsp+98h+arg_18]
                test    r14b, r14b
                jz      loc_140763762

loc_1407635A9:                          ; CODE XREF: sub_1407634F0+E05DC↓j
                mov     al, [rdi+5]
                test    al, al
                jz      loc_140843AD1
                test    r14b, r14b
                jz      loc_140843AD1
                mov     rcx, 100000000h
                cmp     cs:qword_140C4BB58, rcx
                jb      short loc_1407635DA
                cmp     [rdi+0Bh], r13b
                jz      loc_140843AD1

loc_1407635DA:                          ; CODE XREF: sub_1407634F0+DE↑j
                mov     esi, r13d
                mov     [rsp+98h+arg_18], r13d
                mov     ebp, r13d

loc_1407635E8:                          ; CODE XREF: sub_1407634F0+E064A↓j
                                        ; sub_1407634F0+E0656↓j ...
                test    r14b, r14b
                jz      loc_140843B5C

loc_1407635F1:                          ; CODE XREF: sub_1407634F0+E0691↓j
                cmp     [rsp+98h+arg_0], 0
                mov     r13d, [rdi+10h]
                mov     r12d, r13d
                jnz     loc_140843B86

loc_140763606:                          ; CODE XREF: sub_1407634F0+E06A4↓j
                and     [rsp+98h+var_78], 0
                lea     rcx, word_140C49CC0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+7]
                call    KeWaitForSingleObject
                cmp     [rsp+98h+arg_0], 0
                jnz     loc_140843BC5

loc_140763630:                          ; CODE XREF: sub_1407634F0+E06E3↓j
                mov     rax, [rsp+98h+arg_8]
                test    rax, rax
                jz      short loc_140763651
                mov     rcx, rax
                call    sub_140379CCC
                mov     rbp, rax
                test    rax, rax
                jnz     loc_140843C04

loc_140763651:                          ; CODE XREF: sub_1407634F0+14B↑j
                                        ; sub_1407634F0+E0742↓j
                mov     r9b, [rdi+5]
                lea     rax, [rsp+98h+arg_18]
                mov     r8b, [rdi+0Bh]
                mov     ecx, esi
                mov     dl, [rdi+8]
                mov     [rsp+98h+var_60], rax
                mov     al, [rsp+98h+var_58]
                mov     [rsp+98h+var_68], r14b
                mov     [rsp+98h+var_70], al
                mov     al, [rdi+4]
                mov     byte ptr [rsp+98h+var_78], al
                call    sub_14076376C
                mov     rbx, rax
                test    rax, rax
                jz      loc_140843C8B
                cmp     [rsp+98h+arg_0], 0
                mov     byte ptr [rax+204h], 1
                jnz     loc_140843C37

loc_1407636A5:                          ; CODE XREF: sub_1407634F0+E0789↓j
                mov     eax, [rsp+98h+arg_18]
                test    eax, eax
                jnz     loc_140843C7E
                mov     eax, r15d
                and     eax, 0FFFh
                neg     eax
                sbb     edx, edx
                shr     r15d, 0Ch
                neg     edx
                inc     edx
                add     edx, r15d
                mov     [rbx+0E0h], edx
                xor     al, al

loc_1407636D3:                          ; CODE XREF: sub_1407634F0+E0796↓j
                mov     [rbx+1B0h], al
                and     qword ptr [rbx+130h], 0

loc_1407636E1:                          ; CODE XREF: sub_1407634F0+E070F↓j
                xor     r8d, r8d
                lea     rcx, word_140C49CC0
                xor     edx, edx
                call    KeSetEvent

loc_1407636F2:                          ; CODE XREF: sub_1407634F0+E06D0↓j
                mov     byte ptr [rbx+1B4h], 0
                cmp     dword ptr [rdi], 1
                jb      short loc_140763707
                mov     al, [rdi+9]
                mov     [rbx+1B4h], al

loc_140763707:                          ; CODE XREF: sub_1407634F0+20C↑j
                cmp     [rsp+98h+arg_0], 0
                mov     eax, [rbx+0E0h]
                mov     rcx, [rsp+98h+arg_10]
                mov     [rcx], eax
                mov     rax, [rsp+98h+var_50]
                mov     [rbx+128h], rax
                jnz     short loc_140763759
                mov     rax, [rsp+98h+arg_8]
                mov     rcx, rbx
                mov     [rbx+208h], rax
                call    sub_140379C1C

loc_140763744:                          ; CODE XREF: sub_1407634F0+270↓j
                mov     rax, rbx

loc_140763747:                          ; CODE XREF: sub_1407634F0+274↓j
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140763759:                          ; CODE XREF: sub_1407634F0+23B↑j
                mov     [rbx+174h], r13d
                jmp     short loc_140763744
; ---------------------------------------------------------------------------

loc_140763762:                          ; CODE XREF: sub_1407634F0+2D↑j
                                        ; sub_1407634F0+B3↑j ...
                xor     eax, eax
                jmp     short loc_140763747
sub_1407634F0   endp

; ---------------------------------------------------------------------------
byte_140763766  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140092C90↑o
                                        ; .pdata:000000014010A058↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_14076376C   proc near               ; CODE XREF: sub_1407634F0+18F↑p
                                        ; DATA XREF: .pdata:000000014010A064↑o

var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_20          = byte ptr  30h
arg_28          = byte ptr  38h
arg_30          = byte ptr  40h
arg_38          = qword ptr  48h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [r11-3Fh]
                sub     rsp, 90h
                xor     r12d, r12d
                movzx   eax, dl
                mov     rdx, cs:qword_140CFC650
                test    r8b, r8b
                mov     [r11-70h], r12
                mov     r14b, r9b
                mov     r15b, r8b
                mov     [rbp+37h+var_60], r12
                mov     edi, ecx
                mov     [rbp+37h+var_58], r12
                xorps   xmm0, xmm0
                mov     [rbp+37h+var_50], 30h ; '0'
                lea     r13d, [r12+1]
                mov     [rbp+37h+var_38], 210h
                mov     esi, r13d
                mov     [rbp+37h+var_48], r12
                cmovz   esi, eax
                mov     [rbp+37h+var_40], r12
                lea     rax, [rbp+37h+var_60]
                mov     ebx, 280h
                mov     [r11-78h], rax
                lea     r8, [rbp+37h+var_50]
                mov     [r11-80h], r12d
                xor     r9d, r9d
                mov     dword ptr [rsp+0B0h+var_80], r12d
                xor     ecx, ecx
                mov     dword ptr [rsp+0B0h+var_88], ebx
                movdqu  [rbp+37h+var_30], xmm0
                call    sub_14061EDD0
                test    eax, eax
                js      loc_140763960
                mov     r8d, ebx
                xor     edx, edx
                mov     rbx, [rbp+37h+var_60]
                mov     rcx, rbx
                call    memset
                mov     r8, cs:qword_140CFC650
                xor     r9d, r9d
                mov     edx, 20000h
                mov     rcx, rbx
                call    ObReferenceObjectByPointer
                test    eax, eax
                js      loc_140763960
                lea     rax, [rbp+37h+var_58]
                xor     r9d, r9d
                mov     [rsp+0B0h+var_80], rax
                xor     edx, edx
                mov     [rsp+0B0h+var_88], r12
                mov     r8d, 20000h
                mov     rcx, rbx
                mov     dword ptr [rsp+0B0h+var_90], r12d
                call    sub_14061EFE0
                test    eax, eax
                js      loc_140763960
                mov     rcx, [rbp+37h+var_58]
                call    ZwClose
                lea     rax, qword_140005F60
                mov     dword ptr [rbx], 2800001h
                mov     [rbx+8], rax
                lea     rcx, [rbx+0B0h]
                mov     al, [rbp+37h+arg_28]
                mov     [rbx+91h], al
                mov     [rbx+78h], r12
                mov     [rbx+80h], r12
                mov     [rbx+90h], r12b
                mov     [rbx+138h], r12
                mov     [rbx+152h], r12b
                call    KeInitializeDeviceQueue
                mov     al, [rbp+37h+arg_30]
                mov     [rbx+0E0h], edi
                mov     [rbx+1B2h], r14b
                mov     [rbx+1B8h], sil
                mov     [rbx+1B9h], r15b
                mov     [rbx+1B5h], al
                or      eax, 0FFFFFFFFh
                cmp     [rbp+37h+arg_20], r12b
                mov     [rbx+174h], eax
                mov     [rbx+178h], eax
                setnz   al
                mov     dword ptr [rbx+94h], 2
                mov     [rbx+1B1h], al
                test    edi, edi
                jnz     short loc_14076390F
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_140763925
; ---------------------------------------------------------------------------

loc_14076390F:                          ; CODE XREF: sub_14076376C+19B↑j
                mov     al, sil
                neg     al
                mov     rax, r13
                sbb     ecx, ecx
                and     ecx, 8
                add     ecx, 18h
                shl     rax, cl
                sub     rax, r13

loc_140763925:                          ; CODE XREF: sub_14076376C+1A1↑j
                mov     [rbx+88h], rax
                lea     rcx, unk_140C4BA80
                test    sil, sil
                lea     rax, unk_140C4B9A0
                cmovnz  rax, rcx
                mov     [rbx+98h], rax
                mov     rax, [rax+88h]
                cmp     [rbx+88h], rax
                jnb     short loc_140763984

loc_140763958:                          ; CODE XREF: sub_14076376C+234↓j
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_140763960:                          ; CODE XREF: sub_14076376C+9C↑j
                                        ; sub_14076376C+CC↑j ...
                xor     eax, eax

loc_140763962:                          ; CODE XREF: sub_14076376C+266↓j
                lea     r11, [rsp+0B0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140763984:                          ; CODE XREF: sub_14076376C+1EA↑j
                test    edi, edi
                jz      short loc_1407639B1
                mov     edx, edi
                mov     rcx, rbx
                test    r14b, r14b
                jz      short loc_140763999
                call    sub_1408668E8
                jmp     short loc_14076399E
; ---------------------------------------------------------------------------

loc_140763999:                          ; CODE XREF: sub_14076376C+224↑j
                call    sub_140866600

loc_14076399E:                          ; CODE XREF: sub_14076376C+22B↑j
                test    eax, eax
                js      short loc_140763958
                mov     ecx, [rbx+0E0h]
                mov     [rbx+151h], r12b
                jmp     short loc_1407639C2
; ---------------------------------------------------------------------------

loc_1407639B1:                          ; CODE XREF: sub_14076376C+21A↑j
                mov     [rbx+0E0h], r12d
                mov     ecx, r12d
                mov     [rbx+151h], r13b

loc_1407639C2:                          ; CODE XREF: sub_14076376C+243↑j
                mov     rax, [rbp+37h+arg_38]
                mov     [rax], ecx
                mov     rax, rbx
                mov     [rbx+1F8h], r12
                jmp     short loc_140763962
sub_14076376C   endp

; ---------------------------------------------------------------------------
byte_1407639D4  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010A064↑o

; =============== S U B R O U T I N E =======================================


sub_1407639DC   proc near               ; CODE XREF: sub_1407634F0+A3↑p
                                        ; sub_1407C2C90+C5↓p
                                        ; DATA XREF: ...

var_58          = word ptr -58h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140843CA2 SIZE 00000016 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 70h
                xorps   xmm0, xmm0
                mov     rax, rdx
                xor     edx, edx
                mov     rdi, r8
                mov     [r8], dl
                movups  [rsp+78h+var_38], xmm0
                movups  [rsp+78h+var_28], xmm0
                mov     [r11-18h], rdx
                test    rcx, rcx
                jnz     short loc_140763A67
                lea     ebx, [rdx+1]
                test    rax, rax
                jz      loc_140843CA2
                lea     rcx, [r11-38h]
                mov     [r11-48h], rcx
                lea     r9d, [rdx+28h]
                and     [r11-50h], rdx
                lea     r8, qword_14000BC58
                mov     edx, ebx
                mov     [rsp+78h+var_58], bx
                mov     rcx, rax
                call    IoQueryInterface
                test    eax, eax
                js      loc_140843CA2
                mov     al, [rsp+78h+var_18]
                mov     rcx, qword ptr [rsp+78h+var_38+8]
                mov     [rdi], al
                mov     rax, qword ptr [rsp+78h+var_28+8]
                call    sub_1404079D0

loc_140763A58:                          ; CODE XREF: sub_1407639DC+91↓j
                                        ; sub_1407639DC+E02CF↓j ...
                mov     rbx, [rsp+78h+arg_0]
                add     rsp, 70h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140763A67:                          ; CODE XREF: sub_1407639DC+2B↑j
                mov     al, [rcx+48h]
                mov     [r8], al
                jmp     short loc_140763A58
sub_1407639DC   endp

; ---------------------------------------------------------------------------
algn_140763A6F:                         ; DATA XREF: .rdata:0000000140092D1C↑o
                                        ; .pdata:000000014010A070↑o
                align 20h
; Exported entry 855. IoGetDmaAdapter

; =============== S U B R O U T I N E =======================================


