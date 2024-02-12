ntoskrnl_21     proc near               ; CODE XREF: sub_1405B2F98+4B↑p
                                        ; sub_14094ECD0+A3↓p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E7DD5 SIZE 00000040 BYTES
; FUNCTION CHUNK AT 0000000140823C3E SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     rdi, rdx
                mov     rsi, rcx
                xor     r14d, r14d
                test    rdx, rdx
                jz      loc_140823C3E

loc_1406E8A04:                          ; DATA XREF: .rdata:000000014007C1CC↑o
;   __try { // __finally(loc_1407E7DD5)
                lea     rbx, [rcx+0B7B0h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                mov     rax, [rsi+0B7A8h]
                test    rax, rax
                jz      short loc_1406E8A58
                mov     rax, [rax]
                mov     [rsp+48h+arg_8], rax
                lea     rcx, [rsp+48h+arg_8]
                call    sub_1406E8A98
                mov     [rsp+48h+var_28], eax
                test    eax, eax
                js      short loc_1406E8A60
                mov     rax, [rsp+48h+arg_8]
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rdi], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rdi+10h], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rdi+20h], xmm0
                jmp     short loc_1406E8A60
; ---------------------------------------------------------------------------

loc_1406E8A58:                          ; CODE XREF: ntoskrnl_21+3F↑j
                mov     [rsp+48h+var_28], 0C0000225h
;   } // starts at 1406E8A04

loc_1406E8A60:                          ; CODE XREF: ntoskrnl_21+59↑j
                                        ; ntoskrnl_21+76↑j
                                        ; DATA XREF: ...
                mov     eax, 11h
                lock cmpxchg [rbx], r14
                jnz     short loc_1406E8A87

loc_1406E8A6C:                          ; CODE XREF: ntoskrnl_21+AF↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     eax, [rsp+48h+var_28]

loc_1406E8A78:                          ; CODE XREF: ntoskrnl_21+13B263↓j
                mov     rbx, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E8A87:                          ; CODE XREF: ntoskrnl_21+8A↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_1406E8A6C
; } // starts at 1406E89E0
ntoskrnl_21     endp

; ---------------------------------------------------------------------------
algn_1406E8A91:                         ; DATA XREF: .rdata:000000014007C1E0↑o
                                        ; .pdata:00000001401046AC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406E8A98   proc near               ; CODE XREF: sub_1405B2EBC+8E↑p
                                        ; ntoskrnl_20+79↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, rcx
                test    rcx, rcx
                jz      short loc_1406E8AD4
                mov     rcx, [rcx]
                mov     [rsp+28h+arg_0], rcx
                lea     rcx, [rsp+28h+arg_0]
                call    sub_1406E8AE4
                mov     rcx, [rsp+28h+arg_0]
                mov     [rdi], rcx

loc_1406E8AC6:                          ; CODE XREF: sub_1406E8A98+41↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406E8AD4:                          ; CODE XREF: sub_1406E8A98+12↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1406E8AC6
sub_1406E8A98   endp

; ---------------------------------------------------------------------------
byte_1406E8ADB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401046B8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406E8AE4   proc near               ; CODE XREF: sub_1406E8A98+21↑p
                                        ; DATA XREF: .pdata:00000001401046C4↑o

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     rax, [rcx]
                lea     r14, unk_140D2DB6E
                mov     rdx, cs:qword_140D2D300
                lea     rsi, unk_140D2DB4E
                movzx   edi, al
                lea     r13, off_140D2D510
                mov     [rbp+var_10], rax
                mov     r15d, 1Eh
                movzx   eax, byte ptr [rbp+var_10+1]
                movzx   ebx, byte ptr [rbp+var_10+4]
                shl     edi, 8
                or      edi, eax
                shl     ebx, 8
                movzx   eax, byte ptr [rbp+var_10+2]
                lea     r12d, [r15-0Eh]
                shl     edi, 8
                or      edi, eax
                mov     [rbp+var_20], rcx
                movzx   eax, byte ptr [rbp+var_10+3]
                shl     edi, 8
                or      edi, eax
                mov     [rbp+var_18], rdx
                movzx   eax, byte ptr [rbp+var_10+5]
                or      ebx, eax
                movzx   eax, byte ptr [rbp+var_10+6]
                shl     ebx, 8
                or      ebx, eax
                movzx   eax, byte ptr [rbp+var_10+7]
                shl     ebx, 8
                or      ebx, eax

loc_1406E8B83:                          ; CODE XREF: sub_1406E8AE4+C4↓j
                movzx   eax, byte ptr [r14+1]
                cmp     al, 1Fh
                jb      loc_1406E8C49

loc_1406E8B90:                          ; CODE XREF: sub_1406E8AE4+199↓j
                movzx   eax, byte ptr [r14]
                cmp     al, 1Fh
                jb      short loc_1406E8C11

loc_1406E8B98:                          ; CODE XREF: sub_1406E8AE4+160↓j
                sub     r15, 2
                sub     r14, 2
                sub     rsi, 8
                sub     r12, 1
                jnz     short loc_1406E8B83
                mov     r13, [rbp+var_20]
                not     ebx
                mov     byte ptr [rbp+var_10+3], dil
                ror     edi, 8
                mov     byte ptr [rbp+var_10+7], bl
                ror     ebx, 8
                mov     byte ptr [rbp+var_10+2], dil
                ror     edi, 8
                mov     byte ptr [rbp+var_10+6], bl
                ror     ebx, 8
                mov     byte ptr [rbp+var_10+1], dil
                ror     edi, 8
                mov     byte ptr [rbp+var_10+5], bl
                ror     ebx, 8
                mov     byte ptr [rbp+var_10+4], bl
                mov     byte ptr [rbp+var_10], dil
                mov     rax, [rbp+var_10]
                mov     [r13+0], rax
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+60h+var_s0]
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
; ---------------------------------------------------------------------------

