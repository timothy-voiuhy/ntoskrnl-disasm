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


                public IoGetDmaAdapter
IoGetDmaAdapter proc near               ; CODE XREF: sub_1409CDE70+173↓p
                                        ; DATA XREF: .rdata:0000000140092D50↑o ...

var_98          = qword ptr -98h
var_88          = dword ptr -88h
var_78          = byte ptr -78h
var_64          = dword ptr -64h
var_38          = qword ptr -38h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140843CB8 SIZE 0000016A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_38], rax
                mov     rbp, r8
                mov     rsi, rdx
                mov     rdi, rcx
                mov     r14d, 40h ; '@'
                mov     r8d, r14d
                lea     rcx, [rsp+0B8h+var_78]
                xor     edx, edx
                call    memset
                xor     ebx, ebx
                mov     [rsp+0B8h+var_88], ebx
                test    rdi, rdi
                jz      short loc_140763B47
                mov     rax, [rdi+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_140843D11
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_140843D11
                mov     rcx, gs:188h
                mov     rdx, rdi
                mov     rax, cs:off_140C00908
                call    sub_1404079D0
                mov     eax, [rsi+14h]
                lea     r15d, [r14-3Fh]
                add     eax, r15d
                test    eax, 0FFFFFFEFh
                jz      loc_140843CB8

loc_140763B1F:                          ; CODE XREF: IoGetDmaAdapter+E028C↓j
                mov     r8, rbp
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140763B78
                mov     rcx, gs:188h
                mov     rbx, rax
                mov     rax, cs:off_140C00908
                xor     edx, edx
                call    sub_1404079D0

loc_140763B47:                          ; CODE XREF: IoGetDmaAdapter+4C↑j
                mov     rax, rbx
                mov     rcx, [rsp+0B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_18]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140763A80
IoGetDmaAdapter endp

algn_140763B72:                         ; DATA XREF: .rdata:0000000140092D50↑o
                                        ; .pdata:000000014010A07C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140763B78   proc near               ; CODE XREF: IoGetDmaAdapter+A8↑p
                                        ; DATA XREF: .rdata:0000000140092D7C↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_20          = qword ptr -20h
var_8           = byte ptr -8

; FUNCTION CHUNK AT 0000000140843E22 SIZE 00000110 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 70h
                mov     rbp, rdx
                mov     rsi, r8
                xor     edx, edx
                mov     rdi, rcx
                lea     rcx, [rax-48h]
                lea     r8d, [rdx+40h]
                call    memset
                xor     ebx, ebx
                lea     r14d, [rbx+2]
                test    rdi, rdi
                jz      loc_140843F19
                mov     rax, [rdi+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_140843E22
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_140843E22
                lea     rax, [rsp+78h+var_48]
                mov     rcx, rdi
                mov     [rsp+78h+var_50], rax
                lea     r9d, [rbx+40h]
                lea     r8d, [rbx+1]
                mov     [rsp+78h+var_58], rbx
                lea     rdx, qword_14000BC68
                call    sub_140764A64
                test    eax, eax
                js      short loc_140763C32
                mov     rax, [rsp+78h+var_20]
                test    rax, rax
                jz      short loc_140763C23
                mov     rcx, [rsp+78h+var_40]
                mov     r8, rsi
                mov     rdx, rbp
                call    sub_1404079D0
                mov     rbx, rax

loc_140763C23:                          ; CODE XREF: sub_140763B78+96↑j
                mov     rcx, [rsp+78h+var_40]
                mov     rax, [rsp+78h+var_30]
                call    sub_1404079D0

loc_140763C32:                          ; CODE XREF: sub_140763B78+8C↑j
                lea     r11, [rsp+78h+var_8]
                mov     rax, rbx
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140763B78   endp

algn_140763C51:                         ; DATA XREF: .rdata:0000000140092D7C↑o
                                        ; .pdata:000000014010A088↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140763C60   proc near               ; DATA XREF: .rdata:0000000140092DA8↑o
                                        ; .pdata:000000014010A094↑o ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140843F32 SIZE 00000062 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     r8, [rcx+40h]
                mov     rsi, rcx
                mov     r9d, 0C0h
                mov     rdi, rdx
                mov     rdx, [rdx+0B8h]
                mov     ebp, 0C00000BBh
                mov     ecx, [r8]
                sub     ecx, r9d
                jnz     loc_140763D83
                movzx   ecx, byte ptr [rdx+1]
                cmp     ecx, 7
                jbe     loc_140763E26
                sub     ecx, 8
                jnz     short loc_140763D11
                movzx   ecx, word ptr [rdx+10h]
                lea     rax, [rdi+38h]
                mov     r9, [rdx+20h]
                movzx   r8d, word ptr [rdx+12h]
                mov     [r11-18h], rax
                mov     rax, [rdx+18h]
                mov     rdx, [rdx+8]
                mov     [r11-20h], rax
                mov     [rsp+48h+var_28], ecx
                mov     rcx, rsi
                call    sub_140763EE0

loc_140763CE0:                          ; CODE XREF: sub_140763C60+1A5↓j
                                        ; sub_140763C60+1D7↓j ...
                mov     ebx, eax

loc_140763CE2:                          ; CODE XREF: sub_140763C60+191↓j
                                        ; sub_140763C60+E02D7↓j
                cmp     ebx, ebp
                jnz     short loc_140763D41

loc_140763CE6:                          ; CODE XREF: sub_140763C60+F3↓j
                mov     ebx, [rdi+30h]

loc_140763CE9:                          ; CODE XREF: sub_140763C60+E4↓j
                xor     edx, edx
                mov     rcx, rdi
                call    IofCompleteRequest
                mov     eax, ebx

loc_140763CF5:                          ; CODE XREF: sub_140763C60+18A↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140763D11:                          ; CODE XREF: sub_140763C60+51↑j
                sub     ecx, 1
                jz      short loc_140763D46
                sub     ecx, 1
                jz      loc_140763EC7
                sub     ecx, 1
                jz      loc_140763EAA
                sub     ecx, 8
                jz      loc_140763DF6
                sub     ecx, 1
                jz      short loc_140763D3F
                cmp     ecx, 2
                jnz     loc_140763DEF

loc_140763D3F:                          ; CODE XREF: sub_140763C60+D4↑j
                                        ; sub_140763C60+E032F↓j
                xor     ebx, ebx

loc_140763D41:                          ; CODE XREF: sub_140763C60+84↑j
                                        ; sub_140763C60+121↓j ...
                mov     [rdi+30h], ebx
                jmp     short loc_140763CE9
; ---------------------------------------------------------------------------

loc_140763D46:                          ; CODE XREF: sub_140763C60+B4↑j
                mov     rcx, [rdx+8]
                mov     esi, 1
                cmp     [rcx+2], si
                jnz     short loc_140763CE6
                mov     eax, [rcx+4]
                and     eax, 0FFFFFEC3h
                mov     [rcx+14h], esi
                or      eax, r9d
                mov     [rcx+4], eax
                or      eax, 0FFFFFFFFh
                xor     ebx, ebx
                mov     [rcx+8], eax
                mov     [rcx+0Ch], eax
                lea     eax, [rsi+3]
                mov     [rcx+24h], eax
                mov     [rcx+28h], eax
                mov     [rcx+34h], rbx
                mov     [rcx+3Ch], ebx
                jmp     short loc_140763D41
; ---------------------------------------------------------------------------

loc_140763D83:                          ; CODE XREF: sub_140763C60+3B↑j
                cmp     ecx, 1
                jnz     loc_140843F32
                movzx   ecx, byte ptr [rdx+1]
                sub     ecx, 7
                jz      loc_140763E96
                sub     ecx, 1
                jnz     short loc_140763E0A
                movzx   ecx, word ptr [rdx+10h]
                lea     rax, [rdi+38h]
                mov     r9, [rdx+20h]
                movzx   r8d, word ptr [rdx+12h]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rdx+18h]
                mov     rdx, [rdx+8]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], ecx
                mov     rcx, rsi
                call    sub_140763EE0

loc_140763DCD:                          ; CODE XREF: sub_140763C60+1BB↓j
                                        ; sub_140763C60+245↓j
                mov     ecx, 80000000h
                mov     ebx, eax
                lea     eax, [rax+rcx]
                test    ecx, eax
                jz      short loc_140763E1D

loc_140763DDB:                          ; CODE XREF: sub_140763C60+1BF↓j
                cmp     ebx, ebp
                jnz     short loc_140763E3C

loc_140763DDF:                          ; CODE XREF: sub_140763C60+1AD↓j
                                        ; sub_140763C60+1DF↓j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1403A728C
                jmp     loc_140763CF5
; ---------------------------------------------------------------------------

loc_140763DEF:                          ; CODE XREF: sub_140763C60+D9↑j
                                        ; sub_140763C60+E0308↓j ...
                mov     ebx, ebp
                jmp     loc_140763CE2
; ---------------------------------------------------------------------------

loc_140763DF6:                          ; CODE XREF: sub_140763C60+CB↑j
                mov     edx, [rdx+8]
                lea     r8, [rdi+38h]
                mov     rcx, rsi
                call    sub_1407CF280
                jmp     loc_140763CE0
; ---------------------------------------------------------------------------

loc_140763E0A:                          ; CODE XREF: sub_140763C60+13C↑j
                cmp     ecx, 0Bh
                jnz     short loc_140763DDF
                mov     edx, [rdx+8]
                lea     r8, [rdi+38h]
                call    sub_1407D0028
                jmp     short loc_140763DCD
; ---------------------------------------------------------------------------

loc_140763E1D:                          ; CODE XREF: sub_140763C60+179↑j
                cmp     ebx, ebp
                jz      short loc_140763DDB
                jmp     loc_140763D41
; ---------------------------------------------------------------------------

loc_140763E26:                          ; CODE XREF: sub_140763C60+48↑j
                jnz     short loc_140763E41
                mov     edx, [rdx+8]
                lea     r8, [rdi+38h]
                mov     rcx, rsi
                call    sub_1407CF640
                jmp     loc_140763CE0
; ---------------------------------------------------------------------------

loc_140763E3C:                          ; CODE XREF: sub_140763C60+17D↑j
                mov     [rdi+30h], ebx
                jmp     short loc_140763DDF
; ---------------------------------------------------------------------------

loc_140763E41:                          ; CODE XREF: sub_140763C60:loc_140763E26↑j
                xor     ebx, ebx
                test    ecx, ecx
                jnz     loc_140843F3C
                cmp     dword ptr [r8+20h], 81h
                jnz     loc_140763D41
                call    sub_1403A8A8C
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                mov     r14d, eax
                mov     ebp, ebx
                test    eax, eax
                jz      short loc_140763E82
                lea     esi, [rbx+1]

loc_140763E74:                          ; CODE XREF: sub_140763C60+220↓j
                mov     ecx, ebp
                call    sub_1403CB718
                add     ebp, esi
                cmp     ebp, r14d
                jb      short loc_140763E74

loc_140763E82:                          ; CODE XREF: sub_140763C60+20F↑j
                xor     r8d, r8d
                lea     edx, [r8+1Ah]
                lea     ecx, [rdx-1]
                call    sub_14099D7A8
                jmp     loc_140763D41
; ---------------------------------------------------------------------------

loc_140763E96:                          ; CODE XREF: sub_140763C60+133↑j
                mov     edx, [rdx+8]
                lea     r8, [rdi+38h]
                mov     rcx, rsi
                call    sub_1407CF640
                jmp     loc_140763DCD
; ---------------------------------------------------------------------------

loc_140763EAA:                          ; CODE XREF: sub_140763C60+C2↑j
                mov     eax, [r8+20h]
                cmp     eax, 81h
                jnz     loc_140843F7D
                lea     rcx, [rdi+38h]
                call    sub_1407B8E94
                jmp     loc_140763CE0
; ---------------------------------------------------------------------------

loc_140763EC7:                          ; CODE XREF: sub_140763C60+B9↑j
                lea     rdx, [rdi+38h]
                mov     rcx, rsi
                call    sub_1407B8D64
                jmp     loc_140763CE0
sub_140763C60   endp

; ---------------------------------------------------------------------------
algn_140763ED8:                         ; DATA XREF: .rdata:0000000140092DA8↑o
                                        ; .pdata:000000014010A094↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140763EE0   proc near               ; CODE XREF: sub_140763C60+7B↑p
                                        ; sub_140763C60+168↑p
                                        ; DATA XREF: ...

arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140843F94 SIZE 0000000E BYTES
; FUNCTION CHUNK AT 0000000140843FA3 SIZE 00000006 BYTES
; FUNCTION CHUNK AT 0000000140843FAA SIZE 00000016 BYTES

                mov     r10, [rcx+40h]
                xor     r11d, r11d
                mov     eax, r11d
                cmp     dword ptr [r10], 0C0h
                cmovz   rax, r10
                test    rax, rax
                jz      short loc_140763F16
                mov     rcx, cs:qword_14000BC68
                sub     rcx, [rdx]
                jnz     short loc_140763F11
                mov     rcx, cs:qword_14000BC70
                sub     rcx, [rdx+8]

loc_140763F11:                          ; CODE XREF: sub_140763EE0+24↑j
                test    rcx, rcx
                jz      short loc_140763F59

loc_140763F16:                          ; CODE XREF: sub_140763EE0+18↑j
                mov     rax, [rdx]
                sub     rax, cs:qword_14000BC48
                jnz     short loc_140763F2D
                mov     rax, [rdx+8]
                sub     rax, cs:qword_14000BC50

loc_140763F2D:                          ; CODE XREF: sub_140763EE0+40↑j
                test    rax, rax
                jz      loc_140764008
                mov     rax, [rdx]
                sub     rax, cs:qword_14000BC58
                jnz     short loc_140763F4D
                mov     rax, [rdx+8]
                sub     rax, cs:qword_14000BC60

loc_140763F4D:                          ; CODE XREF: sub_140763EE0+60↑j
                test    rax, rax
                jz      short loc_140763FB8

loc_140763F52:                          ; CODE XREF: sub_140763EE0+13C↓j
                mov     eax, 0C00000BBh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140763F59:                          ; CODE XREF: sub_140763EE0+34↑j
                mov     rax, [rsp+arg_30]
                mov     ecx, 40h ; '@'
                mov     [rax], ecx
                cmp     [rsp+arg_20], ecx
                jb      loc_140843F9C
                mov     rax, [rsp+arg_28]
                mov     dword ptr [rax], 10040h
                test    r9, r9
                jz      loc_140843FA3
                lea     rcx, sub_140379990
                mov     [rax+8], r9
                lea     rdx, __misaligned_access
                mov     [rax+28h], rcx
                lea     rcx, PsGetHostSilo
                mov     [rax+10h], rdx
                mov     [rax+30h], rcx
                mov     [rax+38h], rcx
                mov     [rax+18h], rdx
                mov     [rax+20h], r11

loc_140763FB4:                          ; CODE XREF: sub_140763EE0+17A↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140763FB8:                          ; CODE XREF: sub_140763EE0+70↑j
                mov     rax, [rsp+arg_30]
                mov     r9d, 28h ; '('
                mov     [rax], r11d
                cmp     [rsp+arg_20], r9d
                jb      loc_140843FAA
                test    r8w, r8w
                jz      loc_140843FB5
                mov     rcx, [rsp+arg_28]
                lea     edx, [r9-27h]
                mov     [rcx+20h], dl
                lea     rdx, __misaligned_access
                mov     [rcx+10h], rdx
                mov     [rcx+18h], rdx
                mov     dword ptr [rcx], 10028h
                mov     [rcx+8], r11
                mov     [rax], r9d

loc_140764003:                          ; CODE XREF: sub_140763EE0+E00D0↓j
                                        ; sub_140763EE0+E00DB↓j
                mov     eax, r11d
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140764008:                          ; CODE XREF: sub_140763EE0+50↑j
                mov     r8d, 30h ; '0'
                cmp     [rsp+arg_20], r8d
                jb      loc_140843F94
                test    r9d, r9d
                jnz     loc_140763F52
                mov     rax, [rsp+arg_28]
                lea     rcx, __misaligned_access
                mov     [rax+10h], rcx
                mov     [rax+18h], rcx
                lea     rcx, sub_1404D6530
                mov     [rax+20h], rcx
                lea     rcx, sub_1404D6560
                mov     [rax+28h], rcx
                mov     dword ptr [rax], 10030h
                mov     rax, [rsp+arg_30]
                mov     [rax], r8d
                jmp     loc_140763FB4
sub_140763EE0   endp

; ---------------------------------------------------------------------------
byte_14076405F  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010A0A0↑o

; =============== S U B R O U T I N E =======================================


