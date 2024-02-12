IoStopTimer     proc near               ; DATA XREF: .pdata:00000001400DFE30↑o
                sub     rsp, 28h
                mov     rcx, [rcx+28h]
                call    sub_1403CE75C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoStopTimer     endp

byte_1403CE753  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DFE30↑o

; =============== S U B R O U T I N E =======================================


sub_1403CE75C   proc near               ; CODE XREF: IoStopTimer+8↑p
                                        ; DATA XREF: .rdata:00000001400AD5D0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404B4F90 SIZE 000000A4 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, rcx
                xor     ebp, ebp
                lea     rcx, qword_140D23140
                mov     ebx, ebp
                call    KeAcquireSpinLockRaiseToDpc
                lea     r14d, [rbp+1]
                movzx   esi, al
                cmp     [rdi+2], bp
                jnz     loc_1404B4F90

loc_1403CE799:                          ; CODE XREF: sub_1403CE75C+E6843↓j
                lea     rcx, qword_140D23140
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B4FA4

loc_1403CE7B3:                          ; CODE XREF: sub_1403CE75C+E684B↓j
                                        ; sub_1403CE75C+E6857↓j ...
                mov     cr8, rsi
                test    dword ptr cs:xmmword_140CFC480+8, 800000h
                jnz     loc_1404B500A

loc_1403CE7C7:                          ; CODE XREF: sub_1403CE75C+E68C1↓j
                test    ebx, ebx
                jnz     loc_1404B5022

loc_1403CE7CF:                          ; CODE XREF: sub_1403CE75C+E68D3↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CE75C   endp

algn_1403CE7EB:                         ; DATA XREF: .rdata:00000001400AD5D0↑o
                                        ; .pdata:00000001400DFE3C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CE800   proc near               ; DATA XREF: .pdata:00000001400DFE48↑o
                                        ; sub_1407B9668+10E↓o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                add     rcx, 8168h
                call    sub_1403C2500
                mov     rcx, rbx
                call    sub_1403CE82C
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CE800   endp

byte_1403CE826  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DFE48↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403CE82C   proc near               ; CODE XREF: sub_1403CE800+18↑p
                                        ; sub_140577E20+4↓p
                                        ; DATA XREF: ...

var_10          = qword ptr -10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B5034 SIZE 00000061 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                cmp     cs:byte_140CFC455, 0
                mov     r8, rcx
                jnz     loc_1404B5034

loc_1403CE857:                          ; CODE XREF: sub_1403CE82C+E682D↓j
                                        ; sub_1403CE82C+E683B↓j ...
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+20h+arg_8]
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403CE82C
sub_1403CE82C   endp

algn_1403CE86F:                         ; DATA XREF: .rdata:00000001400AD668↑o
                                        ; .pdata:00000001400DFE54↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CE880   proc near               ; DATA XREF: .rdata:00000001400056B8↑o
                                        ; .rdata:00000001400AD694↑o ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404B5096 SIZE 00000013 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+38h+var_10], rax
                mov     rdi, r8
                mov     ebx, 1
                cmp     r9d, 2
                jnz     short loc_1403CE925
                mov     rax, [r8]
                test    rax, rax
                jz      short loc_1403CE925
                cmp     qword ptr [r8+8], 0
                jz      short loc_1403CE925
                mov     edx, [rax]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     ecx, ecx
                call    sub_1402E6A20
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1403CE925
                and     [rsp+38h+var_18], 0
                mov     rdx, [rdi+8]
                or      r8, 0FFFFFFFFFFFFFFFFh

loc_1403CE8E0:                          ; CODE XREF: sub_1403CE880+68↓j
                inc     r8
                cmp     byte ptr [rdx+r8], 0
                jnz     short loc_1403CE8E0
                mov     edi, 8
                cmp     r8, rbx
                jz      loc_1404B5096
                cmp     r8, rdi
                cmova   r8, rdi

