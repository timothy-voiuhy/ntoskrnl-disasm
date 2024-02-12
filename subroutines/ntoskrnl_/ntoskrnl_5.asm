ntoskrnl_5      proc near               ; DATA XREF: .pdata:00000001400F20C4↑o

var_88          = byte ptr -88h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 700h
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FDC30
ntoskrnl_5      endp

algn_1404FDC86:                         ; DATA XREF: .pdata:00000001400F20C4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404FDC90   proc near               ; CODE XREF: sub_1403DB5D0+245↑p
                                        ; sub_1403DB5D0+27B↑p ...

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     ebx, edx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     ecx, 1
                mov     [rsp+0A8h+var_80], rdi
                test    cl, bl
                lea     eax, [rcx-1]
                cmovnz  eax, ecx
                mov     [rsp+0A8h+var_78], eax
                test    ebx, ebx
                jns     short loc_1404FDCEE
                or      eax, 2
                mov     [rsp+0A8h+var_78], eax
                test    rdi, rdi
                jnz     short loc_1404FDCEE
                xor     eax, eax
                jmp     short loc_1404FDD02
; ---------------------------------------------------------------------------

loc_1404FDCEE:                          ; CODE XREF: sub_1404FDC90+4C↑j
                                        ; sub_1404FDC90+58↑j
                mov     edx, 102h
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C

loc_1404FDD02:                          ; CODE XREF: sub_1404FDC90+5C↑j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_8]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FDC90
sub_1404FDC90   endp

byte_1404FDD24  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F20D0↑o

; =============== S U B R O U T I N E =======================================


sub_1404FDD2C   proc near               ; CODE XREF: sub_1404FD8C8+80↑p
                                        ; DATA XREF: .pdata:00000001400F20DC↑o

var_88          = byte ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     edi, edx
                mov     rsi, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                xor     eax, eax
                jmp     short loc_1404FDDAF
; ---------------------------------------------------------------------------

loc_1404FDD69:                          ; CODE XREF: sub_1404FDD2C+85↓j
                xor     ebx, ebx

loc_1404FDD6B:                          ; CODE XREF: sub_1404FDD2C+65↓j
                mov     rcx, rsi
                call    MmGetPhysicalAddress
                mov     rcx, rax
                dec     edi
                shr     rcx, 0Ch
                add     rsi, 1000h
                mov     [rsp+rbx*8+0A8h+var_78], rcx
                inc     ebx
                cmp     ebx, 0Bh
                jnb     short loc_1404FDD93
                test    edi, edi
                jnz     short loc_1404FDD6B

loc_1404FDD93:                          ; CODE XREF: sub_1404FDD2C+61↑j
                mov     edx, 37h ; '7'
                mov     [rsp+0A8h+var_80], ebx
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                test    eax, eax
                js      short loc_1404FDDB3

loc_1404FDDAF:                          ; CODE XREF: sub_1404FDD2C+3B↑j
                test    edi, edi
                jnz     short loc_1404FDD69

loc_1404FDDB3:                          ; CODE XREF: sub_1404FDD2C+81↑j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A8h+var_8]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FDD2C
sub_1404FDD2C   endp

algn_1404FDDD9:                         ; DATA XREF: .pdata:00000001400F20DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404FDDE0   proc near               ; CODE XREF: sub_1404FE190+E↓p
                                        ; sub_1404FE1DC:loc_1404FE2EB↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, cs:qword_140C47278
                xor     edi, edi
                and     [rsp+58h+arg_0], 0
                mov     esi, [rax+8]
                lea     rbx, [rax+18h]
                mov     r12d, [rax]
                lea     rbx, [rbx+rsi*8]
                test    esi, esi
                jz      loc_1404FDEFA

loc_1404FDE1A:                          ; CODE XREF: sub_1404FDDE0+114↓j
                mov     rax, [rbx]
                bsf     rcx, rax
                mov     [rsp+58h+arg_0], ecx
                jz      loc_1404FDEEC
                mov     r14d, edi
                shl     r14d, 6

loc_1404FDE32:                          ; CODE XREF: sub_1404FDDE0+106↓j
                lea     ebp, [r14+rcx]
                cmp     ebp, r12d
                jnb     loc_1404FDEEC
                mov     eax, ecx
                lock btr [rbx], rax
                setb    al
                cmp     al, 1
                jnz     loc_1404FDEDB
                mov     edx, 10h
                mov     ecx, 200h
                mov     r8d, 54736D56h
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jz      loc_1404FDEFA
                mov     r9, cs:qword_140C47278
                lea     rcx, unk_140C472A0
                mov     [rax], ebp
                mov     edx, [r9+4]
                mov     r8d, [r9+8]
                imul    edx, ebp
                shl     r8, 4
                add     r8, 18h
                add     rdx, r9
                add     rdx, r8
                mov     [rax+8], rdx
                call    sub_14024C840
                mov     rax, [r15+8]
                lea     r9, sub_1404FDF20
                mov     rcx, cs:qword_140C472A8
                xor     r8d, r8d
                mov     [rsp+58h+var_38], r15
                mov     [rax+2Ah], cx
                mov     rdx, [r15+8]
                call    EtwSendTraceBuffer
                test    eax, eax
                jns     short loc_1404FDEDB
                lea     rcx, unk_140C472A0
                call    sub_14024C380

