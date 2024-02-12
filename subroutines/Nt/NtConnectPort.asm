NtConnectPort   proc near               ; DATA XREF: .pdata:0000000140102CF0↑o
                                        ; PAGE:000000014098AE68↓o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                mov     r11, rsp
                sub     rsp, 58h
                mov     rax, [rsp+58h+arg_38]
                mov     [r11-18h], rax
                mov     rax, [rsp+58h+arg_30]
                mov     [r11-20h], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [r11-28h], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-30h], rax
                and     qword ptr [r11-38h], 0
                call    sub_1406B8B00
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtConnectPort   endp

algn_1406B8AF7:                         ; DATA XREF: .pdata:0000000140102CF0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B8B00   proc near               ; CODE XREF: NtConnectPort+3C↑p
                                        ; sub_140892C40+A8↓p
                                        ; DATA XREF: ...

var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = byte ptr -178h
var_168         = byte ptr -168h
var_164         = dword ptr -164h
var_160         = dword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = xmmword ptr -0D8h
var_C8          = qword ptr -0C8h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_68          = dword ptr -68h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 000000014081BBE4 SIZE 0000006D BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 198h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1C8h+var_48], rax
                mov     rsi, r9
                mov     rdi, r8
                mov     [rsp+1C8h+var_130], rdx
                mov     [rsp+1C8h+var_120], rcx
                mov     r12, [rsp+1C8h+arg_20]
                mov     r14, [rsp+1C8h+arg_28]
                mov     r13, [rsp+1C8h+arg_30]
                mov     [rsp+1C8h+var_E0], r13
                mov     rax, [rsp+1C8h+arg_38]
                mov     [rsp+1C8h+var_150], rax
                mov     r15, [rsp+1C8h+arg_40]
                mov     [rsp+1C8h+var_E8], r15
                and     [rsp+1C8h+var_148], 0
                xor     edx, edx
                lea     r8d, [rdx+40h]
                lea     rcx, [rsp+1C8h+var_98]
                call    memset
                and     [rsp+1C8h+var_138], 0
                and     [rsp+1C8h+var_158], 0
                and     [rsp+1C8h+var_128], 0
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+1C8h+var_C0], xmm0
                movups  [rsp+1C8h+var_B0], xmm0
                mov     [rsp+1C8h+var_A0], rax
                and     [rsp+1C8h+var_160], eax
                mov     [rsp+1C8h+var_58], rax
                mov     [rsp+1C8h+var_50], eax
                and     [rsp+1C8h+var_140], rax
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     eax, eax
                movups  [rsp+1C8h+var_D8], xmm0
                mov     [rsp+1C8h+var_C8], rax
                xorps   xmm1, xmm1
                movups  [rsp+1C8h+var_118], xmm1
                movups  [rsp+1C8h+var_108], xmm1
                movups  [rsp+1C8h+var_F8], xmm1
                mov     rax, gs:188h
                mov     dl, [rax+232h]
                mov     [rsp+1C8h+var_168], dl
                test    dl, dl
                jz      loc_1406B9059

loc_1406B8C3B:                          ; DATA XREF: .rdata:0000000140073A4C↑o
;   __try { // __except at loc_1406B8DAF
                mov     rcx, [rsp+1C8h+var_120]
                mov     r8, 7FFFFFFF0000h
                cmp     rcx, r8
                cmovnb  rcx, r8
                mov     rax, [rcx]
                mov     [rcx], rax
                test    r15, r15
                jz      short loc_1406B8C8F
                mov     rax, r15
                cmp     r15, r8
                cmovnb  rax, r8
                mov     eax, [rax]
                mov     [rsp+1C8h+var_160], eax
                mov     edx, eax
                mov     r8d, 1
                mov     rcx, [rsp+1C8h+var_150]
                call    ProbeForWrite
                mov     dl, [rsp+1C8h+var_168]
                mov     r8, 7FFFFFFF0000h

loc_1406B8C8F:                          ; CODE XREF: sub_1406B8B00+15D↑j
                test    rsi, rsi
                jz      short loc_1406B8CEC
                mov     rax, rsi
                cmp     rsi, r8
                cmovnb  rax, r8
                movups  xmm2, xmmword ptr [rax]
                movups  [rsp+1C8h+var_118], xmm2
                movups  xmm0, xmmword ptr [rax+10h]
                movups  [rsp+1C8h+var_108], xmm0
                movups  xmm1, xmmword ptr [rax+20h]
                movups  [rsp+1C8h+var_F8], xmm1
                movd    eax, xmm2
                cmp     eax, 30h ; '0'
                jnz     loc_1406B8D88
                test    sil, 3
                jnz     loc_1406B8DA2
                mov     rcx, rsi
                cmp     rsi, r8
                cmovnb  rcx, r8
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+2Fh]
                mov     [rcx+2Fh], al

loc_1406B8CEC:                          ; CODE XREF: sub_1406B8B00+192↑j
                test    r14, r14
                jz      short loc_1406B8D24
                mov     rax, r14
                cmp     r14, r8
                cmovnb  rax, r8
                mov     eax, [rax]
                cmp     eax, 18h
                jnz     loc_1406B8D95
                test    r14b, 3
                jnz     loc_1406B8DA2
                mov     rcx, r14
                cmp     r14, r8
                cmovnb  rcx, r8
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+17h]
                mov     [rcx+17h], al

