HalGetBusData   proc near               ; CODE XREF: sub_14099C1F0+1D5↓p
                                        ; sub_14099C1F0+20D↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h

                sub     rsp, 38h
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], eax
                and     [rsp+38h+var_18], 0
                call    HalGetBusDataByOffset
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalGetBusData   endp

byte_1403C808C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DF6E0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403C8094   proc near               ; CODE XREF: RtlLockBootStatusData+EE↓p
                                        ; DATA XREF: .rdata:00000001400A9C84↑o ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = dword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B1ADC SIZE 0000000A BYTES

                mov     r11, rsp
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+arg_0], 0
                xorps   xmm0, xmm0
                cmp     cs:qword_140C1DC78, 0
                movups  [rbp+var_10], xmm0
                jnz     loc_1403C8191
                and     qword ptr [r11-28h], 0
                lea     rax, [rbp+arg_8]
                mov     rcx, cs:qword_140C1DC80
                xor     r9d, r9d
                and     [rbp+arg_8], 0
                xor     r8d, r8d
                mov     [r11-30h], rax
                xor     edx, edx
                lea     rax, [rbp+arg_0]
                mov     [rsp+60h+var_30], 4
                mov     [r11-40h], rax
                lea     rax, [rbp+var_10]
                mov     [r11-48h], rax
                call    ZwReadFile
                mov     edx, eax
                test    eax, eax
                js      loc_1403C8188
                mov     eax, [rbp+arg_0]
                test    eax, eax
                jz      loc_1404B1ADC
                cmp     eax, 800h
                ja      loc_1404B1ADC
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 66647362h
                call    ExAllocatePoolWithTag
                mov     cs:qword_140C1DC78, rax
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1403C8195
                and     [rsp+60h+var_20], 0
                lea     rax, [rbp+arg_8]
                mov     [rsp+60h+var_28], rax
                xor     r9d, r9d
                mov     eax, [rbp+arg_0]
                xor     r8d, r8d
                mov     [rsp+60h+var_30], eax
                xor     edx, edx
                mov     [rsp+60h+var_38], rcx
                lea     rax, [rbp+var_10]
                mov     rcx, cs:qword_140C1DC80
                mov     [rsp+60h+var_40], rax
                call    ZwReadFile
                mov     edx, eax
                test    eax, eax
                js      short loc_1403C8188
                mov     eax, [rbp+arg_0]
                mov     ecx, edx
                cmp     qword ptr [rbp+var_10+8], rax
                mov     edx, 0C0000001h
                cmovnz  ecx, edx
                mov     edx, ecx

loc_1403C8188:                          ; CODE XREF: sub_1403C8094+66↑j
                                        ; sub_1403C8094+DF↑j ...
                mov     eax, edx
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C8191:                          ; CODE XREF: sub_1403C8094+1E↑j
                xor     edx, edx
                jmp     short loc_1403C8188
; ---------------------------------------------------------------------------

loc_1403C8195:                          ; CODE XREF: sub_1403C8094+A1↑j
                mov     edx, 0C0000017h
                jmp     short loc_1403C8188
sub_1403C8094   endp

; ---------------------------------------------------------------------------
byte_1403C819C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A9C84↑o
                                        ; .pdata:00000001400DF6EC↑o

; =============== S U B R O U T I N E =======================================


sub_1403C81A4   proc near               ; CODE XREF: sub_1407C42FC+D5↓p
                                        ; DATA XREF: .rdata:00000001400A9DA8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B1AE6 SIZE 00000008 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                xor     edi, edi
                mov     r11, rdx
                mov     r10d, edi
                mov     esi, 0C000000Dh
                mov     rbx, r8
                mov     rdx, rcx
                lea     rax, [r11-1]
                cmp     rax, 7FFFFFFEh
                cmova   r10d, esi
                test    r10d, r10d
                js      loc_1404B1AE6
                mov     rcx, r11
                mov     rax, rdx
                test    r11, r11
                jz      short loc_1403C81F7