loc_1404FDEDB:                          ; CODE XREF: sub_1404FDDE0+6B↑j
                                        ; sub_1404FDDE0+ED↑j
                mov     rax, [rbx]
                bsf     rcx, rax
                mov     [rsp+58h+arg_0], ecx
                jnz     loc_1404FDE32

loc_1404FDEEC:                          ; CODE XREF: sub_1404FDDE0+45↑j
                                        ; sub_1404FDDE0+59↑j
                inc     edi
                add     rbx, 8
                cmp     edi, esi
                jb      loc_1404FDE1A

loc_1404FDEFA:                          ; CODE XREF: sub_1404FDDE0+34↑j
                                        ; sub_1404FDDE0+8C↑j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404FDDE0   endp

algn_1404FDF12:                         ; DATA XREF: .pdata:00000001400F20E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404FDF20   proc near               ; DATA XREF: .pdata:00000001400F20F4↑o
                                        ; sub_1404FDDE0+C8↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, cs:qword_140C47278
                mov     rdi, r8
                test    rbx, rbx
                jz      short loc_1404FDF72
                mov     r8d, [r8]
                mov     edx, [rbx+4]
                mov     rcx, [rdi+8]
                call    sub_140892058
                mov     ecx, [rdi]
                mov     eax, ecx
                shr     rcx, 6
                and     eax, 3Fh
                bts     [rbx+rcx*8+18h], rax
                lea     rcx, unk_140C472A0
                call    sub_14024C380
                mov     edx, 54736D56h
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1404FDF72:                          ; CODE XREF: sub_1404FDF20+17↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404FDF20   endp

byte_1404FDF7E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400F20F4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1404FDF90   proc near               ; DATA XREF: .pdata:00000001400F2100↑o
                                        ; sub_140A76428:loc_140A8DF28↓o

var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_10          = qword ptr -10h
arg_8           = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                movups  xmm0, xmmword ptr [rcx]
                mov     rbx, rcx
                xor     eax, eax
                movups  xmm1, xmmword ptr [rcx+10h]
                mov     edx, 10Ah
                lea     r9, [rbp+57h+var_80]
                movups  [rbp+57h+var_78], xmm0
                xor     r8d, r8d
                mov     [rbp+57h+var_80], rax
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  [rbp+57h+var_68], xmm1
                movups  xmm1, xmmword ptr [rcx+30h]
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rcx+40h]
                movups  [rbp+57h+var_48], xmm1
                movups  xmm1, xmmword ptr [rcx+50h]
                mov     cl, 2
                movups  [rbp+57h+var_38], xmm0
                movups  [rbp+57h+var_28], xmm1
                call    sub_14034DB1C
                movups  xmm0, [rbp+57h+var_78]
                movups  xmm1, [rbp+57h+var_68]
                movups  xmmword ptr [rbx], xmm0
                movups  xmm0, [rbp+57h+var_58]
                movups  xmmword ptr [rbx+10h], xmm1
                movups  xmm1, [rbp+57h+var_48]
                movups  xmmword ptr [rbx+20h], xmm0
                movups  xmm0, [rbp+57h+var_38]
                movups  xmmword ptr [rbx+30h], xmm1
                movups  xmm1, [rbp+57h+var_28]
                movups  xmmword ptr [rbx+40h], xmm0
                movups  xmmword ptr [rbx+50h], xmm1
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A0h+arg_8]
                add     rsp, 0A0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FDF90
sub_1404FDF90   endp

algn_1404FE048:                         ; DATA XREF: .pdata:00000001400F2100↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404FE050   proc near               ; CODE XREF: sub_1404FD8C8+6B↑p
                                        ; DATA XREF: .pdata:00000001400F210C↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     edi, edx
                xor     edx, edx
                mov     esi, r8d
                mov     ebx, ecx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 36h ; '6'
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                mov     [rsp+0A8h+var_78], rdi
                xor     r8d, r8d
                mov     [rsp+0A8h+var_70], rsi
                mov     cl, 2
                call    sub_14034DB1C
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE050
sub_1404FE050   endp

byte_1404FE0D4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F210C↑o

; =============== S U B R O U T I N E =======================================


sub_1404FE0DC   proc near               ; CODE XREF: sub_1404FD8C8+AC↑p
                                        ; DATA XREF: .pdata:00000001400F2118↑o

var_A8          = byte ptr -0A8h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_38          = qword ptr -38h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_38], rax
                mov     r15, [rsp+0C8h+arg_20]
                mov     rdi, rdx
                xor     edx, edx
                mov     rsi, r8
                mov     rbx, rcx
                mov     r14, r9
                lea     rcx, [rsp+0C8h+var_A8]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 38h ; '8'
                lea     r9, [rsp+0C8h+var_A8]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                test    eax, eax
                js      short loc_1404FE161
                mov     rcx, [rsp+0C8h+var_98]
                mov     [rbx], rcx
                mov     rcx, [rsp+0C8h+var_90]
                mov     [rdi], rcx
                mov     rcx, [rsp+0C8h+var_88]
                mov     [rsi], rcx
                mov     rcx, [rsp+0C8h+var_80]
                mov     [r14], rcx
                mov     rcx, [rsp+0C8h+var_78]
                mov     [r15], rcx