loc_1406B8D24:                          ; CODE XREF: sub_1406B8B00+1EF↑j
                test    r13, r13
                jz      short loc_1406B8D37
                mov     rcx, r13
                cmp     r13, r8
                cmovnb  rcx, r8
                mov     eax, [rcx]
                mov     [rcx], eax

loc_1406B8D37:                          ; CODE XREF: sub_1406B8B00+227↑j
                test    rdi, rdi
                jz      short loc_1406B8D5D
                mov     rax, rdi
                cmp     rdi, r8
                cmovnb  rax, r8
                movsd   xmm0, qword ptr [rax]
                movsd   [rsp+1C8h+var_58], xmm0
                mov     eax, [rax+8]
                mov     [rsp+1C8h+var_50], eax

loc_1406B8D5D:                          ; CODE XREF: sub_1406B8B00+23A↑j
                mov     [rsp+1C8h+var_158], r12
                test    r12, r12
                jz      short loc_1406B8DAD
                lea     rax, [rsp+1C8h+var_158]
                mov     [rsp+1C8h+var_198], rax
                mov     byte ptr [rsp+1C8h+var_1A0], 1
                mov     rcx, r12
                call    sub_1406B967C
                mov     [rsp+1C8h+var_164], eax
                test    eax, eax
                js      short loc_1406B8DA8
                jmp     short loc_1406B8DAD
; ---------------------------------------------------------------------------

loc_1406B8D88:                          ; CODE XREF: sub_1406B8B00+1C8↑j
                mov     [rsp+1C8h+var_164], 0C000000Dh
                jmp     loc_1406B9024
; ---------------------------------------------------------------------------

loc_1406B8D95:                          ; CODE XREF: sub_1406B8B00+200↑j
                mov     [rsp+1C8h+var_164], 0C000000Dh
                jmp     loc_1406B9024
; ---------------------------------------------------------------------------

loc_1406B8DA2:                          ; CODE XREF: sub_1406B8B00+1D2↑j
                                        ; sub_1406B8B00+20A↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 8

loc_1406B8DA8:                          ; CODE XREF: sub_1406B8B00+284↑j
                jmp     loc_1406B9024
; ---------------------------------------------------------------------------

loc_1406B8DAD:                          ; CODE XREF: sub_1406B8B00+265↑j
                                        ; sub_1406B8B00+286↑j
                jmp     short loc_1406B8DB8
;   } // starts at 1406B8C3B
; ---------------------------------------------------------------------------

loc_1406B8DAF:                          ; DATA XREF: .rdata:0000000140073A4C↑o
;   __except(1) // owned by 1406B8C3B
                mov     [rsp+1C8h+var_164], eax
                jmp     loc_1406B9024
; ---------------------------------------------------------------------------

loc_1406B8DB8:                          ; CODE XREF: sub_1406B8B00:loc_1406B8DAD↑j
                                        ; sub_1406B8B00+5A7↓j
                neg     rdi
                sbb     rax, rax
                lea     rcx, [rsp+1C8h+var_58]
                and     rax, rcx
                mov     [rsp+1C8h+var_178], 1
                mov     [rsp+1C8h+var_180], rax
                mov     rdi, [rsp+1C8h+var_158]
                mov     [rsp+1C8h+var_188], rdi
                and     [rsp+1C8h+var_190], 0
                and     [rsp+1C8h+var_198], 0
                and     [rsp+1C8h+var_1A0], 0
                and     [rsp+1C8h+var_1A8], 0
                mov     r9, [rsp+1C8h+var_130]
                xor     r8d, r8d
                lea     rdx, [rsp+1C8h+var_148]
                lea     rcx, [rsp+1C8h+var_138]
                call    sub_1406BDBDC
                mov     r15d, eax
                mov     [rsp+1C8h+var_164], eax
                cmp     rdi, r12
                mov     r12b, [rsp+1C8h+var_168]
                jnz     loc_1406B90AC

loc_1406B8E2A:                          ; CODE XREF: sub_1406B8B00+5BA↓j
                test    r15d, r15d
                js      loc_1406B9024
                movzx   eax, word ptr [rsp+1C8h+var_160]
                mov     word ptr [rsp+1C8h+var_C0], ax
                mov     rax, rsi
                neg     rax
                sbb     rax, rax
                lea     rcx, [rsp+1C8h+var_118]
                and     rax, rcx
                mov     [rsp+1C8h+var_130], rax
                mov     byte ptr [rsp+1C8h+var_180], r12b
                mov     byte ptr [rsp+1C8h+var_188], 1
                lea     rcx, [rsp+1C8h+var_140]
                mov     [rsp+1C8h+var_190], rcx
                mov     [rsp+1C8h+var_198], rax
                and     [rsp+1C8h+var_1A0], 0
                lea     rax, [rsp+1C8h+var_C0]
                mov     [rsp+1C8h+var_1A8], rax
                mov     r9, [rsp+1C8h+var_150]
                mov     r13, [rsp+1C8h+var_148]
                mov     r8, r13
                xor     edx, edx
                lea     rcx, [rsp+1C8h+var_128]
                call    sub_1406BD9CC
                mov     edi, eax
                mov     [rsp+1C8h+var_164], eax
                test    eax, eax
                js      loc_1406B8FFD
                mov     r15, [rsp+1C8h+var_128]
                mov     r12d, [r15+108h]
                cmp     cs:byte_140CF4A08, 0
                jnz     loc_14081BBE4