sub_140764068   proc near               ; CODE XREF: IoQueryInterface+42↓p
                                        ; DATA XREF: .rdata:0000000140092DD8↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140843FC0 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbx, rcx
                movzx   r15d, r9w
                xor     ecx, ecx
                movzx   r12d, r8w
                mov     r13, rdx
                call    sub_14067926C
                mov     edx, 49706E50h
                mov     rcx, rbx
                call    sub_140349A1C
                mov     rsi, rax
                test    rax, rax
                jz      loc_140843FC0
                mov     rcx, [rax+138h]
                mov     rbx, [rcx+28h]

loc_1407640BD:                          ; CODE XREF: sub_140764068+DFF5A↓j
                cmp     rbx, cs:qword_140C44D00
                jz      short loc_14076411B
                mov     rbp, [rsp+58h+arg_28]
                mov     r14, [rsp+58h+arg_20]

loc_1407640D6:                          ; CODE XREF: sub_140764068+B1↓j
                test    rbx, rbx
                jz      short loc_140764154
                cmp     dword ptr [rbx+12Ch], 314h
                jz      short loc_140764154
                mov     rcx, [rbx+20h]
                movzx   r9d, r12w
                mov     [rsp+58h+var_30], rbp
                movzx   r8d, r15w
                mov     rdx, r13
                mov     [rsp+58h+var_38], r14
                call    sub_140764A64
                mov     edi, eax
                cmp     eax, 0C00000BBh
                jnz     short loc_140764120
                mov     rbx, [rbx+10h]
                cmp     rbx, cs:qword_140C44D00
                jnz     short loc_1407640D6

loc_14076411B:                          ; CODE XREF: sub_140764068+5C↑j
                mov     edi, 0C00000BBh

loc_140764120:                          ; CODE XREF: sub_140764068+A4↑j
                                        ; sub_140764068+F1↓j
                mov     edx, 49706E50h
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                xor     ecx, ecx
                call    sub_140679140
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140764154:                          ; CODE XREF: sub_140764068+71↑j
                                        ; sub_140764068+7D↑j
                mov     edi, 0C00002B6h
                jmp     short loc_140764120
sub_140764068   endp

; ---------------------------------------------------------------------------
byte_14076415B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140092DD8↑o
                                        ; .pdata:000000014010A0AC↑o

; =============== S U B R O U T I N E =======================================


sub_140764164   proc near               ; CODE XREF: sub_140991EF0+105↓p
                                        ; DATA XREF: .rdata:0000000140092DF8↑o ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140843FC8 SIZE 0000003C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rsi
                sub     rsp, 20h
                mov     rsi, rcx
                cmp     edx, 10h
                jb      short loc_1407641D0
                mov     rcx, [rcx]
                lea     rdx, [rax+18h]
                and     qword ptr [rax+18h], 0
                and     qword ptr [rax+20h], 0
                call    sub_140379D94
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407641B0
                mov     rcx, [rsp+28h+arg_10]
                lea     rdx, [rsp+28h+arg_18]
                xor     r8d, r8d
                call    sub_1407641E0
                mov     ebx, eax
                test    eax, eax
                jns     loc_140843FC8

loc_1407641B0:                          ; CODE XREF: sub_140764164+2E↑j
                                        ; sub_140764164+DFE73↓j ...
                cmp     [rsp+28h+arg_10], 0
                jz      short loc_1407641C2
                mov     rcx, [rsp+28h+arg_10]
                call    sub_140379D7C

loc_1407641C2:                          ; CODE XREF: sub_140764164+52↑j
                mov     eax, ebx

loc_1407641C4:                          ; CODE XREF: sub_140764164+71↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1407641D0:                          ; CODE XREF: sub_140764164+12↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1407641C4
sub_140764164   endp

; ---------------------------------------------------------------------------
algn_1407641D7:                         ; DATA XREF: .rdata:0000000140092DF8↑o
                                        ; .pdata:000000014010A0B8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407641E0   proc near               ; CODE XREF: sub_1404D90B0+7A↑p
                                        ; sub_140764164+3D↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140844004 SIZE 00000070 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, cs:qword_140C49C90
                lea     r12, qword_140C49C90
                xor     ebx, ebx
                mov     rbp, r8
                mov     al, bl
                mov     esi, ebx
                mov     r14, rdx
                mov     r15, rcx

loc_14076421A:                          ; CODE XREF: sub_1407641E0+DFE53↓j
                cmp     rdi, r12
                jnz     loc_140844004

loc_140764223:                          ; CODE XREF: sub_1407641E0+DFE4A↓j
                mov     rdi, cs:qword_140C49C90

loc_14076422A:                          ; CODE XREF: sub_1407641E0+DFE8F↓j
                cmp     rdi, r12
                jnz     loc_140844038
                test    al, al
                jnz     short loc_14076425E
                mov     ebx, 0C0000225h

loc_14076423C:                          ; CODE XREF: sub_1407641E0+81↓j
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076425E:                          ; CODE XREF: sub_1407641E0+55↑j
                                        ; sub_1407641E0+DFE5A↓j ...
                mov     [r14], rsi
                jmp     short loc_14076423C
sub_1407641E0   endp

; ---------------------------------------------------------------------------
algn_140764263:                         ; DATA XREF: .rdata:0000000140092E28↑o
                                        ; .pdata:000000014010A0C4↑o
                align 10h
; Exported entry 919. IoQueryInterface

; =============== S U B R O U T I N E =======================================


                public IoQueryInterface
IoQueryInterface proc near              ; CODE XREF: sub_140379D94+67↑p
                                        ; sub_1404B7BB4+2A↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = word ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_30]
                test    dl, 1
                mov     [rsp+38h+var_10], rax
                movzx   r10d, r9w
                mov     rax, [rsp+38h+arg_28]
                mov     r11, r8
                mov     [rsp+38h+var_18], rax
                mov     rdx, r8
                jnz     short loc_1407642A8
                movzx   r8d, [rsp+38h+arg_20]
                call    sub_140764A64

loc_1407642A2:                          ; CODE XREF: IoQueryInterface+47↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407642A8:                          ; CODE XREF: IoQueryInterface+25↑j
                movzx   r9d, [rsp+38h+arg_20]
                movzx   r8d, r10w
                call    sub_140764068
                jmp     short loc_1407642A2
IoQueryInterface endp

; ---------------------------------------------------------------------------
algn_1407642B9:                         ; DATA XREF: .pdata:000000014010A0D0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407642C0   proc near               ; CODE XREF: sub_140735D48+914↑p
                                        ; DATA XREF: .rdata:0000000140092E78↑o ...

var_68          = qword ptr -68h
var_58          = byte ptr -58h
var_8           = byte ptr -8

; FUNCTION CHUNK AT 0000000140844074 SIZE 0000009C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 80h
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rax-58h]
                lea     r8d, [rdx+50h]
                call    memset
                mov     rcx, rbx
                call    sub_140764BA4
                mov     rcx, [rbx+20h]
                lea     rdx, [rsp+88h+var_58]
                call    sub_140764358
                xor     edi, edi
                test    eax, eax
                jns     short loc_140764323

loc_140764306:                          ; CODE XREF: sub_1407642C0+8F↓j
                lea     r11, [rsp+88h+var_8]
                mov     eax, edi
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140764323:                          ; CODE XREF: sub_1407642C0+44↑j
                lea     r14, [rbx+2D0h]
                mov     rcx, rbx
                cmp     [r14], rdi
                jnz     loc_140844074
                mov     r8, r14
                lea     rdx, [rsp+88h+var_58]
                call    sub_140764BFC
                lea     rcx, [rsp+88h+var_58]
                mov     edi, eax
                call    sub_140764BD8
                jmp     short loc_140764306
sub_1407642C0   endp

; ---------------------------------------------------------------------------
algn_140764351:                         ; DATA XREF: .rdata:0000000140092E78↑o
                                        ; .pdata:000000014010A0DC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140764358   proc near               ; CODE XREF: sub_1407642C0+3B↑p
                                        ; DATA XREF: .rdata:0000000140092E9C↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140844110 SIZE 00000119 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                push    rdi
                sub     rsp, 30h
                xor     ebp, ebp
                mov     rdi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14084420F
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_140844110
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_140844110
                mov     [r11-10h], rdx
                lea     r9d, [rbp+50h]
                lea     rdx, qword_14000BC88
                mov     [r11-18h], rbx
                lea     r8d, [rbp+2]
                mov     rcx, rbx
                call    sub_140764A64
                test    eax, eax
                jns     short loc_1407643D1

loc_1407643C0:                          ; CODE XREF: sub_140764358+93↓j
                                        ; sub_140764358+A2↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407643D1:                          ; CODE XREF: sub_140764358+66↑j
                cmp     [rdi+10h], rbp
                jz      short loc_1407643ED
                cmp     [rdi+18h], rbp
                jz      short loc_1407643ED
                cmp     [rdi+40h], rbp
                jz      short loc_1407643ED
                cmp     [rdi+38h], rbp
                jz      short loc_1407643ED
                mov     eax, ebp
                jmp     short loc_1407643C0
; ---------------------------------------------------------------------------

loc_1407643ED:                          ; CODE XREF: sub_140764358+7D↑j
                                        ; sub_140764358+83↑j ...
                mov     rcx, rdi
                call    sub_140764BD8
                mov     eax, 0C00000BBh
                jmp     short loc_1407643C0
sub_140764358   endp

; ---------------------------------------------------------------------------
byte_1407643FC  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140092E9C↑o
                                        ; .pdata:000000014010A0E8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140764404   proc near               ; CODE XREF: sub_140735D48+8FA↑p
                                        ; sub_140762BD8+E0BC5↓p
                                        ; DATA XREF: ...

var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 000000014084422A SIZE 0000008B BYTES

                mov     rax, rsp
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B8h
                xor     r12d, r12d
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_50], rax
                or      eax, 0FFFFFFFFh
                mov     [rbp+57h+var_B8], r12
                mov     byte ptr [rbp+57h+var_A8], r12b
                mov     rsi, rcx
                mov     [rbp+57h+var_A4], eax
                mov     r14d, r12d
                mov     [rbp+57h+var_C0], eax
                mov     [rbp+57h+var_90], r12
                movups  [rbp+57h+var_70], xmm0
                movups  [rbp+57h+var_60], xmm0
                test    rcx, rcx
                jz      loc_1408442AB
                test    rdx, rdx
                jz      loc_1408442AB
                test    r8, r8
                jz      loc_1408442AB
                mov     rcx, cs:qword_140C44D00
                mov     [rdx], r12
                mov     [r8], r12d
                cmp     rsi, rcx
                jz      loc_14084422A
                mov     edi, r12d
                lea     r9d, [r12+1]
                mov     rax, rsi

loc_140764495:                          ; CODE XREF: sub_140764404+9B↓j
                mov     rax, [rax+10h]
                add     edi, r9d
                cmp     rax, rcx
                jnz     short loc_140764495
                mov     ebx, edi
                mov     r8d, 75737050h
                shl     rbx, 3
                mov     ecx, r9d
                mov     r15d, edi
                mov     rdx, rbx
                mov     [rbp+57h+var_98], edi
                mov     [rbp+57h+var_78], r15
                call    ExAllocatePoolWithTag
                mov     [rbp+57h+var_B0], rax
                mov     r13, rax
                test    rax, rax
                jz      loc_140844234
                mov     r8, rbx
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     ebx, r15d
                mov     r8d, 75737050h
                shl     rbx, 2
                mov     r15d, 1
                mov     rdx, rbx
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                xor     r11d, r11d
                mov     [rbp+57h+var_88], rax
                mov     r12, rax
                test    rax, rax
                jz      loc_14084423E
                mov     r8, rbx
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xor     r11d, r11d
                mov     [rbp+57h+arg_18], r15d
                cmp     rsi, cs:qword_140C44D00
                mov     r13d, r11d
                jz      loc_1407647C7

loc_140764534:                          ; CODE XREF: sub_140764404+331↓j
                mov     rcx, [rsi+20h]
                lea     rax, [rbp+57h+var_70]
                mov     [rsp+28h], rax
                lea     rdx, qword_14000BC98
                mov     r9d, 28h ; '('
                mov     [rsp+0F0h+var_D0], r11
                mov     r8d, r15d
                call    sub_140764A64
                xor     r11d, r11d
                mov     ebx, eax
                test    eax, eax
                js      loc_140764748
                mov     rax, [rbp+57h+var_50]
                test    rax, rax
                jz      loc_140844276
                mov     rcx, qword ptr [rbp+57h+var_70+8]
                lea     rdx, [rbp+57h+var_B8]
                mov     [rbp+57h+var_B8], r11
                call    sub_1404079D0
                mov     rcx, [rbp+57h+var_B8]
                xor     r11d, r11d
                mov     ebx, eax
                test    eax, eax
                js      loc_140764A44
                test    rcx, rcx
                mov     eax, 0C00000BBh
                cmovz   ebx, eax
                test    ebx, ebx
                js      loc_140764A44
                mov     r15d, r13d
                mov     r8d, r11d
                mov     r9d, r11d
                mov     edx, r11d
                mov     [r12+r15*4], r11d
                mov     rcx, [rbp+57h+var_B8]
                cmp     [rcx], r11w
                jz      short loc_140764610
                or      r10, 0FFFFFFFFFFFFFFFFh

loc_1407645C8:                          ; CODE XREF: sub_140764404+20A↓j
                inc     r8d
                mov     rax, r10
                mov     [r12+r15*4], r8d

loc_1407645D2:                          ; CODE XREF: sub_140764404+1D6↓j
                inc     rax
                cmp     [rcx+rax*2], r11w
                jnz     short loc_1407645D2
                inc     eax
                add     r9d, eax
                mov     rax, r10

loc_1407645E4:                          ; CODE XREF: sub_140764404+1E8↓j
                inc     rax
                cmp     [rcx+rax*2], r11w
                jnz     short loc_1407645E4
                cmp     eax, edx
                cmovbe  eax, edx
                mov     edx, eax
                mov     rax, r10

loc_1407645F8:                          ; CODE XREF: sub_140764404+1FC↓j
                inc     rax
                cmp     [rcx+rax*2], r11w
                jnz     short loc_1407645F8
                lea     rcx, [rcx+rax*2]
                add     rcx, 2
                cmp     [rcx], r11w
                jnz     short loc_1407645C8

loc_140764610:                          ; CODE XREF: sub_140764404+1BE↑j
                mov     eax, [rbp+57h+arg_18]
                lea     edi, [r9+1]
                imul    eax, r8d
                add     r14d, edx
                add     rdi, rdi
                mov     r8d, 75737050h
                mov     rdx, rdi
                mov     ecx, 1
                mov     [rbp+57h+arg_18], eax
                call    ExAllocatePoolWithTag
                mov     rcx, [rbp+57h+var_B0]
                mov     [rcx+r15*8], rax
                test    rax, rax
                jz      loc_140844253
                mov     rdx, [rbp+57h+var_B8]
                mov     r8, rdi
                mov     rcx, rax
                call    memmove
                mov     rcx, [rbp+57h+var_B0]
                xor     r9d, r9d
                mov     rax, [rcx+r15*8]
                cmp     [rax], r9w
                jz      loc_140844248
                mov     r12d, [rbp+57h+var_A4]
                mov     esi, [rbp+57h+var_A8]

loc_140764673:                          ; CODE XREF: sub_140764404+2C3↓j
                mov     dl, r9b
                mov     r8b, r9b

loc_140764679:                          ; CODE XREF: sub_140764404+33F↓j
                movzx   ecx, word ptr [rax]
                cmp     cx, 21h ; '!'
                jz      loc_14076473D
                cmp     cx, 40h ; '@'
                jz      loc_140764A2E
                test    r8b, r8b
                movzx   esi, sil
                mov     r15d, 1
                cmovnz  esi, r15d
                test    dl, dl
                jz      short loc_1407646AD
                cmp     r12d, 0FFFFFFFFh
                cmovz   r12d, r13d

loc_1407646AD:                          ; CODE XREF: sub_140764404+29F↑j
                or      rcx, 0FFFFFFFFFFFFFFFFh

loc_1407646B1:                          ; CODE XREF: sub_140764404+2B5↓j
                inc     rcx
                cmp     [rax+rcx*2], r9w
                jnz     short loc_1407646B1
                lea     rax, [rax+rcx*2]
                add     rax, 2
                cmp     [rax], r9w
                jnz     short loc_140764673
                mov     [rbp+57h+var_A8], esi
                mov     rsi, [rbp+57h+arg_0]
                mov     [rbp+57h+var_A4], r12d
                mov     r12, [rbp+57h+var_88]

loc_1407646D8:                          ; CODE XREF: sub_140764404+DFE4A↓j
                add     r13d, r15d

loc_1407646DB:                          ; CODE XREF: sub_140764404+DFE5A↓j
                mov     rcx, [rbp+57h+var_B8]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     edi, [rbp+57h+var_98]
                xor     r11d, r11d
                mov     [rbp+57h+var_B8], r11

