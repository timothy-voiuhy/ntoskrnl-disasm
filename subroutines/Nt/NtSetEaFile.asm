NtSetEaFile     proc near               ; DATA XREF: .pdata:00000001401080A8↑o
                                        ; PAGE:000000014098AFE8↓o

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_78          = byte ptr -78h
var_77          = byte ptr -77h
var_76          = byte ptr -76h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], r9d
                mov     [rax+10h], rdx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     r12, r8
                mov     rbx, rdx
                mov     r10, rcx
                and     qword ptr [rax-70h], 0
                xor     r15d, r15d
                mov     [rsp+0B8h+var_60], r15
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-40h], xmm0
                mov     rax, gs:188h
                mov     [rsp+0B8h+var_50], rax
                mov     sil, [rax+232h]
                mov     [rsp+0B8h+var_77], sil
                test    sil, sil
                jz      short loc_140730118

loc_1407300CF:                          ; DATA XREF: .rdata:000000014008B494↑o
;   __try { // __except at loc_140730113
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     rbx, rdx
                cmovb   rcx, rbx
                mov     eax, [rcx]
                mov     [rcx], eax
                test    r9d, r9d
                jz      short loc_140730111
                test    r12b, 3
                jnz     loc_140730484
                mov     ecx, r9d
                add     rcx, r12
                cmp     rcx, rdx
                ja      short loc_140730106
                cmp     rcx, r12
                jnb     short loc_140730111

loc_140730106:                          ; CODE XREF: NtSetEaFile+8F↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_140730111:                          ; CODE XREF: NtSetEaFile+7A↑j
                                        ; NtSetEaFile+94↑j
                jmp     short loc_140730118
;   } // starts at 1407300CF
; ---------------------------------------------------------------------------

loc_140730113:                          ; DATA XREF: .rdata:000000014008B494↑o
                                        ; .rdata:000000014008B4C4↑o
;   __except(1) // owned by 1407300CF
;   __except(1) // owned by 140730484
                jmp     loc_140730466
; ---------------------------------------------------------------------------

loc_140730118:                          ; CODE XREF: NtSetEaFile+5D↑j
                                        ; NtSetEaFile:loc_140730111↑j
                and     [rsp+0B8h+var_98], 0
                lea     r9, [rsp+0B8h+var_70]
                mov     r8b, sil
                mov     edx, 10h
                mov     rcx, r10
                call    sub_1402433F0
                mov     [rsp+0B8h+var_74], eax
                test    eax, eax
                js      loc_140730466
                mov     r14, [rsp+0B8h+var_70]
                lea     r13, [r14+50h]
                mov     edi, [r13+0]
                test    dil, 2
                jz      loc_1407301EA
                shr     edi, 2
                and     dil, 1
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+0B8h+var_70]
                lea     rcx, [rbx+80h]
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     [rsp+0B8h+var_78], 0
                mov     ecx, 1
                xchg    ecx, [rbx+74h]
                test    ecx, ecx
                jnz     short loc_1407301AE
                test    rax, rax
                jz      short loc_14073019D
                or      byte ptr [rax+1Ah], 1

loc_14073019D:                          ; CODE XREF: NtSetEaFile+127↑j
                mov     r14, [rsp+0B8h+var_70]
                mov     rcx, r14
                call    ObfReferenceObject
                xor     ebx, ebx
                jmp     short loc_1407301D0
; ---------------------------------------------------------------------------

loc_1407301AE:                          ; CODE XREF: NtSetEaFile+122↑j
                lea     rcx, [rsp+0B8h+var_78]
                mov     [rsp+0B8h+var_98], rcx
                mov     r9, rax
                mov     r8b, dil
                mov     dl, sil
                mov     r14, [rsp+0B8h+var_70]
                mov     rcx, r14
                call    sub_1406A0C70
                mov     ebx, eax

loc_1407301D0:                          ; CODE XREF: NtSetEaFile+13C↑j
                mov     [rsp+0B8h+var_74], ebx
                cmp     [rsp+0B8h+var_78], 0
                jnz     short loc_140730201
                mov     [rsp+0B8h+var_78], 1
                mov     rbx, [rsp+0B8h+arg_8]
                jmp     short loc_140730224
; ---------------------------------------------------------------------------

loc_1407301EA:                          ; CODE XREF: NtSetEaFile+E0↑j
                call    sub_140508A4C
                mov     r15, rax
                mov     [rsp+0B8h+var_60], rax
                test    rax, rax
                jnz     short loc_140730210
                mov     ebx, 0C000009Ah

loc_140730201:                          ; CODE XREF: NtSetEaFile+169↑j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_140730466
; ---------------------------------------------------------------------------

loc_140730210:                          ; CODE XREF: NtSetEaFile+18A↑j
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rax
                call    KeInitializeEvent
                mov     [rsp+0B8h+var_78], 0

loc_140730224:                          ; CODE XREF: NtSetEaFile+178↑j
                mov     rcx, r14
                call    sub_1402360C0
                mov     rcx, r14
                call    IoGetRelatedDeviceObject
                mov     [rsp+0B8h+var_58], rax
                mov     r9, [rsp+0B8h]
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    sub_140235D20
                mov     rsi, rax
                mov     [rsp+0B8h+var_48], rax
                xor     ecx, ecx
                test    rax, rax
                jnz     short loc_140730284
                mov     eax, [r13+0]
                test    al, 2
                jnz     short loc_140730270
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_140730270:                          ; CODE XREF: NtSetEaFile+1F4↑j
                xor     edx, edx
                mov     rcx, r14
                call    sub_1408925D4
                mov     eax, 0C000009Ah
                jmp     loc_140730466