loc_1406B8ED4:                          ; CODE XREF: sub_1406B8B00+1630ED↓j
                mov     [rsp+1C8h+var_98], r13
                mov     [rsp+1C8h+var_90], r15
                mov     [rsp+1C8h+var_68], 20000h
                lea     rcx, [rsp+1C8h+var_98]
                call    sub_1406B9F54
                mov     edi, eax
                mov     [rsp+1C8h+var_164], eax
                test    eax, eax
                js      loc_14081BBF2
                mov     rax, r14
                neg     rax
                sbb     rcx, rcx
                lea     rax, [rsp+1C8h+var_D8]
                and     rcx, rax
                mov     [rsp+1C8h+var_1A0], rcx
                mov     rax, [rsp+1C8h+var_130]
                mov     [rsp+1C8h+var_1A8], rax
                mov     r9, [rsp+1C8h+var_140]
                lea     r8, [rsp+1C8h+var_160]
                mov     rdx, [rsp+1C8h+var_150]
                lea     rcx, [rsp+1C8h+var_98]
                call    sub_1406B90D0
                mov     edi, eax
                mov     [rsp+1C8h+var_164], eax
                test    eax, eax
                jnz     loc_14081BC13
                cmp     cs:byte_140CF4A08, al
                jnz     loc_14081BC30

loc_1406B8F69:                          ; CODE XREF: sub_1406B8B00+163139↓j
                                        ; DATA XREF: .rdata:0000000140073A5C↑o
;   __try { // __except at loc_1406B8FEF
                mov     rax, [rsp+1C8h+var_138]
                mov     rcx, [rsp+1C8h+var_120]
                mov     [rcx], rax
                test    rsi, rsi
                jz      short loc_1406B8FA4
                movups  xmm0, [rsp+1C8h+var_118]
                movups  xmmword ptr [rsi], xmm0
                movups  xmm1, [rsp+1C8h+var_108]
                movups  xmmword ptr [rsi+10h], xmm1
                movups  xmm0, [rsp+1C8h+var_F8]
                movups  xmmword ptr [rsi+20h], xmm0

loc_1406B8FA4:                          ; CODE XREF: sub_1406B8B00+47F↑j
                test    r14, r14
                jz      short loc_1406B8FC4
                movups  xmm0, [rsp+1C8h+var_D8]
                movups  xmmword ptr [r14], xmm0
                movsd   xmm0, [rsp+1C8h+var_C8]
                movsd   qword ptr [r14+10h], xmm0

loc_1406B8FC4:                          ; CODE XREF: sub_1406B8B00+4A7↑j
                mov     rcx, [rsp+1C8h+var_E8]
                test    rcx, rcx
                jz      short loc_1406B8FD7
                mov     eax, [rsp+1C8h+var_160]
                mov     [rcx], eax

loc_1406B8FD7:                          ; CODE XREF: sub_1406B8B00+4CF↑j
                mov     rcx, [rsp+1C8h+var_E0]
                test    rcx, rcx
                jz      short loc_1406B8FED
                mov     eax, [r13+110h]
                mov     [rcx], eax

loc_1406B8FED:                          ; CODE XREF: sub_1406B8B00+4E2↑j
                jmp     short loc_1406B8FFD
;   } // starts at 1406B8F69
; ---------------------------------------------------------------------------

loc_1406B8FEF:                          ; DATA XREF: .rdata:0000000140073A5C↑o
;   __except(1) // owned by 1406B8F69
                mov     edi, eax
                mov     [rsp+1C8h+var_164], eax
                mov     r13, [rsp+1C8h+var_148]

loc_1406B8FFD:                          ; CODE XREF: sub_1406B8B00+3B2↑j
                                        ; sub_1406B8B00:loc_1406B8FED↑j ...
                mov     rcx, r13
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+1C8h+var_140]
                test    rcx, rcx
                jz      short loc_1406B901C
                mov     edx, 1
                call    sub_14061A320

loc_1406B901C:                          ; CODE XREF: sub_1406B8B00+510↑j
                test    edi, edi
                jnz     loc_14081BC3E