loc_1404FE161:                          ; CODE XREF: sub_1404FE0DC+5B↑j
                mov     rcx, [rsp+0C8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE0DC
sub_1404FE0DC   endp

algn_1404FE181:                         ; DATA XREF: .pdata:00000001400F2118↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404FE190   proc near               ; DATA XREF: .pdata:00000001400F2124↑o
                                        ; sub_1408921A0+176↓o

var_18          = qword ptr -18h

                sub     rsp, 38h
                cmp     cs:qword_140C47278, 0
                jz      short loc_1404FE1CE
                call    sub_1404FDDE0
                mov     eax, cs:dword_140C124D8
                lea     rcx, unk_140C47300
                imul    rdx, rax, 0FFFFFFFFFF676980h
                lea     rax, unk_140C47340
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+38h+var_18], rax
                call    sub_1402BE300

loc_1404FE1CE:                          ; CODE XREF: sub_1404FE190+C↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404FE190   endp

byte_1404FE1D4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F2124↑o

; =============== S U B R O U T I N E =======================================


sub_1404FE1DC   proc near               ; CODE XREF: sub_140891F50+2A↓p
                                        ; DATA XREF: .pdata:00000001400F2130↑o

var_88          = byte ptr -88h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 4Ch ; 'L'
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                lea     r14d, [rdx-4Ah]
                mov     cl, r14b
                call    sub_14034DB1C
                mov     edi, eax
                test    eax, eax
                jns     short loc_1404FE246
                lea     rcx, unk_140C47300
                call    KeCancelTimer
                jmp     loc_1404FE37A
; ---------------------------------------------------------------------------

loc_1404FE246:                          ; CODE XREF: sub_1404FE1DC+57↑j
                lea     rcx, qword_140CF5220
                call    sub_140394054
                xor     edx, edx
                lea     rcx, qword_140CF5220
                lea     r8d, [rdx+48h]
                call    memset
                lea     rcx, unk_140C47300
                call    KeCancelTimer
                mov     rax, cs:qword_140C47278
                mov     r8d, [rax+8]
                lea     rcx, [rax+18h]
                lea     rdx, [rax+18h]
                lea     rcx, [rcx+r8*8]
                test    r8d, r8d
                jz      short loc_1404FE2A3
                sub     rdx, rcx

loc_1404FE28F:                          ; CODE XREF: sub_1404FE1DC+C5↓j
                mov     rax, [rdx+rcx]
                not     rax
                mov     [rcx], rax
                lea     rcx, [rcx+8]
                sub     r8, 1
                jnz     short loc_1404FE28F

loc_1404FE2A3:                          ; CODE XREF: sub_1404FE1DC+AE↑j
                mov     rbx, cr8
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1404FE2EB
                test    al, 1
                jz      short loc_1404FE2EB
                cmp     bl, 0Fh
                ja      short loc_1404FE2EB
                mov     rax, gs:20h
                mov     rdx, rsi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1404FE2EB:                          ; CODE XREF: sub_1404FE1DC+DB↑j
                                        ; sub_1404FE1DC+DF↑j ...
                call    sub_1404FDDE0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1404FE341
                test    al, 1
                jz      short loc_1404FE341
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404FE341
                cmp     bl, 0Fh
                ja      short loc_1404FE341
                cmp     al, r14b
                jb      short loc_1404FE341
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rsi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, si
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1404FE341
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1404FE341:                          ; CODE XREF: sub_1404FE1DC+11C↑j
                                        ; sub_1404FE1DC+120↑j ...
                movzx   eax, bl
                mov     cr8, rax
                lea     rcx, unk_140C472A0
                call    ExWaitForRundownProtectionRelease
                mov     rcx, cs:qword_140C47278
                test    rcx, rcx
                jz      short loc_1404FE372
                mov     edx, 54736D56h
                call    ExFreePoolWithTag
                and     cs:qword_140C47278, 0

loc_1404FE372:                          ; CODE XREF: sub_1404FE1DC+182↑j
                and     cs:qword_140C472A8, 0

loc_1404FE37A:                          ; CODE XREF: sub_1404FE1DC+65↑j
                mov     eax, edi
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE1DC
sub_1404FE1DC   endp

algn_1404FE3A7:                         ; DATA XREF: .pdata:00000001400F2130↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404FE3B0   proc near               ; CODE XREF: sub_140890700+A1↓p
                                        ; sub_14090F590+2F↓p
                                        ; DATA XREF: ...

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 1Eh
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE3B0
sub_1404FE3B0   endp

algn_1404FE411:                         ; DATA XREF: .pdata:00000001400F213C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404FE420   proc near               ; DATA XREF: .rdata:off_140008730↑o
                                        ; .pdata:00000001400F2148↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 16h
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                test    eax, eax
                js      short loc_1404FE47A
                mov     rcx, [rsp+0A8h+var_78]
                mov     [rdi], rcx

loc_1404FE47A:                          ; CODE XREF: sub_1404FE420+50↑j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_0]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE420
sub_1404FE420   endp

byte_1404FE49C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400F2148↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_1404FE4B0   proc near               ; DATA XREF: .rdata:0000000140008748↑o
                                        ; .pdata:00000001400F2154↑o