loc_1403CE8FF:                          ; CODE XREF: sub_1403CE880+E6819↓j
                lea     rcx, [rsp+38h+var_18]
                call    memmove
                lea     rdx, [rsi+10h]
                mov     r8, rdi
                lea     rcx, [rsp+38h+var_18]
                call    memcmp
                neg     eax
                sbb     ecx, ecx
                not     ecx
                and     ecx, 2
                mov     ebx, ecx

loc_1403CE925:                          ; CODE XREF: sub_1403CE880+2A↑j
                                        ; sub_1403CE880+32↑j ...
                mov     eax, ebx
                mov     rcx, [rsp+38h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403CE880
sub_1403CE880   endp

byte_1403CE945  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400AD694↑o
                                        ; .pdata:00000001400DFE60↑o

; =============== S U B R O U T I N E =======================================


sub_1403CE94C   proc near               ; CODE XREF: IoDeleteDevice+13D↑p
                                        ; DATA XREF: .rdata:00000001400AD7A4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404B50AA SIZE 00000063 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                lea     rcx, qword_140D23140
                call    KeAcquireSpinLockRaiseToDpc
                movzx   ebx, al
                lea     rax, [rdi+8]
                mov     r8, [rax]
                mov     rdx, [rax+8]
                cmp     [r8+8], rax
                jnz     short loc_1403CE9C9
                cmp     [rdx], rax
                jnz     short loc_1403CE9C9
                mov     [rdx], r8
                xor     esi, esi
                mov     [r8+8], rdx
                cmp     [rdi+2], si
                jnz     short loc_1403CE9C1

loc_1403CE992:                          ; CODE XREF: sub_1403CE94C+7B↓j
                lea     rcx, qword_140D23140
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B50AA

loc_1403CE9AC:                          ; CODE XREF: sub_1403CE94C+E6760↓j
                                        ; sub_1403CE94C+E676C↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CE9C1:                          ; CODE XREF: sub_1403CE94C+44↑j
                dec     cs:dword_140C45CE0
                jmp     short loc_1403CE992
; ---------------------------------------------------------------------------

loc_1403CE9C9:                          ; CODE XREF: sub_1403CE94C+30↑j
                                        ; sub_1403CE94C+35↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1403CE94C   endp

; ---------------------------------------------------------------------------
byte_1403CE9D0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400AD7A4↑o
                                        ; .pdata:00000001400DFE6C↑o

; =============== S U B R O U T I N E =======================================


sub_1403CE9D8   proc near               ; CODE XREF: sub_14078566C+2DF↓p
                                        ; sub_1408D9E30+59↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, r8d
                mov     rdi, rdx
                mov     rsi, rcx
                call    sub_14026B700
                mov     r8d, ebx
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402FD868
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CE9D8   endp

byte_1403CEA14  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DFE78↑o

; =============== S U B R O U T I N E =======================================


sub_1403CEA1C   proc near               ; CODE XREF: sub_140A74F50+C↓p
                                        ; DATA XREF: .rdata:00000001400AD8EC↑o ...

var_A8          = qword ptr -0A8h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_88          = byte ptr -88h
var_78          = dword ptr -78h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404B510E SIZE 00000073 BYTES

; __unwind { // __GSHandlerCheck
                sub     rsp, 0C8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_18], rax
                and     [rsp+0C8h+var_98], 0
                lea     rcx, [rsp+0C8h+var_88]
                xor     edx, edx
                lea     r8d, [rdx+68h]
                call    memset
                call    sub_140A74F70
                cmp     cs:byte_140CFC408, 0
                jnz     loc_1404B510E

loc_1403CEA5D:                          ; CODE XREF: sub_1403CEA1C+E6760↓j
                mov     rcx, [rsp+0C8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0C8h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403CEA1C
sub_1403CEA1C   endp

algn_1403CEA76:                         ; DATA XREF: .rdata:00000001400AD8EC↑o
                                        ; .pdata:00000001400DFE84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CEA80   proc near               ; DATA XREF: .pdata:00000001400DFE90↑o
                                        ; sub_1403AFD20+1DC↑o

var_18          = dword ptr -18h

                push    rbx
                sub     rsp, 30h
                xor     edx, edx
                mov     [rsp+38h+var_18], 1
                mov     rbx, rcx
                xor     r9d, r9d
                xor     r8d, r8d
                lea     ecx, [rdx+5]
                call    sub_14039E0C8
                mov     rdx, rax
                test    rax, rax
                jz      short loc_1403CEAD3
                test    rbx, rbx
                jz      short loc_1403CEAB8
                mov     rax, [rax+0C0h]
                mov     [rbx], rax

loc_1403CEAB8:                          ; CODE XREF: sub_1403CEA80+2C↑j
                mov     rcx, rdx
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rdx+70h]
                call    sub_1404079D0

loc_1403CEACC:                          ; CODE XREF: sub_1403CEA80:loc_1403CEAD3↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CEAD3:                          ; CODE XREF: sub_1403CEA80+27↑j
                jmp     short loc_1403CEACC
sub_1403CEA80   endp

; ---------------------------------------------------------------------------
byte_1403CEAD5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DFE90↑o

; =============== S U B R O U T I N E =======================================


sub_1403CEADC   proc near               ; CODE XREF: sub_140991EF0+354↓p
                                        ; DATA XREF: .rdata:00000001400AD9C4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B5182 SIZE 000000B3 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, rcx
                mov     r15, r8
                lea     rcx, unk_140C496A0
                mov     ebx, edx
                xor     ebp, ebp
                call    ExAcquireSpinLockShared
                movzx   esi, al
                mov     eax, cs:dword_140C496B4
                lea     edi, [rax+1]
                shl     edi, 4
                test    r15, r15
                jnz     loc_1404B51A4
                cmp     cs:qword_140C49690, rbp
                jnz     loc_1404B5182
                mov     ebp, 0C0000225h

loc_1403CEB34:                          ; CODE XREF: sub_1403CEADC+E66C3↓j
                                        ; sub_1403CEADC+E66F0↓j
                lea     rcx, unk_140C496A0
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B51D1

loc_1403CEB4E:                          ; CODE XREF: sub_1403CEADC+E66F7↓j
                                        ; sub_1403CEADC+E6703↓j ...
                mov     cr8, rsi
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, ebp
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CEADC   endp

algn_1403CEB6E:                         ; DATA XREF: .rdata:00000001400AD9C4↑o
                                        ; .pdata:00000001400DFE9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CEB80   proc near               ; DATA XREF: .rdata:00000001400ADA08↑o
                                        ; .pdata:00000001400DFEA8↑o ...

var_38          = dword ptr -38h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404B5236 SIZE 00000063 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+10h], rbx
                push    rdi
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_18], rax
                mov     [r11-30h], r9d
                lea     r8, [r11-28h]
                xor     eax, eax
                mov     [rsp+58h+var_38], 0Ch
                mov     [r11-28h], rax
                lea     r9, [r11-38h]
                lea     rdx, [r11-30h]
                mov     [rsp+58h+var_20], eax
                call    ExQueryWnfStateData
                mov     edi, eax
                test    eax, eax
                js      short loc_1403CEC08
                cmp     [rsp+58h+var_38], 0Ch
                jb      short loc_1403CEC23
                lea     rcx, qword_140C23A58
                call    KeAcquireSpinLockRaiseToDpc
                cmp     [rsp+58h+var_28], 0
                lea     rcx, qword_140C23A58
                movzx   ebx, al
                setz    cs:byte_140C23DC4
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B5236