loc_1406B9024:                          ; CODE XREF: sub_1406B8B00+290↑j
                                        ; sub_1406B8B00+29D↑j ...
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, [rsp+1C8h+var_164]
                mov     rcx, [rsp+1C8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 198h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B9059:                          ; CODE XREF: sub_1406B8B00+135↑j
                test    r15, r15
                jnz     short loc_1406B90BF

loc_1406B905E:                          ; CODE XREF: sub_1406B8B00+5C6↓j
                test    rsi, rsi
                jz      short loc_1406B9086
                movups  xmm0, xmmword ptr [rsi]
                movups  [rsp+1C8h+var_118], xmm0
                movups  xmm1, xmmword ptr [rsi+10h]
                movups  [rsp+1C8h+var_108], xmm1
                movups  xmm0, xmmword ptr [rsi+20h]
                movups  [rsp+1C8h+var_F8], xmm0

loc_1406B9086:                          ; CODE XREF: sub_1406B8B00+561↑j
                test    rdi, rdi
                jz      short loc_1406B90A2
                movsd   xmm0, qword ptr [rdi]
                movsd   [rsp+1C8h+var_58], xmm0
                mov     eax, [rdi+8]
                mov     [rsp+1C8h+var_50], eax

loc_1406B90A2:                          ; CODE XREF: sub_1406B8B00+589↑j
                mov     [rsp+1C8h+var_158], r12
                jmp     loc_1406B8DB8
; ---------------------------------------------------------------------------

loc_1406B90AC:                          ; CODE XREF: sub_1406B8B00+324↑j
                mov     r8b, 1
                mov     dl, r12b
                mov     rcx, rdi
                call    sub_1406B9780
                jmp     loc_1406B8E2A
; ---------------------------------------------------------------------------

loc_1406B90BF:                          ; CODE XREF: sub_1406B8B00+55C↑j
                mov     eax, [r15]
                mov     [rsp+1C8h+var_160], eax
                jmp     short loc_1406B905E
; } // starts at 1406B8B00
sub_1406B8B00   endp

; ---------------------------------------------------------------------------
algn_1406B90C8:                         ; DATA XREF: .rdata:0000000140073A74↑o
                                        ; .pdata:0000000140102CFC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B90D0   proc near               ; CODE XREF: sub_1406B8B00+44A↑p
                                        ; DATA XREF: .rdata:0000000140073AB8↑o ...

var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_0           = word ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014081BC52 SIZE 00000070 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r14, r9
                mov     r12, r8
                mov     r15, rdx
                mov     rax, gs:188h
                mov     dl, [rax+232h]
                xor     edi, edi
                mov     [r11-38h], rdi
                mov     rbx, [rcx]
                mov     [r11-48h], rdi
                xor     r9d, r9d
                lea     r8, [r11-38h]
                call    sub_140617090
                mov     esi, eax
                test    eax, eax
                jnz     loc_14081BC52
                test    r14, r14
                jz      short loc_1406B915B
                xor     eax, eax
                mov     [rsp+68h+var_20], rax
                lea     r8, [rsp+68h+var_30]
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1406B8924
                mov     esi, eax
                test    eax, eax
                js      loc_14081BC72
                mov     rcx, [rsp+68h+var_20]
                mov     rax, [rsp+68h+arg_20]
                mov     [rax+28h], rcx

loc_1406B915B:                          ; CODE XREF: sub_1406B90D0+57↑j
                mov     rdx, [rsp+68h+arg_28]
                mov     rbx, [rsp+68h+var_38]
                test    rdx, rdx
                jz      short loc_1406B917D
                mov     rcx, [rbx+90h]
                test    rcx, rcx
                jnz     loc_14081BC7C

loc_1406B917D:                          ; CODE XREF: sub_1406B90D0+9B↑j
                                        ; sub_1406B90D0+162BC6↓j
                test    r15, r15
                jz      short loc_1406B91D4
                movzx   r14d, di
                mov     [rsp+68h+arg_0], di
                movzx   eax, word ptr [rbx+0F0h]
                cmp     [r12], eax
                jb      loc_14081BC9B
                mov     [r12], eax

loc_1406B91A0:                          ; CODE XREF: sub_1406B90D0+162BE0↓j
                                        ; DATA XREF: .rdata:0000000140073AA4↑o
;   __try { // __except at loc_1406B91BD
                mov     rdx, r15
                mov     rcx, rbx
                cmp     [rbx+0B0h], rdi
                jnz     short loc_1406B91B6
                call    sub_140617330
                jmp     short loc_1406B91BB
; ---------------------------------------------------------------------------

loc_1406B91B6:                          ; CODE XREF: sub_1406B90D0+DD↑j
                call    sub_140700F00

loc_1406B91BB:                          ; CODE XREF: sub_1406B90D0+E4↑j
                jmp     short loc_1406B91CA
;   } // starts at 1406B91A0
; ---------------------------------------------------------------------------

loc_1406B91BD:                          ; DATA XREF: .rdata:0000000140073AA4↑o
;   __except(1) // owned by 1406B91A0
                mov     esi, eax
                mov     rbx, [rsp+68h+var_38]
                movzx   r14d, [rsp+68h+arg_0]

loc_1406B91CA:                          ; CODE XREF: sub_1406B90D0:loc_1406B91BB↑j
                test    r14w, r14w
                jnz     loc_14081BCB5

loc_1406B91D4:                          ; CODE XREF: sub_1406B90D0+B0↑j
                                        ; sub_1406B90D0+162BED↓j
                mov     rcx, rbx

loc_1406B91D7:                          ; CODE XREF: sub_1406B90D0+162BA7↓j
                call    sub_1406199FC

loc_1406B91DC:                          ; CODE XREF: sub_1406B90D0+162B92↓j
                                        ; sub_1406B90D0+162B9D↓j
                mov     eax, esi
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406B90D0
sub_1406B90D0   endp

algn_1406B91FA:                         ; DATA XREF: .rdata:0000000140073AB8↑o
                                        ; .pdata:0000000140102D08↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B9200   proc near               ; CODE XREF: sub_1406169E0+63E↑p
                                        ; DATA XREF: .rdata:0000000140005B08↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014081BCC2 SIZE 0000003E BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                or      dword ptr [rcx+108h], 80000000h
                mov     rbx, rcx
                mov     rcx, [rcx+18h]
                xor     edi, edi
                test    rcx, rcx
                jz      short loc_1406B9234
                test    dword ptr [rbx+28h], 1000h
                jz      short loc_1406B9230
                call    PsDereferenceSiloContext