var_100         = dword ptr -100h
var_F0          = qword ptr -0F0h
var_B8          = qword ptr -0B8h
var_A0          = byte ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_30          = qword ptr -30h
arg_10          = qword ptr  20h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+47h+var_30], rax
                mov     rdi, [rbp+47h+arg_28]
                mov     rsi, rdx
                xor     edx, edx
                movzx   r15d, r8b
                mov     ebx, ecx
                mov     r14d, r9d
                lea     rcx, [rbp+47h+var_A0]
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+120h+var_F0]
                lea     r8d, [rdx+48h]
                call    memset
                cmp     ebx, 1FAh
                jbe     short loc_1404FE514
                mov     eax, 0C000000Dh
                jmp     short loc_1404FE57F
; ---------------------------------------------------------------------------

loc_1404FE514:                          ; CODE XREF: sub_1404FE4B0+5B↑j
                and     [rsp+120h+var_100], 0
                lea     rcx, [rsp+120h+var_F0]
                shl     ebx, 0Ch
                xor     r9d, r9d
                mov     r8d, ebx
                mov     rdx, rsi
                call    sub_1403940A8
                test    eax, eax
                js      short loc_1404FE57F
                mov     rax, [rsp+120h+var_F0]
                lea     r9, [rbp+47h+var_A0]
                mov     [rbp+47h+var_98], rax
                mov     edx, 19h
                mov     rax, [rbp+47h+var_B8]
                xor     r8d, r8d
                mov     [rbp+47h+var_90], rax
                mov     cl, 2
                mov     eax, [rbp+47h+arg_20]
                mov     [rbp+47h+var_78], rax
                mov     [rbp+47h+var_88], r15
                mov     [rbp+47h+var_80], r14
                call    sub_14034DB1C
                lea     rcx, [rsp+120h+var_F0]
                mov     ebx, eax
                call    sub_140394054
                test    ebx, ebx
                js      short loc_1404FE57D
                mov     rcx, [rbp+47h+var_90]
                mov     [rdi], rcx

loc_1404FE57D:                          ; CODE XREF: sub_1404FE4B0+C4↑j
                mov     eax, ebx

loc_1404FE57F:                          ; CODE XREF: sub_1404FE4B0+62↑j
                                        ; sub_1404FE4B0+81↑j
                mov     rcx, [rbp+47h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+120h+arg_10]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE4B0
sub_1404FE4B0   endp

algn_1404FE5A3:                         ; DATA XREF: .pdata:00000001400F2154↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404FE5B0   proc near               ; DATA XREF: .rdata:0000000140008738↑o
                                        ; .pdata:00000001400F2160↑o

var_108         = dword ptr -108h
var_F8          = qword ptr -0F8h
var_C0          = qword ptr -0C0h
var_A8          = byte ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_38          = qword ptr -38h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+128h+var_38], rax
                mov     rbp, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     r15, rcx
                lea     rcx, [rsp+128h+var_A8]
                mov     rsi, r9
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+128h+var_F8]
                lea     r8d, [rdx+48h]
                call    memset
                xor     ebx, ebx
                test    rdi, rdi
                jz      loc_1404FE6AB

loc_1404FE60F:                          ; CODE XREF: sub_1404FE5B0+F5↓j
                mov     ecx, esi
                mov     eax, 1FA000h
                and     ecx, 0FFFh
                mov     r14d, edi
                sub     eax, ecx
                mov     rdx, rsi
                mov     ecx, eax
                cmp     rcx, rdi
                lea     rcx, [rsp+128h+var_F8]
                cmovbe  r14d, eax
                and     [rsp+128h+var_108], 0
                mov     r8d, r14d
                xor     r9d, r9d
                call    sub_1403940A8
                mov     ebx, eax
                test    eax, eax
                js      short loc_1404FE6AB
                mov     rax, [rsp+128h+var_F8]
                lea     r9, [rsp+128h+var_A8]
                mov     [rsp+128h+var_90], rax
                mov     edx, 17h
                mov     rax, [rsp+128h+var_C0]
                xor     r8d, r8d
                mov     cl, 2
                mov     [rsp+128h+var_88], rax
                mov     [rsp+128h+var_A0], r15
                mov     [rsp+128h+var_98], rbp
                call    sub_14034DB1C
                lea     rcx, [rsp+128h+var_F8]
                mov     ebx, eax
                call    sub_140394054
                test    ebx, ebx
                js      short loc_1404FE6AB
                mov     eax, r14d
                add     rsi, rax
                add     rbp, rax
                sub     rdi, rax
                jnz     loc_1404FE60F

loc_1404FE6AB:                          ; CODE XREF: sub_1404FE5B0+59↑j
                                        ; sub_1404FE5B0+96↑j ...
                mov     eax, ebx
                mov     rcx, [rsp+128h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+128h+arg_0]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE5B0
sub_1404FE5B0   endp

algn_1404FE6D5:                         ; DATA XREF: .pdata:00000001400F2160↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404FE6E0   proc near               ; DATA XREF: .rdata:0000000140008758↑o
                                        ; .pdata:00000001400F216C↑o