loc_1407646F0:                          ; CODE XREF: sub_140764404+643↓j
                                        ; sub_140764404+DFE6D↓j ...
                mov     rax, qword ptr [rbp+57h+var_60+8]
                test    rax, rax
                jz      short loc_140764705
                mov     rcx, qword ptr [rbp+57h+var_70+8]
                call    sub_1404079D0
                xor     r11d, r11d

loc_140764705:                          ; CODE XREF: sub_140764404+2F3↑j
                test    ebx, ebx
                js      loc_140764A52
                mov     eax, 120h
                cmp     ebx, eax
                jz      loc_1407647B6
                cmp     r13d, edi
                jz      loc_1407647B6
                mov     rsi, [rsi+10h]
                add     r14d, r15d
                cmp     rsi, cs:qword_140C44D00
                mov     [rbp+57h+arg_0], rsi
                jnz     loc_140764534
                jmp     short loc_1407647BB
; ---------------------------------------------------------------------------

loc_14076473D:                          ; CODE XREF: sub_140764404+27C↑j
                mov     dl, 1

loc_14076473F:                          ; CODE XREF: sub_140764404+62D↓j
                add     rax, 2
                jmp     loc_140764679
; ---------------------------------------------------------------------------

loc_140764748:                          ; CODE XREF: sub_140764404+15E↑j
                mov     r14, r11

loc_14076474B:                          ; CODE XREF: sub_140764404+5EC↓j
                                        ; sub_140764404+652↓j ...
                mov     r13, [rbp+57h+var_B0]

loc_14076474F:                          ; CODE XREF: sub_140764404+DFE3F↓j
                cmp     [rbp+57h+var_98], r11d
                jbe     short loc_14076476D
                mov     rsi, [rbp+57h+var_78]
                mov     rdi, r13

loc_14076475C:                          ; CODE XREF: sub_140764404+367↓j
                mov     rcx, [rdi]
                test    rcx, rcx
                jnz     short loc_1407647AA

loc_140764764:                          ; CODE XREF: sub_140764404+3B0↓j
                add     rdi, 8
                sub     rsi, r15
                jnz     short loc_14076475C

loc_14076476D:                          ; CODE XREF: sub_140764404+34F↑j
                xor     edx, edx
                mov     rcx, r13
                call    ExFreePoolWithTag
                test    r12, r12
                jz      short loc_140764786
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_140764786:                          ; CODE XREF: sub_140764404+376↑j
                test    ebx, ebx
                jns     short loc_140764793
                test    r14, r14
                jnz     loc_14084429B

loc_140764793:                          ; CODE XREF: sub_140764404+384↑j
                                        ; sub_140764404+DFE35↓j ...
                mov     eax, ebx

loc_140764795:                          ; CODE XREF: sub_140764404+DFE2B↓j
                                        ; sub_140764404+DFEAC↓j
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
                align 2

loc_1407647AA:                          ; CODE XREF: sub_140764404+35E↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     r11d, r11d
                jmp     short loc_140764764
; ---------------------------------------------------------------------------

loc_1407647B6:                          ; CODE XREF: sub_140764404+310↑j
                                        ; sub_140764404+319↑j
                mov     ebx, eax
                add     r14d, r15d

loc_1407647BB:                          ; CODE XREF: sub_140764404+337↑j
                test    ebx, ebx
                js      loc_140764A52
                mov     r15d, [rbp+57h+arg_18]

loc_1407647C7:                          ; CODE XREF: sub_140764404+12A↑j
                mov     eax, 1
                imul    r14d, r15d
                mov     ebx, r11d
                mov     r8d, 75737050h
                mov     ecx, eax
                mov     [rbp+57h+var_80], ebx
                lea     edi, [rax+r14]
                add     rdi, rdi
                mov     rdx, rdi
                call    ExAllocatePoolWithTag
                xor     r11d, r11d
                mov     [rbp+57h+var_90], rax
                mov     r14, rax
                test    rax, rax
                jz      loc_140844280
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xor     r11d, r11d
                lea     r10d, [r13-1]
                mov     [rbp+57h+var_BC], r10d
                mov     rdi, r14
                mov     [rbp+57h+var_A0], r11d
                mov     esi, r11d
                test    r15d, r15d
                jz      loc_140844290
                mov     ebx, [rbp+57h+arg_18]

loc_14076482E:                          ; CODE XREF: sub_140764404+5C0↓j
                mov     r15d, r10d
                mov     [rbp+57h+var_9C], ebx
                mov     eax, ebx
                mov     byte ptr [rbp+57h+arg_0], r11b
                mov     r14, rdi
                mov     r13b, r11b
                mov     r9b, r11b
                mov     r12b, r11b

loc_140764846:                          ; CODE XREF: sub_140764404+53B↓j
                mov     rcx, [rbp+57h+var_88]
                xor     edx, edx
                mov     r11d, r15d
                mov     r8d, [rcx+r11*4]
                div     r8d
                xor     edx, edx
                mov     ecx, eax
                mov     eax, esi
                div     ecx
                xor     edx, edx
                div     r8d
                mov     rax, [rbp+57h+var_B0]
                mov     rsi, [rax+r11*8]
                xor     r11d, r11d
                test    edx, edx
                jnz     loc_140764959

loc_140764876:                          ; CODE XREF: sub_140764404+57A↓j
                mov     dl, r11b
                mov     r8b, r11b
                mov     r11d, 1

loc_140764882:                          ; CODE XREF: sub_140764404+547↓j
                movzx   eax, word ptr [rsi]
                cmp     ax, 21h ; '!'
                jz      loc_140764944
                cmp     ax, 40h ; '@'
                jz      loc_1407649F5
                mov     r11d, 0
                cmp     r15d, r10d
                jz      loc_140764983

loc_1407648A8:                          ; CODE XREF: sub_140764404+59C↓j
                test    dl, dl
                jz      loc_140764950
                cmp     byte ptr [rbp+57h+var_A8], r11b
                jz      loc_140764A36

loc_1407648BA:                          ; CODE XREF: sub_140764404+635↓j
                mov     al, r9b
                mov     [rbp+57h+var_C0], r15d
                neg     al
                mov     r13d, 1
                sbb     cl, cl
                and     r12b, cl

loc_1407648CE:                          ; CODE XREF: sub_140764404+550↓j
                test    r8b, r8b
                jnz     loc_1407649FD

loc_1407648D7:                          ; CODE XREF: sub_140764404+613↓j
                or      r8, 0FFFFFFFFFFFFFFFFh

loc_1407648DB:                          ; CODE XREF: sub_140764404+4DF↓j
                inc     r8
                cmp     [rsi+r8*2], r11w
                jnz     short loc_1407648DB
                add     r8, r8
                mov     rdx, rsi
                mov     rcx, r14
                call    memmove
                or      rcx, 0FFFFFFFFFFFFFFFFh
                xor     r11d, r11d

loc_1407648FA:                          ; CODE XREF: sub_140764404+4FE↓j
                inc     rcx
                cmp     [rsi+rcx*2], r11w
                jnz     short loc_1407648FA
                lea     r14, [r14+rcx*2]
                test    r15d, r15d
                jz      loc_1407649A5
                mov     r8, [rbp+57h+var_88]
                mov     eax, 23h ; '#'
                mov     r9b, byte ptr [rbp+57h+arg_0]
                xor     edx, edx
                mov     esi, [rbp+57h+var_A0]
                mov     r10d, [rbp+57h+var_BC]
                mov     [r14], ax
                add     r14, 2
                mov     eax, [rbp+57h+var_9C]
                mov     ecx, r15d
                div     dword ptr [r8+rcx*4]
                dec     r15d
                mov     [rbp+57h+var_9C], eax
                jmp     loc_140764846
; ---------------------------------------------------------------------------

loc_140764944:                          ; CODE XREF: sub_140764404+485↑j
                mov     dl, r11b

loc_140764947:                          ; CODE XREF: sub_140764404+5F4↓j
                add     rsi, 2
                jmp     loc_140764882
; ---------------------------------------------------------------------------

loc_140764950:                          ; CODE XREF: sub_140764404+4A6↑j
                mov     byte ptr [rbp+57h+arg_0], r11b
                jmp     loc_1407648CE
; ---------------------------------------------------------------------------

loc_140764959:                          ; CODE XREF: sub_140764404+46C↑j
                mov     ecx, edx
                mov     ebx, 1

loc_140764960:                          ; CODE XREF: sub_140764404+575↓j
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140764964:                          ; CODE XREF: sub_140764404+568↓j
                inc     rax
                cmp     [rsi+rax*2], r11w
                jnz     short loc_140764964
                lea     rsi, [rsi+rax*2]
                add     rsi, 2
                sub     rcx, rbx
                jnz     short loc_140764960
                mov     ebx, [rbp+57h+arg_18]
                jmp     loc_140764876
; ---------------------------------------------------------------------------

loc_140764983:                          ; CODE XREF: sub_140764404+49E↑j
                or      r11d, 0FFFFFFFFh
                mov     byte ptr [rbp+57h+arg_0], dl
                test    dl, dl
                mov     r13b, dl
                mov     r9b, dl
                mov     r12b, dl
                cmovnz  r11d, r15d
                mov     [rbp+57h+var_C0], r11d
                xor     r11d, r11d
                jmp     loc_1407648A8
; ---------------------------------------------------------------------------

loc_1407649A5:                          ; CODE XREF: sub_140764404+507↑j
                test    r13b, r13b
                jz      short loc_140764A24
                test    r12b, r12b
                jnz     short loc_140764A1C

loc_1407649AF:                          ; CODE XREF: sub_140764404+61E↓j
                                        ; sub_140764404+628↓j
                mov     r10d, [rbp+57h+var_BC]

loc_1407649B3:                          ; CODE XREF: sub_140764404+63B↓j
                mov     esi, [rbp+57h+var_A0]
                mov     r15d, 1
                add     esi, r15d
                mov     [rbp+57h+var_A0], esi
                cmp     esi, ebx
                jb      loc_14076482E
                mov     ebx, [rbp+57h+var_80]
                mov     r14, [rbp+57h+var_90]
                mov     r12, [rbp+57h+var_88]

loc_1407649D5:                          ; CODE XREF: sub_140764404+DFE92↓j
                mov     rax, [rbp+57h+arg_8]
                mov     [rdi], r11w
                sub     rdi, r14
                add     rdi, 2
                sar     rdi, 1
                mov     [rax], r14
                mov     rax, [rbp+57h+arg_10]
                mov     [rax], edi
                jmp     loc_14076474B
; ---------------------------------------------------------------------------

loc_1407649F5:                          ; CODE XREF: sub_140764404+48F↑j
                mov     r8b, r11b
                jmp     loc_140764947
; ---------------------------------------------------------------------------

loc_1407649FD:                          ; CODE XREF: sub_140764404+4CD↑j
                or      r10d, 0FFFFFFFFh
                mov     byte ptr [rbp+57h+arg_0], dl
                test    dl, dl
                mov     r14, rdi
                mov     r13b, dl
                mov     r12b, dl
                cmovnz  r10d, r15d
                mov     [rbp+57h+var_C0], r10d
                jmp     loc_1407648D7
; ---------------------------------------------------------------------------

loc_140764A1C:                          ; CODE XREF: sub_140764404+5A9↑j
                mov     eax, [rbp+57h+var_C0]
                cmp     eax, [rbp+57h+var_A4]
                ja      short loc_1407649AF

loc_140764A24:                          ; CODE XREF: sub_140764404+5A4↑j
                mov     [r14], r11w
                lea     rdi, [r14+2]
                jmp     short loc_1407649AF
; ---------------------------------------------------------------------------

loc_140764A2E:                          ; CODE XREF: sub_140764404+286↑j
                mov     r8b, 1
                jmp     loc_14076473F
; ---------------------------------------------------------------------------

loc_140764A36:                          ; CODE XREF: sub_140764404+4B0↑j
                test    r12b, r12b
                jnz     loc_1407648BA
                jmp     loc_1407649B3
; ---------------------------------------------------------------------------

loc_140764A44:                          ; CODE XREF: sub_140764404+18D↑j
                                        ; sub_140764404+1A0↑j
                test    rcx, rcx
                jz      loc_1407646F0
                jmp     loc_140844263
; ---------------------------------------------------------------------------

loc_140764A52:                          ; CODE XREF: sub_140764404+303↑j
                                        ; sub_140764404+3B9↑j
                mov     r14, [rbp+57h+var_90]
                jmp     loc_14076474B
sub_140764404   endp

; ---------------------------------------------------------------------------
byte_140764A5B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140092EC8↑o
                                        ; .pdata:000000014010A0F4↑o

; =============== S U B R O U T I N E =======================================


sub_140764A64   proc near               ; CODE XREF: sub_14050F798+79↑p
                                        ; sub_140735D48+1D1↑p ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_8           = byte ptr -8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408442B6 SIZE 0000002B BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 70h
                xorps   xmm0, xmm0
                movzx   ebx, r9w
                xor     eax, eax
                movzx   esi, r8w
                mov     rbp, rdx
                mov     rdi, rcx
                movups  [rsp+78h+var_28], xmm0
                mov     [r11-18h], rax
                movups  [rsp+78h+var_38], xmm0
                cmp     ebx, 20h ; ' '
                jb      loc_1408442B6
                mov     r14, [rsp+78h+arg_28]
                mov     r8d, ebx
                mov     rcx, r14
                xor     edx, edx
                call    memset
                xor     r8d, r8d
                mov     [r14], bx
                xor     edx, edx
                mov     [r14+2], si
                lea     rcx, [rsp+78h+var_28]
                call    KeInitializeEvent
                mov     edx, 49706E50h
                mov     rcx, rdi
                call    sub_1402B0A60
                mov     rcx, [rsp+78h]
                mov     rdi, rax
                mov     [rsp+78h+var_40], rcx
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_48], rax
                xor     r9d, r9d
                lea     rax, [rsp+78h+var_28]
                xor     r8d, r8d
                mov     [rsp+78h+var_50], rax
                mov     rdx, rdi
                and     [rsp+78h+var_58], 0
                lea     ecx, [r9+1Bh]
                call    sub_140704870
                test    rax, rax
                jz      short loc_140764B94
                mov     rdx, [rax+0B8h]
                mov     rcx, [rsp+78h+arg_20]
                mov     byte ptr [rax+40h], 0
                mov     dword ptr [rax+30h], 0C00000BBh
                mov     [rdx-28h], rcx
                mov     rcx, rdi
                mov     byte ptr [rdx-47h], 8
                mov     [rdx-40h], rbp
                mov     [rdx-38h], bx
                mov     [rdx-36h], si
                mov     [rdx-30h], r14
                mov     rdx, rax
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_1408442C0

loc_140764B69:                          ; CODE XREF: sub_140764A64+135↓j
                                        ; sub_140764A64+DF878↓j
                mov     edx, 49706E50h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                mov     eax, ebx

loc_140764B78:                          ; CODE XREF: sub_140764A64+DF857↓j
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140764B94:                          ; CODE XREF: sub_140764A64+B9↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_140764B69
sub_140764A64   endp

; ---------------------------------------------------------------------------
byte_140764B9B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140092EF4↑o
                                        ; .pdata:000000014010A100↑o

; =============== S U B R O U T I N E =======================================


sub_140764BA4   proc near               ; CODE XREF: sub_140747D98+6E↑p
                                        ; sub_1407642C0+2D↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+2D0h]
                test    rcx, rcx
                jnz     short loc_140764BC0

loc_140764BB9:                          ; CODE XREF: sub_140764BA4+29↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140764BC0:                          ; CODE XREF: sub_140764BA4+13↑j
                call    sub_140764EA8
                and     qword ptr [rbx+2D0h], 0
                jmp     short loc_140764BB9
sub_140764BA4   endp

; ---------------------------------------------------------------------------
byte_140764BCF  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010A10C↑o

; =============== S U B R O U T I N E =======================================


sub_140764BD8   proc near               ; CODE XREF: sub_1407642C0+8A↑p
                                        ; sub_140764358+98↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rax, [rcx+18h]
                test    rax, rax
                jz      short loc_140764BEE
                mov     rcx, [rcx+8]
                call    sub_1404079D0

loc_140764BEE:                          ; CODE XREF: sub_140764BD8+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140764BD8   endp

byte_140764BF4  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010A118↑o

; =============== S U B R O U T I N E =======================================