loc_1406B9230:                          ; CODE XREF: sub_1406B9200+29↑j
                mov     [rbx+18h], rdi

loc_1406B9234:                          ; CODE XREF: sub_1406B9200+20↑j
                mov     rcx, [rbx+88h]
                test    rcx, rcx
                jnz     loc_1406B92D5

loc_1406B9244:                          ; CODE XREF: sub_1406B9200+E6↓j
                mov     rcx, [rbx+90h]
                test    rcx, rcx
                jnz     loc_14081BCC2

loc_1406B9254:                          ; CODE XREF: sub_1406B9200+162ACE↓j
                mov     rcx, [rbx+98h]
                test    rcx, rcx
                jnz     loc_14081BCD3

loc_1406B9264:                          ; CODE XREF: sub_1406B9200+162AE4↓j
                mov     rcx, [rbx+0A0h]
                test    cl, 1
                jnz     short loc_1406B92EB

loc_1406B9270:                          ; CODE XREF: sub_1406B9200+106↓j
                mov     rcx, [rbx+0D0h]
                test    rcx, rcx
                jnz     short loc_1406B92A1

loc_1406B927C:                          ; CODE XREF: sub_1406B9200+B3↓j
                mov     rcx, [rbx+0D8h]
                test    rcx, rcx
                jnz     loc_14081BCE9

loc_1406B928C:                          ; CODE XREF: sub_1406B9200+162AFB↓j
                mov     rax, [rbx+60h]
                test    rax, rax
                jnz     short loc_1406B92B5

loc_1406B9295:                          ; CODE XREF: sub_1406B9200+D3↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B92A1:                          ; CODE XREF: sub_1406B9200+7A↑j
                mov     edx, [rbx+108h]
                call    PsReleaseProcessWakeCounter
                mov     [rbx+0D0h], rdi
                jmp     short loc_1406B927C
; ---------------------------------------------------------------------------

loc_1406B92B5:                          ; CODE XREF: sub_1406B9200+93↑j
                mov     dword ptr [rbx+0F0h], 280000h
                mov     [rbx+0B8h], rdi
                mov     [rbx+0C0h], rdi
                mov     [rbx+28h], edi
                xchg    edi, [rax+28h]
                jmp     short loc_1406B9295
; ---------------------------------------------------------------------------

loc_1406B92D5:                          ; CODE XREF: sub_1406B9200+3E↑j
                mov     edx, 1
                call    sub_14061A320
                mov     [rbx+88h], rdi
                jmp     loc_1406B9244
; ---------------------------------------------------------------------------

loc_1406B92EB:                          ; CODE XREF: sub_1406B9200+6E↑j
                cmp     rcx, 4
                jb      short loc_1406B92FF
                test    cl, 2
                jz      short loc_1406B92FF
                and     rcx, 0FFFFFFFFFFFFFFFCh
                call    PsDereferenceSiloContext

loc_1406B92FF:                          ; CODE XREF: sub_1406B9200+EF↑j
                                        ; sub_1406B9200+F4↑j
                mov     [rbx+0A0h], rdi
                jmp     loc_1406B9270
sub_1406B9200   endp

; ---------------------------------------------------------------------------
algn_1406B930B:                         ; DATA XREF: .rdata:0000000140073AD8↑o
                                        ; .pdata:0000000140102D14↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B9320   proc near               ; DATA XREF: .pdata:0000000140102D20↑o
                                        ; sub_1407CC94C+EC↓o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     rdi, rcx
                add     [rax+1E4h], bx
                test    dword ptr [rcx+100h], 1000h
                jnz     loc_1406B9495

loc_1406B9356:                          ; CODE XREF: sub_1406B9320+17A↓j
                mov     rcx, [rdi+10h]
                test    rcx, rcx
                jz      loc_1406B93E6
                add     rcx, 0FFFFFFFFFFFFFFF0h
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rdi+1A0h]
                and     eax, 6
                cmp     eax, 2
                jz      loc_1406B94B2
                cmp     eax, 4
                jz      loc_1406B9462
                cmp     eax, 6
                jnz     short loc_1406B93B4
                mov     rax, [rdi+10h]
                and     qword ptr [rax+8], 0
                mov     rax, [rdi+10h]
                mov     rcx, [rax+10h]

loc_1406B939F:                          ; CODE XREF: sub_1406B9320+153↓j
                test    rcx, rcx
                jz      short loc_1406B93B4
                and     qword ptr [rcx+1A8h], 0
                and     qword ptr [rcx+1B0h], 0

loc_1406B93B4:                          ; CODE XREF: sub_1406B9320+6C↑j
                                        ; sub_1406B9320+82↑j ...
                mov     rsi, [rdi+10h]
                lock xadd [rsi-10h], rbx
                and     bl, 6
                cmp     bl, 2
                jz      loc_1406B94CE

loc_1406B93CA:                          ; CODE XREF: sub_1406B9320+1B7↓j
                lea     rcx, [rsi-10h]
                call    sub_140243660
                mov     rcx, [rdi+10h]
                mov     edx, 1
                call    sub_14061A320
                and     qword ptr [rdi+10h], 0