var_C8          = byte ptr -0C8h
var_C0          = word ptr -0C0h
var_BE          = word ptr -0BEh
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = xmmword ptr -98h
var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     r8d, [rdx+68h]
                lea     rcx, [rsp+0E8h+var_88]
                call    memset
                xor     edx, edx
                lea     r8d, [rdx+40h]
                lea     rcx, [rsp+0E8h+var_C8]
                call    memset
                movzx   eax, bx
                mov     edx, 0FFFh
                and     ax, dx
                lea     ecx, [rdx+48h]
                add     ax, cx
                shr     ax, 0Ch
                add     ax, 6
                shl     ax, 3
                mov     [rsp+0E8h+var_C0], ax
                xor     eax, eax
                mov     [rsp+0E8h+var_BE], ax
                mov     rax, rbx
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rsp+0E8h+var_A8], rax
                mov     eax, ebx
                and     eax, edx
                mov     [rsp+0E8h+var_9C], eax
                mov     [rsp+0E8h+var_A0], 48h ; 'H'

loc_1404FE76C:                          ; DATA XREF: .rdata:00000001400B69C4↑o
;   __try { // __except at loc_1404FE7B5
                xor     edx, edx
                lea     r8d, [rdx+1]
                lea     rcx, [rsp+0E8h+var_C8]
                call    sub_140221A30
                nop
;   } // starts at 1404FE76C

loc_1404FE77D:                          ; DATA XREF: .rdata:00000001400B69C4↑o
                mov     [rsp+0E8h+var_80], rdi
                mov     [rsp+0E8h+var_78], rbx
                movaps  xmm0, [rsp+0E8h+var_98]
                movups  [rsp+0E8h+var_70], xmm0
                mov     edx, 1Ah
                lea     r9, [rsp+0E8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     ebx, eax
                lea     rcx, [rsp+0E8h+var_C8]
                call    MmUnlockPages
                mov     eax, ebx
                jmp     short $+2
; ---------------------------------------------------------------------------

loc_1404FE7B5:                          ; CODE XREF: sub_1404FE6E0+D3↑j
                                        ; DATA XREF: .rdata:00000001400B69C4↑o
;   __except(1) // owned by 1404FE76C
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E8h+arg_0]
                add     rsp, 0E0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE6E0
sub_1404FE6E0   endp

algn_1404FE7D7:                         ; DATA XREF: .pdata:00000001400F216C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3Fh

sub_1404FE7E0   proc near               ; DATA XREF: .rdata:0000000140008760↑o
                                        ; .pdata:00000001400F2178↑o

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = byte ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A4          = byte ptr -0A4h
var_A3          = byte ptr -0A3h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-7]
                sub     rsp, 0B8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3Fh+var_50], rax
                mov     rax, [rbp+3Fh+arg_20]
                mov     rsi, rdx
                mov     r12, [rbp+3Fh+arg_28]
                xor     edx, edx
                mov     r13, [rbp+3Fh+arg_30]
                mov     r14d, r8d
                mov     rdi, [rbp+3Fh+arg_40]
                mov     rbx, rcx
                mov     [rsp+0F0h+var_D0], rax
                lea     rcx, [rsp+0F0h+var_C0]
                mov     rax, [rbp+3Fh+arg_38]
                lea     r8d, [rdx+68h]
                mov     r15b, r9b
                mov     [rsp+0F0h+var_C8], rax
                call    memset
                mov     [rbp+3Fh+var_B0], rsi
                lea     r9, [rsp+0F0h+var_C0]
                xor     esi, esi
                mov     [rbp+3Fh+var_B8], rbx
                xor     r8d, r8d
                mov     [rbp+3Fh+var_A8], r14d
                mov     cl, 2
                mov     [rbp+3Fh+var_A4], r15b
                mov     [rbp+3Fh+var_A0], rsi
                lea     edx, [rsi+1Bh]
                call    sub_14034DB1C
                mov     ecx, [rbp+3Fh+var_90]
                mov     ebx, eax
                mov     [rdi], ecx
                test    eax, eax
                js      short loc_1404FE890
                mov     rax, [rsp+0F0h+var_D0]
                mov     cl, [rbp+3Fh+var_A3]
                mov     [rax], cl
                mov     rax, [rsp+0F0h+var_C8]
                mov     rcx, [rbp+3Fh+var_98]
                mov     [rax], rcx

loc_1404FE890:                          ; CODE XREF: sub_1404FE7E0+98↑j
                mov     rcx, [rbp+3Fh+var_A0]
                test    rcx, rcx
                jz      short loc_1404FE8A7
                mov     rdx, r13
                call    sub_1404FC600
                mov     [r12], rax
                jmp     short loc_1404FE8AF
; ---------------------------------------------------------------------------

loc_1404FE8A7:                          ; CODE XREF: sub_1404FE7E0+B7↑j
                mov     [r12], rsi
                mov     [r13+0], rsi

loc_1404FE8AF:                          ; CODE XREF: sub_1404FE7E0+C5↑j
                mov     eax, ebx
                mov     rcx, [rbp+3Fh+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
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
; } // starts at 1404FE7E0
sub_1404FE7E0   endp

algn_1404FE8D2:                         ; DATA XREF: .pdata:00000001400F2178↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1404FE8D8   proc near               ; CODE XREF: sub_1407CC854+952A8↓p
                                        ; DATA XREF: .pdata:00000001400F2184↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 2Ah ; '*'
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE8D8
sub_1404FE8D8   endp