sub_140764BFC   proc near               ; CODE XREF: sub_1407642C0+7E↑p
                                        ; DATA XREF: .pdata:000000014010A124↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                and     [rsp+38h+arg_10], 0
                mov     rsi, rdx
                mov     edx, 28h ; '('
                mov     r14, r8
                mov     rbp, rcx
                mov     r8d, 64706E50h
                lea     ecx, [rdx-27h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140764C41
                mov     edi, 0C000009Ah
                jmp     loc_140764D1A
; ---------------------------------------------------------------------------

loc_140764C41:                          ; CODE XREF: sub_140764BFC+39↑j
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rbx], xmm0
                mov     rdx, rbx
                mov     rcx, rsi
                movups  xmmword ptr [rbx+10h], xmm0
                mov     [rbx+20h], rax
                call    sub_140764D3C
                mov     edi, eax
                test    eax, eax
                js      loc_140764D10
                call    sub_1403F0158
                test    eax, eax
                jnz     short loc_140764C8E
                mov     rax, [rbx]
                test    byte ptr [rax+4], 2
                jz      short loc_140764C8E
                lea     rdx, [rbx+18h]
                mov     rcx, rsi
                call    sub_1405CE4E8
                mov     edi, eax
                test    eax, eax
                js      loc_140764D10

loc_140764C8E:                          ; CODE XREF: sub_140764BFC+71↑j
                                        ; sub_140764BFC+7A↑j
                mov     rax, [rsi+38h]
                test    rax, rax
                jz      short loc_140764CA9
                mov     rcx, [rsi+8]
                lea     rdx, [rsp+38h+arg_10]
                call    sub_1404079D0
                mov     edi, eax
                jmp     short loc_140764CAE
; ---------------------------------------------------------------------------

loc_140764CA9:                          ; CODE XREF: sub_140764BFC+99↑j
                mov     edi, 0C00000BBh

loc_140764CAE:                          ; CODE XREF: sub_140764BFC+AB↑j
                test    edi, edi
                js      short loc_140764D10
                mov     eax, [rsp+38h+arg_10]
                shr     eax, 1
                shl     al, 3
                xor     al, [rbx+10h]
                and     al, 8
                xor     [rbx+10h], al
                mov     al, [rbx+10h]
                mov     cl, byte ptr [rsp+38h+arg_10]
                shl     cl, 2
                xor     cl, al
                and     cl, 4
                xor     cl, al
                mov     [rbx+10h], cl
                mov     edx, [rsp+38h+arg_10]
                shr     edx, 3
                shl     dl, 5
                xor     dl, cl
                and     dl, 20h
                xor     dl, cl
                mov     [rbx+10h], dl
                mov     eax, [rsp+38h+arg_10]
                shr     eax, 2
                shl     al, 4
                xor     al, dl
                and     al, 10h
                xor     al, dl
                mov     [rbx+10h], al
                test    al, 24h
                jz      short loc_140764D1A
                mov     edx, [rsp+38h+arg_10]
                mov     rcx, rbp
                call    sub_1408B3480
                jmp     short loc_140764D1A
; ---------------------------------------------------------------------------

loc_140764D10:                          ; CODE XREF: sub_140764BFC+64↑j
                                        ; sub_140764BFC+8C↑j ...
                mov     rcx, rbx
                call    sub_140764EA8
                xor     ebx, ebx

loc_140764D1A:                          ; CODE XREF: sub_140764BFC+40↑j
                                        ; sub_140764BFC+104↑j ...
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, edi
                mov     [r14], rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140764BFC   endp

byte_140764D33  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010A124↑o

; =============== S U B R O U T I N E =======================================


sub_140764D3C   proc near               ; CODE XREF: sub_140764BFC+5B↑p
                                        ; DATA XREF: .rdata:0000000140092F34↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408442E2 SIZE 00000031 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 30h
                and     qword ptr [r11+8], 0
                xor     ebx, ebx
                mov     rax, [rcx+40h]
                mov     r14, rdx
                mov     rsi, rcx
                test    rax, rax
                jz      loc_1408442E2
                mov     rcx, [rcx+8]
                lea     r9, [r11+8]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_1404079D0
                cmp     eax, 0C0000023h
                jnz     loc_1408442EC
                mov     rdx, [rsp+38h+arg_0]
                test    rdx, rdx
                jz      loc_1408442EC
                lea     ecx, [rbx+1]
                mov     r8d, 64706E50h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140764E11
                mov     r8, [rsp+38h+arg_0]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rax, [rsi+40h]
                xor     r9d, r9d
                mov     rdx, [rsp+38h+arg_0]
                mov     r8, rbx
                mov     rcx, [rsi+8]
                call    sub_1404079D0
                mov     edi, eax
                test    eax, eax
                js      loc_1408442F6
                mov     r8, [rsp+38h+arg_0]
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140764E20

loc_140764DED:                          ; CODE XREF: sub_140764D3C+DF5B5↓j
                test    edi, edi
                js      loc_1408442F6

loc_140764DF5:                          ; CODE XREF: sub_140764D3C+DA↓j
                                        ; sub_140764D3C+DF5AB↓j ...
                mov     rsi, [rsp+38h+arg_10]
                mov     eax, edi
                mov     rdi, [rsp+38h+arg_18]
                mov     [r14], rbx
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140764E11:                          ; CODE XREF: sub_140764D3C+6E↑j
                mov     edi, 0C000009Ah
                jmp     short loc_140764DF5
sub_140764D3C   endp

; ---------------------------------------------------------------------------
algn_140764E18:                         ; DATA XREF: .rdata:0000000140092F34↑o
                                        ; .pdata:000000014010A130↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140764E20   proc near               ; CODE XREF: sub_1405CE4E8+AD↑p
                                        ; sub_140764D3C+AC↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140844314 SIZE 0000001D BYTES

                push    rbx
                sub     rsp, 30h
                mov     r9d, [rdx]
                mov     r10, rdx
                mov     r11, rcx
                lea     eax, [r9-1]
                cmp     eax, 5
                ja      short loc_140764E9B
                sub     r9d, 1
                jz      short loc_140764E5E
                cmp     r9d, 1
                jnz     short loc_140764E57
                mov     rdx, r8
                mov     rcx, r10
                call    sub_1407C4FE4

loc_140764E4F:                          ; CODE XREF: sub_140764E20+6B↓j
                                        ; sub_140764E20+72↓j ...
                test    eax, eax
                js      loc_140844314

loc_140764E57:                          ; CODE XREF: sub_140764E20+22↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140764E5E:                          ; CODE XREF: sub_140764E20+1C↑j
                mov     rdx, [rdx+10h]
                test    rdx, rdx
                jz      short loc_140764E94
                movzx   ecx, word ptr [r10+0Eh]
                test    cx, cx
                jz      short loc_140764E94
                lea     rax, [r10+18h]
                cmp     rdx, rax
                jb      short loc_140764E8D
                add     rcx, rdx
                lea     rax, [r10+r8]
                cmp     rax, rcx
                sbb     eax, eax
                and     eax, 80000005h
                jmp     short loc_140764E4F
; ---------------------------------------------------------------------------

loc_140764E8D:                          ; CODE XREF: sub_140764E20+58↑j
                mov     eax, 0C0000141h
                jmp     short loc_140764E4F
; ---------------------------------------------------------------------------

loc_140764E94:                          ; CODE XREF: sub_140764E20+45↑j
                                        ; sub_140764E20+4F↑j
                mov     eax, 0C0000206h
                jmp     short loc_140764E4F
; ---------------------------------------------------------------------------

loc_140764E9B:                          ; CODE XREF: sub_140764E20+16↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140764E4F
sub_140764E20   endp

; ---------------------------------------------------------------------------
algn_140764EA2:                         ; DATA XREF: .rdata:0000000140092F50↑o
                                        ; .pdata:000000014010A13C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140764EA8   proc near               ; CODE XREF: sub_140764BA4:loc_140764BC0↑p
                                        ; sub_140764BFC+117↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                movzx   eax, byte ptr [rcx+10h]
                mov     rbx, rcx
                test    al, 2
                jnz     short loc_140764F04
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_140764ECF
                mov     edx, 64706E50h
                call    ExFreePoolWithTag
                and     qword ptr [rbx], 0

loc_140764ECF:                          ; CODE XREF: sub_140764EA8+17↑j
                call    sub_1403F0158
                test    eax, eax
                jnz     short loc_140764EF0
                mov     rcx, [rbx+18h]
                test    rcx, rcx
                jz      short loc_140764EF0
                mov     edx, 64706E50h
                call    ExFreePoolWithTag
                and     qword ptr [rbx+18h], 0

loc_140764EF0:                          ; CODE XREF: sub_140764EA8+2E↑j
                                        ; sub_140764EA8+37↑j
                mov     edx, 64706E50h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140764F04:                          ; CODE XREF: sub_140764EA8+F↑j
                mov     r9, rax
                mov     [rsp+38h+var_18], 1001h
                mov     r8, rbx
                mov     edx, 11h
                mov     ecx, 0CAh
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_140764EA8   endp

algn_140764F23:                         ; DATA XREF: .pdata:000000014010A148↑o
                align 10h
; Exported entry 2574. SeTokenImpersonationLevel

; =============== S U B R O U T I N E =======================================


                public SeTokenImpersonationLevel
SeTokenImpersonationLevel proc near     ; DATA XREF: .pdata:000000014010A154↑o
                mov     eax, [rcx+0C4h]
                retn
SeTokenImpersonationLevel endp

; ---------------------------------------------------------------------------
                align 8
algn_140764F38:                         ; DATA XREF: .pdata:000000014010A154↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140764F40   proc near               ; CODE XREF: sub_140637AA0+1C2↑p
                                        ; sub_140637AA0+276↑p
                                        ; DATA XREF: ...

var_20          = qword ptr -20h
var_18          = word ptr -18h
var_16          = word ptr -16h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = dword ptr  40h
arg_4           = dword ptr  44h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h
arg_20          = qword ptr  60h

; FUNCTION CHUNK AT 0000000140844332 SIZE 00000071 BYTES

                mov     [rsp-38h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                mov     ebx, [rcx+10h]
                xor     eax, eax
                and     [rbp+var_14], eax
                mov     r14, r8
                mov     r13, [rbp+arg_20]
                mov     rsi, rdx
                or      [rbp+arg_0], 0FFFFFFFFh
                mov     rdi, rcx
                mov     [rbp+arg_4], eax
                mov     edx, r9d
                mov     rax, [r8+668h]
                mov     rcx, r14
                and     qword ptr [r13+0], 0
                mov     r12d, r9d
                mov     [rbp+arg_10], rax
                mov     rax, [r8+8]
                lea     r8, [rbp+arg_0]
                call    sub_1404079D0
                test    rax, rax
                jz      loc_140844332
                movzx   edx, word ptr [rax+48h]
                lea     rcx, [rax+4Ch]
                mov     al, [rax+2]
                imul    ebx, 25h ; '%'
                test    al, 20h
                jz      loc_14084433C
                call    sub_1407650D4

loc_140764FBD:                          ; CODE XREF: sub_140764F40+DF412↓j
                lea     r15d, [rbx+rax]
                mov     rcx, r14
                mov     rax, [r14+10h]
                lea     rdx, [rbp+arg_0]
                call    sub_1404079D0
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140637E50
                lea     rax, [rdi+20h]
                mov     edx, r15d
                mov     rcx, [rax]
                mov     [rbp+var_20], rax
                call    sub_14071B3C8
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_140637DC0
                mov     rbx, [rbp+arg_10]
                mov     eax, r15d
                shr     eax, 9
                xor     eax, r15d
                imul    eax, 18AA3h
                mov     edx, eax
                mov     ecx, eax
                mov     eax, [r14+670h]
                shr     rdx, 9
                dec     eax
                xor     rdx, rcx
                and     rdx, rax
                lea     rax, [rdx+rdx*2]
                mov     rbx, [rbx+rax*8+10h]
                test    rbx, rbx
                jz      short loc_140765095
                mov     byte ptr [rbp+arg_20], 0

loc_140765036:                          ; CODE XREF: sub_140764F40+186↓j
                cmp     r15d, [rbx]
                jnz     loc_1407650BF
                cmp     r12d, [rbx+18h]
                jnz     short loc_1407650BF
                cmp     r14, [rbx+10h]
                jnz     short loc_1407650BF
                add     rbx, 0FFFFFFFFFFFFFFF0h
                lea     r8, [rbp+arg_20]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140765124
                test    al, al
                jz      loc_140844357
                test    rsi, rsi
                jnz     loc_140844370

loc_14076506F:                          ; CODE XREF: sub_140764F40+DF441↓j
                mov     rdi, rbx

loc_140765072:                          ; CODE XREF: sub_140764F40+DF42B↓j
                                        ; sub_140764F40+DF45E↓j
                lea     rcx, [rdi+30h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                lock inc dword ptr [rdi+38h]
                mov     rcx, rbx
                call    sub_1406E2550
                mov     rcx, rbx
                mov     [r13+0], rbx
                call    sub_140646FD0

loc_140765095:                          ; CODE XREF: sub_140764F40+F0↑j
                                        ; sub_140764F40+18C↓j
                mov     rcx, [rbp+var_20]
                mov     edx, r15d
                mov     rcx, [rcx]
                call    sub_14062E0D8
                xor     eax, eax

loc_1407650A6:                          ; CODE XREF: sub_140764F40+DF3F7↓j
                mov     rbx, [rsp+40h+arg_8]
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

loc_1407650BF:                          ; CODE XREF: sub_140764F40+F9↑j
                                        ; sub_140764F40+103↑j ...
                mov     rbx, [rbx+8]
                test    rbx, rbx
                jnz     loc_140765036
                jmp     short loc_140765095
sub_140764F40   endp

; ---------------------------------------------------------------------------
byte_1407650CE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140092F98↑o
                                        ; .pdata:000000014010A160↑o

; =============== S U B R O U T I N E =======================================


sub_1407650D4   proc near               ; CODE XREF: sub_1404ED428+385↑p
                                        ; sub_140764F40+78↑p ...
                sub     rsp, 28h
                xor     r9d, r9d
                mov     r11d, edx
                mov     r10, rcx
                test    edx, edx
                jz      short loc_140765100

loc_1407650E5:                          ; CODE XREF: sub_1407650D4+2A↓j
                movzx   eax, byte ptr [r10]
                cmp     al, 61h ; 'a'
                jnb     short loc_140765109

loc_1407650ED:                          ; CODE XREF: sub_1407650D4+41↓j
                                        ; sub_1407650D4+47↓j
                imul    r9d, 25h ; '%'
                inc     r10
                movzx   ecx, ax
                add     r9d, ecx
                add     r11d, 0FFFFFFFFh
                jnz     short loc_1407650E5

loc_140765100:                          ; CODE XREF: sub_1407650D4+F↑j
                mov     eax, r9d
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765109:                          ; CODE XREF: sub_1407650D4+17↑j
                cmp     al, 7Ah ; 'z'
                jbe     short loc_140765117
                movzx   ecx, ax
                call    sub_14021DA60
                jmp     short loc_1407650ED
; ---------------------------------------------------------------------------

loc_140765117:                          ; CODE XREF: sub_1407650D4+37↑j
                sub     ax, 20h ; ' '
                jmp     short loc_1407650ED
sub_1407650D4   endp

; ---------------------------------------------------------------------------
byte_14076511D  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010A16C↑o

; =============== S U B R O U T I N E =======================================


sub_140765124   proc near               ; CODE XREF: sub_140764F40+119↑p
                                        ; sub_140764F40+DF43A↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rbx, rdx
                mov     byte ptr [r8], 0
                cmp     rcx, rdx
                jz      short loc_14076515A
                lea     r9, [rsp+28h+arg_0]
                lea     r8, [rsp+28h+arg_8]
                call    sub_14071B23C
                cmp     [rsp+28h+arg_0], rbx
                setz    al

loc_140765153:                          ; CODE XREF: sub_140765124+3C↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076515A:                          ; CODE XREF: sub_140765124+16↑j
                mov     byte ptr [r8], 1
                mov     al, 1
                jmp     short loc_140765153
sub_140765124   endp

; ---------------------------------------------------------------------------
algn_140765162:                         ; DATA XREF: .pdata:000000014010A178↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140765168   proc near               ; CODE XREF: sub_1406CDC8C+39↑p
                                        ; DATA XREF: .rdata:0000000140092FC0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408443A4 SIZE 00000007 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     eax, [rdx+4]
                xor     esi, esi
                and     [rsp+38h+arg_0], rsi
                xor     bpl, bpl
                mov     rdi, rdx
                mov     rbx, rcx
                test    al, 2
                jnz     loc_14076524F

loc_140765195:                          ; CODE XREF: sub_140765168+F7↓j
                lea     rcx, [rbx+68h]
                call    ExAcquireFastMutex
                mov     ecx, [rbx+0E4h]
                test    cl, 2
                jnz     short loc_1407651B5
                lea     rax, [rbx+0C0h]
                cmp     [rax], rax
                jnz     short loc_1407651EC

loc_1407651B5:                          ; CODE XREF: sub_140765168+3F↑j
                                        ; sub_140765168+C4↓j
                test    cl, 1
                jnz     short loc_1407651CA
                lea     rax, [rbx+0D0h]
                cmp     [rax], rax
                jnz     short loc_14076522E
                test    esi, esi
                js      short loc_14076522E

loc_1407651CA:                          ; CODE XREF: sub_140765168+50↑j
                                        ; sub_140765168+D2↓j
                lea     rcx, [rbx+68h]
                call    KeReleaseGuardedMutex
                test    bpl, bpl
                jnz     short loc_14076523C

loc_1407651D8:                          ; CODE XREF: sub_140765168+E5↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407651EC:                          ; CODE XREF: sub_140765168+4B↑j
                lea     rdx, [rsp+38h+arg_0]
                mov     rcx, rdi
                call    sub_1407652CC
                mov     esi, eax
                test    eax, eax
                js      short loc_140765264
                lea     rcx, [rbx+0D0h]
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     FatalListEntryError_107
                mov     rax, [rsp+38h+arg_0]
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax

loc_140765226:                          ; CODE XREF: sub_140765168+103↓j
                mov     ecx, [rbx+0E4h]
                jmp     short loc_1407651B5
; ---------------------------------------------------------------------------

loc_14076522E:                          ; CODE XREF: sub_140765168+5C↑j
                                        ; sub_140765168+60↑j
                or      ecx, 1
                mov     bpl, 1
                mov     [rbx+0E4h], ecx
                jmp     short loc_1407651CA
; ---------------------------------------------------------------------------

loc_14076523C:                          ; CODE XREF: sub_140765168+6E↑j
                lea     rcx, [rbx+0A0h]
                mov     edx, 3
                call    ExQueueWorkItem
                jmp     short loc_1407651D8
; ---------------------------------------------------------------------------

loc_14076524F:                          ; CODE XREF: sub_140765168+27↑j
                mov     rcx, [rdx+8]
                mov     edx, [rcx+1Ch]
                mov     rcx, [rcx+10h]
                call    sub_14072CC74
                jmp     loc_140765195
; ---------------------------------------------------------------------------

loc_140765264:                          ; CODE XREF: sub_140765168+95↑j
                or      dword ptr [rbx+0E4h], 2
                jmp     short loc_140765226
sub_140765168   endp

; ---------------------------------------------------------------------------
byte_14076526D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140092FC0↑o
                                        ; .pdata:000000014010A184↑o

; =============== S U B R O U T I N E =======================================


sub_140765274   proc near               ; CODE XREF: sub_1406CDC8C+29↑p
                                        ; sub_140742680+F35E8↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001408443AC SIZE 00000015 BYTES

                xor     edx, edx
                sub     ecx, 1
                jnz     short loc_140765287
                lea     rdx, unk_140C437C0

loc_140765282:                          ; CODE XREF: sub_140765274+24↓j
                                        ; sub_140765274+3B↓j ...
                mov     rax, rdx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765287:                          ; CODE XREF: sub_140765274+5↑j
                sub     ecx, 1
                jz      short loc_1407652B1
                sub     ecx, 1
                jnz     short loc_14076529A
                lea     rdx, unk_140C436C0
                jmp     short loc_140765282
; ---------------------------------------------------------------------------

loc_14076529A:                          ; CODE XREF: sub_140765274+1B↑j
                sub     ecx, 1
                jz      short loc_1407652BA
                sub     ecx, 1
                jnz     loc_1408443AC
                lea     rdx, unk_140C434C0
                jmp     short loc_140765282
; ---------------------------------------------------------------------------

loc_1407652B1:                          ; CODE XREF: sub_140765274+16↑j
                lea     rdx, unk_140C439C0
                jmp     short loc_140765282
; ---------------------------------------------------------------------------

loc_1407652BA:                          ; CODE XREF: sub_140765274+29↑j
                lea     rdx, unk_140C435C0
                jmp     short loc_140765282
sub_140765274   endp

; ---------------------------------------------------------------------------
byte_1407652C3  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010A190↑o

; =============== S U B R O U T I N E =======================================


sub_1407652CC   proc near               ; CODE XREF: sub_140765168+8C↑p
                                        ; DATA XREF: .pdata:000000014010A19C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rsi, rdx
                mov     rdi, rcx
                mov     r8d, 58706E50h
                lea     edx, [rbx+20h]
                lea     ecx, [rbx+1]
                call    ExAllocatePoolWithTag
                mov     [rsi], rax
                test    rax, rax
                jz      short loc_140765337
                mov     [rax], rbx
                lea     ecx, [rbx+1]
                mov     [rax+8], rbx
                mov     [rax+18h], rbx
                mov     [rax+10h], rdi
                lock xadd cs:qword_140C438B0, rcx
                mov     rax, [rsi]
                inc     rcx
                mov     [rax+18h], rcx
                lock inc dword ptr [rdi]

loc_140765324:                          ; CODE XREF: sub_1407652CC+70↓j
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765337:                          ; CODE XREF: sub_1407652CC+2E↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_140765324
sub_1407652CC   endp

; ---------------------------------------------------------------------------
byte_14076533E  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010A19C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140765344   proc near               ; CODE XREF: sub_14072B290+18B↑p
                                        ; sub_14072B900+1E3↑p ...

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_18          = byte ptr  58h

; FUNCTION CHUNK AT 00000001408443C2 SIZE 0000008E BYTES

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_18], r9b
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
                xor     r14d, r14d
                mov     r13, rdx
                mov     rbx, rcx
                mov     [rbp+var_18], r14
                lea     rdx, [rbp+var_10]
                mov     [rbp+var_20], r14d
                lea     rcx, [rbp+var_8]
                mov     [rbp+var_10], r14
                mov     esi, r14d
                mov     [rbp+var_8], r14
                mov     r15d, r14d
                mov     r12, r8
                call    IoGetStackLimits
                lea     rax, [rbp+var_10]
                sub     rax, [rbp+var_8]
                cmp     rax, 400h
                jb      loc_1408443C2
                lea     rax, [rbp+var_18]
                mov     [rsp+50h+var_28], r12
                mov     r9d, 3001Fh
                mov     [rsp+50h+var_30], rax
                xor     r8d, r8d
                mov     rdx, r13
                mov     rcx, rbx
                call    sub_14062CF1C
                mov     ebx, eax
                test    eax, eax
                js      loc_14076546E
                mov     rcx, [rbp+var_18]
                lea     r8, [rbp+var_20]
                mov     [rsp+50h+var_28], r14
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+50h+var_30], r14
                call    sub_14071703C
                mov     edx, 0C0000095h
                mov     r8d, 0FFFFFFFFh
                test    eax, eax
                jnz     loc_1408443CC
                mov     eax, [rbp+var_20]
                test    eax, eax
                jnz     loc_1407654E3