; ---------------------------------------------------------------------------

loc_140730284:                          ; CODE XREF: NtSetEaFile+1EC↑j
                mov     [rax+0C0h], r14
                mov     rax, [rsp+0B8h+var_50]
                mov     [rsi+98h], rax
                mov     dil, [rsp+0B8h+var_77]
                mov     [rsi+40h], dil
                cmp     [rsp+0B8h+var_78], cl
                jz      short loc_1407302AB
                mov     rax, rcx
                jmp     short loc_1407302BA
; ---------------------------------------------------------------------------

loc_1407302AB:                          ; CODE XREF: NtSetEaFile+234↑j
                mov     dword ptr [rsi+10h], 4
                lea     rbx, [rsp+0B8h+var_40]
                mov     rax, r15

loc_1407302BA:                          ; CODE XREF: NtSetEaFile+239↑j
                mov     [rsi+50h], rax
                mov     [rsi+48h], rbx
                mov     [rsi+58h], rcx
                mov     rbx, [rsi+0B8h]
                sub     rbx, 48h ; 'H'
                mov     [rsp+0B8h+var_50], rbx
                mov     byte ptr [rbx], 8
                mov     [rbx+30h], r14
                mov     rax, [rsp+0B8h+var_58]
                mov     eax, [rax+30h]
                test    al, 4
                jz      loc_140730395
                mov     [rsp+0B8h+var_68], ecx
                mov     r13d, [rsp+0B8h+arg_18]
                test    r13d, r13d
                jz      loc_14073038F
                mov     [rsp+0B8h+var_76], cl

loc_140730306:                          ; DATA XREF: .rdata:000000014008B4A4↑o
;   __try { // __except at loc_140730352
                mov     edx, r13d
                call    sub_1402159F0
                mov     rdi, rax
                mov     [rsi+18h], rax
                mov     r8d, r13d
                mov     rdx, r12
                mov     rcx, rax
                call    memmove
                lea     r8, [rsp+0B8h+var_68]
                mov     edx, r13d
                mov     rcx, rdi
                call    IoCheckEaBufferValidity
                mov     [rsp+0B8h+var_74], eax
                test    eax, eax
                js      loc_14073048A
;   } // starts at 140730306

loc_14073033F:                          ; DATA XREF: .rdata:000000014008B4A4↑o
                or      dword ptr [rsi+10h], 30h
                mov     dil, [rsp+0B8h+var_77]
                mov     rbx, [rsp+0B8h+var_50]
                jmp     loc_14073040F
; ---------------------------------------------------------------------------

loc_140730352:                          ; DATA XREF: .rdata:000000014008B4A4↑o
                                        ; .rdata:000000014008B4D4↑o
;   __except(1) // owned by 140730306
;   __except(1) // owned by 14073048A
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_70]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0B8h+var_98], dl
                mov     r9, [rsp+0B8h+var_60]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+var_48]
                call    sub_1405CD328
                cmp     [rsp+0B8h+var_76], 0
                jz      short loc_140730388
                mov     eax, [rsp+0B8h+var_74]
                jmp     loc_140730466
; ---------------------------------------------------------------------------

loc_140730388:                          ; CODE XREF: NtSetEaFile+30D↑j
                mov     eax, ebx
                jmp     loc_140730466
; ---------------------------------------------------------------------------

loc_14073038F:                          ; CODE XREF: NtSetEaFile+28C↑j
                mov     [rsi+18h], rcx
                jmp     short loc_14073040F
; ---------------------------------------------------------------------------

loc_140730395:                          ; CODE XREF: NtSetEaFile+277↑j
                mov     r13d, [rsp+0B8h+arg_18]
                test    al, 10h
                jz      short loc_14073040B
                test    r13d, r13d
                jz      short loc_14073040F

loc_1407303A6:                          ; DATA XREF: .rdata:000000014008B4B4↑o
;   __try { // __except at loc_1407303E1
                mov     [rsp+0B8h+var_98], rsi
                mov     r9b, 1
                xor     r8d, r8d
                mov     edx, r13d
                mov     rcx, r12
                call    IoAllocateMdl
                mov     rcx, rax
                test    rax, rax
                jz      loc_1407304A9
                movzx   eax, byte ptr [rbx]
                mov     dword ptr [rsp+0B8h+var_98], eax
                mov     r9, [rsp+0B8h+var_58]
                xor     r8d, r8d
                mov     dl, dil
                call    sub_1405089E0
                jmp     short loc_14073040F
;   } // starts at 1407303A6
; ---------------------------------------------------------------------------

loc_1407303E1:                          ; DATA XREF: .rdata:000000014008B4B4↑o
                                        ; .rdata:000000014008B4E4↑o
;   __except(1) // owned by 1407303A6
;   __except(1) // owned by 1407304A9
                mov     ebx, eax
                mov     rcx, [rsp+0B8h+var_70]
                movzx   edx, byte ptr [rcx+50h]
                shr     edx, 1
                and     edx, 1
                mov     byte ptr [rsp+0B8h+var_98], dl
                mov     r9, [rsp+0B8h+var_60]
                xor     r8d, r8d
                mov     rdx, [rsp+0B8h+var_48]
                call    sub_1405CD328
                mov     eax, ebx
                jmp     short loc_140730466
; ---------------------------------------------------------------------------

loc_14073040B:                          ; CODE XREF: NtSetEaFile+32F↑j
                mov     [rsi+70h], r12