algn_1404FE939:                         ; DATA XREF: .pdata:00000001400F2184↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404FE940   proc near               ; DATA XREF: .rdata:0000000140008740↑o
                                        ; .pdata:00000001400F2190↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     rax, [rdi]
                lea     r9, [rsp+0A8h+var_88]
                mov     edx, 18h
                mov     [rsp+0A8h+var_80], rax
                xor     r8d, r8d
                mov     [rsp+0A8h+var_78], rbx
                mov     cl, 2
                call    sub_14034DB1C
                test    eax, eax
                js      short loc_1404FE9A2
                mov     rcx, [rsp+0A8h+var_78]
                mov     [rdi], rcx

loc_1404FE9A2:                          ; CODE XREF: sub_1404FE940+58↑j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_8]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FE940
sub_1404FE940   endp

algn_1404FE9C4:                         ; DATA XREF: .pdata:00000001400F2190↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E0h

sub_1404FE9D0   proc near               ; DATA XREF: .rdata:0000000140008768↑o
                                        ; .pdata:00000001400F219C↑o

var_1C0         = dword ptr -1C0h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_168         = qword ptr -168h
var_150         = qword ptr -150h
var_118         = qword ptr -118h
var_100         = qword ptr -100h
var_C8          = qword ptr -0C8h
var_B0          = byte ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_40          = qword ptr -40h
arg_0           = qword ptr  10h
arg_20          = qword ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0B0h]
                sub     rsp, 1B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0E0h+var_40], rax
                mov     r13, [rbp+0E0h+arg_20]
                mov     r15, r8
                mov     r14, [rbp+0E0h+arg_30]
                mov     r12, r9
                mov     [rsp+1E0h+var_1A8], rdx
                xor     edx, edx
                mov     [rsp+1E0h+var_1B0], rcx
                lea     rcx, [rbp+0E0h+var_B0]
                lea     r8d, [rdx+68h]
                call    memset
                mov     ebx, 48h ; 'H'
                lea     rcx, [rsp+1E0h+var_1A0]
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                mov     r8d, ebx
                lea     rcx, [rbp+0E0h+var_100]
                xor     edx, edx
                call    memset
                mov     r8d, ebx
                lea     rcx, [rbp+0E0h+var_150]
                xor     edx, edx
                call    memset
                mov     rax, r15
                lea     rsi, [r12+0FFFh]
                mov     ecx, 0FFFh
                mov     edx, 1FAh
                and     rax, rcx
                add     rsi, rax
                shr     rsi, 0Ch
                cmp     rsi, rdx
                ja      loc_1404FEBAB
                mov     rdi, [rbp+0E0h+arg_38]
                mov     rax, r14
                and     rax, rcx
                lea     rbx, [rdi+0FFFh]
                add     rbx, rax
                shr     rbx, 0Ch
                cmp     rbx, rdx
                ja      loc_1404FEBAB
                test    rsi, rsi
                jz      short loc_1404FEACE
                and     [rsp+1E0h+var_1C0], 0
                lea     rcx, [rsp+1E0h+var_1A0]
                xor     r9d, r9d
                mov     r8d, r12d
                mov     rdx, r15
                call    sub_1403940A8
                test    eax, eax
                js      loc_1404FEBB0

loc_1404FEACE:                          ; CODE XREF: sub_1404FE9D0+DC↑j
                test    rbx, rbx
                jz      short loc_1404FEB2D
                and     [rsp+1E0h+var_1C0], 0
                lea     rcx, [rbp+0E0h+var_150]
                xor     r9d, r9d
                mov     r8d, edi
                mov     rdx, r14
                call    sub_1403940A8
                mov     edi, eax
                test    eax, eax
                jns     short loc_1404FEB01

loc_1404FEAF0:                          ; CODE XREF: sub_1404FE9D0+15B↓j
                                        ; sub_1404FE9D0+1D6↓j
                lea     rcx, [rsp+1E0h+var_1A0]
                call    sub_140394054

loc_1404FEAFA:                          ; CODE XREF: sub_1404FE9D0+1D0↓j
                mov     eax, edi
                jmp     loc_1404FEBB0
; ---------------------------------------------------------------------------

loc_1404FEB01:                          ; CODE XREF: sub_1404FE9D0+11E↑j
                mov     r8d, [rbp+0E0h+arg_28]
                lea     rcx, [rbp+0E0h+var_100]
                and     [rsp+1E0h+var_1C0], 0
                xor     r9d, r9d
                mov     rdx, r13
                call    sub_1403940A8
                mov     edi, eax
                test    eax, eax
                jns     short loc_1404FEB2D
                lea     rcx, [rbp+0E0h+var_150]
                call    sub_140394054
                jmp     short loc_1404FEAF0
; ---------------------------------------------------------------------------