loc_14076540E:                          ; CODE XREF: sub_140765344+1AD↓j
                mov     edi, eax
                add     rdi, rdi
                cmp     rdi, r8
                ja      loc_14076552E
                mov     ebx, r14d

loc_14076541F:                          ; CODE XREF: sub_140765344+DF08B↓j
                test    edi, edi
                jnz     loc_1407654FC

loc_140765427:                          ; CODE XREF: sub_140765344+19A↓j
                                        ; sub_140765344+1D0↓j ...
                mov     rcx, [rbp+var_18]
                lea     r9, [rbp+var_20]
                mov     eax, edi
                mov     r8, rsi
                shr     eax, 1
                mov     edx, r14d
                mov     [rbp+var_20], eax
                call    sub_14076554C
                cmp     eax, 8000001Ah
                jnz     short loc_1407654A0

loc_140765448:                          ; CODE XREF: sub_140765344+161↓j
                                        ; sub_140765344+172↓j ...
                test    ebx, ebx
                js      short loc_14076546E
                mov     rcx, [rbp+arg_0]
                mov     r8, r12
                mov     rdx, r13
                call    sub_140765728
                cmp     eax, 0C0000121h
                jz      loc_140844429
                test    eax, eax
                js      loc_140844449

loc_14076546E:                          ; CODE XREF: sub_140765344+8A↑j
                                        ; sub_140765344+106↑j ...
                mov     rcx, [rbp+var_18]
                test    rcx, rcx
                jz      short loc_14076547C
                call    ZwClose

loc_14076547C:                          ; CODE XREF: sub_140765344+131↑j
                test    rsi, rsi
                jnz     loc_14076551F

loc_140765485:                          ; CODE XREF: sub_140765344+1E5↓j
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_8]
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
                align 20h

loc_1407654A0:                          ; CODE XREF: sub_140765344+102↑j
                cmp     eax, 0C000017Ch
                jz      short loc_140765448
                cmp     eax, 0C0000023h
                jz      loc_1408443DE
                xor     ecx, ecx
                test    eax, eax
                jnz     short loc_140765448
                mov     r9b, [rbp+arg_18]
                mov     r8, r12
                mov     eax, edi
                mov     rdx, rsi
                shr     rax, 1
                mov     [rsi+rax*2-2], cx
                mov     rcx, [rbp+var_18]
                call    sub_140765344
                xor     ecx, ecx
                test    eax, eax
                jnz     short loc_14076553C
                mov     r14d, ecx
                jmp     loc_140765427
; ---------------------------------------------------------------------------

loc_1407654E3:                          ; CODE XREF: sub_140765344+C4↑j
                lea     ecx, [rax+1]
                cmp     ecx, eax
                jb      short loc_140765535
                mov     ebx, r14d
                mov     eax, ecx

loc_1407654EF:                          ; CODE XREF: sub_140765344+1F6↓j
                test    ebx, ebx
                jns     loc_14076540E
                jmp     loc_14076546E
; ---------------------------------------------------------------------------

loc_1407654FC:                          ; CODE XREF: sub_140765344+DD↑j
                mov     edx, edi
                mov     ecx, 1
                mov     r8d, 4C474552h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jnz     loc_140765427
                jmp     loc_1408443D4
; ---------------------------------------------------------------------------

loc_14076551F:                          ; CODE XREF: sub_140765344+13B↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                jmp     loc_140765485
; ---------------------------------------------------------------------------

loc_14076552E:                          ; CODE XREF: sub_140765344+D2↑j
                mov     ebx, edx
                jmp     loc_14076546E
; ---------------------------------------------------------------------------

loc_140765535:                          ; CODE XREF: sub_140765344+1A4↑j
                mov     ebx, edx
                mov     eax, r8d
                jmp     short loc_1407654EF
; ---------------------------------------------------------------------------

loc_14076553C:                          ; CODE XREF: sub_140765344+195↑j
                inc     r14d
                jmp     loc_140765427
sub_140765344   endp

; ---------------------------------------------------------------------------
byte_140765544  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140092FEC↑o
                                        ; .pdata:000000014010A1A8↑o

; =============== S U B R O U T I N E =======================================


sub_14076554C   proc near               ; CODE XREF: sub_14072CC74+9D↑p
                                        ; sub_140756C50+F4↑p ...

var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = byte ptr -0B0h
var_50          = qword ptr -50h

; FUNCTION CHUNK AT 0000000140844450 SIZE 00000038 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_50], rax
                mov     r13, rcx
                mov     [rsp+0E8h+var_B4], edx
                xor     ecx, ecx
                mov     r12, r9
                mov     [rsp+0E8h+var_B8], ecx
                mov     r14, r8
                mov     ebp, ecx
                test    r8, r8
                jz      loc_140765706
                mov     edi, [r9]
                mov     ecx, 0FFFFFFFFh
                add     rdi, rdi
                cmp     rdi, rcx
                ja      loc_140765717

loc_1407655A4:                          ; CODE XREF: sub_14076554C+1BC↓j
                mov     r15d, 60h ; '`'
                cmp     edi, r15d
                ja      loc_14076566C
                lea     rsi, [rsp+0E8h+var_B0]

loc_1407655B8:                          ; CODE XREF: sub_14076554C+126↓j
                lea     rcx, [rsp+0E8h+var_B8]
                mov     r9, rsi
                mov     [rsp+0E8h+var_C0], rcx
                xor     r8d, r8d
                mov     rcx, r13
                mov     [rsp+0E8h+var_C8], r15d
                call    ZwEnumerateKey
                mov     ebx, eax
                test    eax, eax
                jnz     loc_140765660

loc_1407655DF:                          ; CODE XREF: sub_14076554C+11B↓j
                lea     rcx, [rsi+0Ch]
                mov     eax, [rcx]
                lea     edx, [rax+2]
                cmp     edx, eax
                jb      loc_140765717
                mov     eax, edx
                shr     eax, 1
                mov     [r12], eax
                cmp     edx, edi
                ja      loc_140844450
                cmp     [rsp+0E8h+var_B8], r15d
                ja      short loc_140765677
                xor     r15d, r15d

loc_14076560A:                          ; CODE XREF: sub_14076554C+1A0↓j
                mov     r8d, [rcx]
                mov     rcx, r14
                lea     rdx, [rsi+10h]
                cmp     rsi, r14
                jz      loc_14076570D
                call    memmove

loc_140765622:                          ; CODE XREF: sub_14076554C+1C6↓j
                mov     eax, [r12]
                mov     ebx, r15d
                dec     eax
                mov     [r14+rax*2], r15w

loc_140765630:                          ; CODE XREF: sub_14076554C+DEF1D↓j
                                        ; sub_14076554C+DEF2D↓j ...
                test    rbp, rbp
                jnz     loc_1407656F7

loc_140765639:                          ; CODE XREF: sub_14076554C+119↓j
                                        ; sub_14076554C+1B5↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+0E8h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
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
                align 20h

loc_140765660:                          ; CODE XREF: sub_14076554C+8D↑j
                cmp     eax, 80000005h
                jnz     short loc_140765639
                jmp     loc_1407655DF
; ---------------------------------------------------------------------------

loc_14076566C:                          ; CODE XREF: sub_14076554C+61↑j
                mov     rsi, r14
                mov     r15d, edi
                jmp     loc_1407655B8
; ---------------------------------------------------------------------------

loc_140765677:                          ; CODE XREF: sub_14076554C+B9↑j
                lea     ebx, [rdi+10h]
                cmp     ebx, 10h
                jb      loc_140765717
                mov     edx, ebx
                mov     ecx, 1
                mov     r8d, 4C474552h
                call    ExAllocatePoolWithTag
                xor     r15d, r15d
                mov     rbp, rax
                test    rax, rax
                jz      loc_14084445A
                mov     edx, [rsp+0E8h+var_B4]
                mov     rsi, rax
                lea     rax, [rsp+0E8h+var_B8]
                mov     r9, rsi
                mov     [rsp+0E8h+var_C0], rax
                xor     r8d, r8d
                mov     rcx, r13
                mov     [rsp+0E8h+var_C8], ebx
                call    ZwEnumerateKey
                mov     ebx, eax
                test    eax, eax
                jnz     loc_140844464

loc_1407656D1:                          ; CODE XREF: sub_14076554C+DEF23↓j
                lea     rcx, [rbp+0Ch]
                mov     eax, [rcx]
                lea     edx, [rax+2]
                cmp     edx, eax
                jb      loc_14084447E
                mov     eax, edx
                shr     eax, 1
                mov     [r12], eax
                cmp     edx, edi
                jbe     loc_14076560A
                jmp     loc_140844474
; ---------------------------------------------------------------------------

loc_1407656F7:                          ; CODE XREF: sub_14076554C+E7↑j
                xor     edx, edx
                mov     rcx, rbp
                call    ExFreePoolWithTag
                jmp     loc_140765639
; ---------------------------------------------------------------------------

loc_140765706:                          ; CODE XREF: sub_14076554C+3E↑j
                mov     edi, ecx
                jmp     loc_1407655A4
; ---------------------------------------------------------------------------

loc_14076570D:                          ; CODE XREF: sub_14076554C+CB↑j
                call    memmove
                jmp     loc_140765622
; ---------------------------------------------------------------------------

loc_140765717:                          ; CODE XREF: sub_14076554C+52↑j
                                        ; sub_14076554C+9E↑j ...
                mov     ebx, 0C0000095h
                jmp     loc_140765639
; } // starts at 14076554C
sub_14076554C   endp

; ---------------------------------------------------------------------------
algn_140765721:                         ; DATA XREF: .rdata:0000000140093020↑o
                                        ; .pdata:000000014010A1B4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140765728   proc near               ; CODE XREF: sub_14072BE24+2C2↑p
                                        ; sub_14072C6BC+345↑p ...

arg_8           = qword ptr  10h

                mov     r11, rsp
                push    rbx
                sub     rsp, 30h
                and     qword ptr [r11+10h], 0
                test    rdx, rdx
                jz      short loc_14076575F
                mov     [r11-10h], r8
                lea     rax, [r11+10h]
                xor     r8d, r8d
                mov     [r11-18h], rax
                mov     r9d, 10000h
                call    sub_14062CF1C
                mov     ebx, eax
                test    eax, eax
                js      short loc_140765766
                mov     rcx, [rsp+38h+arg_8]