loc_14073040F:                          ; CODE XREF: NtSetEaFile+2DD↑j
                                        ; NtSetEaFile+323↑j ...
                mov     [rbx+8], r13d
                mov     [rsp+0B8h+var_88], 2
                mov     bl, [rsp+0B8h+var_78]
                mov     byte ptr [rsp+0B8h+var_90], bl
                mov     byte ptr [rsp+0B8h+var_98], dil
                xor     r9d, r9d
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, [rsp+0B8h+var_58]
                call    sub_140643F60
                test    bl, bl
                jnz     short loc_140730466
                mov     rdx, [rsp+0B8h+arg_8]
                mov     [rsp+0B8h+var_90], rdx
                lea     rcx, [rsp+0B8h+var_40]
                mov     [rsp+0B8h+var_98], rcx
                mov     r9b, dil
                mov     r8, rsi
                mov     rdx, r15
                mov     ecx, eax
                call    sub_1406FC85C

loc_140730466:                          ; CODE XREF: NtSetEaFile:loc_140730113↑j
                                        ; NtSetEaFile+C9↑j ...
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140730484:                          ; CODE XREF: NtSetEaFile+80↑j
                                        ; DATA XREF: .rdata:000000014008B4C4↑o
;   __try { // __except at loc_140730113
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2
;   } // starts at 140730484

loc_14073048A:                          ; CODE XREF: NtSetEaFile+2C9↑j
                                        ; DATA XREF: .rdata:000000014008B4C4↑o ...
;   __try { // __except at loc_140730352
                mov     [rsp+0B8h+var_76], 1
                mov     rdx, [rsp+0B8h+arg_8]
                mov     [rdx], eax
                mov     ecx, [rsp+0B8h+var_68]
                mov     [rdx+8], rcx
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 14073048A
; ---------------------------------------------------------------------------

loc_1407304A9:                          ; CODE XREF: NtSetEaFile+352↑j
                                        ; DATA XREF: .rdata:000000014008B4D4↑o ...
;   __try { // __except at loc_1407303E1
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 4
;   } // starts at 1407304A9
byte_1407304B4  db 0CCh                 ; DATA XREF: .rdata:000000014008B4E4↑o
; } // starts at 140730070
NtSetEaFile     endp

byte_1407304B5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401080A8↑o

; =============== S U B R O U T I N E =======================================


sub_1407304BC   proc near               ; CODE XREF: sub_14075D4E0+12B↓p
                                        ; sub_140976A3C+1EB↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = dword ptr  40h

; FUNCTION CHUNK AT 000000014083372A SIZE 00000105 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r15, r8
                mov     rsi, rdx
                mov     rbp, rcx
                mov     edi, 0C0000016h
                test    r9, r9
                jnz     loc_1407305CF
                mov     rbx, [rsp+68h+arg_20]
                lea     r9, off_1409863D0
                xor     r10d, r10d

loc_140730501:                          ; CODE XREF: sub_1407304BC+7C↓j
                mov     rdx, [r9]
                mov     r12d, [rsp+68h+arg_38]
                mov     r13, [rsp+68h+arg_30]
                mov     r14d, [rsp+68h+arg_28]
                test    rdx, rdx
                jz      short loc_14073052D
                mov     eax, [rdx+10h]
                cmp     [rbx+10h], eax
                jz      loc_14083372A

loc_14073052D:                          ; CODE XREF: sub_1407304BC+63↑j
                                        ; sub_1407304BC+103281↓j
                inc     r10d
                add     r9, 18h
                cmp     r10d, 9
                jb      short loc_140730501

loc_14073053A:                          ; CODE XREF: sub_1407304BC+1032B1↓j
                mov     r10d, [rbx+10h]
                lea     rdx, off_140986E50
                xor     r9d, r9d

loc_140730548:                          ; CODE XREF: sub_1407304BC+A0↓j
                mov     r8, [rdx]
                cmp     r10d, [r8+10h]
                jz      short loc_140730563

loc_140730551:                          ; CODE XREF: sub_1407304BC+BA↓j
                inc     r9d
                add     rdx, 20h ; ' '
                cmp     r9d, 0Dh
                jb      short loc_140730548
                jmp     loc_140833772
; ---------------------------------------------------------------------------

loc_140730563:                          ; CODE XREF: sub_1407304BC+93↑j
                mov     rcx, [rbx]
                sub     rcx, [r8]
                jnz     short loc_140730573
                mov     rcx, [rbx+8]
                sub     rcx, [r8+8]

loc_140730573:                          ; CODE XREF: sub_1407304BC+AD↑j
                test    rcx, rcx
                jnz     short loc_140730551
                mov     r9, rbx
                mov     r8, r15
                mov     rdx, rsi
                mov     rcx, rbp
                cmp     r14d, 2
                jb      short loc_1407305F0
                mov     [rsp+68h+var_38], r12d
                mov     [rsp+68h+var_40], r13
                mov     dword ptr [rsp+68h+var_48], r14d
                call    sub_140730600

loc_14073059E:                          ; CODE XREF: sub_1407304BC+139↓j
                mov     edi, eax
                test    eax, eax
                js      short loc_1407305C3
                mov     [rsp+68h+var_40], rbx
                mov     r9, r15
                and     [rsp+68h+var_48], 0
                mov     r8d, 2
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_14073796C

loc_1407305C3:                          ; CODE XREF: sub_1407304BC+E6↑j
                cmp     edi, 0C0000016h
                jz      loc_140833772

loc_1407305CF:                          ; CODE XREF: sub_1407304BC+2D↑j
                                        ; sub_1407304BC+1032AB↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     eax, edi
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1407305F0:                          ; CODE XREF: sub_1407304BC+CC↑j
                call    sub_14097AED0
                jmp     short loc_14073059E