loc_1404FEB2D:                          ; CODE XREF: sub_1404FE9D0+101↑j
                                        ; sub_1404FE9D0+150↑j
                mov     rax, [rsp+1E0h+var_1B0]
                lea     r9, [rbp+0E0h+var_B0]
                mov     [rbp+0E0h+var_A8], rax
                mov     edx, 1Ch
                mov     rax, [rsp+1E0h+var_1A8]
                xor     r8d, r8d
                mov     [rbp+0E0h+var_A0], rax
                mov     cl, 2
                mov     rax, [rsp+1E0h+var_1A0]
                mov     [rbp+0E0h+var_98], rax
                mov     rax, [rsp+1E0h+var_168]
                mov     [rbp+0E0h+var_90], rax
                mov     rax, [rbp+0E0h+var_100]
                mov     [rbp+0E0h+var_88], rax
                mov     rax, [rbp+0E0h+var_C8]
                mov     [rbp+0E0h+var_80], rax
                mov     rax, [rbp+0E0h+var_150]
                mov     [rbp+0E0h+var_78], rax
                mov     rax, [rbp+0E0h+var_118]
                mov     [rbp+0E0h+var_70], rax
                call    sub_14034DB1C
                mov     edi, eax
                test    rbx, rbx
                jz      short loc_1404FEB9D
                lea     rcx, [rbp+0E0h+var_150]
                call    sub_140394054
                lea     rcx, [rbp+0E0h+var_100]
                call    sub_140394054

loc_1404FEB9D:                          ; CODE XREF: sub_1404FE9D0+1B9↑j
                test    rsi, rsi
                jz      loc_1404FEAFA
                jmp     loc_1404FEAF0
; ---------------------------------------------------------------------------

loc_1404FEBAB:                          ; CODE XREF: sub_1404FE9D0+AF↑j
                                        ; sub_1404FE9D0+D3↑j
                mov     eax, 0C000000Dh

loc_1404FEBB0:                          ; CODE XREF: sub_1404FE9D0+F8↑j
                                        ; sub_1404FE9D0+12C↑j
                mov     rcx, [rbp+0E0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+1E0h+arg_0]
                add     rsp, 1B0h
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
; } // starts at 1404FE9D0
sub_1404FE9D0   endp

byte_1404FEBDB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400F219C↑o

; =============== S U B R O U T I N E =======================================


sub_1404FEBF0   proc near               ; DATA XREF: .rdata:0000000140008770↑o
                                        ; .pdata:00000001400F21A8↑o

var_88          = byte ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 1Dh
                mov     [rsp+0A8h+var_80], rbx
                lea     r9, [rsp+0A8h+var_88]
                mov     [rsp+0A8h+var_78], rdi
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_0]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FEBF0
sub_1404FEBF0   endp

algn_1404FEC65:                         ; DATA XREF: .pdata:00000001400F21A8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1404FEC70   proc near               ; DATA XREF: .rdata:0000000140008790↑o
                                        ; .pdata:00000001400F21B4↑o

var_F8          = dword ptr -0F8h
var_E8          = qword ptr -0E8h
var_B0          = qword ptr -0B0h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_28          = qword ptr -28h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_28], rax
                mov     rbx, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     rbp, rcx
                lea     rcx, [rsp+118h+var_98]
                mov     rsi, r9
                lea     r8d, [rdx+68h]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+118h+var_E8]
                lea     r8d, [rdx+48h]
                call    memset
                mov     rax, rbx
                lea     rcx, [rdi+0FFFh]
                and     eax, 0FFFh
                add     rcx, rax
                and     rcx, 0FFFFFFFFFFFFF000h
                cmp     rcx, 1FA000h
                jbe     short loc_1404FECE9
                mov     eax, 0C000000Dh
                jmp     short loc_1404FED54
; ---------------------------------------------------------------------------

loc_1404FECE9:                          ; CODE XREF: sub_1404FEC70+70↑j
                and     [rsp+118h+var_F8], 0
                lea     rcx, [rsp+118h+var_E8]
                xor     r9d, r9d
                mov     r8d, edi
                mov     rdx, rbx
                call    sub_1403940A8
                test    eax, eax
                js      short loc_1404FED54
                mov     rax, [rsp+118h+var_E8]
                lea     r9, [rsp+118h+var_98]
                mov     [rsp+118h+var_88], rax
                mov     edx, 20h ; ' '
                mov     rax, [rsp+118h+var_B0]
                xor     r8d, r8d
                mov     cl, 2
                mov     [rsp+118h+var_80], rax
                mov     [rsp+118h+var_90], rbp
                mov     [rsp+118h+var_78], rsi
                call    sub_14034DB1C
                lea     rcx, [rsp+118h+var_E8]
                mov     ebx, eax
                call    sub_140394054
                mov     eax, ebx

loc_1404FED54:                          ; CODE XREF: sub_1404FEC70+77↑j
                                        ; sub_1404FEC70+93↑j
                mov     rcx, [rsp+118h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+118h+arg_0]
                add     rsp, 100h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FEC70
sub_1404FEC70   endp

algn_1404FED78:                         ; DATA XREF: .pdata:00000001400F21B4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1404FED80   proc near               ; DATA XREF: .rdata:0000000140008788↑o
                                        ; .pdata:00000001400F21C0↑o