loc_1406E8C11:                          ; CODE XREF: sub_1406E8AE4+B2↑j
                movzx   ecx, byte ptr [rsi-3]
                lea     r10, [rbp+var_18]
                movzx   r9d, byte ptr [rsi-4]
                movzx   r8d, byte ptr [rsi-5]
                movzx   edx, byte ptr [rsi-6]
                mov     rax, [r13+rax*8+0]
                mov     [rsp+60h+var_30], ebx
                mov     [rsp+60h+var_38], r10
                mov     [rsp+60h+var_40], rcx
                mov     rcx, r15
                call    sub_1404079D0
                xor     edi, eax
                jmp     loc_1406E8B98
; ---------------------------------------------------------------------------

loc_1406E8C49:                          ; CODE XREF: sub_1406E8AE4+A6↑j
                movzx   r10d, byte ptr [rsi+1]
                lea     r11, [rbp+var_18]
                movzx   r9d, byte ptr [rsi]
                lea     rcx, [r15+1]
                movzx   r8d, byte ptr [rsi-1]
                movzx   edx, byte ptr [rsi-2]
                mov     rax, [r13+rax*8+0]
                mov     [rsp+60h+var_30], edi
                mov     [rsp+60h+var_38], r11
                mov     [rsp+60h+var_40], r10
                call    sub_1404079D0
                xor     ebx, eax
                jmp     loc_1406E8B90
; } // starts at 1406E8AE4
sub_1406E8AE4   endp

; ---------------------------------------------------------------------------
algn_1406E8C82:                         ; DATA XREF: .pdata:00000001401046C4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406E8C90   proc near               ; DATA XREF: .pdata:00000001401046D0↑o
                                        ; PAGEDATA:0000000140D2D5D8↓o

arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

                mov     r9, rdx
                mov     r10, rcx
                mov     r11, r8
                mov     rax, 8888888888888889h
                mov     r8, [rsp+arg_28]
                and     r10d, 3
                mul     rdx
                shr     rdx, 3
                imul    eax, edx, 0Fh
                sub     r9d, eax
                mov     rax, 0AAAAAAAAAAAAAAABh
                mul     r11
                lea     ecx, [r9+1]
                mov     r9d, [rsp+arg_30]
                ror     r9d, cl
                movzx   ecx, word ptr [r8+r10*2]
                sub     r9d, ecx
                shr     rdx, 1
                add     rdx, r10
                lea     rcx, [r11+1]
                add     rcx, rdx
                and     ecx, 3
                movzx   eax, word ptr [r8+rcx*2]
                imul    eax, r9d
                retn
sub_1406E8C90   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1406E8CF5:                         ; DATA XREF: .pdata:00000001401046D0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406E8D00   proc near               ; DATA XREF: .rdata:000000014007C314↑o
                                        ; .pdata:00000001401046DC↑o ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = byte ptr -8

; FUNCTION CHUNK AT 0000000140823C48 SIZE 00000033 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 70h
                mov     r14, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     r10, rcx
                xor     ebx, ebx
                mov     [r11-20h], rbx
                mov     [r11-28h], rbx
                mov     [r11-30h], rbx
                xorps   xmm0, xmm0
                movups  [rsp+78h+var_18], xmm0
                mov     rax, gs:188h
                mov     r9b, [rax+232h]
                test    r9b, r9b
                jz      loc_140823C48

loc_1406E8D50:                          ; DATA XREF: .rdata:000000014007C2F0↑o
;   __try { // __except at loc_1406E8D98
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     rsi, rdx
                cmovb   rcx, rsi
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     rcx, rdx
                cmp     r8, rdx
                cmovb   rcx, r8
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     rcx, rdx
                cmp     r14, rdx
                cmovb   rcx, r14
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rax, [rsi]
                mov     [r11-28h], rax
                mov     rcx, [r8]
                mov     [r11-30h], rcx
                jmp     short loc_1406E8D9D
;   } // starts at 1406E8D50
; ---------------------------------------------------------------------------

loc_1406E8D98:                          ; DATA XREF: .rdata:000000014007C2F0↑o
;   __except(1) // owned by 1406E8D50
                jmp     loc_1406E8E43
; ---------------------------------------------------------------------------

loc_1406E8D9D:                          ; CODE XREF: sub_1406E8D00+96↑j
                                        ; sub_1406E8D00+13AF62↓j
                mov     r8, 7FFFFFFEFFFFh
                cmp     rax, r8
                ja      loc_140823C67
                sub     rdx, rax
                cmp     rdx, rcx
                jb      loc_140823C71
                mov     [rsp+78h+var_48], rbx
                lea     rax, [rsp+78h+var_20]
                mov     [rsp+78h+var_50], rax
                mov     [rsp+78h+var_58], 6C466D4Dh
                mov     r8, cs:PsProcessType
                mov     edx, 8
                mov     rcx, r10
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      short loc_1406E8E43
                lea     r9, [rsp+78h+var_18]
                lea     r8, [rsp+78h+var_30]
                lea     rdx, [rsp+78h+var_28]
                mov     rcx, [rsp+78h+var_20]
                call    sub_1406E8E64
                mov     ebx, eax
                mov     [rsp+78h+var_38], eax
                mov     edx, 6C466D4Dh
                mov     rcx, [rsp+78h+var_20]
                call    ObfDereferenceObjectWithTag
                nop