loc_1403CEC04:                          ; CODE XREF: sub_1403CEB80+E66B8↓j
                                        ; sub_1403CEB80+E66C4↓j ...
                mov     cr8, rbx

loc_1403CEC08:                          ; CODE XREF: sub_1403CEB80+46↑j
                                        ; sub_1403CEB80+A5↓j
                mov     eax, edi
                mov     rcx, [rsp+58h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CEC23:                          ; CODE XREF: sub_1403CEB80+4D↑j
                xor     edi, edi
                jmp     short loc_1403CEC08
; } // starts at 1403CEB80
sub_1403CEB80   endp

; ---------------------------------------------------------------------------
algn_1403CEC27:                         ; DATA XREF: .rdata:00000001400ADA08↑o
                                        ; .pdata:00000001400DFEA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403CEC30   proc near               ; DATA XREF: .pdata:00000001400DFEB4↑o
                                        ; sub_1407BFA50+87↓o
                sub     rsp, 28h
                lea     rcx, [r8+50h]
                mov     edx, 1
                call    ExQueueWorkItem
                mov     eax, 0C0000016h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CEC30   endp

algn_1403CEC4D:                         ; DATA XREF: .pdata:00000001400DFEB4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_1403CEC60   proc near               ; DATA XREF: .rdata:00000001400ADAA4↑o
                                        ; .pdata:00000001400DFEC0↑o ...