sub_1407304BC   endp

; ---------------------------------------------------------------------------
algn_1407305F7:                         ; DATA XREF: .rdata:000000014008B518↑o
                                        ; .pdata:00000001401080B4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140730600   proc near               ; CODE XREF: sub_1407304BC+DD↑p
                                        ; DATA XREF: .rdata:000000014008B548↑o ...

var_40          = dword ptr -40h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_20          = dword ptr  40h
arg_28          = qword ptr  48h
arg_30          = dword ptr  50h

; FUNCTION CHUNK AT 0000000140833830 SIZE 0000022E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     r11d, [r9+10h]
                xor     ebx, ebx
                and     [rbp+var_20], ebx
                mov     rdi, r9
                and     [rbp+var_18], rbx
                lea     r9, off_140986E50
                and     [rbp+var_10], rbx
                mov     r15, r8
                xor     r10d, r10d
                mov     r14, rdx
                mov     r12, rcx

loc_140730646:                          ; CODE XREF: sub_140730600+5F↓j
                mov     rdx, [r9]
                mov     rsi, r9
                cmp     r11d, [rdx+10h]
                jz      short loc_140730663

loc_140730652:                          ; CODE XREF: sub_140730600+76↓j
                xor     esi, esi
                inc     r10d
                add     r9, 20h ; ' '
                cmp     r10d, 0Dh
                jb      short loc_140730646
                jmp     short loc_140730678
; ---------------------------------------------------------------------------

loc_140730663:                          ; CODE XREF: sub_140730600+50↑j
                mov     rcx, [rdi]
                sub     rcx, [rdx]
                jnz     short loc_140730673
                mov     rcx, [rdi+8]
                sub     rcx, [rdx+8]

loc_140730673:                          ; CODE XREF: sub_140730600+69↑j
                test    rcx, rcx
                jnz     short loc_140730652

loc_140730678:                          ; CODE XREF: sub_140730600+61↑j
                test    rsi, rsi
                jz      loc_140833830
                mov     ecx, [rsi+8]
                mov     eax, [rbp+arg_20]
                cmp     eax, ecx
                jnz     loc_14083383A

loc_14073068F:                          ; CODE XREF: sub_140730600+103242↓j
                                        ; sub_140730600+103257↓j
                test    r15, r15
                jz      loc_14083385C

loc_140730698:                          ; CODE XREF: sub_140730600+10328B↓j
                mov     eax, [rdi+10h]
                mov     r14, [rsi+10h]
                mov     esi, [rsi+18h]
                cmp     eax, 7
                jz      loc_140833890

loc_1407306AB:                          ; CODE XREF: sub_140730600+1032B0↓j
                cmp     eax, 8
                jz      loc_1408338B5

loc_1407306B4:                          ; CODE XREF: sub_140730600+1032D1↓j
                cmp     eax, 9
                jz      loc_1408338D6

loc_1407306BD:                          ; CODE XREF: sub_140730600+1032F2↓j
                cmp     eax, 0Ah
                jz      loc_1408338F7

loc_1407306C6:                          ; CODE XREF: sub_140730600+103313↓j
                mov     edx, [rbp+arg_30]
                cmp     eax, 0Fh
                jz      loc_140833918
                cmp     eax, 2
                jz      loc_1408339AF
                cmp     eax, 3
                jz      loc_140833A30

loc_1407306E4:                          ; CODE XREF: sub_140730600+103332↓j
                                        ; sub_140730600+1033C9↓j ...
                mov     rcx, [rbp+var_18]
                test    r15, r15
                mov     r9, [rbp+arg_28]
                mov     r8d, esi
                mov     [rsp+60h+var_40], edx
                cmovnz  rcx, r15
                mov     rdx, r14
                call    sub_140767814
                test    eax, eax
                cmovs   ebx, eax

loc_140730707:                          ; CODE XREF: sub_140730600+103285↓j
                                        ; sub_140730600+103357↓j ...
                mov     rcx, [rbp+var_10]
                test    rcx, rcx
                jnz     short loc_14073073A

loc_140730710:                          ; CODE XREF: sub_140730600+13F↓j
                mov     rcx, [rbp+var_18]
                test    rcx, rcx
                jnz     short loc_140730741

loc_140730719:                          ; CODE XREF: sub_140730600+146↓j
                                        ; sub_140730600+103235↓j ...
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14073073A:                          ; CODE XREF: sub_140730600+10E↑j
                call    ZwClose
                jmp     short loc_140730710
; ---------------------------------------------------------------------------

loc_140730741:                          ; CODE XREF: sub_140730600+117↑j
                call    ZwClose
                jmp     short loc_140730719
sub_140730600   endp

; ---------------------------------------------------------------------------
algn_140730748:                         ; DATA XREF: .rdata:000000014008B548↑o
                                        ; .pdata:00000001401080C0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140730750   proc near               ; DATA XREF: .rdata:000000014008B598↑o
                                        ; .pdata:00000001401080CC↑o ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_20          = qword ptr -20h
var_8           = byte ptr -8
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E8CAA SIZE 00000034 BYTES
; FUNCTION CHUNK AT 0000000140833A5E SIZE 00000017 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 60h
                mov     rbx, rdx
                mov     r14, rcx
                and     qword ptr [rax-20h], 0
                and     qword ptr [rax+20h], 0
                mov     rax, gs:188h
                mov     sil, [rax+232h]
                test    sil, sil
                jz      short loc_1407307A8