loc_1406E8E1A:                          ; DATA XREF: .rdata:000000014007C300↑o
;   __try { // __except at loc_1406E8E3D
                mov     rcx, [rsp+78h+var_30]
                mov     [rdi], rcx
                mov     rcx, [rsp+78h+var_28]
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     [rsi], rcx
                movups  xmm0, [rsp+78h+var_18]
                movdqu  xmmword ptr [r14], xmm0
                jmp     short loc_1406E8E41
;   } // starts at 1406E8E1A
; ---------------------------------------------------------------------------

loc_1406E8E3D:                          ; DATA XREF: .rdata:000000014007C300↑o
;   __except(1) // owned by 1406E8E1A
                mov     ebx, [rsp+78h+var_38]

loc_1406E8E41:                          ; CODE XREF: sub_1406E8D00+13B↑j
                mov     eax, ebx

loc_1406E8E43:                          ; CODE XREF: sub_1406E8D00:loc_1406E8D98↑j
                                        ; sub_1406E8D00+E9↑j ...
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E8D00
sub_1406E8D00   endp

byte_1406E8E5B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007C314↑o
                                        ; .pdata:00000001401046DC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406E8E64   proc near               ; CODE XREF: sub_1406E8D00+FF↑p
                                        ; sub_14095A0C0+BF↓p
                                        ; DATA XREF: ...

var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C0          = byte ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = byte ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h

; FUNCTION CHUNK AT 0000000140823C7C SIZE 00000085 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0C8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_50], rax
                mov     r12, [rdx]
                xor     edi, edi
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_98], r9
                movups  [rbp+57h+var_80], xmm0
                mov     r13d, 0FFFh
                mov     r15, r8
                lea     r14, [r12-1]
                mov     [rbp+57h+var_90], r8
                add     r14, [r8]
                lea     esi, [rdi+2]
                and     r12, 0FFFFFFFFFFFFF000h
                mov     [rbp+57h+var_A0], rdi
                mov     [rdx], r12
                or      r14, r13
                movups  [rbp+57h+var_70], xmm0
                mov     [rbp+57h+var_B8], rdi
                mov     ebx, edi
                movups  [rbp+57h+var_60], xmm0
                mov     rax, gs:188h
                mov     dword ptr [rbp+57h+var_B0], edi
                mov     [rbp+57h+var_A8], rax
                cmp     [rax+0B8h], rcx
                jnz     loc_140823C7C

loc_1406E8EEF:                          ; CODE XREF: sub_1406E8E64+13AE26↓j
                mov     [rbp+57h+var_BC], edi
                call    KeAreAllApcsDisabled
                lea     r8, [rbp+57h+var_B0]
                mov     [rbp+57h+var_C0], al
                mov     edx, esi
                mov     rcx, r12
                call    sub_140232930
                mov     rsi, rax
                test    rax, rax
                jz      loc_140823C8F
                movzx   ecx, byte ptr [rax+21h]
                mov     eax, [rax+1Ch]
                shl     rcx, 20h
                or      rcx, rax
                cmp     [r15], rdi
                jz      loc_1406E90C2

loc_1406E8F2B:                          ; CODE XREF: sub_1406E8E64+26B↓j
                mov     edx, [rsi+30h]
                bt      edx, 14h
                jb      loc_1406E9130
                mov     r13, r14
                shr     r13, 0Ch
                cmp     r13, rcx
                ja      loc_1406E9130
                mov     rax, [rsi+48h]
                mov     r15, [rax]
                mov     [rbp+57h+var_B0], r15
                cmp     [r15+40h], rdi
                jz      loc_1406E90D4
                and     dl, 70h
                cmp     dl, 20h ; ' '
                jz      loc_1406E90D4
                mov     rcx, [rbp+57h+var_90]
                mov     rax, r14
                sub     rax, r12
                inc     rax
                mov     [rcx], rax
                cmp     [rbp+57h+var_C0], dil
                jnz     short loc_1406E8F94
                test    dword ptr [r15+38h], 20000h
                mov     eax, edi
                mov     ecx, 4
                cmovnz  eax, ecx
                mov     [rbp+57h+var_BC], eax

loc_1406E8F94:                          ; CODE XREF: sub_1406E8E64+119↑j
                mov     r8, [rbp+57h+var_A8]
                mov     rdx, r14
                mov     rcx, r12
                call    sub_14032B4DC
                lea     r9, [rbp+57h+var_B8]
                xor     r8d, r8d
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_140283270
                shr     r12, 0Ch
                lea     r9, [rbp+57h+var_A0]
                mov     rdx, r12
                xor     r8d, r8d
                mov     rcx, rsi
                call    sub_140283270
                mov     r14, [rbp+57h+var_B8]
                mov     r12, [rbp+57h+var_A0]
                mov     [rbp+57h+var_A8], rax
                test    r14, r14
                jz      loc_1406E90EE
                lea     r9, [rbp+57h+var_88]
                xor     r8d, r8d
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_140283270
                mov     [rbp+57h+var_B8], rax

loc_1406E8FF6:                          ; CODE XREF: sub_1406E8E64+2C7↓j
                mov     r8, r14
                mov     rdx, r12
                mov     rcx, r15
                call    sub_14032B428
                test    eax, eax
                jz      loc_140823CBF
                mov     rcx, rsi
                call    sub_140267470
                cmp     ebx, 2
                jnb     loc_140823CC9