; FUNCTION CHUNK AT 00000001404B529A SIZE 00000013 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx

loc_1403CEC69:                          ; CODE XREF: sub_1403CEC60+1F↓j
                                        ; sub_1403CEC60+E6648↓j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    KeRemoveQueue
                mov     rcx, rax
                cmp     rax, 80h
                jz      short loc_1403CEC69
                jmp     loc_1404B529A
sub_1403CEC60   endp

; ---------------------------------------------------------------------------
byte_1403CEC86  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400ADAA4↑o
                                        ; .pdata:00000001400DFEC0↑o

; =============== S U B R O U T I N E =======================================


sub_1403CEC8C   proc near               ; CODE XREF: sub_140A3C054+350↓p
                                        ; DATA XREF: .pdata:00000001400DFECC↑o

; FUNCTION CHUNK AT 00000001404B52AE SIZE 0000002C BYTES

                mov     edx, cs:dword_140C05128
                cmp     edx, 8
                jnb     loc_1404B52AE

loc_1403CEC9B:                          ; CODE XREF: sub_1403CEC8C+E662A↓j
                mov     rax, [rcx+0F0h]
                mov     ecx, [rax+84h]
                test    cl, 1
                jz      loc_1404B52BB

locret_1403CECB1:                       ; CODE XREF: sub_1403CEC8C+E6632↓j
                retn
sub_1403CEC8C   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403CECB3:                         ; DATA XREF: .pdata:00000001400DFECC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CECC0   proc near               ; DATA XREF: .rdata:00000001400ADB90↑o
                                        ; .pdata:00000001400DFED8↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404B52DC SIZE 00000022 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, [rdx+40h]
                xor     ebx, ebx
                mov     rdi, rdx
                test    rax, rax
                jnz     loc_1404B52DC

loc_1403CECDC:                          ; CODE XREF: sub_1403CECC0+E6620↓j
                mov     ebx, 0C0000002h

loc_1403CECE1:                          ; CODE XREF: sub_1403CECC0+E6639↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CECC0   endp

byte_1403CECEF  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400ADB90↑o
                                        ; .pdata:00000001400DFED8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403CECF8   proc near               ; CODE XREF: sub_140A400D0+9AD↓p
                                        ; DATA XREF: .pdata:00000001400DFEE4↑o

var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-37h]
                sub     rsp, 90h
                mov     rax, [rcx+0F0h]
                xor     r12d, r12d
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_4C], r12d
                movups  [rbp+57h+var_90], xmm0
                mov     [rbp+57h+var_34], r12d
                mov     rbx, [rax+9E0h]
                mov     rdi, [rax+9E8h]
                mov     rsi, [rax+9F0h]
                mov     r14, [rax+9F8h]
                mov     r15, [rax+0A00h]
                test    rbx, rbx
                jz      short loc_1403CED8C
                call    sub_1404F9B10
                lea     rcx, [rbp+57h+var_80]
                mov     [rbp+57h+var_80], rbx
                mov     [rbp+57h+var_78], rdi
                mov     [rbp+57h+var_70], rsi
                mov     [rbp+57h+var_68], r14
                mov     [rbp+57h+var_60], r15
                call    sub_1404F9DCC
                mov     rcx, cs:qword_140C4C3C8
                call    EtwUnregister
                mov     cs:qword_140C4C3C8, r12