loc_14073078A:                          ; DATA XREF: .rdata:000000014008B574↑o
;   __try { // __except at loc_1407307A3
                mov     rcx, 7FFFFFFF0000h
                cmp     r14, rcx
                cmovb   rcx, r14
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     short loc_1407307A8
;   } // starts at 14073078A
; ---------------------------------------------------------------------------

loc_1407307A3:                          ; DATA XREF: .rdata:000000014008B574↑o
;   __except(1) // owned by 14073078A
                jmp     loc_14073083A
; ---------------------------------------------------------------------------

loc_1407307A8:                          ; CODE XREF: sub_140730750+38↑j
                                        ; sub_140730750+51↑j
                test    r8d, r8d
                jnz     loc_140833A5E
                mov     cl, sil
                call    sub_14034F684
                test    eax, eax
                js      short loc_14073083A
                and     [rsp+68h+var_38], 0
                lea     rax, [rsp+68h+arg_18]
                mov     [rsp+68h+var_40], rax
                mov     [rsp+68h+var_48], 63417350h
                mov     r9b, sil
                mov     r8, cs:PsProcessType
                mov     edx, 1000h
                mov     rcx, rbx
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      short loc_14073083A
                lea     rdx, [rsp+68h+var_20]
                mov     rbx, [rsp+68h+arg_18]
                mov     rcx, rbx
                call    sub_140730858
                mov     edi, eax
                test    eax, eax
                js      short loc_14073082B
                test    sil, sil
                jz      loc_140833A68

loc_140730817:                          ; DATA XREF: .rdata:000000014008B584↑o
;   __try { // __except at loc_140730821
                mov     rcx, [rsp+68h+var_20]
                mov     [r14], rcx
                jmp     short loc_14073082B
;   } // starts at 140730817
; ---------------------------------------------------------------------------

loc_140730821:                          ; DATA XREF: .rdata:000000014008B584↑o
;   __except(loc_1407E8CAA) // owned by 140730817
                mov     edi, eax
                mov     rbx, [rsp+68h+arg_18]

loc_14073082B:                          ; CODE XREF: sub_140730750+BC↑j
                                        ; sub_140730750+CF↑j ...
                mov     edx, 63417350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     eax, edi

loc_14073083A:                          ; CODE XREF: sub_140730750:loc_1407307A3↑j
                                        ; sub_140730750+6B↑j ...
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140730750
sub_140730750   endp

algn_140730852:                         ; DATA XREF: .rdata:000000014008B598↑o
                                        ; .pdata:00000001401080CC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140730858   proc near               ; CODE XREF: sub_140730750+B3↑p
                                        ; DATA XREF: .pdata:00000001401080D8↑o

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = xmmword ptr -18h
var_8           = byte ptr -8
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 80h
                and     qword ptr [r11-40h], 0
                lea     r8, [r11-38h]
                mov     rax, gs:188h
                mov     rdi, rdx
                and     [rsp+88h+var_34], 0
                mov     rsi, rcx
                and     [rsp+88h+var_1C], 0
                xorps   xmm0, xmm0
                mov     rdx, cs:qword_140CFCAA0
                xor     ecx, ecx
                mov     r9b, [rax+232h]
                lea     rax, [r11+18h]
                and     qword ptr [r11+18h], 0
                mov     [r11-48h], rax
                mov     eax, 8
                mov     [rsp+88h+var_38], 30h ; '0'
                and     qword ptr [r11-30h], 0
                mov     [rsp+88h+var_50], eax
                and     dword ptr [rsp+88h+var_58], 0
                mov     [rsp+88h+var_20], 20h ; ' '
                and     qword ptr [r11-28h], 0
                mov     dword ptr [rsp+88h+var_60], eax
                movdqu  [rsp+88h+var_18], xmm0
                call    sub_14061EDD0
                test    eax, eax
                js      short loc_140730927
                mov     rbx, [rsp+88h+arg_10]
                xor     edx, edx
                mov     r9, rbx
                mov     rcx, rsi
                lea     r8d, [rdx+5]
                call    PsChargeProcessWakeCounter
                mov     [rsp+88h+var_58], rdi
                xor     r9d, r9d
                and     [rsp+88h+var_60], 0
                xor     edx, edx
                and     [rsp+88h+var_68], 0
                mov     r8d, 0F0000h
                mov     rcx, rbx
                mov     [rbx], rax
                call    sub_14061EFE0