loc_1406E901D:                          ; CODE XREF: sub_1406E8E64+13AE71↓j
                mov     rcx, r15
                mov     ebx, edi
                call    sub_14026F920
                mov     r13d, [rbp+57h+var_BC]
                mov     rsi, rax
                mov     r15, [rbp+57h+var_98]
                cmp     ebx, 0C0000054h
                jz      loc_140823CDA

loc_1406E903E:                          ; CODE XREF: sub_1406E8E64+13AE87↓j
                mov     rcx, rsi
                call    sub_14068F65C
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406E9084
                mov     rdx, [rbp+57h+var_B8]
                mov     r9, r14
                mov     rcx, [rbp+57h+var_A8]
                mov     r8, r12
                mov     [rsp+100h+var_D0], r15
                mov     [rsp+100h+var_D8], r13d
                mov     [rsp+100h+var_E0], rdi
                call    sub_140231440
                mov     rcx, rsi
                mov     ebx, eax
                call    sub_14068F47C
                cmp     ebx, 0C0000054h
                jz      loc_140823CDA

loc_1406E9084:                          ; CODE XREF: sub_1406E8E64+1E6↑j
                mov     rcx, [rbp+57h+var_B0]
                mov     rdx, rsi
                call    sub_1402D4998
                mov     rcx, [rbp+57h+var_B0]
                mov     r8, r14
                mov     rdx, r12
                call    sub_1402671C4
                mov     eax, ebx

loc_1406E90A1:                          ; CODE XREF: sub_1406E8E64+288↓j
                mov     rcx, [rbp+57h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0C8h
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

loc_1406E90C2:                          ; CODE XREF: sub_1406E8E64+C1↑j
                mov     r14, rcx
                shl     r14, 0Ch
                or      r14, r13
                or      ebx, 1
                jmp     loc_1406E8F2B
; ---------------------------------------------------------------------------

loc_1406E90D4:                          ; CODE XREF: sub_1406E8E64+F3↑j
                                        ; sub_1406E8E64+FF↑j
                mov     edi, 0C0000088h

loc_1406E90D9:                          ; CODE XREF: sub_1406E8E64+2D1↓j
                                        ; sub_1406E8E64+13AE56↓j ...
                mov     rcx, rsi
                call    sub_140267470

loc_1406E90E1:                          ; CODE XREF: sub_1406E8E64+13AE34↓j
                                        ; sub_1406E8E64+13AE3F↓j
                cmp     ebx, 2
                jnb     loc_140823CF0

loc_1406E90EA:                          ; CODE XREF: sub_1406E8E64+13AE98↓j
                mov     eax, edi
                jmp     short loc_1406E90A1
; ---------------------------------------------------------------------------

loc_1406E90EE:                          ; CODE XREF: sub_1406E8E64+176↑j
                mov     eax, ebx
                and     eax, 1
                test    r12, r12
                jz      loc_140823CA8
                test    eax, eax
                jz      short loc_1406E9130
                xor     edx, edx
                mov     rcx, r15
                call    sub_14032BB9C
                mov     r14, rax
                mov     eax, [rax+34h]
                mov     r13d, [r14+2Ch]
                and     eax, 3FFFFFFFh
                sub     r13, rax
                mov     rax, [r14+8]
                dec     r13
                lea     r13, [rax+r13*8]
                mov     [rbp+57h+var_B8], r13
                jmp     loc_1406E8FF6
; ---------------------------------------------------------------------------

loc_1406E9130:                          ; CODE XREF: sub_1406E8E64+CE↑j
                                        ; sub_1406E8E64+DE↑j ...
                mov     edi, 0C0000019h
                jmp     short loc_1406E90D9
; } // starts at 1406E8E64
sub_1406E8E64   endp

; ---------------------------------------------------------------------------
algn_1406E9137:                         ; DATA XREF: .rdata:000000014007C348↑o
                                        ; .pdata:00000001401046E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406E9140   proc near               ; DATA XREF: .rdata:000000014007C444↑o
                                        ; .pdata:00000001401046F4↑o ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140823D02 SIZE 00000038 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rdx
                mov     r10, rcx
                xor     edi, edi
                mov     [rsp+48h+arg_18], rdi
                mov     rax, gs:188h
                mov     r9b, [rax+232h]
                test    r9b, r9b
                jnz     loc_140823D02
                mov     rax, [rdx]
                mov     [rsp+48h+arg_18], rax

loc_1406E9178:                          ; CODE XREF: sub_1406E9140+13ABF0↓j
                mov     r8, cs:MmSectionObjectType
                mov     [rsp+48h+var_18], rdi
                mov     [rsp+48h+var_20], rdi
                lea     rax, [rsp+48h+var_18]
                mov     [rsp+48h+var_28], rax
                mov     edx, 10h
                mov     rcx, r10
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      short loc_1406E91D7
                xor     r8d, r8d
                lea     rdx, [rsp+48h+arg_18]
                mov     rcx, [rsp+48h+var_18]
                call    sub_1406E91EC
                mov     edi, eax
                mov     [rsp+48h+arg_10], eax
                mov     rcx, [rsp+48h+var_18]
                call    PsDereferenceSiloContext
                nop

loc_1406E91C7:                          ; DATA XREF: .rdata:000000014007C420↑o
;   __try { // __except at loc_1406E91D1
                mov     rcx, [rsp+48h+arg_18]
                mov     [rbx], rcx
                jmp     short loc_1406E91D5
;   } // starts at 1406E91C7
; ---------------------------------------------------------------------------