loc_1403CED8C:                          ; CODE XREF: sub_1403CECF8+5D↑j
                cmp     cs:byte_140CFC40A, r12b
                jz      loc_1403CEEF6
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jz      short loc_1403CEDE4
                call    sub_140A91244
                call    sub_1403F1060
                mov     cs:dword_140CFC628, eax
                cmp     eax, 4
                jnz     short loc_1403CEDBF
                mov     cs:byte_140CFC5BC, 1

loc_1403CEDBF:                          ; CODE XREF: sub_1403CECF8+BE↑j
                cmp     cs:byte_140CFC5BC, r12b
                jz      short loc_1403CEDE4
                call    sub_1404F977C
                mov     edx, 80000000h
                lea     ecx, [rax+rdx]
                test    edx, ecx
                jnz     short loc_1403CEDE4
                cmp     eax, 0C00000BBh
                jnz     loc_1403CEEF8

loc_1403CEDE4:                          ; CODE XREF: sub_1403CECF8+A9↑j
                                        ; sub_1403CECF8+CE↑j ...
                call    sub_1404F9690
                mov     eax, cs:dword_140CFC438
                test    al, 1
                jz      loc_1403CEED8
                call    sub_1404F9B10
                xor     r8d, r8d
                lea     rcx, qword_140010188
                xor     edx, edx
                call    sub_1404FA224
                call    sub_1404F9E44
                call    sub_1404F99D0
                call    sub_1404F9FA8
                call    sub_1404F9B58
                mov     eax, cs:dword_140CFC4BC
                cmp     eax, 400h
                jnb     short loc_1403CEE59
                imul    rcx, rax, 78h ; 'x'
                lea     rax, dword_140D042E0
                add     rcx, rax
                mov     eax, [rcx]
                test    eax, eax
                jnz     short loc_1403CEE59
                lea     r8, [rcx+38h]
                movzx   eax, word ptr [r8]
                test    ax, ax
                jz      short loc_1403CEE59
                mov     ecx, [rcx+8]
                mov     edx, eax
                call    sub_1404FA15C

loc_1403CEE59:                          ; CODE XREF: sub_1403CECF8+134↑j
                                        ; sub_1403CECF8+148↑j ...
                call    sub_14088FDD4
                cmp     cs:byte_140CFC43D, r12b
                jz      short loc_1403CEE78
                xor     r8d, r8d
                lea     rcx, qword_140010198
                xor     edx, edx
                call    sub_1404FA224

loc_1403CEE78:                          ; CODE XREF: sub_1403CECF8+16D↑j
                lea     rdx, aCallbackPowers ; "\\Callback\\PowerState"
                lea     rcx, [rbp+57h+var_90]
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_50], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_40], rax
                mov     r9b, 1
                mov     [rbp+57h+var_48], r12
                xor     r8d, r8d
                mov     [rbp+57h+var_38], 50h ; 'P'
                lea     rdx, [rbp+57h+var_50]
                mov     [rbp+57h+arg_0], r12
                lea     rcx, [rbp+57h+arg_0]
                movdqu  [rbp+57h+var_30], xmm0
                call    ExCreateCallback
                test    eax, eax
                js      short loc_1403CEEF8
                mov     rcx, [rbp+57h+arg_0]
                lea     rdx, sub_1404F2230
                xor     r8d, r8d
                call    ExRegisterCallback