loc_140730927:                          ; CODE XREF: sub_140730858+8E↑j
                lea     r11, [rsp+88h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140730858   endp

byte_14073093D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401080D8↑o

; =============== S U B R O U T I N E =======================================


sub_140730944   proc near               ; CODE XREF: sub_14036ECD0+4D4↑p
                                        ; DATA XREF: .rdata:000000014008B5E0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140833A76 SIZE 0000002F BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rax, [rcx+10h]
                mov     rbp, [rcx+20h]
                and     qword ptr [r11+8], 0
                mov     rcx, [rax+138h]
                mov     rbx, [rcx+28h]
                mov     eax, [rbx+12Ch]
                sub     eax, 313h
                cmp     eax, 1
                jbe     loc_140833A87
                lea     rcx, [r11+8]
                xor     r14d, r14d
                call    sub_1406C91CC
                mov     edx, [rbp+14h]
                mov     r8d, 4000h
                mov     r9d, [rbp+18h]
                mov     ecx, edx
                shr     ecx, 12h
                mov     eax, edx
                and     ecx, 1
                mov     esi, ecx
                or      esi, 4
                and     eax, 100h
                mov     eax, edx
                cmovz   esi, ecx
                shr     eax, 1
                and     eax, r8d
                mov     ecx, eax
                bts     ecx, 0Dh
                and     edx, 400h
                mov     edx, 302h
                cmovz   ecx, eax
                mov     edi, ecx
                cmp     r9d, 0Eh
                jnz     short loc_1407309EA
                mov     eax, [rbx+12Ch]
                cmp     eax, 312h
                jnz     loc_140833A76

loc_1407309E7:                          ; CODE XREF: sub_140730944+103134↓j
                                        ; sub_140730944+10313E↓j
                or      esi, 4

loc_1407309EA:                          ; CODE XREF: sub_140730944+90↑j
                test    edi, edi
                jz      loc_140730A77
                mov     eax, [rbx+12Ch]
                sub     eax, edx
                test    eax, 0FFFFFFEFh
                jnz     short loc_140730A6F
                test    r8d, edi
                jnz     short loc_140730A1B
                cmp     r9d, 3Ah ; ':'
                jnb     short loc_140730A6F
                mov     edx, r9d
                mov     rcx, rbx
                call    sub_140730CF4
                test    eax, eax
                jnz     short loc_140730A6F

loc_140730A1B:                          ; CODE XREF: sub_140730944+C0↑j
                mov     r8d, [rbp+20h]
                mov     edx, r9d
                mov     rcx, rbx
                call    sub_140748CA0
                mov     edx, edi

loc_140730A2C:                          ; CODE XREF: sub_140730944+135↓j
                mov     rcx, rbx
                call    sub_140736ED4
                mov     edx, esi
                mov     rcx, rbx
                call    sub_1407708DC

loc_140730A3E:                          ; CODE XREF: sub_140730944+131↓j
                                        ; sub_140730944+103149↓j
                mov     eax, [rbp+1Ch]
                test    al, 1
                jnz     loc_140833A92

loc_140730A49:                          ; CODE XREF: sub_140730944+10315C↓j
                mov     rcx, [rsp+38h+arg_0]
                test    rcx, rcx
                jz      short loc_140730A58
                call    sub_1406CDB1C

loc_140730A58:                          ; CODE XREF: sub_140730944+10D↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, r14d
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140730A6F:                          ; CODE XREF: sub_140730944+BB↑j
                                        ; sub_140730944+C6↑j ...
                mov     r14d, 0C00000F0h
                jmp     short loc_140730A3E
; ---------------------------------------------------------------------------

loc_140730A77:                          ; CODE XREF: sub_140730944+A8↑j
                xor     edx, edx
                jmp     short loc_140730A2C
sub_140730944   endp

; ---------------------------------------------------------------------------
byte_140730A7B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014008B5E0↑o
                                        ; .pdata:00000001401080E4↑o

; =============== S U B R O U T I N E =======================================


sub_140730A84   proc near               ; CODE XREF: sub_140745F30+42E↓p
                                        ; DATA XREF: .rdata:000000014008B604↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140833AA6 SIZE 0000000F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rcx
                call    sub_140746568
                mov     rdi, rax
                xor     ebx, ebx
                mov     eax, [rax+12Ch]
                sub     eax, 302h
                test    eax, 0FFFFFFEFh
                jnz     short loc_140730B08
                mov     r9d, [rdi+18Ch]
                test    r9d, 6000h
                jz      short loc_140730AE0
                mov     edx, [rdi+194h]
                mov     rcx, rdi
                call    sub_140730CF4
                test    eax, eax
                jnz     short loc_140730AE0
                call    sub_14074AC04
                mov     r9d, [rdi+18Ch]

loc_140730AE0:                          ; CODE XREF: sub_140730A84+3C↑j
                                        ; sub_140730A84+4E↑j
                mov     eax, [rsi+90h]
                and     eax, 2
                test    r9d, 6000h
                jnz     loc_140833AA6
                mov     rcx, rdi
                test    eax, eax
                jz      short loc_140730B1B
                mov     edx, [rsi+10h]
                xor     r8d, r8d
                call    sub_140748CA0

loc_140730B08:                          ; CODE XREF: sub_140730A84+2C↑j
                                        ; sub_140730A84+9C↓j ...
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140730B1B:                          ; CODE XREF: sub_140730A84+77↑j
                call    sub_140730BF8
                jmp     short loc_140730B08
sub_140730A84   endp

; ---------------------------------------------------------------------------
algn_140730B22:                         ; DATA XREF: .rdata:000000014008B604↑o
                                        ; .pdata:00000001401080F0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140730B28   proc near               ; CODE XREF: sub_14036ECD0+47A↑p
                                        ; DATA XREF: .rdata:000000014008B624↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140833AB6 SIZE 00000055 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+10h]
                xor     ebx, ebx
                mov     r8, rcx
                mov     [rsp+28h+arg_0], rbx
                mov     rdx, [rax+138h]
                mov     rdi, [rdx+28h]
                mov     edx, [rdi+12Ch]
                lea     eax, [rdx-301h]
                test    eax, 0FFFFFFEEh
                jnz     loc_140833AF2
                cmp     edx, 311h
                jz      loc_140833AF2
                mov     ecx, [rdi+18Ch]
                test    ecx, 6000h
                jz      short loc_140730BDD
                mov     eax, [r8+18h]
                cmp     eax, 1
                jnz     loc_140833AB6
                mov     edx, [rdi+194h]
                mov     rcx, rdi
                call    sub_140730CF4
                test    eax, eax
                jnz     short loc_140730BEB