loc_1406E91D1:                          ; DATA XREF: .rdata:000000014007C420↑o
;   __except(1) // owned by 1406E91C7
                mov     edi, [rsp+48h+arg_10]

loc_1406E91D5:                          ; CODE XREF: sub_1406E9140+8F↑j
                mov     eax, edi

loc_1406E91D7:                          ; CODE XREF: sub_1406E9140+62↑j
                                        ; sub_1406E9140:loc_140823D35↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E9140
sub_1406E9140   endp

byte_1406E91E3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007C444↑o
                                        ; .pdata:00000001401046F4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406E91EC   proc near               ; CODE XREF: CcSetFileSizesEx+27F↑p
                                        ; sub_14061D310+188↑p ...

var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140823D3A SIZE 00000077 BYTES

                mov     [rsp-38h+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+arg_0], 0
                xorps   xmm0, xmm0
                xor     eax, eax
                mov     esi, r8d
                movups  [rbp+var_30], xmm0
                mov     [rbp+var_10], rax
                mov     rdi, rdx
                movups  [rbp+var_20], xmm0
                mov     r13, rcx
                call    sub_140267410
                mov     rbx, rax
                test    dword ptr [rax+38h], 420h
                jnz     loc_140823DA7
                cmp     qword ptr [rax+40h], 0
                jz      loc_140823DA7
                mov     r12, [rdi]
                mov     rax, 3FFFFFFFFFF000h
                cmp     r12, rax
                ja      loc_140823D3A
                mov     r14, [rbx]
                lea     rdx, [rbp+var_30]
                add     r12, 0FFFh
                mov     dword ptr [rbp+var_30+8], 10h
                mov     rcx, rbx
                shr     r12, 0Ch
                call    sub_14032BA8C
                test    dword ptr [rbx+38h], 8000h
                jz      loc_1406E949F

loc_1406E9286:                          ; CODE XREF: sub_1406E91EC+2BA↓j
                test    esi, esi
                jz      loc_1406E9344

loc_1406E928E:                          ; CODE XREF: sub_1406E91EC+1F6↓j
                xor     esi, esi
                xor     edx, edx
                and     [rbp+arg_18], rsi
                mov     rcx, rbx
                call    sub_14032BB9C
                mov     ecx, [r14+8]
                mov     r15, rax
                movzx   eax, word ptr [r14+0Ch]
                and     eax, 3FFh
                shl     rax, 20h
                or      rax, rcx
                cmp     r12, rax
                jbe     loc_1406E93E7
                mov     ecx, [r15+34h]
                sub     r12, rax
                mov     eax, ecx
                mov     edx, 3FFFFFFFh
                and     rax, rdx
                cmp     r12, rax
                jbe     loc_1406E947C
                and     ecx, edx
                mov     rdx, rdi
                mov     eax, ecx
                mov     r8d, ecx
                sub     r12, rax
                mov     rcx, r15
                lea     rax, [rbp+arg_18]
                mov     r9, r12
                mov     [rsp+60h+var_40], rax
                call    sub_1406E94C8

loc_1406E92FA:                          ; CODE XREF: sub_1406E91EC+2AE↓j
                mov     esi, eax
                test    eax, eax
                js      short loc_1406E9310
                mov     rax, [rdi]
                xor     esi, esi
                xchg    rax, [r14+18h]
                mov     rcx, [rdi]
                mov     [r13+30h], rcx

loc_1406E9310:                          ; CODE XREF: sub_1406E91EC+112↑j
                                        ; sub_1406E91EC+215↓j ...
                lea     rdx, [rbp+var_30]
                mov     rcx, rbx
                call    sub_14032B9D4
                mov     rcx, [rbp+arg_18]
                test    rcx, rcx
                jnz     loc_140823D9B

loc_1406E9329:                          ; CODE XREF: sub_1406E91EC+13AB8F↓j
                                        ; sub_1406E91EC+13ABB6↓j
                mov     eax, esi

loc_1406E932B:                          ; CODE XREF: sub_1406E91EC+13AB53↓j
                                        ; sub_1406E91EC+13AB69↓j ...
                mov     rbx, [rsp+60h+arg_8]
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
                align 4

loc_1406E9344:                          ; CODE XREF: sub_1406E91EC+9C↑j
                lea     rdx, [rbp+var_30]
                mov     rcx, rbx
                call    sub_14032B9D4
                mov     rcx, rbx
                call    sub_14026F920
                lea     rdx, [rbp+var_30]
                mov     dword ptr [rbp+var_30+8], 20h ; ' '
                mov     rcx, rbx
                mov     r15, rax
                call    sub_14032BA8C
                lea     rdx, [rbp+arg_0]
                mov     rcx, r15
                call    FsRtlGetFileSize
                mov     esi, eax
                test    eax, eax
                js      loc_140823D63
                mov     rcx, [rdi]
                cmp     rcx, [rbp+arg_0]
                jbe     short loc_1406E93B1
                mov     eax, [r13+3Ch]
                test    al, 44h
                jz      loc_140823D5A
                mov     [rbp+arg_0], rcx
                lea     rdx, [rbp+arg_0]
                mov     rcx, r15
                call    sub_1406E98C0
                test    eax, eax
                js      loc_140823D61

loc_1406E93B1:                          ; CODE XREF: sub_1406E91EC+19F↑j
                cmp     qword ptr [r14+20h], 0
                jnz     short loc_1406E941E