loc_1403CEED8:                          ; CODE XREF: sub_1403CECF8+F9↑j
                mov     rcx, cs:qword_140C19280
                test    rcx, rcx
                jz      short loc_1403CEEF1
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140342E58

loc_1403CEEF1:                          ; CODE XREF: sub_1403CECF8+1EA↑j
                call    sub_1404F8774

loc_1403CEEF6:                          ; CODE XREF: sub_1403CECF8+9B↑j
                xor     eax, eax

loc_1403CEEF8:                          ; CODE XREF: sub_1403CECF8+E6↑j
                                        ; sub_1403CECF8+1CB↑j
                lea     r11, [rsp+0B0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CECF8   endp

byte_1403CEF15  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DFEE4↑o

; =============== S U B R O U T I N E =======================================


sub_1403CEF1C   proc near               ; CODE XREF: sub_14068E540+15D↓p
                                        ; DATA XREF: .rdata:00000001400ADC4C↑o ...

var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 00000001404B52FE SIZE 00000043 BYTES

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 30h
                or      rdi, 0FFFFFFFFFFFFFFFFh
                lea     rsi, [rcx+0B8h]
                mov     rax, rdi
                mov     rbp, rdx
                lock xadd [rsi], rax
                test    al, 2
                jnz     loc_1404B52FE

loc_1403CEF4A:                          ; CODE XREF: sub_1403CEF1C+E63E4↓j
                                        ; sub_1403CEF1C+E63F3↓j
                and     [rsp+58h+arg_10], 0
                mov     rcx, rsi
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r12d, 1
                cmp     eax, r12d
                jnz     loc_1403CF0D9
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax

loc_1403CEF7D:                          ; CODE XREF: sub_1403CEF1C+1C0↓j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r12b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, rsi
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_1403CEFB8:                          ; CODE XREF: sub_1403CEF1C+C7↓j
                                        ; sub_1403CEF1C+CF↓j ...
                bsr     ecx, r8d
                mov     [rsp+58h+arg_0], ecx
                jz      loc_1403CF0E1
                lea     rdi, [rcx+rcx*2]
                mov     eax, r12d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r12b
                jz      short loc_1403CEFB8
                mov     eax, [rdi+20h]
                test    r12b, al
                jnz     short loc_1403CEFB8
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1403CEFB8
                cmp     [rdi+28h], edx
                jnz     short loc_1403CEFB8
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_1403CEFB8
                test    rdi, rdi
                jz      loc_1403CF0E1
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1403CF030
                mov     rcx, rdi
                call    sub_14031EC80

loc_1403CF030:                          ; CODE XREF: sub_1403CEF1C+10A↑j
                mov     ecx, [rdi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rsp+58h+arg_10], eax
                mov     [rdi+58h], ecx
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r12b
                jnz     loc_1404B5314
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1403CF08E:                          ; CODE XREF: sub_1403CEF1C+1CC↓j
                                        ; sub_1403CEF1C+E6406↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r12w
                jnz     short loc_1403CF0BF
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1403CF0BF
                call    KiCheckForKernelApcDelivery

loc_1403CF0BF:                          ; CODE XREF: sub_1403CEF1C+190↑j
                                        ; sub_1403CEF1C+19C↑j
                mov     rcx, rbp
                call    sub_140245770
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 30h
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CF0D9:                          ; CODE XREF: sub_1403CEF1C+4D↑j
                or      edx, 0FFFFFFFFh
                jmp     loc_1403CEF7D
; ---------------------------------------------------------------------------

loc_1403CF0E1:                          ; CODE XREF: sub_1403CEF1C+A4↑j
                                        ; sub_1403CEF1C+F2↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_1403CF08E
                jmp     loc_1404B5327
sub_1403CEF1C   endp

; ---------------------------------------------------------------------------
algn_1403CF0EF:                         ; DATA XREF: .rdata:00000001400ADC4C↑o
                                        ; .pdata:00000001400DFEF0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CF100   proc near               ; DATA XREF: .pdata:00000001400DFEFC↑o
                                        ; INIT:0000000140A9A978↓o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebp, r8d
                mov     rdi, rdx
                mov     rsi, rcx
                mov     ebx, 0C000000Dh
                call    sub_140991320
                mov     r9, cs:qword_14000E778
                sub     r9, [rsi]
                jnz     short loc_1403CF13E
                mov     r9, cs:qword_14000E780
                sub     r9, [rsi+8]

loc_1403CF13E:                          ; CODE XREF: sub_1403CF100+31↑j
                test    r9, r9
                jnz     short loc_1403CF159
                cmp     ebp, 4
                jnz     short loc_1403CF159
                test    rdi, rdi
                jz      short loc_1403CF159
                cmp     [rdi], r9d
                setnz   cs:byte_140C23DA4
                xor     ebx, ebx

loc_1403CF159:                          ; CODE XREF: sub_1403CF100+41↑j
                                        ; sub_1403CF100+46↑j ...
                call    sub_1409912E0
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CF100   endp

algn_1403CF176:                         ; DATA XREF: .pdata:00000001400DFEFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CF180   proc near               ; DATA XREF: .pdata:00000001400DFF08↑o
                                        ; sub_140A46B8C+3F↓o

; FUNCTION CHUNK AT 00000001404B5342 SIZE 0000003B BYTES

                cmp     ecx, 0FFFFFFFFh
                jnz     loc_1404B5342
                mov     r8d, cs:dword_140C48B6C

loc_1403CF190:                          ; CODE XREF: sub_1403CF180+E61CD↓j
                                        ; sub_1403CF180+E61F8↓j
                mov     eax, r8d
                retn
sub_1403CF180   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403CF195  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DFF08↑o

; =============== S U B R O U T I N E =======================================


sub_1403CF19C   proc near               ; CODE XREF: sub_140339F84+152↑p
                                        ; DATA XREF: .rdata:00000001400ADD80↑o ...

arg_0           = byte ptr  8

; FUNCTION CHUNK AT 00000001404B537E SIZE 00000090 BYTES

                push    rbx
                sub     rsp, 20h
                cmp     byte ptr [rcx+50h], 0
                mov     rbx, rcx
                mov     [rsp+28h+arg_0], 0
                jz      loc_1404B537E

loc_1403CF1B4:                          ; CODE XREF: sub_1403CF19C+E61F7↓j
                mov     cl, [rbx+41h]
                mov     al, cl
                and     al, 0C0h
                cmp     al, 0C0h
                jnz     loc_1404B5398

loc_1403CF1C3:                          ; CODE XREF: sub_1403CF19C+E6202↓j
                                        ; sub_1403CF19C+E621C↓j
                mov     cl, [rbx+41h]
                mov     al, cl
                shr     al, 6
                test    al, al
                jz      loc_1404B53BD

loc_1403CF1D3:                          ; CODE XREF: sub_1403CF19C+E6227↓j
                cmp     al, 2
                jz      loc_1404B53C9
                cmp     al, 1
                jz      loc_1404B53E7

loc_1403CF1E3:                          ; CODE XREF: sub_1403CF19C+E6240↓j
                                        ; sub_1403CF19C+E626D↓j
                xor     eax, eax

loc_1403CF1E5:                          ; CODE XREF: sub_1403CF19C+E61ED↓j
                                        ; sub_1403CF19C+E6216↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CF19C   endp

algn_1403CF1EC:                         ; DATA XREF: .rdata:00000001400ADD80↑o
                                        ; .pdata:00000001400DFF14↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CF200   proc near               ; DATA XREF: .pdata:00000001400DFF20↑o
                                        ; sub_1407D2A1C+3C↓o
                mov     r9, cs:qword_140C496E0
                mov     r10, rdx
                movzx   eax, cx
                cmp     eax, [r9+38h]
                jnb     short loc_1403CF233
                mov     rax, [r9+18h]
                movzx   edx, cx
                mov     ecx, [rax+rdx*4]
                mov     [r10], ecx
                test    r8, r8
                jz      short loc_1403CF22F
                mov     rax, [r9+20h]
                mov     ecx, [rax+rdx*4]
                mov     [r8], ecx

loc_1403CF22F:                          ; CODE XREF: sub_1403CF200+23↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CF233:                          ; CODE XREF: sub_1403CF200+11↑j
                mov     eax, 0C0000225h
                retn
sub_1403CF200   endp

; ---------------------------------------------------------------------------
                align 2
algn_1403CF23A:                         ; DATA XREF: .pdata:00000001400DFF20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CF240   proc near               ; CODE XREF: sub_1405D8B28+5BF↓p
                                        ; DATA XREF: .pdata:00000001400DFF2C↑o
                sub     rsp, 28h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403CF240   endp

algn_1403CF261:                         ; DATA XREF: .pdata:00000001400DFF2C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403CF268   proc near               ; CODE XREF: sub_1403A208C+12D↑p
                                        ; sub_1404C2250+7↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404B540E SIZE 00000014 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                call    sub_1403A1F88
                test    al, al
                jnz     loc_1404B540E
                call    sub_1403A2230
                test    al, al

loc_1403CF291:                          ; CODE XREF: sub_1403CF268+E61B5↓j
                jnz     short loc_1403CF2A9
                xor     al, al

loc_1403CF295:                          ; CODE XREF: sub_1403CF268+43↓j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CF2A9:                          ; CODE XREF: sub_1403CF268:loc_1403CF291↑j
                mov     al, 1
                jmp     short loc_1403CF295
; } // starts at 1403CF268
sub_1403CF268   endp