loc_14076575F:                          ; CODE XREF: sub_140765728+10↑j
                call    ZwDeleteKey
                mov     ebx, eax

loc_140765766:                          ; CODE XREF: sub_140765728+30↑j
                mov     rcx, [rsp+38h+arg_8]
                test    rcx, rcx
                jz      short loc_140765775
                call    ZwClose

loc_140765775:                          ; CODE XREF: sub_140765728+46↑j
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140765728   endp

byte_14076577E  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010A1C0↑o

; =============== S U B R O U T I N E =======================================


sub_140765784   proc near               ; CODE XREF: sub_14066ABA0+40↑p
                                        ; sub_140765A8C+15B↓p ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140844488 SIZE 00000013 BYTES

                sub     rsp, 38h
                mov     r10, r8
                mov     r8, rcx
                mov     r11d, r9d
                mov     rax, rdx
                test    rcx, rcx
                jz      short loc_1407657E7
                mov     rcx, cs:qword_140C4C3B8
                cmp     r8, rcx
                jnz     short loc_1407657E0

loc_1407657A5:                          ; CODE XREF: sub_140765784+61↓j
                test    rax, rax
                jz      loc_140844488

loc_1407657AE:                          ; CODE XREF: sub_140765784+DED07↓j
                mov     r9, cs:qword_140C01170
                cmp     r8, rcx
                jnz     short loc_1407657EE

loc_1407657BA:                          ; CODE XREF: sub_140765784+6E↓j
                mov     rcx, [rsp+38h+arg_20]
                mov     rdx, r10
                mov     [rsp+38h+var_10], rcx
                mov     rcx, rax
                mov     [rsp+38h+var_18], r11d
                call    sub_1407657FC
                test    eax, eax
                js      short loc_1407657DA
                xor     eax, eax

loc_1407657DA:                          ; CODE XREF: sub_140765784+52↑j
                                        ; sub_140765784+68↓j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1407657E0:                          ; CODE XREF: sub_140765784+1F↑j
                cmp     qword ptr [r8+50h], 0
                jnz     short loc_1407657A5

loc_1407657E7:                          ; CODE XREF: sub_140765784+13↑j
                mov     eax, 0C0190005h
                jmp     short loc_1407657DA
; ---------------------------------------------------------------------------

loc_1407657EE:                          ; CODE XREF: sub_140765784+34↑j
                mov     r9, [r8+50h]
                jmp     short loc_1407657BA
sub_140765784   endp

; ---------------------------------------------------------------------------
byte_1407657F4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009303C↑o
                                        ; .pdata:000000014010A1CC↑o

; =============== S U B R O U T I N E =======================================


sub_1407657FC   proc near               ; CODE XREF: sub_14066ABF4+8C↑p
                                        ; sub_140765784+4B↑p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014084449C SIZE 000000FE BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     esi, esi
                xor     r13d, r13d
                mov     r15, r9
                mov     rbp, r8
                mov     r12, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_14076583D
                call    sub_14066ADE0
                mov     edi, eax
                test    eax, eax
                js      loc_1407658F3

loc_14076583D:                          ; CODE XREF: sub_1407657FC+30↑j
                mov     edi, [rsp+58h+arg_20]
                mov     r14d, 1

loc_14076584A:                          ; CODE XREF: sub_1407657FC+15B↓j
                                        ; sub_1407657FC+DECF0↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rcx, dword_140C47C20
                call    ExAcquireFastMutexUnsafe
                mov     r8, r12
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_140765A1C
                mov     rdx, rax
                test    rax, rax
                jz      loc_140765913
                test    rbx, rbx
                jz      short loc_140765890
                mov     eax, [rax+30h]
                test    al, 7
                jnz     loc_140765917

loc_140765890:                          ; CODE XREF: sub_1407657FC+87↑j
                mov     eax, [rdx+30h]
                test    al, 8
                jnz     loc_14084449C

loc_14076589B:                          ; CODE XREF: sub_1407657FC+119↓j
                test    rsi, rsi
                jnz     loc_140765962
                test    rdx, rdx
                jz      short loc_140765926
                mov     rcx, r15
                call    sub_14066AF4C

loc_1407658B1:                          ; CODE XREF: sub_1407657FC+1C4↓j
                mov     rax, [rsp+58h+arg_28]
                xor     edi, edi
                mov     [rax], rdx

loc_1407658BE:                          ; CODE XREF: sub_1407657FC+123↓j
                                        ; sub_1407657FC+DED92↓j
                test    r13d, r13d
                jnz     loc_1407659F6

loc_1407658C7:                          ; CODE XREF: sub_1407657FC+214↓j
                test    r14d, r14d
                jz      short loc_1407658E6
                lea     rcx, dword_140C47C20
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1407658E6:                          ; CODE XREF: sub_1407657FC+CE↑j
                                        ; sub_1407657FC+DECFA↓j
                test    rbx, rbx
                jz      short loc_1407658F3
                mov     rcx, rbx
                call    sub_14066AE40

loc_1407658F3:                          ; CODE XREF: sub_1407657FC+3B↑j
                                        ; sub_1407657FC+ED↑j
                mov     rbx, [rsp+58h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
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

loc_140765913:                          ; CODE XREF: sub_1407657FC+7E↑j
                test    edi, edi
                jnz     short loc_14076589B

loc_140765917:                          ; CODE XREF: sub_1407657FC+8E↑j
                                        ; sub_1407657FC+DECA2↓j
                mov     edi, 0C0190002h

loc_14076591C:                          ; CODE XREF: sub_1407657FC+DED04↓j
                                        ; sub_1407657FC+DED6A↓j ...
                test    rsi, rsi
                jz      short loc_1407658BE
                jmp     loc_140844580
; ---------------------------------------------------------------------------

loc_140765926:                          ; CODE XREF: sub_1407657FC+AB↑j
                lea     rcx, dword_140C47C20
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     r9, r15
                mov     r8, rbp
                mov     rdx, r12
                mov     rcx, rbx
                call    sub_14066AE5C
                mov     rsi, rax
                test    rax, rax
                jnz     loc_14076584A
                jmp     loc_1408444F1
; ---------------------------------------------------------------------------

loc_140765962:                          ; CODE XREF: sub_1407657FC+A2↑j
                cmp     [rbp+50h], r13
                jnz     short loc_1407659C5

loc_140765968:                          ; CODE XREF: sub_1407657FC+1EF↓j
                lea     rax, [rbp+10h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_140844593
                mov     [rsi+8], rcx
                mov     [rsi], rax
                mov     [rcx], rsi
                lea     rcx, dword_140C47C20
                mov     [rax+8], rsi
                add     cs:dword_140C5044C, r14d
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, rsi
                xor     r14d, r14d
                call    sub_140765A8C
                mov     edi, eax
                test    eax, eax
                js      loc_140844505
                mov     rdx, rsi
                jmp     loc_1407658B1
; ---------------------------------------------------------------------------

loc_1407659C5:                          ; CODE XREF: sub_1407657FC+16A↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbp+50h]
                add     rcx, 660h
                call    sub_14024C840
                movzx   r13d, al
                test    al, al
                jnz     loc_140765968
                jmp     loc_1408444FB
; ---------------------------------------------------------------------------

loc_1407659F6:                          ; CODE XREF: sub_1407657FC+C5↑j
                lea     rcx, [r15+660h]
                call    sub_14024C380
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_1407658C7
sub_1407657FC   endp

; ---------------------------------------------------------------------------
byte_140765A15  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014009306C↑o
                                        ; .pdata:000000014010A1D8↑o

; =============== S U B R O U T I N E =======================================


sub_140765A1C   proc near               ; CODE XREF: sub_1407657FC+73↑p
                                        ; DATA XREF: .rdata:0000000140093094↑o ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014084459A SIZE 00000022 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                lea     rbp, [rcx+10h]
                mov     rsi, r8
                mov     rbx, rdx

loc_140765A3F:                          ; CODE XREF: sub_140765A1C+DEB81↓j
                                        ; sub_140765A1C+DEB95↓j
                xor     r8d, r8d
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, rbp
                call    sub_1406E3344
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140765A83
                test    rbx, rbx
                jz      loc_14084459A
                cmp     rbx, [rax+38h]
                jnz     loc_14084459A

loc_140765A6A:                          ; CODE XREF: sub_140765A1C+DEB9B↓j
                mov     rax, rdi

loc_140765A6D:                          ; CODE XREF: sub_140765A1C:loc_140765A83↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765A83:                          ; CODE XREF: sub_140765A1C+39↑j
                jmp     short loc_140765A6D
sub_140765A1C   endp

; ---------------------------------------------------------------------------
byte_140765A85  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140093094↑o
                                        ; .pdata:000000014010A1E4↑o

; =============== S U B R O U T I N E =======================================


sub_140765A8C   proc near               ; CODE XREF: sub_1407657FC+1B2↑p
                                        ; DATA XREF: .rdata:00000001400930BC↑o ...

var_48          = dword ptr -48h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408445BC SIZE 00000043 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                and     [rsp+48h+arg_8], 0
                xor     ebx, ebx
                mov     rdi, rcx
                lea     ebp, [rbx+40h]
                cmp     [rcx+38h], rbx
                jz      loc_140765B5C
                mov     rcx, cs:qword_140C4C3B8
                cmp     [rdi+40h], rcx
                jnz     loc_140765BD0

loc_140765AC7:                          ; CODE XREF: sub_140765A8C+164↓j
                mov     rbx, [rdi+38h]
                mov     rcx, rbx
                call    sub_14066ADE0
                mov     esi, eax
                test    eax, eax
                js      loc_140765BBA
                mov     rcx, [rdi+40h]
                call    sub_140765D34
                mov     esi, eax
                test    eax, eax
                js      loc_1408445D4
                mov     rdx, [rdi+40h]
                lea     rcx, [rdi+50h]
                mov     r8, [rdi+38h]
                mov     r9, rdi
                and     r8, 0FFFFFFFFFFFFFFFEh
                mov     rdx, [rdx+38h]
                call    sub_140765CB0
                mov     esi, eax
                test    eax, eax
                js      loc_1408445D4
                and     [rsp+48h+var_20], 0
                lea     rax, [rsp+48h+arg_0]
                mov     rcx, [rdi+50h]
                xor     r9d, r9d
                and     [rsp+48h+arg_0], 0
                xor     r8d, r8d
                xor     edx, edx
                mov     [rsp+48h+var_28], rax
                call    ObReferenceObjectByHandle
                mov     rax, [rsp+48h+arg_0]
                mov     r8b, 1
                mov     rcx, [rdi+40h]
                mov     [rdi+48h], rax
                call    sub_140765C00
                test    eax, eax
                mov     ecx, 60h ; '`'
                cmovns  ebp, ecx

loc_140765B5C:                          ; CODE XREF: sub_140765A8C+24↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     r14, dword_140C47C20
                mov     rcx, r14
                call    ExAcquireFastMutexUnsafe
                mov     eax, [rdi+30h]
                mov     rcx, r14
                test    al, 6
                jnz     loc_1408445BC
                mov     [rdi+30h], ebp
                dec     cs:dword_140C5044C
                call    ExReleaseFastMutexUnsafe
                mov     rcx, gs:188h
                call    sub_14021E1F0
                lock or [rsp+48h+var_48], 0
                cmp     cs:qword_140C47C58, 0
                jnz     loc_1408445EB

loc_140765BB8:                          ; CODE XREF: sub_140765A8C+DEB6E↓j
                xor     esi, esi

loc_140765BBA:                          ; CODE XREF: sub_140765A8C+4B↑j
                                        ; sub_140765A8C+16A↓j ...
                mov     rbx, [rsp+48h+arg_10]
                mov     eax, esi
                mov     rbp, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140765BD0:                          ; CODE XREF: sub_140765A8C+35↑j
                mov     rdx, [rdi+38h]
                lea     rax, [rsp+48h+arg_8]
                mov     r9d, 1
                mov     [rsp+48h+var_28], rax
                xor     r8d, r8d
                call    sub_140765784
                mov     esi, eax
                test    eax, eax
                jns     loc_140765AC7
                jmp     short loc_140765BBA
sub_140765A8C   endp

; ---------------------------------------------------------------------------
algn_140765BF8:                         ; DATA XREF: .rdata:00000001400930BC↑o
                                        ; .pdata:000000014010A1F0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140765C00   proc near               ; CODE XREF: sub_1406E2D40+359↑p
                                        ; sub_140765A8C+C1↑p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdx
                push    rdi
                sub     rsp, 50h
                mov     [rsp+58h+arg_8], 30h ; '0'
                mov     bl, r8b
                mov     rax, gs:188h
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+80h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     rcx, [rdi+60h]
                lea     rax, [rsp+58h+arg_8]
                xor     edx, edx
                xor     r9d, r9d
                mov     [rsp+58h+var_18], rdx
                xor     r8d, r8d
                mov     [rsp+58h+var_20], edx
                mov     [rsp+58h+var_28], rax
                mov     [rsp+58h+var_30], 1
                mov     [rsp+58h+var_38], rdx
                test    bl, bl
                jnz     short loc_140765C71
                neg     [rsp+58h+arg_8]

loc_140765C71:                          ; CODE XREF: sub_140765C00+6A↑j
                call    cs:ClfsReserveAndAppendLog
                nop     dword ptr [rax+rax+00h]
                mov     rcx, [rdi+80h]
                mov     ebx, eax
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140765C00   endp

algn_140765CA7:                         ; DATA XREF: .pdata:000000014010A1FC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140765CB0   proc near               ; CODE XREF: sub_140765A8C+7B↑p
                                        ; DATA XREF: .pdata:000000014010A208↑o

var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = xmmword ptr -18h

                mov     r11, rsp
                sub     rsp, 88h
                xor     eax, eax
                cmp     cs:byte_140CF4D19, 1
                mov     [rsp+88h+var_34], eax
                mov     [rsp+88h+var_1C], eax
                jz      short loc_140765D27
                mov     [r11-48h], r9
                xorps   xmm0, xmm0
                mov     [rsp+88h+var_50], 0Eh
                lea     r9, [r11-38h]
                mov     [rsp+88h+var_58], eax
                mov     [rsp+88h+var_38], 30h ; '0'
                mov     [r11-60h], r8
                mov     r8d, 0F001Fh
                mov     [r11-30h], rax
                mov     [r11-68h], rdx
                xor     edx, edx
                mov     [rsp+88h+var_20], 200h
                mov     [r11-28h], rax
                movdqu  [rsp+88h+var_18], xmm0
                call    cs:TmCreateEnlistment_0
                nop     dword ptr [rax+rax+00h]

loc_140765D1E:                          ; CODE XREF: sub_140765CB0+7C↓j
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765D27:                          ; CODE XREF: sub_140765CB0+1B↑j
                mov     eax, 0C0000189h
                jmp     short loc_140765D1E
sub_140765CB0   endp

; ---------------------------------------------------------------------------
byte_140765D2E  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010A208↑o

; =============== S U B R O U T I N E =======================================


sub_140765D34   proc near               ; CODE XREF: sub_140765A8C+55↑p
                                        ; DATA XREF: .rdata:000000014009310C↑o ...

var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140844600 SIZE 0000004C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_28], rax
                mov     eax, [rcx+68h]
                xor     r15d, r15d
                xorps   xmm0, xmm0
                mov     rdi, rcx
                mov     ebx, r15d
                movups  [rsp+58h+var_38], xmm0
                test    al, 8
                jnz     loc_140844600
                lea     r14d, [r15+1]
                test    r14b, al
                jz      short loc_140765DA9

loc_140765D80:                          ; CODE XREF: sub_140765D34+BA↓j
                                        ; sub_140765D34+DE8D1↓j
                mov     eax, ebx
                mov     rcx, [rsp+58h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765DA9:                          ; CODE XREF: sub_140765D34+4A↑j
                lea     rcx, [rsp+58h+var_38]
                call    sub_1406D798C
                test    eax, eax
                movzx   ebp, r15b
                mov     eax, [rdi+68h]
                cmovns  ebp, r14d
                and     al, 2
                neg     al
                sbb     rsi, rsi
                xor     ecx, ecx
                and     esi, 4
                call    sub_1405F9FA0
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14077FAC4
                mov     ebx, eax
                test    eax, eax
                js      loc_14084460A

loc_140765DE5:                          ; CODE XREF: sub_140765D34+DE8DB↓j
                                        ; sub_140765D34+DE8E6↓j ...
                call    sub_14064A360
                mov     [rsi+rdi+6Ch], ebx
                jmp     short loc_140765D80
; } // starts at 140765D34
sub_140765D34   endp