loc_1406E93B8:                          ; CODE XREF: sub_1406E91EC+28B↓j
                lea     rdx, [rbp+var_30]
                mov     rcx, rbx
                call    sub_14032B9D4
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_1402D4998
                lea     rdx, [rbp+var_30]
                mov     dword ptr [rbp+var_30+8], 10h
                mov     rcx, rbx
                call    sub_14032BA8C
                jmp     loc_1406E928E
; ---------------------------------------------------------------------------

loc_1406E93E7:                          ; CODE XREF: sub_1406E91EC+CD↑j
                mov     rcx, [rdi]
                mov     [r13+30h], rcx
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     rax, rcx
                lock cmpxchg [r14+18h], rcx
                mov     rcx, [rdi]
                cmp     rax, rcx
                jnb     loc_1406E9310
                xchg    rcx, [r14+18h]
                mov     rcx, r15
                xor     r8d, r8d
                mov     rdx, rdi
                call    sub_14032BDC8
                jmp     loc_1406E9310
; ---------------------------------------------------------------------------

loc_1406E941E:                          ; CODE XREF: sub_1406E91EC+1CA↑j
                mov     rsi, gs:188h
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [rsi+1E6h], ax
                xor     edx, edx
                lea     rcx, qword_140C4C810
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [r14+20h]
                test    rcx, rcx
                jz      short loc_1406E9450
                mov     rax, [rbp+arg_0]
                mov     [rcx], rax

loc_1406E9450:                          ; CODE XREF: sub_1406E91EC+25B↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C4C810, rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406E94B1

loc_1406E9463:                          ; CODE XREF: sub_1406E91EC+2D1↓j
                lea     rcx, qword_140C4C810
                call    sub_140243660
                mov     rcx, rsi
                call    sub_140245770
                jmp     loc_1406E93B8
; ---------------------------------------------------------------------------

loc_1406E947C:                          ; CODE XREF: sub_1406E91EC+E7↑j
                mov     rcx, rbx
                call    sub_1402851C0
                test    eax, eax
                jnz     loc_140823D80

loc_1406E948C:                          ; CODE XREF: sub_1406E91EC+13AB98↓j
                                        ; sub_1406E91EC+13ABAA↓j
                mov     r8d, r12d
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_14032BDC8
                jmp     loc_1406E92FA
; ---------------------------------------------------------------------------

loc_1406E949F:                          ; CODE XREF: sub_1406E91EC+94↑j
                mov     rax, [r13+30h]
                cmp     [rdi], rax
                ja      loc_1406E9286
                jmp     loc_140823D44
; ---------------------------------------------------------------------------

loc_1406E94B1:                          ; CODE XREF: sub_1406E91EC+275↑j
                lea     rcx, qword_140C4C810
                call    ExfTryToWakePushLock
                jmp     short loc_1406E9463
sub_1406E91EC   endp

; ---------------------------------------------------------------------------
byte_1406E94BF  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007C470↑o
                                        ; .pdata:0000000140104700↑o

; =============== S U B R O U T I N E =======================================