loc_140730B9B:                          ; CODE XREF: sub_140730B28:loc_140833AD1↓j
                                        ; sub_140730B28+102FBC↓j
                lea     rcx, [rsp+28h+arg_0]
                call    sub_1406C91CC
                mov     edx, 4000h
                mov     rcx, rdi
                call    sub_14073832C
                mov     rcx, rdi
                call    sub_14074AC04
                cmp     dword ptr [rdi+12Ch], 301h
                jz      short loc_140730BCE
                mov     rcx, rdi
                call    sub_140730BF8

loc_140730BCE:                          ; CODE XREF: sub_140730B28+9C↑j
                mov     rcx, [rsp+28h+arg_0]
                test    rcx, rcx
                jz      short loc_140730BDD
                call    sub_1406CDB1C

loc_140730BDD:                          ; CODE XREF: sub_140730B28+52↑j
                                        ; sub_140730B28+AE↑j ...
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140730BEB:                          ; CODE XREF: sub_140730B28+71↑j
                mov     ebx, 0C00000F0h
                jmp     short loc_140730BDD
sub_140730B28   endp

; ---------------------------------------------------------------------------
algn_140730BF2:                         ; DATA XREF: .rdata:000000014008B624↑o
                                        ; .pdata:00000001401080FC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140730BF8   proc near               ; CODE XREF: sub_140730A84:loc_140730B1B↑p
                                        ; sub_140730B28+A1↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140833B0C SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 4
                call    sub_14067926C
                mov     eax, [rbx+18Ch]
                test    al, 10h
                jz      loc_140833B0C
                mov     edx, 5
                mov     rcx, rbx
                call    sub_14073BDB0
                mov     edx, 108000h
                mov     rcx, rbx
                call    sub_14073832C
                and     dword ptr [rbx+2C0h], 0FFFFBC03h
                xor     edi, edi
                cmp     dword ptr [rbx+12Ch], 301h
                mov     [rbx+128h], edi
                mov     [rbx+78h], edi
                mov     [rbx+7Ch], edi
                jz      short loc_140730CBF
                mov     edx, 7C200D00h
                mov     rcx, rbx
                call    sub_14073832C
                cmp     [rbx+38h], di
                jz      short loc_140730C80
                mov     rcx, [rbx+40h]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rbx+38h], edi
                mov     [rbx+40h], rdi

loc_140730C80:                          ; CODE XREF: sub_140730BF8+74↑j
                lea     rcx, unk_140C44CA0
                call    ExAcquireFastMutex
                mov     rcx, [rbx+1B8h]
                test    rcx, rcx
                jz      short loc_140730CB3
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     edx, 200h
                mov     [rbx+1B8h], rdi
                mov     rcx, rbx
                call    sub_14073832C

loc_140730CB3:                          ; CODE XREF: sub_140730BF8+9E↑j
                lea     rcx, unk_140C44CA0
                call    KeReleaseGuardedMutex

loc_140730CBF:                          ; CODE XREF: sub_140730BF8+61↑j
                or      dword ptr [rbx+294h], 0FFFFFFFFh
                mov     edx, 301h
                mov     rcx, rbx
                call    sub_14036D798

loc_140730CD3:                          ; CODE XREF: sub_140730BF8+102F19↓j
                mov     ecx, 4
                call    sub_140679140
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140730BF8   endp

byte_140730CEB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014008B644↑o
                                        ; .pdata:0000000140108108↑o

; =============== S U B R O U T I N E =======================================


sub_140730CF4   proc near               ; CODE XREF: sub_14036F89C+11F7B7↑p
                                        ; sub_14036F89C+11F7CA↑p ...

; FUNCTION CHUNK AT 0000000140833B16 SIZE 00000015 BYTES

                dec     edx             ; switch 57 cases
                cmp     edx, 38h
                ja      short def_140730D16 ; jumptable 0000000140730D16 default case, cases 2,4-9,11-13,15-17,20,23-27,29,30,33-36,42,45-47,49,50,54,55
                lea     r8, cs:140000000h
                movzx   eax, ds:(byte_140730D38 - 140000000h)[r8+rdx]
                mov     edx, ds:(jpt_140730D16 - 140000000h)[r8+rax*4]
                add     rdx, r8
                jmp     rdx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_140730D1C:                          ; CODE XREF: sub_140730CF4+22↑j
                                        ; sub_140730CF4+102E32↓j
                                        ; DATA XREF: ...
                xor     eax, eax        ; jumptable 0000000140730D16 cases 1,10,14,18,19,21,22,28,31,32,37-41,43,44,48,51-53,56,57
                retn
; ---------------------------------------------------------------------------
                align 20h

def_140730D16:                          ; CODE XREF: sub_140730CF4+5↑j
                                        ; sub_140730CF4+22↑j ...
                mov     eax, 1          ; jumptable 0000000140730D16 default case, cases 2,4-9,11-13,15-17,20,23-27,29,30,33-36,42,45-47,49,50,54,55
                retn
sub_140730CF4   endp

; ---------------------------------------------------------------------------
                align 8
jpt_140730D16   dd offset loc_140730D1C - 140000000h
                                        ; DATA XREF: sub_140730CF4+17↑r
                dd offset loc_140833B16 - 140000000h ; jump table for switch statement
                dd offset def_140730D16 - 140000000h
                dd offset def_140730D16 - 140000000h