; ---------------------------------------------------------------------------
algn_140765DF0:                         ; DATA XREF: .rdata:000000014009310C↑o
                                        ; .pdata:000000014010A214↑o
                align 20h
; Exported entry 1894. PsIsThreadImpersonating

; =============== S U B R O U T I N E =======================================


                public PsIsThreadImpersonating
PsIsThreadImpersonating proc near       ; DATA XREF: .pdata:000000014010A220↑o
                mov     eax, [rcx+510h]
                shr     eax, 3
                and     al, 1
                retn
PsIsThreadImpersonating endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140765E0D:                         ; DATA XREF: .pdata:000000014010A220↑o
                align 20h
; Exported entry 758. IoCheckQuerySetFileInformation

; =============== S U B R O U T I N E =======================================


                public IoCheckQuerySetFileInformation
IoCheckQuerySetFileInformation proc near
                                        ; DATA XREF: .pdata:000000014010A22C↑o
                cmp     ecx, 4Ch ; 'L'
                jnb     short loc_140765E51
                test    r8b, r8b
                lea     rax, qword_140986310
                lea     r9, qword_140986360
                cmovz   r9, rax
                movsxd  rax, ecx
                movsx   ecx, byte ptr [r9+rax]
                test    cl, cl
                jz      short loc_140765E51
                cmp     edx, ecx
                sbb     eax, eax
                and     eax, 0C0000004h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765E51:                          ; CODE XREF: IoCheckQuerySetFileInformation+3↑j
                                        ; IoCheckQuerySetFileInformation+24↑j
                mov     eax, 0C0000003h
                retn
IoCheckQuerySetFileInformation endp

; ---------------------------------------------------------------------------
                align 8
algn_140765E58:                         ; DATA XREF: .pdata:000000014010A22C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140765E60   proc near               ; CODE XREF: sub_1407346D8+C9D↑p
                                        ; sub_1407346D8+B9A62↓p ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_18          = byte ptr -18h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014084464C SIZE 00000067 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rbp, [rsp+68h+arg_20]
                mov     rsi, r9
                and     dword ptr [rax+18h], 0
                mov     rdi, r8
                mov     r8, [r8+20h]
                mov     r14, rdx
                and     dword ptr [rax-28h], 0
                mov     r15, rcx
                mov     [rax-30h], rbp
                mov     [rax-38h], r9
                or      r9d, 0FFFFFFFFh
                and     qword ptr [rax-40h], 0
                and     qword ptr [rax-48h], 0
                call    sub_140765EF0
                mov     ecx, eax
                test    eax, eax
                js      short loc_140765ECC
                add     rdi, 170h
                mov     rbx, [rdi]

loc_140765EC3:                          ; CODE XREF: sub_140765E60+DE84E↓j
                cmp     rbx, rdi
                jnz     loc_14084464C

loc_140765ECC:                          ; CODE XREF: sub_140765E60+57↑j
                                        ; sub_140765E60+DE82B↓j
                lea     r11, [rsp+68h+var_18]
                mov     eax, ecx
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140765E60   endp

algn_140765EE9:                         ; DATA XREF: .rdata:00000001400931B8↑o
                                        ; .pdata:000000014010A238↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140765EF0   proc near               ; CODE XREF: sub_140765E60+4E↑p
                                        ; sub_140765E60+DE822↓p ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_18          = dword ptr -18h
var_8           = byte ptr -8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 60h
                mov     ebx, r9d
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbp, rcx
                test    r9b, 1
                jz      short loc_140765F6A
                mov     eax, [rdx]
                mov     r9, r8
                and     eax, 1
                xor     r8d, r8d
                shl     eax, 11h
                mov     [rsp+68h+var_18], eax
                mov     rax, [rsp+68h+arg_28]
                mov     [r11-20h], rax
                mov     rax, [rsp+68h+arg_20]
                mov     [r11-28h], rax
                mov     rax, [rdx+10h]
                xor     edx, edx
                mov     [r11-30h], rax
                mov     rax, [rcx+30h]
                mov     rcx, cs:qword_140CF4378
                mov     [rsp+68h+var_38], 1
                mov     [r11-40h], rax
                call    sub_140766848
                test    eax, eax
                js      short loc_140765F95

loc_140765F6A:                          ; CODE XREF: sub_140765EF0+24↑j
                mov     rax, [rsp+68h+arg_38]
                mov     r9d, ebx
                mov     [rsp+68h+var_40], rax
                mov     r8, rsi
                mov     rax, [rsp+68h+arg_30]
                mov     rdx, rdi
                mov     rcx, rbp
                mov     [rsp+68h+var_48], rax
                call    sub_140765FB4

loc_140765F95:                          ; CODE XREF: sub_140765EF0+78↑j
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140765EF0   endp

byte_140765FAC  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010A244↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_140765FB4   proc near               ; CODE XREF: DoScreenSave_1+204↑p
                                        ; sub_1407346D8+F8E↑p ...

var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 00000001408446B4 SIZE 000000C8 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-4Fh]
                sub     rsp, 0B0h
                mov     rsi, [rbp+47h+arg_20]
                xor     eax, eax
                mov     [rbp+47h+var_88], rax
                xorps   xmm1, xmm1
                mov     [rbp+47h+var_90], rax
                xorps   xmm0, xmm0
                mov     r15d, r9d
                mov     r14, r8
                mov     r13, rdx
                mov     r12, rcx
                movups  [rbp+47h+var_80], xmm0
                movups  [rbp+47h+var_70], xmm1
                movups  [rbp+47h+var_60], xmm1
                test    rsi, rsi
                jz      short loc_14076600A
                mov     [rsi], eax

loc_14076600A:                          ; CODE XREF: sub_140765FB4+52↑j
                mov     rbx, [rbp+47h+arg_28]
                test    rbx, rbx
                jz      short loc_140766015
                mov     [rbx], eax

loc_140766015:                          ; CODE XREF: sub_140765FB4+5D↑j
                lea     r8, [rbp+47h+var_70]
                mov     rdx, r14
                call    sub_1407666DC
                mov     edi, eax
                test    eax, eax
                js      loc_140766106
                lea     rax, [rbp+47h+var_70]
                mov     r9d, r15d
                mov     [rsp+0D0h+var_A0], rax
                mov     r8, r14
                lea     rax, sub_14075C3A0
                mov     rdx, r13
                mov     [rsp+0D0h+var_A8], rax
                mov     rcx, r12
                mov     byte ptr [rsp+0D0h+var_B0], 1
                call    sub_140766488
                mov     edi, eax
                test    eax, eax
                js      loc_140766106
                test    r15b, 8
                jz      short loc_140766080
                mov     rcx, [r13+8]
                lea     r8, [rbp+47h+var_70]
                mov     rdx, r14
                call    sub_140766374
                mov     edi, eax
                test    eax, eax
                js      loc_140766106

loc_140766080:                          ; CODE XREF: sub_140765FB4+B0↑j
                test    r15b, 10h
                jz      short loc_140766098
                mov     rcx, [r13+10h]
                mov     rdx, r14
                call    sub_1407662C8
                mov     edi, eax
                test    eax, eax
                js      short loc_140766106

loc_140766098:                          ; CODE XREF: sub_140765FB4+D0↑j
                test    r15b, 20h
                jz      short loc_1407660B0
                mov     rcx, [r13+10h]
                mov     rdx, r14
                call    sub_140766210
                mov     edi, eax
                test    eax, eax
                js      short loc_140766106

loc_1407660B0:                          ; CODE XREF: sub_140765FB4+E8↑j
                and     [rbp+47h+var_4C], 0
                lea     rax, aStatus    ; "Status"
                and     [rbp+47h+var_34], 0
                lea     r8, [rbp+47h+var_50]
                mov     qword ptr [rbp+47h+var_80+8], rax
                lea     rcx, [rbp+47h+var_88]
                lea     rax, [rbp+47h+var_80]
                mov     dword ptr [rbp+47h+var_80], 0E000Ch
                xorps   xmm0, xmm0
                mov     [rbp+47h+var_40], rax
                mov     edx, 20019h
                mov     [rbp+47h+var_50], 30h ; '0'
                mov     [rbp+47h+var_48], r14
                mov     [rbp+47h+var_38], 240h
                movdqu  [rbp+47h+var_30], xmm0
                call    ZwOpenKey
                test    eax, eax
                jns     loc_1408446B4

loc_140766106:                          ; CODE XREF: sub_140765FB4+71↑j
                                        ; sub_140765FB4+A6↑j ...
                lea     rcx, [rbp+47h+var_70]
                call    sub_14076614C
                mov     rcx, [rbp+47h+var_88]
                test    rcx, rcx
                jnz     short loc_14076613C

loc_140766118:                          ; CODE XREF: sub_140765FB4+18D↓j
                lea     r11, [rsp+0D0h+var_20]
                mov     eax, edi
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

loc_14076613C:                          ; CODE XREF: sub_140765FB4+162↑j
                call    ZwClose
                jmp     short loc_140766118
sub_140765FB4   endp

; ---------------------------------------------------------------------------
byte_140766143  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093204↑o
                                        ; .pdata:000000014010A250↑o

; =============== S U B R O U T I N E =======================================


sub_14076614C   proc near               ; CODE XREF: sub_140765FB4+156↑p
                                        ; sub_14077B0B8+8D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014084477C SIZE 00000040 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     qword ptr [rcx+18h], 0
                mov     rsi, rcx
                jnz     short loc_140766183

loc_140766165:                          ; CODE XREF: sub_14076614C+5F↓j
                mov     rcx, [rsi+10h]
                test    rcx, rcx
                jnz     loc_1407661F6

loc_140766172:                          ; CODE XREF: sub_14076614C+AF↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140766183:                          ; CODE XREF: sub_14076614C+17↑j
                xor     edi, edi

loc_140766185:                          ; CODE XREF: sub_14076614C+53↓j
                                        ; sub_14076614C+A8↓j
                mov     r8, [rsi+18h]
                mov     ecx, edi
                shl     rcx, 4
                add     rcx, r8
                mov     rbx, [rcx]
                cmp     rbx, rcx
                jnz     short loc_1407661AD
                inc     edi
                cmp     edi, 7Fh
                jb      short loc_140766185
                xor     edx, edx
                mov     rcx, r8
                call    ExFreePoolWithTag
                jmp     short loc_140766165
; ---------------------------------------------------------------------------

loc_1407661AD:                          ; CODE XREF: sub_14076614C+4C↑j
                cmp     [rbx+8], rcx
                jnz     short loc_140766200
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_140766200
                mov     [rcx], rax
                mov     [rax+8], rcx
                lea     rcx, [rbx+10h]
                call    RtlFreeUnicodeString
                mov     rcx, [rbx+28h]
                test    rcx, rcx
                jz      short loc_1407661EA
                mov     edx, [rbx+20h]
                cmp     dx, 8000h
                jz      loc_14084477C
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1407661EA:                          ; CODE XREF: sub_14076614C+87↑j
                                        ; sub_14076614C+DE66B↓j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_140766185
; ---------------------------------------------------------------------------

loc_1407661F6:                          ; CODE XREF: sub_14076614C+20↑j
                call    ZwClose
                jmp     loc_140766172
; ---------------------------------------------------------------------------

loc_140766200:                          ; CODE XREF: sub_14076614C+65↑j
                                        ; sub_14076614C+6E↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14076614C   endp

; ---------------------------------------------------------------------------
algn_140766207:                         ; DATA XREF: .rdata:0000000140093228↑o
                                        ; .pdata:000000014010A25C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140766210   proc near               ; CODE XREF: sub_140765FB4+F1↑p
                                        ; DATA XREF: .rdata:0000000140093250↑o ...

var_60          = byte ptr -60h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408447BC SIZE 0000004F BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_10], rdi
                mov     [rsp-8+arg_18], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+var_3C], 0
                lea     rax, [rbp+var_40]
                and     [rbp+var_2C], 0
                lea     r14, aFilters   ; "Filters"
                and     [rbp+var_14], 0
                lea     r8, [rbp+var_30]
                and     [rbp+arg_8], 0
                mov     rdi, rcx
                mov     [rbp+var_28], rdx
                lea     rcx, [rbp+arg_8]
                xorps   xmm0, xmm0
                mov     [rbp+var_38], r14
                mov     edx, 20019h
                mov     [rbp+var_20], rax
                movdqu  [rbp+var_10], xmm0
                mov     [rbp+var_40], 10000Eh
                mov     [rbp+var_30], 30h ; '0'
                mov     [rbp+var_18], 240h
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     loc_1408447BC
                xor     ebx, ebx

loc_140766293:                          ; CODE XREF: sub_140766210+DE5AE↓j
                                        ; sub_140766210+DE5F6↓j
                mov     rcx, [rbp+arg_8]
                test    rcx, rcx
                jnz     short loc_1407662B8

loc_14076629C:                          ; CODE XREF: sub_140766210+AD↓j
                lea     r11, [rsp+80h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+10h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407662B8:                          ; CODE XREF: sub_140766210+8A↑j
                call    ZwClose
                jmp     short loc_14076629C
sub_140766210   endp

; ---------------------------------------------------------------------------
byte_1407662BF  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093250↑o
                                        ; .pdata:000000014010A268↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1407662C8   proc near               ; CODE XREF: sub_140765FB4+D9↑p
                                        ; DATA XREF: .rdata:0000000140093278↑o ...

var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = xmmword ptr -10h
arg_8           = dword ptr  48h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 000000014084480C SIZE 0000018A BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xor     r12d, r12d
                mov     [rbp+var_28], rdx
                mov     rdi, rcx
                mov     [rbp+arg_18], r12
                lea     rax, [rbp+var_40]
                mov     [rbp+arg_8], r12d
                xorps   xmm0, xmm0
                mov     [rbp+arg_10], r12
                lea     rsi, aDevices   ; "Devices"
                mov     [rbp+var_20], rax
                mov     edx, 20019h
                mov     [rbp+var_38], rsi
                lea     rcx, [rbp+arg_10]
                mov     [rbp+var_40], 10000Eh
                lea     r8, [rbp+var_30]
                mov     [rbp+var_30], 30h ; '0'
                movdqu  [rbp+var_10], xmm0
                mov     [rbp+var_18], 240h
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     loc_14084480C
                mov     ebx, r12d

loc_140766348:                          ; CODE XREF: sub_1407662C8+DE546↓j
                                        ; sub_1407662C8+DE6BA↓j ...
                mov     rcx, [rbp+arg_10]
                test    rcx, rcx
                jnz     short loc_140766366

loc_140766351:                          ; CODE XREF: sub_1407662C8+A3↓j
                mov     eax, ebx
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140766366:                          ; CODE XREF: sub_1407662C8+87↑j
                call    ZwClose
                jmp     short loc_140766351
sub_1407662C8   endp

; ---------------------------------------------------------------------------
byte_14076636D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140093278↑o
                                        ; .pdata:000000014010A274↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_140766374   proc near               ; CODE XREF: sub_140765FB4+BD↑p
                                        ; DATA XREF: .rdata:00000001400932B0↑o ...

var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_120         = qword ptr -120h
var_118         = dword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140844996 SIZE 000003CF BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                xor     edi, edi
                mov     [rbp+60h+var_C8], rdx
                xorps   xmm0, xmm0
                mov     [rsp+160h+var_110], rdi
                xor     eax, eax
                mov     [rsp+160h+var_F0], 160014h
                mov     [rbp+60h+var_70], rax
                mov     r14, r8
                lea     rax, aInterfaces ; "Interfaces"
                mov     [rbp+60h+var_D8], rdi
                mov     [rsp+160h+var_E8], rax
                lea     r8, [rbp+60h+var_D0]
                lea     rax, [rsp+160h+var_F0]
                mov     [rsp+160h+var_100], rdi
                mov     r13, rcx
                mov     [rbp+60h+var_C0], rax
                xorps   xmm1, xmm1
                mov     [rsp+160h+var_108], edi
                mov     edx, 20019h
                mov     [rbp+60h+var_D0], 30h ; '0'
                lea     rcx, [rsp+160h+var_F8]
                mov     [rbp+60h+var_B8], 240h
                movups  [rbp+60h+var_80], xmm0
                mov     [rsp+160h+var_F8], rdi
                movups  [rbp+60h+var_90], xmm0
                movups  [rbp+60h+var_60], xmm1
                movups  [rbp+60h+var_50], xmm0
                movdqu  [rbp+60h+var_B0], xmm0
                call    ZwOpenKey
                mov     esi, 0C0000034h
                mov     ebx, eax
                cmp     eax, esi
                jnz     loc_140844996
                mov     ebx, edi

loc_140766434:                          ; CODE XREF: sub_140766374+DE624↓j
                                        ; sub_140766374+DE683↓j ...
                mov     rcx, [rsp+160h+var_110]
                test    rcx, rcx
                jnz     short loc_140766472

loc_14076643E:                          ; CODE XREF: sub_140766374+103↓j
                                        ; sub_140766374+DE6EC↓j ...
                mov     rcx, [rsp+160h+var_F8]
                test    rcx, rcx
                jnz     short loc_140766479

loc_140766448:                          ; CODE XREF: sub_140766374+10A↓j
                mov     eax, ebx
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_18]
                add     rsp, 130h
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