sub_1406E94C8   proc near               ; CODE XREF: sub_1406E91EC+109↑p
                                        ; DATA XREF: .rdata:000000014007C51C↑o ...

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = byte ptr -0D8h
var_C8          = qword ptr -0C8h
var_A4          = dword ptr -0A4h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140823DB2 SIZE 000001A5 BYTES

                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0D8h
                mov     r10, [rcx]
                lea     r14, [rsp+118h+var_D8]
                mov     rax, [rsp+118h+arg_20]
                mov     r13, rcx
                lea     rcx, [rsp+118h+var_D8]
                shl     r9, 3
                add     r9, 0FFFh
                mov     [rsp+118h+var_F8], r10
                and     r9, 0FFFFFFFFFFFFF000h
                mov     r12d, r8d
                and     qword ptr [rax], 0
                mov     r8d, 80h
                mov     rax, [r10]
                movups  xmm0, xmmword ptr [r13+0]
                mov     [rsp+118h+var_E0], rax
                movups  xmm1, xmmword ptr [r13+10h]
                mov     eax, [r10+38h]
                movups  xmmword ptr [rcx], xmm0
                and     eax, 40000000h
                mov     [rsp+118h+var_F0], r9
                movups  xmm0, xmmword ptr [r13+20h]
                neg     eax
                movups  xmmword ptr [rcx+10h], xmm1
                sbb     rdx, rdx
                mov     eax, 100000h
                movups  xmm1, xmmword ptr [r13+30h]
                and     rdx, rax
                xor     ebp, ebp
                movups  xmmword ptr [rcx+20h], xmm0
                add     rdx, rax
                xor     esi, esi
                movups  xmm0, xmmword ptr [r13+40h]
                xor     r15d, r15d
                mov     [rsp+118h+var_E8], rdx
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm1, xmmword ptr [r13+50h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm0, xmmword ptr [r13+60h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm1, xmmword ptr [r13+r8+0]
                movups  xmmword ptr [rcx+60h], xmm0
                movups  xmm0, xmmword ptr [r13+70h]
                movups  xmmword ptr [rcx+r8-10h], xmm0
                movups  xmmword ptr [rcx+r8], xmm1
                test    r12d, r12d
                jnz     loc_1406E9870

loc_1406E95B5:                          ; CODE XREF: sub_1406E94C8+3BE↓j
                xor     ebx, ebx

loc_1406E95B7:                          ; CODE XREF: sub_1406E94C8+230↓j
                mov     rax, r9
                sub     rax, rbp
                cmp     rax, rdx
                ja      loc_1406E98A0
                mov     edi, r9d
                sub     edi, ebp

loc_1406E95CB:                          ; CODE XREF: sub_1406E94C8+3DA↓j
                mov     edx, 90h
                mov     r8d, 64536D4Dh
                lea     ecx, [rdx-50h]
                call    sub_140268720
                mov     rdx, rax
                test    rax, rax
                jz      loc_140823E72
                mov     r10, [rsp+118h+var_F8]
                lea     rcx, [rax+50h]
                mov     r11, [rsp+118h+arg_18]
                mov     r8d, edi
                shr     r8d, 3
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                mov     [r14+10h], rax
                mov     [rax], r10
                mov     [rax+2Ch], r8d
                mov     eax, edi
                add     rbp, rax
                mov     rax, r11
                shl     rax, 3
                cmp     rbp, rax
                jbe     short loc_1406E963A
                mov     rax, rbp
                shr     rax, 3
                sub     eax, r11d
                xor     eax, [rdx+34h]
                and     eax, 3FFFFFFFh
                xor     [rdx+34h], eax

loc_1406E963A:                          ; CODE XREF: sub_1406E94C8+15B↑j
                mov     rdi, [rsp+118h+var_E0]
                mov     r9d, 0FFC1h
                mov     al, [rdi+0Eh]
                shr     al, 1
                and     al, 1Fh
                movzx   ecx, al
                movzx   eax, word ptr [rdx+20h]
                add     cx, cx
                and     ax, r9w
                or      cx, ax
                lea     rax, [rsp+118h+var_D8]
                mov     [rdx+20h], cx
                cmp     r14, rax
                jnz     loc_1406E98A7
                and     word ptr [r14+22h], 0Fh
                movzx   ebx, word ptr [r14+20h]
                mov     r9d, [r14+2Ch]
                and     rbx, 0FFFFFFFFFFFFFFC0h
                mov     eax, [r14+24h]
                shl     rbx, 1Ah
                mov     [r14+28h], r9d
                or      rbx, rax
                movzx   ecx, word ptr [rdx+20h]

loc_1406E9695:                          ; CODE XREF: sub_1406E94C8+3E3↓j
                mov     eax, r9d
                and     cx, 3Fh
                mov     r9, [rsp+118h+var_F0]
                add     rbx, rax
                mov     rax, rbx
                mov     [rdx+24h], ebx
                shr     rax, 20h
                shl     ax, 6
                or      ax, cx
                mov     [rdx+20h], ax
                cmp     rbp, r9
                jb      loc_1406E98B0
                mov     r8, [rsp+118h+arg_8]
                mov     rax, [r8]
                shr     rax, 0Ch
                sub     eax, ebx
                mov     [rdx+28h], eax
                movzx   ecx, word ptr [r8]
                movzx   eax, word ptr [rdx+22h]
                shl     cx, 4
                and     ax, 0Fh
                or      cx, ax
                mov     [rdx+22h], cx

loc_1406E96ED:                          ; CODE XREF: sub_1406E94C8+3EC↓j
                mov     r14, rdx
                mov     rdx, [rsp+118h+var_E8]
                cmp     rbp, r9
                jb      loc_1406E95B7
                test    r12d, r12d
                jnz     loc_1406E988B

loc_1406E9707:                          ; CODE XREF: sub_1406E94C8+3CD↓j
                                        ; sub_1406E94C8+13A8EE↓j ...
                xor     r8d, r8d
                lea     rdx, [rsp+118h+var_D8]
                mov     rcx, r13
                call    sub_14032BC1C
                test    eax, eax
                jnz     short loc_1406E9775

loc_1406E971B:                          ; CODE XREF: sub_1406E94C8+3A3↓j
                movzx   r8d, word ptr [rdi+0Ch]
                mov     r9d, 3FFh
                mov     eax, [rdi+8]
                mov     ecx, r8d
                and     rcx, r9
                mov     edx, r12d
                shl     rcx, 20h
                or      rcx, rax
                mov     rax, [rsp+118h+arg_18]
                add     rax, rcx
                add     rdx, rax
                mov     [rdi+8], edx
                shr     rdx, 20h
                xor     dx, r8w
                and     dx, r9w
                xor     dx, r8w
                mov     [rdi+0Ch], dx
                xor     eax, eax

loc_1406E9760:                          ; CODE XREF: sub_1406E94C8+13AA8A↓j
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E9775:                          ; CODE XREF: sub_1406E94C8+251↑j
                mov     rdi, [rsp+118h+var_C8]

loc_1406E977A:                          ; CODE XREF: sub_1406E94C8+398↓j
                mov     rbp, rdi
                test    al, 1
                jz      loc_140823DFE
                mov     rax, [rsp+118h+var_F0]
                or      r15d, 1
                mov     [rsp+118h+arg_0], r15d
                xor     r15d, r15d

loc_1406E9799:                          ; CODE XREF: sub_1406E94C8+370↓j
                mov     rcx, rax
                mov     r8d, 74536D4Dh
                mov     rax, [rsp+118h+var_E8]
                sub     rcx, r15
                cmp     rcx, rax
                cmovbe  rax, rcx
                mov     ecx, 112h
                mov     r14d, eax
                mov     edx, eax
                add     r15, r14
                call    sub_140268720
                mov     r12, rax
                test    rax, rax
                jz      loc_140823E63
                mov     rax, [rsp+118h+var_F8]
                mov     r9d, 0
                mov     r8, rbp
                mov     rcx, r12
                mov     ebx, [rax+38h]
                and     ebx, 40000000h
                setz    r9b
                shr     r14, 3
                mov     rdx, r14
                call    sub_1406A1D1C
                test    ebx, ebx
                jnz     loc_140823DD4
                test    byte ptr [rsp+118h+arg_0], 2
                jnz     loc_140823DEE

loc_1406E980F:                          ; CODE XREF: sub_1406E94C8+13A918↓j
                                        ; sub_1406E94C8+13A921↓j ...
                or      r8d, 0FFFFFFFFh
                mov     rdx, r12
                mov     rcx, rbp
                call    sub_14032BF54
                lea     rcx, [rbp+70h]
                mov     edx, 1
                call    sub_1402FB4E0
                mov     rax, [rsp+118h+var_F0]
                mov     rbp, [rbp+10h]
                cmp     r15, rax
                jb      loc_1406E9799
                mov     r15d, [rsp+118h+arg_0]
                mov     r12d, [rsp+118h+arg_10]

loc_1406E984E:                          ; CODE XREF: sub_1406E94C8+13A979↓j
                                        ; sub_1406E94C8+13A996↓j
                mov     r8d, r15d
                lea     rdx, [rsp+118h+var_D8]
                mov     rcx, r13
                call    sub_14032BC1C
                test    eax, eax
                jnz     loc_1406E977A
                mov     rdi, [rsp+118h+var_E0]
                jmp     loc_1406E971B
; ---------------------------------------------------------------------------

loc_1406E9870:                          ; CODE XREF: sub_1406E94C8+E7↑j
                mov     ecx, [rsp+118h+var_A4]
                mov     eax, ecx
                sub     eax, r12d
                xor     eax, ecx
                and     eax, 3FFFFFFFh
                xor     ecx, eax
                mov     [rsp+118h+var_A4], ecx
                jmp     loc_1406E95B5
; ---------------------------------------------------------------------------

loc_1406E988B:                          ; CODE XREF: sub_1406E94C8+239↑j
                mov     rcx, r10
                call    sub_1402851C0
                test    eax, eax
                jz      loc_1406E9707
                jmp     loc_140823DB2
; ---------------------------------------------------------------------------

loc_1406E98A0:                          ; CODE XREF: sub_1406E94C8+F8↑j
                mov     edi, edx
                jmp     loc_1406E95CB
; ---------------------------------------------------------------------------

loc_1406E98A7:                          ; CODE XREF: sub_1406E94C8+1A1↑j
                mov     r9d, [r14+28h]
                jmp     loc_1406E9695
; ---------------------------------------------------------------------------

loc_1406E98B0:                          ; CODE XREF: sub_1406E94C8+1F4↑j
                mov     [rdx+28h], r8d
                jmp     loc_1406E96ED
sub_1406E94C8   endp

; ---------------------------------------------------------------------------
algn_1406E98B9:                         ; DATA XREF: .rdata:000000014007C51C↑o
                                        ; .pdata:000000014010470C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406E98C0   proc near               ; CODE XREF: sub_14068E6B0+30A↑p
                                        ; sub_1406E91EC+1B8↑p
                                        ; DATA XREF: ...

var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140823F58 SIZE 00000027 BYTES

                mov     [rsp-18h+arg_0], rbx
                mov     [rsp-18h+arg_10], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 60h
                xor     eax, eax
                mov     r14, rcx
                mov     [rbp+var_10], rax
                lea     rcx, [rbp+var_20]
                mov     rax, [rdx]
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     [rbp+arg_8], rax
                xor     edx, edx
                xor     r8d, r8d
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm1
                call    KeInitializeEvent
                mov     rcx, r14
                call    IoGetRelatedDeviceObject
                xor     r8d, r8d
                mov     rcx, rax
                mov     rdi, rax
                mov     dl, [rax+4Ch]
                call    IoAllocateIrpEx
                mov     rbx, rax
                test    rax, rax
                jz      loc_140823F58
                xor     ecx, ecx
                call    IoSetThreadHardErrorMode
                mov     rdx, [rbx+0B8h]
                mov     sil, al
                mov     dword ptr [rbx+10h], 42h ; 'B'
                lea     rax, [rbp+var_30]
                mov     [rbx+48h], rax
                lea     rax, [rbp+var_20]
                mov     [rbx+50h], rax
                lea     rax, [rbp+arg_8]
                mov     byte ptr [rbx+40h], 0
                mov     [rbx+0C0h], r14
                mov     rcx, gs:188h
                mov     [rbx+98h], rcx
                mov     rcx, rdi
                mov     [rbx+18h], rax
                mov     byte ptr [rdx-48h], 6
                mov     [rdx-18h], r14
                mov     [rdx-20h], rdi
                mov     dword ptr [rdx-40h], 8
                mov     dword ptr [rdx-38h], 14h
                mov     rdx, rbx
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_140823F62

loc_1406E99A3:                          ; CODE XREF: sub_1406E98C0+13A6BA↓j
                mov     ecx, dword ptr [rbp+var_30]
                test    ebx, ebx
                cmovs   ecx, ebx
                mov     dword ptr [rbp+var_30], ecx
                mov     cl, sil
                call    IoSetThreadHardErrorMode
                mov     eax, dword ptr [rbp+var_30]

loc_1406E99B9:                          ; CODE XREF: sub_1406E98C0+13A69D↓j
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406E98C0   endp

algn_1406E99CF:                         ; DATA XREF: .rdata:000000014007C570↑o
                                        ; .pdata:0000000140104718↑o
                align 20h
; Exported entry 574. FsRtlSetKernelEaFile

; =============== S U B R O U T I N E =======================================