loc_1406B93E6:                          ; CODE XREF: sub_1406B9320+3D↑j
                mov     rcx, [rdi+20h]
                test    rcx, rcx
                jnz     loc_1406B949F

loc_1406B93F3:                          ; CODE XREF: sub_1406B9320+18D↓j
                mov     ecx, [rdi+1A0h]
                mov     eax, ecx
                and     al, 6
                cmp     al, 4
                jz      short loc_1406B9478

loc_1406B9401:                          ; CODE XREF: sub_1406B9320+15C↓j
                                        ; sub_1406B9320+165↓j ...
                mov     rax, [rdi+18h]
                mov     ecx, 0
                test    al, 1
                cmovz   rcx, rax
                test    rcx, rcx
                jnz     loc_1406B94DC

loc_1406B9419:                          ; CODE XREF: sub_1406B9320+1C6↓j
                mov     rcx, [rdi+170h]
                test    rcx, rcx
                jnz     loc_1406B94EB

loc_1406B9429:                          ; CODE XREF: sub_1406B9320+1D0↓j
                xor     ecx, ecx
                xchg    rcx, [rdi+1B8h]
                test    rcx, rcx
                jnz     loc_1406B94BF

loc_1406B943B:                          ; CODE XREF: sub_1406B9320+1A9↓j
                mov     rcx, rdi
                call    sub_1406B94FC
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B9462:                          ; CODE XREF: sub_1406B9320+63↑j
                mov     rax, [rdi+10h]
                and     qword ptr [rax+10h], 0
                mov     rax, [rdi+10h]
                mov     rcx, [rax+8]
                jmp     loc_1406B939F
; ---------------------------------------------------------------------------

loc_1406B9478:                          ; CODE XREF: sub_1406B9320+DF↑j
                bt      ecx, 0Ah
                jb      short loc_1406B9401
                mov     rcx, [rdi+50h]
                test    rcx, rcx
                jz      loc_1406B9401
                call    PsDereferenceSiloContext
                jmp     loc_1406B9401
; ---------------------------------------------------------------------------

loc_1406B9495:                          ; CODE XREF: sub_1406B9320+30↑j
                call    sub_1406BACF0
                jmp     loc_1406B9356
; ---------------------------------------------------------------------------

loc_1406B949F:                          ; CODE XREF: sub_1406B9320+CD↑j
                call    PsDereferenceSiloContext
                mov     rcx, [rdi+30h]
                call    sub_14030E46C
                jmp     loc_1406B93F3
; ---------------------------------------------------------------------------

loc_1406B94B2:                          ; CODE XREF: sub_1406B9320+5A↑j
                mov     rax, [rdi+10h]
                and     qword ptr [rax], 0
                jmp     loc_1406B93B4
; ---------------------------------------------------------------------------

loc_1406B94BF:                          ; CODE XREF: sub_1406B9320+115↑j
                mov     edx, 1
                call    sub_14061A320
                jmp     loc_1406B943B
; ---------------------------------------------------------------------------

loc_1406B94CE:                          ; CODE XREF: sub_1406B9320+A4↑j
                lea     rcx, [rsi-10h]
                call    ExfTryToWakePushLock
                jmp     loc_1406B93CA
; ---------------------------------------------------------------------------

loc_1406B94DC:                          ; CODE XREF: sub_1406B9320+F3↑j
                mov     edx, 63706C41h
                call    ObfDereferenceObjectWithTag
                jmp     loc_1406B9419
; ---------------------------------------------------------------------------

loc_1406B94EB:                          ; CODE XREF: sub_1406B9320+103↑j
                call    PsDereferenceSiloContext
                jmp     loc_1406B9429
sub_1406B9320   endp

; ---------------------------------------------------------------------------
byte_1406B94F5  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140102D20↑o

; =============== S U B R O U T I N E =======================================


sub_1406B94FC   proc near               ; CODE XREF: sub_1406B9320+11E↑p
                                        ; DATA XREF: .rdata:0000000140073B08↑o ...

; FUNCTION CHUNK AT 000000014081BD00 SIZE 0000001A BYTES

                push    rbx
                sub     rsp, 20h
                cmp     qword ptr [rcx], 0
                mov     rbx, rcx
                jz      short loc_1406B9553
                xor     edx, edx
                lea     rcx, qword_140C2A7A8
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rbx]
                cmp     [rcx+8], rbx
                jnz     short loc_1406B9580
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_1406B9580
                mov     [rax], rcx
                mov     [rcx+8], rax
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C2A7A8, rax
                test    al, 2
                jnz     loc_14081BD00

loc_1406B9547:                          ; CODE XREF: sub_1406B94FC+162806↓j
                                        ; sub_1406B94FC+162819↓j
                lea     rcx, qword_140C2A7A8
                call    sub_140243660

loc_1406B9553:                          ; CODE XREF: sub_1406B94FC+D↑j
                test    dword ptr [rbx+1A0h], 200h
                jnz     short loc_1406B9566