loc_140766472:                          ; CODE XREF: sub_140766374+C8↑j
                call    ZwClose
                jmp     short loc_14076643E
; ---------------------------------------------------------------------------

loc_140766479:                          ; CODE XREF: sub_140766374+D2↑j
                call    ZwClose
                jmp     short loc_140766448
; } // starts at 140766374
sub_140766374   endp

; ---------------------------------------------------------------------------
byte_140766480  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400932B0↑o
                                        ; .pdata:000000014010A280↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=80h

sub_140766488   proc near               ; CODE XREF: sub_140765FB4+9D↑p
                                        ; sub_14072FDE4+103901↓p
                                        ; DATA XREF: ...

var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_120         = xmmword ptr -120h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = xmmword ptr -0A0h
var_90          = byte ptr -90h
var_44          = word ptr -44h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = byte ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140844D66 SIZE 00000134 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-50h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+80h+var_40], rax
                mov     rax, [rbp+80h+arg_28]
                lea     rsi, dword_14098725C
                xor     r12d, r12d
                mov     [rbp+80h+var_100], rax
                mov     rax, [rbp+80h+arg_30]
                mov     rbx, r8
                xorps   xmm0, xmm0
                mov     [rsp+180h+var_110], rax
                mov     r13d, r9d
                mov     [rbp+80h+var_F8], rbx
                mov     r15, rdx
                mov     [rsp+180h+var_108], rcx
                mov     edi, r12d
                mov     [rsp+180h+var_138], r12
                movups  [rsp+180h+var_120], xmm0
                mov     [rsp+180h+var_140], r12
                mov     r14d, r12d
                mov     [rsp+180h+var_128], r12
                mov     [rsp+180h+var_130], r12d
                mov     [rsp+180h+var_12C], r12d

loc_14076650C:                          ; CODE XREF: sub_140766488+EF↓j
                test    [rsi-4], r13d
                jz      short loc_140766566
                mov     rdx, [rsi-0Ch]
                lea     rcx, [rsp+180h+var_120]
                call    RtlInitUnicodeString
                xor     eax, eax
                mov     [rbp+80h+var_F0], 30h ; '0'
                mov     [rsp+180h+var_138], rax
                lea     r8, [rbp+80h+var_F0]
                lea     rax, [rsp+180h+var_120]
                mov     [rbp+80h+var_D8], 240h
                xorps   xmm0, xmm0
                mov     [rbp+80h+var_E0], rax
                mov     edx, 20019h
                mov     [rbp+80h+var_E8], rbx
                lea     rcx, [rsp+180h+var_138]
                movdqu  [rbp+80h+var_D0], xmm0
                call    ZwOpenKey
                cmp     eax, 0C0000034h
                jnz     short loc_1407665BF

loc_140766566:                          ; CODE XREF: sub_140766488+88↑j
                                        ; sub_140766488+1F6↓j ...
                inc     r14d
                add     rsi, 20h ; ' '
                cmp     r14d, 7
                jnb     short loc_140766579
                mov     rbx, [rbp+80h+var_F8]
                jmp     short loc_14076650C
; ---------------------------------------------------------------------------

loc_140766579:                          ; CODE XREF: sub_140766488+E9↑j
                                        ; sub_140766488+1CB↓j ...
                mov     rcx, [rsp+180h+var_138]
                test    rcx, rcx
                jnz     loc_140844E84

loc_140766587:                          ; CODE XREF: sub_140766488+DEA02↓j
                mov     rcx, [rsp+180h+var_140]
                test    rcx, rcx
                jnz     loc_140844E8F

loc_140766595:                          ; CODE XREF: sub_140766488+DEA0D↓j
                mov     eax, edi
                mov     rcx, [rbp+80h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+180h+arg_18]
                add     rsp, 150h
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

loc_1407665BF:                          ; CODE XREF: sub_140766488+DC↑j
                xor     ecx, ecx
                test    eax, eax
                js      loc_1407666CE
                mov     r8d, [rsi+4]
                test    r8d, r8d
                jz      loc_140766683
                mov     rdx, [r15+8]
                lea     rax, [rsp+180h+var_140]
                mov     [rsp+180h+var_148], rcx
                xor     r9d, r9d
                mov     rcx, cs:qword_140CF4378
                mov     [rsp+180h+var_150], rax
                mov     al, [rbp+80h+arg_20]
                mov     byte ptr [rsp+180h+var_158], al
                mov     dword ptr [rsp+180h+var_160], 0F003Fh
                call    sub_14062C9F8
                mov     ebx, eax

loc_14076660C:                          ; CODE XREF: sub_140766488+225↓j
                                        ; sub_140766488+23B↓j ...
                cmp     ebx, 0C0000034h
                jz      loc_140844E69
                test    ebx, ebx
                js      loc_140844E7D
                mov     rax, [rsp+180h+var_110]
                lea     r8, [rsi-0Ch]
                mov     r9, [rsp+180h+var_138]
                mov     rdx, r15
                mov     rcx, [rsp+180h+var_108]
                mov     [rsp+180h+var_158], rax
                mov     rax, [rsp+180h+var_140]
                mov     [rsp+180h+var_160], rax
                mov     rax, [rbp+80h+var_100]
                call    sub_1404079D0
                cmp     eax, 0C0000240h
                jz      loc_140766579
                xor     r12d, r12d
                test    eax, eax
                js      short loc_1407666CE
                mov     rcx, [rsp+180h+var_138]
                call    ZwClose
                mov     rcx, [rsp+180h+var_140]
                mov     [rsp+180h+var_138], r12
                call    ZwClose
                mov     [rsp+180h+var_140], r12
                jmp     loc_140766566
; ---------------------------------------------------------------------------

loc_140766683:                          ; CODE XREF: sub_140766488+148↑j
                mov     edx, [rsi]
                call    sub_14035C718
                test    al, al
                jnz     loc_140844D66

loc_140766692:                          ; CODE XREF: sub_140766488+DE909↓j
                lea     rax, [rsp+180h+var_140]
                mov     r9d, 0F003Fh
                mov     [rsp+180h+var_160], rax
                call    sub_14077B698

loc_1407666A7:                          ; CODE XREF: sub_140766488+DE8FF↓j
                xor     ecx, ecx
                mov     ebx, eax
                test    eax, eax
                js      loc_14076660C
                cmp     dword ptr [rsi], 7
                jz      loc_140844D96
                mov     rdx, [rsi+0Ch]

loc_1407666C0:                          ; CODE XREF: sub_140766488+DE96B↓j
                test    rdx, rdx
                jz      loc_14076660C
                jmp     loc_140844DF8
; ---------------------------------------------------------------------------

loc_1407666CE:                          ; CODE XREF: sub_140766488+13B↑j
                                        ; sub_140766488+1D6↑j
                mov     edi, eax
                jmp     loc_140766579
; } // starts at 140766488
sub_140766488   endp

; ---------------------------------------------------------------------------
byte_1407666D5  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400932E8↑o
                                        ; .pdata:000000014010A28C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1407666DC   proc near               ; CODE XREF: sub_140765FB4+68↑p
                                        ; sub_14077B0B8+D3764↓p
                                        ; DATA XREF: ...

var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140844E9A SIZE 0000007D BYTES

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                mov     [rsp-8+arg_18], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+arg_0], 0
                lea     rax, aVariables ; "Variables"
                and     [rbp+var_3C], 0
                mov     rdi, r8
                and     qword ptr [r8+8], 0
                mov     rsi, rdx
                and     qword ptr [r8+18h], 0
                xorps   xmm0, xmm0
                and     [rbp+var_2C], 0
                and     [rbp+var_14], 0
                mov     [r8], rcx
                lea     rcx, [r8+10h]
                and     qword ptr [rcx], 0
                lea     r8, [rbp+var_30]
                mov     [rbp+var_38], rax
                lea     rax, [rbp+var_40]
                mov     [rbp+var_28], rdx
                mov     edx, 20019h
                mov     [rbp+var_20], rax
                mov     [rbp+var_40], 140012h
                mov     [rbp+var_30], 30h ; '0'
                mov     [rbp+var_18], 240h
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     loc_1407667F9

loc_14076676E:                          ; CODE XREF: sub_1407666DC+161↓j
                and     [rbp+var_2C], 0
                lea     rax, aSetupResolvefi ; "Setup\\ResolveFilePaths"
                and     [rbp+var_14], 0
                lea     r8, [rbp+var_30]
                mov     [rbp+var_38], rax
                lea     rcx, [rbp+arg_0]
                lea     rax, [rbp+var_40]
                mov     [rbp+var_40], 2E002Ch
                xorps   xmm0, xmm0
                mov     [rbp+var_20], rax
                mov     edx, 20019h
                mov     [rbp+var_30], 30h ; '0'
                mov     [rbp+var_28], rsi
                mov     [rbp+var_18], 240h
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     loc_140844EA4

loc_1407667C9:                          ; CODE XREF: sub_1407666DC+DE7CD↓j
                                        ; sub_1407666DC+DE7E7↓j
                xor     ebx, ebx

loc_1407667CB:                          ; CODE XREF: sub_1407666DC+11F↓j
                                        ; sub_1407666DC+DE7C3↓j ...
                mov     rcx, [rbp+arg_0]
                test    rcx, rcx
                jnz     loc_140844EFE

loc_1407667D8:                          ; CODE XREF: sub_1407666DC+DE828↓j
                test    ebx, ebx
                js      loc_140844F09

loc_1407667E0:                          ; CODE XREF: sub_1407666DC+DE836↓j
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407667F9:                          ; CODE XREF: sub_1407666DC+8C↑j
                test    eax, eax
                js      short loc_1407667CB
                mov     edx, 7F0h
                mov     ecx, 1
                mov     r8d, 63647050h
                call    ExAllocatePoolWithTag
                mov     [rdi+18h], rax
                test    rax, rax
                jz      loc_140844E9A
                xor     edx, edx
                lea     r8d, [rdx+7Fh]

loc_140766825:                          ; CODE XREF: sub_1407666DC+15F↓j
                mov     rcx, [rdi+18h]
                add     rcx, rdx
                add     rdx, 10h
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                sub     r8, 1
                jnz     short loc_140766825
                jmp     loc_14076676E
sub_1407666DC   endp

; ---------------------------------------------------------------------------
algn_140766842:                         ; DATA XREF: .rdata:0000000140093310↑o
                                        ; .pdata:000000014010A298↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=37h

sub_140766848   proc near               ; CODE XREF: sub_140765EF0+71↑p
                                        ; sub_1408A71B8+1C3↓p ...

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = dword ptr  28h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h
arg_30          = dword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h
arg_50          = dword ptr  60h

; FUNCTION CHUNK AT 0000000140844F18 SIZE 00000332 BYTES

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-3Fh]
                sub     rsp, 90h
                mov     rax, cs:qword_140CF4378
                xor     r12d, r12d
                mov     [rbp+37h+var_38], rax
                mov     rsi, r9
                mov     [rbp+37h+var_58], r12
                mov     r15d, r8d
                mov     [rbp+37h+var_48], r12
                mov     r14, rdx
                mov     [rbp+37h+arg_18], r12d
                mov     rdi, rcx
                mov     [rbp+37h+var_60], 1
                mov     r13d, 2000001h
                mov     [rbp+37h+arg_20], r12d
                test    r9, r9
                jz      loc_140844F18

loc_1407668AD:                          ; CODE XREF: sub_140766848+DE6F4↓j
                cmp     [rbp+37h+arg_38], r12
                jz      loc_140844F41

loc_1407668B7:                          ; CODE XREF: sub_140766848+DE724↓j
                lea     rax, [rbp+37h+arg_18]
                mov     rcx, rdi
                test    r15d, r15d
                jnz     loc_140844F71
                mov     [rsp+0C0h+var_90], rax
                xor     r9d, r9d
                mov     dword ptr [rsp+0C0h+var_98], r12d
                xor     r8d, r8d
                mov     rdx, rsi
                mov     [rsp+0C0h+var_A0], r12
                call    sub_140766950

loc_1407668E4:                          ; CODE XREF: sub_140766848+DE754↓j
                mov     ecx, 80000000h
                mov     ebx, eax
                lea     eax, [rax+rcx]
                test    ecx, eax
                jz      short loc_140766930

loc_1407668F2:                          ; CODE XREF: sub_140766848+EE↓j
                mov     eax, [rbp+37h+arg_18]
                test    eax, eax
                jnz     loc_140844FA1
                mov     ebx, r12d

loc_140766900:                          ; CODE XREF: sub_140766848+F0↓j
                                        ; sub_140766848+DE6EA↓j ...
                mov     rcx, [rbp+37h+var_58]
                test    rcx, rcx
                jnz     short loc_14076693A

loc_140766909:                          ; CODE XREF: sub_140766848+F7↓j
                mov     rcx, [rbp+37h+var_48]
                test    rcx, rcx
                jnz     short loc_140766941

loc_140766912:                          ; CODE XREF: sub_140766848+FE↓j
                mov     eax, ebx
                mov     rbx, [rsp+0C0h+arg_10]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140766930:                          ; CODE XREF: sub_140766848+A8↑j
                cmp     ebx, 0C0000023h
                jz      short loc_1407668F2
                jmp     short loc_140766900
; ---------------------------------------------------------------------------

loc_14076693A:                          ; CODE XREF: sub_140766848+BF↑j
                call    ZwClose
                jmp     short loc_140766909
; ---------------------------------------------------------------------------

loc_140766941:                          ; CODE XREF: sub_140766848+C8↑j
                call    ZwClose
                jmp     short loc_140766912
sub_140766848   endp

; ---------------------------------------------------------------------------
algn_140766948:                         ; DATA XREF: .rdata:0000000140093340↑o
                                        ; .pdata:000000014010A2A4↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=100h

sub_140766950   proc near               ; CODE XREF: sub_140766848+97↑p
                                        ; sub_140766848+DE7D7↓p ...

var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = byte ptr -1C0h
var_1BC         = dword ptr -1BCh
var_1B8         = dword ptr -1B8h
var_1B4         = dword ptr -1B4h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = dword ptr -198h
var_190         = qword ptr -190h
var_188         = xmmword ptr -188h
var_178         = qword ptr -178h
var_170         = xmmword ptr -170h
var_160         = byte ptr -160h
var_140         = byte ptr -140h
var_F0          = byte ptr -0F0h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h

; FUNCTION CHUNK AT 000000014084524A SIZE 0000025E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0D0h]
                sub     rsp, 1D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+100h+var_40], rax
                mov     r14, [rbp+100h+arg_30]
                xor     ebx, ebx
                mov     rax, [rbp+100h+arg_20]
                xorps   xmm0, xmm0
                mov     [rsp+200h+var_1C0], r9b
                xorps   xmm1, xmm1
                mov     [rsp+200h+var_190], r8
                mov     rdi, r8
                mov     [r14], ebx
                mov     r11, rdx
                mov     [rbp+100h+var_178], rax
                mov     rsi, rcx
                mov     [rsp+200h+var_1A0], rbx
                mov     [rsp+200h+var_1A8], rbx
                mov     [rsp+200h+var_1B0], rbx
                mov     [rsp+200h+var_1B8], ebx
                mov     [rsp+200h+var_1B4], ebx
                movups  [rbp+100h+var_170], xmm0
                movups  [rsp+200h+var_188], xmm1
                test    r8, r8
                jnz     loc_14084524A

loc_1407669D9:                          ; CODE XREF: sub_140766950+DE914↓j
                lea     rax, [rsp+200h+var_1A0]
                mov     r9d, 9
                mov     [rsp+200h+var_1D0], rax
                xor     r8d, r8d
                mov     rdx, r11
                mov     byte ptr [rsp+200h+var_1E0], bl
                mov     rcx, rsi
                call    sub_1406CD7A0
                cmp     eax, 0C0000034h
                jnz     loc_140845269
                mov     eax, ebx

loc_140766A08:                          ; CODE XREF: sub_140766950+DE90E↓j
                                        ; sub_140766950+DE91B↓j ...
                mov     rcx, [rbp+100h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+200h+arg_18]
                add     rsp, 1D0h
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
; } // starts at 140766950
sub_140766950   endp

algn_140766A33:                         ; DATA XREF: .rdata:0000000140093378↑o
                                        ; .pdata:000000014010A2B0↑o
                align 20h
; Exported entry 2372. RtlSelfRelativeToAbsoluteSD

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