var_128         = byte ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_B8          = qword ptr -0B8h
var_B0          = word ptr -0B0h
var_AE          = word ptr -0AEh
var_AC          = xmmword ptr -0ACh
var_9C          = dword ptr -9Ch
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = word ptr -78h
var_76          = word ptr -76h
var_74          = xmmword ptr -74h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 118h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+148h+var_48], rax
                mov     rbx, r9
                mov     r14, r8
                mov     rsi, rdx
                mov     rdi, rcx
                xor     edx, edx
                lea     r8d, [rdx+68h]
                lea     rcx, [rsp+148h+var_128]
                call    memset
                xorps   xmm0, xmm0
                movdqu  [rsp+148h+var_74], xmm0
                xor     r15d, r15d
                mov     [rsp+148h+var_64], r15d
                mov     [rsp+148h+var_50], r15
                movdqu  [rsp+148h+var_AC], xmm0
                mov     [rsp+148h+var_9C], r15d
                mov     [rsp+148h+var_88], r15
                mov     ecx, [rdi+2Ch]
                add     ecx, [rdi+28h]
                mov     eax, [rdi+20h]
                mov     r12d, 0FFFh
                and     rax, r12
                add     rcx, r12
                add     rax, rcx
                shr     rax, 0Ch
                lea     r8, ds:30h[rax*8]
                mov     edx, edi
                mov     ecx, edx
                and     rcx, r12
                add     rcx, r12
                add     rcx, r8
                shr     rcx, 0Ch
                cmp     rcx, 1
                ja      loc_1404FEF8C
                mov     [rsp+148h+var_80], r15
                add     cx, 6
                shl     cx, 3
                mov     [rsp+148h+var_78], cx
                mov     [rsp+148h+var_76], r15w
                mov     rax, rdi
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rsp+148h+var_60], rax
                and     edx, r12d
                mov     [rsp+148h+var_54], edx
                mov     [rsp+148h+var_58], r8d

loc_1404FEE7A:                          ; DATA XREF: .rdata:00000001400B6938↑o
;   __try { // __except at loc_1404FEF8A
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+148h+var_80]
                call    sub_140221A30
                nop
;   } // starts at 1404FEE7A

loc_1404FEE8D:                          ; DATA XREF: .rdata:00000001400B6938↑o
                mov     ecx, [rbx+2Ch]
                add     ecx, [rbx+28h]
                mov     eax, [rbx+20h]
                and     rax, r12
                add     rax, 0FFFh
                add     rcx, rax
                shr     rcx, 0Ch
                lea     r8, ds:30h[rcx*8]
                mov     edx, ebx
                mov     ecx, edx
                and     rcx, r12
                add     rcx, 0FFFh
                add     rcx, r8
                shr     rcx, 0Ch
                cmp     rcx, 1
                ja      loc_1404FEF8C
                mov     [rsp+148h+var_B8], r15
                add     cx, 6
                shl     cx, 3
                mov     [rsp+148h+var_B0], cx
                mov     [rsp+148h+var_AE], r15w
                mov     rax, rbx
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rsp+148h+var_98], rax
                and     edx, r12d
                mov     [rsp+148h+var_8C], edx
                mov     [rsp+148h+var_90], r8d

loc_1404FEF11:                          ; DATA XREF: .rdata:00000001400B6948↑o
;   __try { // __except at loc_1404FEF77
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+148h+var_B8]
                call    sub_140221A30
                nop
;   } // starts at 1404FEF11

loc_1404FEF24:                          ; DATA XREF: .rdata:00000001400B6948↑o
                mov     [rsp+148h+var_120], rdi
                mov     rax, [rsp+148h+var_50]
                mov     [rsp+148h+var_118], rax
                mov     [rsp+148h+var_110], rbx
                mov     rax, [rsp+148h+var_88]
                mov     [rsp+148h+var_108], rax
                mov     [rsp+148h+var_100], rsi
                mov     [rsp+148h+var_F8], r14
                mov     edx, 1Fh
                lea     r9, [rsp+148h+var_128]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     ebx, eax
                lea     rcx, [rsp+148h+var_B8]
                call    MmUnlockPages
                jmp     short loc_1404FEF79
; ---------------------------------------------------------------------------

loc_1404FEF77:                          ; DATA XREF: .rdata:00000001400B6948↑o
;   __except(1) // owned by 1404FEF11
                mov     ebx, eax

loc_1404FEF79:                          ; CODE XREF: sub_1404FED80+1F5↑j
                lea     rcx, [rsp+148h+var_80]
                call    MmUnlockPages
                mov     eax, ebx
                jmp     short loc_1404FEF91
; ---------------------------------------------------------------------------

loc_1404FEF8A:                          ; DATA XREF: .rdata:00000001400B6938↑o
;   __except(1) // owned by 1404FEE7A
                jmp     short loc_1404FEF91
; ---------------------------------------------------------------------------

loc_1404FEF8C:                          ; CODE XREF: sub_1404FED80+B0↑j
                                        ; sub_1404FED80+147↑j
                mov     eax, 0C000000Dh

loc_1404FEF91:                          ; CODE XREF: sub_1404FED80+208↑j
                                        ; sub_1404FED80:loc_1404FEF8A↑j
                mov     rcx, [rsp+148h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 118h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FED80
sub_1404FED80   endp

algn_1404FEFB3:                         ; DATA XREF: .pdata:00000001400F21C0↑o
                align 20h
; Exported entry 705. InbvAcquireDisplayOwnership

; =============== S U B R O U T I N E =======================================