byte_140730D38  db      0,     3,     1,     3
                                        ; DATA XREF: sub_140730CF4+E↑r
                db      3,     3,     3,     3 ; indirect table for switch statement
                db      2,     0,     3,     2
                db      3,     0,     3,     2
                db      3,     0,     0,     3
                db      0,     0,     3,     2
                db      3,     3,     3,     0
                db      2,     3,     0,     0
                db      2,     2,     2,     2
                db      0,     0,     0,     0
                db      0,     2,     0,     0
                db      3,     2,     2,     0
                db      2,     2,     0,     0
                db      0,     2,     2,     0
                db      0
algn_140730D71:                         ; DATA XREF: .pdata:0000000140108114↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140730D78   proc near               ; CODE XREF: sub_1406E34B4:loc_1406E35E9↑p
                                        ; DATA XREF: .rdata:000000014008B670↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
arg_0           = dword ptr  48h
arg_8           = dword ptr  50h
arg_10          = dword ptr  58h
arg_14          = dword ptr  5Ch
arg_18          = dword ptr  60h
arg_1C          = dword ptr  64h

; FUNCTION CHUNK AT 0000000140833B2C SIZE 0000003B BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 58h
                mov     rbx, [rcx+68h]
                xor     eax, eax
                and     [rbp+arg_8], eax
                or      r15d, 0FFFFFFFFh
                and     [rbp+arg_0], eax
                xorps   xmm0, xmm0
                mov     [rbp+arg_1C], eax
                mov     r14, rcx
                mov     [rbp+arg_14], eax
                mov     rax, [rcx+30h]
                mov     [rbp+arg_18], r15d
                mov     [rbp+arg_10], r15d
                mov     [rbp+var_28], rbx
                mov     rdi, [rax+20h]
                movups  [rbp+var_20], xmm0
                test    rbx, rbx
                jnz     short loc_140730DEB
                lea     rdx, [rbp+var_28]
                call    sub_1406E4A68
                mov     ebx, eax
                test    eax, eax
                js      loc_140730F36
                mov     rbx, [rbp+var_28]
                mov     rdx, [r14+30h]
                mov     rcx, rbx
                call    sub_1406E0B40
                add     [rbx], r15d

loc_140730DEB:                          ; CODE XREF: sub_140730D78+4B↑j
                mov     edx, 10h
                mov     r8d, 77554D43h
                lea     r13d, [rdx-0Fh]
                mov     ecx, r13d
                call    sub_14020A4B0
                mov     rsi, rax
                test    rax, rax
                jz      loc_140833B2C
                and     qword ptr [rax+8], 0
                lea     r8, [rbp+arg_18]
                mov     [rax], r15d
                mov     rcx, rdi
                mov     [rax+4], r15d
                mov     edx, [r14+58h]
                mov     rax, [rdi+8]
                call    sub_1404079D0
                mov     r12, rax
                test    rax, rax
                jz      loc_140833B36
                mov     edx, 8000h
                mov     r8d, 62534D43h
                mov     ecx, r13d
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jz      loc_140833B40
                mov     r8, rax
                lea     rdx, [rbp+var_20]
                mov     rcx, r12
                call    sub_1406E49EC
                lea     rax, [rbp+arg_0]
                xor     r9d, r9d
                mov     [rsp+58h+var_30], rax
                lea     r8, [rbp+var_20]
                lea     rax, [rbp+arg_8]
                mov     rcx, rdi
                lea     rdx, [rbx+4]
                mov     [rsp+58h+var_38], rax
                call    sub_1406E4644
                test    al, al
                jz      loc_140833B40
                mov     r12d, [rbp+arg_0]
                lea     r8, [rbp+arg_10]
                mov     rax, [rdi+8]
                mov     edx, r12d
                mov     rcx, rdi
                call    sub_1404079D0
                mov     rdx, rax
                mov     rcx, rdi
                mov     r13, rax
                call    sub_1405FF7B8
                test    al, al
                jz      loc_140833B4A
                xor     r8d, r8d
                mov     edx, r12d
                mov     rcx, rdi
                call    sub_14087D528
                test    al, al
                jz      loc_140833B4A
                mov     edx, [rbp+arg_8]
                lea     r8, [rbx+4]
                mov     rcx, rdi
                call    sub_1405FC948
                mov     ebx, eax
                test    eax, eax
                js      short loc_140730EF9
                mov     [rsi+4], r12d
                xor     ebx, ebx
                mov     [r14+70h], rsi
                xor     esi, esi

loc_140730EF9:                          ; CODE XREF: sub_140730D78+173↑j
                                        ; sub_140730D78+102DD7↓j
                test    r13, r13
                jz      short loc_140730F0E
                mov     rax, [rdi+10h]
                lea     rdx, [rbp+arg_10]
                mov     rcx, rdi
                call    sub_1404079D0

loc_140730F0E:                          ; CODE XREF: sub_140730D78+184↑j
                                        ; sub_140730D78+102DCD↓j
                mov     rax, [rdi+10h]
                lea     rdx, [rbp+arg_18]
                mov     rcx, rdi
                call    sub_1404079D0
                test    r15, r15
                jz      short loc_140730F2D
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_140730F2D:                          ; CODE XREF: sub_140730D78+1A9↑j
                                        ; sub_140730D78+102DC3↓j
                test    rsi, rsi
                jnz     loc_140833B54

loc_140730F36:                          ; CODE XREF: sub_140730D78+5A↑j
                                        ; sub_140730D78+102DB9↓j ...
                mov     eax, ebx
                add     rsp, 58h
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
sub_140730D78   endp

algn_140730F4A:                         ; DATA XREF: .rdata:000000014008B670↑o
                                        ; .pdata:0000000140108120↑o
                align 10h
; Exported entry 1563. NtMakePermanentObject

; =============== S U B R O U T I N E =======================================