loc_1406B955F:                          ; CODE XREF: sub_1406B94FC+74↓j
                                        ; sub_1406B94FC+82↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B9566:                          ; CODE XREF: sub_1406B94FC+61↑j
                mov     rdx, [rbx+0F8h]
                test    rdx, rdx
                jz      short loc_1406B955F
                lea     rcx, unk_140CEBC80
                call    sub_14030D224
                jmp     short loc_1406B955F
; ---------------------------------------------------------------------------

loc_1406B9580:                          ; CODE XREF: sub_1406B94FC+24↑j
                                        ; sub_1406B94FC+2D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1406B94FC   endp

; ---------------------------------------------------------------------------
algn_1406B9587:                         ; DATA XREF: .rdata:0000000140073B08↑o
                                        ; .pdata:0000000140102D2C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B9590   proc near               ; DATA XREF: .rdata:0000000140073B28↑o
                                        ; .pdata:0000000140102D38↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081BD1A SIZE 00000035 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 70h
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+78h+var_48]
                lea     r8d, [rdx+40h]
                call    memset
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, gs:188h
                mov     edx, 1
                mov     r8, cs:qword_140CFC548
                mov     rcx, rbx
                and     [rsp+78h+var_50], 0
                and     [rsp+78h+arg_10], 0
                mov     r9b, [rax+232h]
                lea     rax, [rsp+78h+arg_10]
                mov     [rsp+78h+var_58], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406B9654
                mov     rax, [rsp+78h+arg_10]
                lea     rcx, [rsp+78h+var_48]
                and     [rsp+78h+var_18], 0
                mov     rdx, rdi
                mov     [rsp+78h+var_48], rax
                mov     eax, [rax+1A0h]
                bt      eax, 0Dh
                jnb     loc_14081BD1A
                mov     rax, gs:188h
                mov     r8b, [rax+232h]
                call    sub_1406BCA1C
                mov     ebx, eax

loc_1406B9647:                          ; CODE XREF: sub_1406B9590+1627BA↓j
                mov     rcx, [rsp+78h+arg_10]
                call    PsDereferenceSiloContext

loc_1406B9654:                          ; CODE XREF: sub_1406B9590+74↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx
                mov     rbx, [rsp+78h+arg_0]
                add     rsp, 70h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406B9590   endp

byte_1406B9673  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140073B28↑o
                                        ; .pdata:0000000140102D38↑o

; =============== S U B R O U T I N E =======================================


sub_1406B967C   proc near               ; CODE XREF: sub_140218580+DCB↑p
                                        ; NtSetInformationToken+BB5↑p ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 000000014081BD50 SIZE 0000005F BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     rbx, rcx
                and     dword ptr [rax-18h], 0
                test    dl, dl
                jz      loc_14081BD50

loc_1406B96A0:                          ; CODE XREF: sub_1406B967C+1626EA↓j
                                        ; DATA XREF: .rdata:0000000140073B54↑o
;   __try { // __except at loc_1406B96F5
                lea     rax, [rcx+1]
                mov     r8, 7FFFFFFF0000h
                cmp     rax, r8
                cmovnb  rax, r8
                movzx   eax, byte ptr [rax]
                mov     edi, eax
                mov     [rsp+38h+arg_8], eax
                lea     ecx, ds:8[rax*4]
                mov     [rsp+38h+var_18], ecx
                test    ecx, ecx
                jz      short loc_1406B96F3
                test    bl, 3
                jnz     short loc_1406B96EE
                mov     edx, ecx
                add     rdx, rbx
                cmp     rdx, r8
                ja      short loc_1406B96E1
                cmp     rdx, rbx
                jnb     short loc_1406B96F3

loc_1406B96E1:                          ; CODE XREF: sub_1406B967C+5E↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406B96F3
; ---------------------------------------------------------------------------

loc_1406B96EE:                          ; CODE XREF: sub_1406B967C+54↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406B96F3:                          ; CODE XREF: sub_1406B967C+4F↑j
                                        ; sub_1406B967C+63↑j ...
                jmp     short loc_1406B96F7
;   } // starts at 1406B96A0
; ---------------------------------------------------------------------------

loc_1406B96F5:                          ; DATA XREF: .rdata:0000000140073B54↑o
;   __except(1) // owned by 1406B96A0
                jmp     short loc_1406B9762
; ---------------------------------------------------------------------------

loc_1406B96F7:                          ; CODE XREF: sub_1406B967C:loc_1406B96F3↑j
                                        ; sub_1406B967C+16270C↓j
                mov     r14d, ecx
                mov     r8d, 69536553h
                mov     edx, ecx
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, [rsp+38h+arg_30]
                mov     [rsi], rax
                test    rax, rax
                jz      loc_14081BD8D

loc_1406B971D:                          ; DATA XREF: .rdata:0000000140073B64↑o
;   __try { // __except at loc_1406B9734
                mov     r8d, r14d
                mov     rdx, rbx
                mov     rcx, rax
                call    memmove
                mov     rax, [rsi]
                mov     [rax+1], dil
                jmp     short loc_1406B974D
;   } // starts at 1406B971D
; ---------------------------------------------------------------------------

loc_1406B9734:                          ; DATA XREF: .rdata:0000000140073B64↑o
;   __except(1) // owned by 1406B971D
                mov     edi, eax
                xor     edx, edx
                mov     rbx, [rsp+38h+arg_30]
                mov     rcx, [rbx]
                call    ExFreePoolWithTag
                and     qword ptr [rbx], 0
                mov     eax, edi
                jmp     short loc_1406B9762