loc_1403C81E8:                          ; CODE XREF: sub_1403C81A4+51↓j
                cmp     [rax], di
                jz      short loc_1403C81F7
                add     rax, 2
                sub     rcx, 1
                jnz     short loc_1403C81E8

loc_1403C81F7:                          ; CODE XREF: sub_1403C81A4+42↑j
                                        ; sub_1403C81A4+47↑j
                mov     rax, rcx
                neg     rax
                sbb     r10d, r10d
                not     r10d
                and     r10d, esi
                test    rcx, rcx
                jz      loc_1404B1AE6
                mov     r8, r11
                sub     r8, rcx

loc_1403C8215:                          ; CODE XREF: sub_1403C81A4+E9945↓j
                test    r10d, r10d
                js      short loc_1403C827D
                cmp     r9, 7FFFFFFEh
                ja      short loc_1403C8291
                mov     rcx, r11
                lea     rdx, [rdx+r8*2]
                sub     rcx, r8
                jz      short loc_1403C825F
                mov     rax, rcx
                sub     rax, r11
                add     rax, r8
                add     rax, r9
                sub     rbx, rdx

loc_1403C823E:                          ; CODE XREF: sub_1403C81A4+B9↓j
                test    rax, rax
                jz      short loc_1403C825F
                movzx   r8d, word ptr [rbx+rdx]
                test    r8w, r8w
                jz      short loc_1403C825F
                mov     [rdx], r8w
                dec     rax
                add     rdx, 2
                sub     rcx, 1
                jnz     short loc_1403C823E

loc_1403C825F:                          ; CODE XREF: sub_1403C81A4+89↑j
                                        ; sub_1403C81A4+9D↑j ...
                test    rcx, rcx
                lea     rax, [rdx-2]
                cmovnz  rax, rdx
                neg     rcx
                sbb     r10d, r10d
                not     r10d
                and     r10d, 80000005h
                mov     [rax], di

loc_1403C827D:                          ; CODE XREF: sub_1403C81A4+74↑j
                                        ; sub_1403C81A4+F0↓j
                mov     rbx, [rsp+arg_0]
                mov     eax, r10d
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C8291:                          ; CODE XREF: sub_1403C81A4+7D↑j
                mov     r10d, esi
                jmp     short loc_1403C827D
sub_1403C81A4   endp

; ---------------------------------------------------------------------------
byte_1403C8296  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A9DA8↑o
                                        ; .pdata:00000001400DF6F8↑o

; =============== S U B R O U T I N E =======================================


sub_1403C829C   proc near               ; CODE XREF: sub_14075B188+265↓p
                                        ; sub_140A6D44C+68↓p
                                        ; DATA XREF: ...
                test    dword ptr [rcx+24h], 2000000h
                jnz     short loc_1403C82A9

loc_1403C82A5:                          ; CODE XREF: sub_1403C829C+10↓j
                                        ; sub_1403C829C+16↓j ...
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C82A9:                          ; CODE XREF: sub_1403C829C+7↑j
                cmp     byte ptr [rcx], 50h ; 'P'
                jnz     short loc_1403C82A5
                cmp     byte ptr [rcx+1], 61h ; 'a'
                jnz     short loc_1403C82A5
                cmp     byte ptr [rcx+2], 64h ; 'd'
                jnz     short loc_1403C82A5
                mov     al, [rcx+3]
                sub     al, 30h ; '0'
                cmp     al, 9
                ja      short loc_1403C82A5
                mov     eax, 1
                retn
sub_1403C829C   endp

; ---------------------------------------------------------------------------
                align 2
algn_1403C82CA:                         ; DATA XREF: .pdata:00000001400DF704↑o
                align 10h
; Exported entry 1737. PoFxSetDeviceIdleTimeout

; =============== S U B R O U T I N E =======================================