; ---------------------------------------------------------------------------
algn_1403CF2AD:                         ; DATA XREF: .rdata:00000001400ADE34↑o
                                        ; .pdata:00000001400DFF38↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403CF2C0   proc near               ; DATA XREF: .pdata:00000001400DFF44↑o
                                        ; sub_140A3B08C+1C↓o

arg_20          = byte ptr  28h

                test    r9, r9
                jz      short loc_1403CF2E0
                cmp     qword ptr [r9], 0
                jz      short loc_1403CF2D2
                cmp     [rsp+arg_20], 1
                jz      short loc_1403CF2E0

loc_1403CF2D2:                          ; CODE XREF: sub_1403CF2C0+9↑j
                mov     qword ptr [r9], 1
                mov     al, 1
                mov     [r8], rcx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403CF2E0:                          ; CODE XREF: sub_1403CF2C0+3↑j
                                        ; sub_1403CF2C0+10↑j
                xor     al, al
                retn
sub_1403CF2C0   endp

; ---------------------------------------------------------------------------
                align 4
algn_1403CF2E4:                         ; DATA XREF: .pdata:00000001400DFF44↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403CF2F0   proc near               ; DATA XREF: .pdata:00000001400DFF50↑o
                                        ; sub_1407D2A1C+52↓o
                mov     r9, cs:qword_140C496E0
                movzx   r10d, cx
                mov     eax, [r9+38h]
                cmp     r10d, eax
                jnb     short loc_1403CF324
                movzx   ecx, dx
                cmp     ecx, eax
                jnb     short loc_1403CF324
                mov     eax, [r9+40h]
                imul    eax, r10d
                add     ecx, eax
                mov     rax, [r9+30h]
                movzx   ecx, word ptr [rax+rcx*2]
                xor     eax, eax
                mov     [r8], ecx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403CF324:                          ; CODE XREF: sub_1403CF2F0+12↑j
                                        ; sub_1403CF2F0+19↑j
                mov     eax, 0C0000225h
                retn
sub_1403CF2F0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403CF32B:                         ; DATA XREF: .pdata:00000001400DFF50↑o
                align 20h
; Exported entry 1327. KeSetSystemAffinityThread

; =============== S U B R O U T I N E =======================================