; ---------------------------------------------------------------------------

loc_1406B974D:                          ; CODE XREF: sub_1406B967C+B6↑j
                mov     rbx, [rsi]
                mov     rcx, rbx
                call    RtlValidSid
                test    al, al
                jz      loc_14081BD97

loc_1406B9760:                          ; CODE XREF: sub_1406B967C+1626E3↓j
                xor     eax, eax

loc_1406B9762:                          ; CODE XREF: sub_1406B967C:loc_1406B96F5↑j
                                        ; sub_1406B967C+CF↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406B967C
sub_1406B967C   endp

algn_1406B9779:                         ; DATA XREF: .rdata:0000000140073B78↑o
                                        ; .pdata:0000000140102D44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406B9780   proc near               ; CODE XREF: sub_140218580+DEC↑p
                                        ; NtSetInformationToken+CBF↑p ...
                sub     rsp, 28h
                test    dl, dl
                jz      short loc_1406B979A

loc_1406B9788:                          ; CODE XREF: sub_1406B9780+20↓j
                cmp     dl, 1
                jnz     short loc_1406B9794

loc_1406B978D:                          ; CODE XREF: sub_1406B9780+1E↓j
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406B9794:                          ; CODE XREF: sub_1406B9780+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B979A:                          ; CODE XREF: sub_1406B9780+6↑j
                cmp     r8b, 1
                jz      short loc_1406B978D
                jmp     short loc_1406B9788
sub_1406B9780   endp

; ---------------------------------------------------------------------------
algn_1406B97A2:                         ; DATA XREF: .pdata:0000000140102D50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B97B0   proc near               ; DATA XREF: .pdata:0000000140102D5C↑o
                                        ; PAGE:000000014098BE78↓o

var_50          = dword ptr -50h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

                mov     r11, rsp
                sub     rsp, 78h
                mov     rax, [rsp+78h+arg_50]
                mov     [r11-18h], rax
                mov     rax, [rsp+78h+arg_48]
                mov     [r11-20h], rax
                mov     rax, [rsp+78h+arg_40]
                mov     [r11-28h], rax
                mov     rax, [rsp+78h+arg_38]
                mov     [r11-30h], rax
                mov     rax, [rsp+78h+arg_30]
                mov     [r11-38h], rax
                mov     rax, [rsp+78h+arg_28]
                mov     [r11-40h], rax
                and     qword ptr [r11-48h], 0
                mov     eax, [rsp+78h+arg_20]
                mov     [rsp+78h+var_50], eax
                mov     [r11-58h], r9
                mov     r9, r8
                xor     r8d, r8d
                call    sub_1406BB0FC
                add     rsp, 78h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406B97B0   endp

algn_1406B9824:                         ; DATA XREF: .pdata:0000000140102D5C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406B9830   proc near               ; DATA XREF: .pdata:0000000140102D68↑o
                                        ; PAGE:000000014098C0E8↓o

var_50          = dword ptr -50h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

                mov     r11, rsp
                sub     rsp, 78h
                mov     rax, [rsp+78h+arg_50]
                mov     [r11-18h], rax
                mov     rax, [rsp+78h+arg_48]
                mov     [r11-20h], rax
                mov     rax, [rsp+78h+arg_40]
                mov     [r11-28h], rax
                mov     rax, [rsp+78h+arg_38]
                mov     [r11-30h], rax
                mov     rax, [rsp+78h+arg_30]
                mov     [r11-38h], rax
                and     qword ptr [r11-40h], 0
                mov     rax, [rsp+78h+arg_28]
                mov     [r11-48h], rax
                mov     eax, [rsp+78h+arg_20]
                mov     [rsp+78h+var_50], eax
                mov     [r11-58h], r9
                mov     r9, r8
                mov     r8, rdx
                xor     edx, edx
                call    sub_1406BB0FC
                add     rsp, 78h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406B9830   endp

byte_1406B98A6  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140102D68↑o

; =============== S U B R O U T I N E =======================================


sub_1406B98AC   proc near               ; CODE XREF: sub_140615070+80F↑p
                                        ; sub_140615070+853↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rsi, [rcx+0B0h]
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rbx+28h]
                lea     rcx, [rdi+0B8h]
                mov     [rbx+10h], rdi
                and     eax, 0FFFFFF83h
                mov     r8d, [rdi+1A0h]
                and     r8d, 6
                shl     r8d, 2
                or      r8d, eax
                or      r8d, 3
                mov     [rbx+28h], r8d
                mov     rax, [rcx+8]
                mov     [rbx+8], rax
                mov     [rbx], rcx
                mov     rax, [rcx+8]
                mov     [rax], rbx
                inc     dword ptr [rdi+1C8h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     [rcx+8], rbx
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406B9941

loc_1406B9928:                          ; CODE XREF: sub_1406B98AC+9D↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B9941:                          ; CODE XREF: sub_1406B98AC+7A↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     short loc_1406B9928
sub_1406B98AC   endp

; ---------------------------------------------------------------------------
algn_1406B994B:                         ; DATA XREF: .pdata:0000000140102D74↑o
                align 20h
; Exported entry 1923. PsReleaseProcessWakeCounter

; =============== S U B R O U T I N E =======================================


