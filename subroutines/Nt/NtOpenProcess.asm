NtOpenProcess   proc near               ; CODE XREF: sub_1405D8688+B5↑p
                                        ; DATA XREF: .pdata:00000001400FB8C8↑o ...

var_18          = byte ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     rax, gs:188h
                mov     r10b, [rax+232h]
                mov     [rsp+38h+var_10], r10b
                mov     [rsp+38h+var_18], r10b
                call    sub_140656690
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenProcess   endp

algn_1405D8849:                         ; DATA XREF: .pdata:00000001400FB8C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1405D8850   proc near               ; CODE XREF: sub_1405DA5D8+343↓p
                                        ; DATA XREF: .rdata:0000000140042F40↑o ...

var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  48h
arg_8           = dword ptr  50h
arg_10          = dword ptr  58h
arg_18          = dword ptr  60h

; FUNCTION CHUNK AT 00000001407EAC10 SIZE 00000044 BYTES

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
                mov     rbx, [rcx]
                mov     r15, rcx
                and     [rbp+arg_18], 0
                xor     r13d, r13d
                mov     rax, 0FFFFF78000000320h
                xorps   xmm0, xmm0
                movups  [rbp+var_18], xmm0
                mov     rdx, [rax]
                mov     eax, ds:0FFFFF78000000004h
                mov     ecx, edx
                mov     r8d, eax
                shr     rdx, 20h
                imul    edx, eax
                mov     rax, [r15]
                imul    r8, rcx
                movzx   ecx, word ptr [rax+1Eh]
                shl     edx, 8
                shr     r8, 18h
                add     r8d, edx
                mov     [rbp+var_38], ecx
                mov     edx, [rax+1Ch]
                mov     eax, ecx
                and     edx, 7
                mov     [rbp+var_20], r8
                mov     r8d, [rbx+50h]
                and     eax, 7
                shl     eax, 3
                or      edx, eax
                mov     eax, r8d
                mov     ecx, edx
                bts     ecx, 8
                and     al, 10h
                mov     eax, r8d
                cmovnz  ecx, edx
                mov     edx, ecx
                bts     edx, 9
                and     al, 8
                cmovz   edx, ecx
                mov     r14d, edx
                bts     r14d, 0Bh
                and     r8b, 20h
                cmovz   r14d, edx
                xor     esi, esi
                mov     [rbp+arg_10], r14d
                mov     [rbp+arg_8], esi
                cmp     [rbx+14h], esi
                jbe     loc_1405D8A3F

loc_1405D890C:                          ; CODE XREF: sub_1405D8850+1E9↓j
                xorps   xmm0, xmm0
                mov     rcx, r15
                movups  [rbp+var_30], xmm0
                call    sub_1402A351C
                test    eax, eax
                jnz     loc_1407EAC10
                mov     rax, [rbx+38h]
                lea     rcx, [rsi+rsi*4]
                lea     rdx, [rbp+var_18]
                lea     rdi, [rax+rcx*8]
                mov     rcx, rdi
                call    sub_1405D85C0
                test    eax, eax
                js      loc_1407EAC16
                lea     rdx, [rbp+var_30]
                mov     rcx, rdi
                call    sub_1405D8688
                test    eax, eax
                js      loc_1407EAC16
                mov     eax, [rbx+50h]
                mov     rdi, qword ptr [rbp+var_30+8]
                test    al, 4
                jz      loc_1407EAC1F
                mov     rax, qword ptr [rbp+var_18+8]
                lea     r14, [r15+30h]
                mov     r12d, dword ptr [rbp+var_18]
                mov     r8d, 0B0h
                mov     qword ptr [rbp+var_30], rax
                mov     rdx, r14
                lea     rax, [rbp+arg_18]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+68h+var_48], rax
                call    sub_1402A3560
                test    r12d, r12d
                jz      short loc_1405D8A14

loc_1405D8996:                          ; CODE XREF: sub_1405D8850+1BF↓j
                mov     rcx, r15
                call    sub_1402A351C
                test    eax, eax
                jnz     loc_1407EAC3C
                mov     r8d, [rbp+var_38]
                lea     rcx, [r14+28h]
                xor     edx, edx
                call    sub_14065FA38
                add     rax, [r14+8]
                add     rax, [r14]
                cmp     rax, 80h
                jb      loc_1407EAC3C
                mov     r9d, [rbp+arg_10]
                mov     eax, 10h
                mov     r8, qword ptr [rbp+var_30]
                cmp     r12d, eax
                mov     r15d, r12d
                mov     rcx, rdi
                cmova   r15d, eax
                mov     edx, r15d
                mov     esi, r15d
                call    sub_1406A9778
                test    eax, eax
                js      short loc_1405D89F5
                add     [rbx+68h], r15d

loc_1405D89F5:                          ; CODE XREF: sub_1405D8850+19F↑j
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_14065F91C
                shl     rsi, 4
                add     qword ptr [rbp+var_30], rsi
                sub     r12d, r15d
                mov     r15, [rbp+arg_0]
                jnz     short loc_1405D8996
                mov     esi, [rbp+arg_8]

loc_1405D8A14:                          ; CODE XREF: sub_1405D8850+144↑j
                                        ; sub_1405D8850+2123E7↓j
                inc     dword ptr [rbx+5Ch]

loc_1405D8A17:                          ; CODE XREF: sub_1405D8850+2123CA↓j
                                        ; sub_1405D8850+2123F5↓j
                test    rdi, rdi
                jz      short loc_1405D8A24
                mov     rcx, rdi
                call    NtClose

loc_1405D8A24:                          ; CODE XREF: sub_1405D8850+1CA↑j
                test    r13d, r13d
                jnz     loc_1407EAC4A
                mov     r14d, [rbp+arg_10]
                inc     esi
                mov     [rbp+arg_8], esi
                cmp     esi, [rbx+14h]
                jb      loc_1405D890C

loc_1405D8A3F:                          ; CODE XREF: sub_1405D8850+B6↑j
                xor     ebx, ebx

loc_1405D8A41:                          ; CODE XREF: sub_1405D8850+2123FF↓j
                mov     rcx, qword ptr [rbp+var_18+8]
                test    rcx, rcx
                jz      short loc_1405D8A51
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1405D8A51:                          ; CODE XREF: sub_1405D8850+1F8↑j
                mov     rcx, 0FFFFF78000000320h
                mov     rcx, [rcx]
                mov     eax, ds:0FFFFF78000000004h
                mov     r9, [r15]
                mov     r8d, eax
                mov     edx, ecx
                imul    r8, rdx
                shr     rcx, 20h
                imul    ecx, eax
                mov     eax, ebx
                shr     r8, 18h
                shl     ecx, 8
                add     r8d, ecx
                sub     r8d, dword ptr [rbp+var_20]
                add     [r9+78h], r8d
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
sub_1405D8850   endp

byte_1405D8AA0  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140042F40↑o
                                        ; .pdata:00000001400FB8D4↑o

; =============== S U B R O U T I N E =======================================


sub_1405D8AA8   proc near               ; CODE XREF: sub_1405D8B28+1E4↓p
                                        ; DATA XREF: .pdata:00000001400FB8E0↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, ecx
                xor     ecx, ecx
                call    sub_140201988
                xor     edi, edi

loc_1405D8ABD:                          ; CODE XREF: sub_1405D8AA8+3E↓j
                mov     r8, rax
                test    rax, rax
                jz      short loc_1405D8AE8
                mov     rdx, [rax]
                mov     r9, [rdx+1AC0h]
                test    ebx, ebx
                jnz     short loc_1405D8AF4
                movzx   ecx, di

loc_1405D8AD6:                          ; CODE XREF: sub_1405D8AA8+70↓j
                mov     [r9+92Ch], cx
                mov     rcx, r8
                call    sub_140201988
                jmp     short loc_1405D8ABD
; ---------------------------------------------------------------------------

loc_1405D8AE8:                          ; CODE XREF: sub_1405D8AA8+1B↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405D8AF4:                          ; CODE XREF: sub_1405D8AA8+29↑j
                cmp     ebx, 0Ch
                jb      short loc_1405D8B1A
                mov     eax, 0AAAAAAABh
                mul     ebx
                mov     ecx, edx
                shr     ecx, 2

loc_1405D8B05:                          ; CODE XREF: sub_1405D8AA8+77↓j
                xor     edx, edx
                mov     eax, 3E8h
                div     ecx
                mov     ecx, 1
                cmp     eax, ecx
                cmova   ecx, eax
                jmp     short loc_1405D8AD6
; ---------------------------------------------------------------------------

loc_1405D8B1A:                          ; CODE XREF: sub_1405D8AA8+4F↑j
                mov     ecx, 1
                jmp     short loc_1405D8B05
sub_1405D8AA8   endp

; ---------------------------------------------------------------------------
algn_1405D8B21:                         ; DATA XREF: .pdata:00000001400FB8E0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405D8B28   proc near               ; CODE XREF: sub_140687200+9B8↓p
                                        ; DATA XREF: .rdata:0000000140043044↑o ...

var_D8          = dword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = xmmword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001407EAC54 SIZE 0000017F BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+20h], r9b
                mov     [rsp+arg_0], ecx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 0D0h
                mov     r14b, r9b
                mov     ebx, r8d
                mov     rsi, rdx
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-50h], xmm0
                movups  xmmword ptr [r11-40h], xmm0
                xor     edi, edi
                mov     [r11-60h], rdi
                mov     [rsp+0F8h+var_A8], edi
                xor     eax, eax
                mov     [rsp+0F8h+var_88], rax
                mov     [rsp+0F8h+var_80], eax
                mov     [rsp+0F8h+var_98], rax
                mov     [rsp+0F8h+var_90], eax
                mov     [r11+8], edi
                mov     [r11-58h], rdi
                mov     [rsp+0F8h+var_A0], rdi
                mov     dl, r9b
                mov     rcx, cs:qword_140D2E710
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407EAC54
                cmp     ebx, 20h ; ' '
                jnz     loc_1407EAC5E
                mov     ebx, edi
                xorps   xmm0, xmm0
                movups  [rsp+0F8h+var_C8], xmm0
                movups  [rsp+0F8h+var_B8], xmm0

loc_1405D8BB6:                          ; DATA XREF: .rdata:0000000140042FA0↑o
;   __try { // __except at loc_1405D8BC9
                movups  xmm0, xmmword ptr [rsi]
                movups  [rsp+0F8h+var_C8], xmm0
                movups  xmm1, xmmword ptr [rsi+10h]
                movups  [rsp+0F8h+var_B8], xmm1
                jmp     short loc_1405D8BD5
;   } // starts at 1405D8BB6
; ---------------------------------------------------------------------------

loc_1405D8BC9:                          ; DATA XREF: .rdata:0000000140042FA0↑o
;   __except(1) // owned by 1405D8BB6
                mov     ebx, eax
                xor     edi, edi
                mov     r14b, [rsp+0F8h+arg_18]

loc_1405D8BD5:                          ; CODE XREF: sub_1405D8B28+9F↑j
                test    ebx, ebx
                js      short loc_1405D8C38
                mov     rax, qword ptr [rsp+0F8h+var_C8]
                cmp     eax, 2Dh ; '-'
                jnz     loc_1405D912F
                shr     rax, 20h
                cmp     eax, 6B756843h
                jnz     loc_1405D912F
                mov     ecx, dword ptr [rsp+0F8h+var_C8+8]
                cmp     ecx, 0Eh
                jz      short loc_1405D8C61
                jg      short loc_1405D8C7F
                sub     ecx, 3
                jz      loc_1405D8E58
                sub     ecx, 1
                jz      loc_1405D9058
                sub     ecx, 1
                jz      short loc_1405D8C70
                sub     ecx, 2
                jnz     loc_1405D8D16

loc_1405D8C21:                          ; CODE XREF: sub_1405D8B28+175↓j
                                        ; sub_1405D8B28+2121D4↓j
                lea     r8, [rsp+0F8h+arg_0]
                mov     dl, r14b
                lea     rcx, [rsp+0F8h+var_C8]
                call    sub_140647040

loc_1405D8C36:                          ; CODE XREF: sub_1405D8B28+146↓j
                                        ; sub_1405D8B28+155↓j ...
                mov     ebx, eax

loc_1405D8C38:                          ; CODE XREF: sub_1405D8B28+AF↑j
                                        ; sub_1405D8B28+1CA↓j ...
                mov     rax, [rsp+0F8h+var_A0]
                test    rax, rax
                jnz     loc_1405D8FA8

loc_1405D8C46:                          ; CODE XREF: sub_1405D8B28+48A↓j
                mov     eax, ebx
                mov     rbx, [rsp+0F8h+arg_8]
                add     rsp, 0D0h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D8C61:                          ; CODE XREF: sub_1405D8B28+D5↑j
                mov     dl, r14b
                lea     rcx, [rsp+0F8h+var_C8]
                call    sub_1405D9140
                jmp     short loc_1405D8C36
; ---------------------------------------------------------------------------

loc_1405D8C70:                          ; CODE XREF: sub_1405D8B28+EE↑j
                mov     dl, r14b
                lea     rcx, [rsp+0F8h+var_C8]
                call    sub_1405DA2CC
                jmp     short loc_1405D8C36
; ---------------------------------------------------------------------------

loc_1405D8C7F:                          ; CODE XREF: sub_1405D8B28+D7↑j
                sub     ecx, 0Fh
                jz      loc_1407EAD45
                sub     ecx, 3
                jz      loc_1405D906D
                sub     ecx, 1
                jz      loc_1405D8D8B
                sub     ecx, 3
                jz      short loc_1405D8C21
                sub     ecx, 3
                jnz     loc_1407EACF4
                cmp     dword ptr [rsp+0F8h+var_B8+8], 8
                jnz     loc_1407EACC2
                mov     ebx, edi

loc_1405D8CB5:                          ; DATA XREF: .rdata:0000000140042FB0↑o
;   __try { // __except at loc_1405D8CF0
                test    r14b, r14b
                jz      short loc_1405D8CDE
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                test    al, 3
                jnz     short loc_1405D8CD8
                mov     rsi, 7FFFFFFF0000h
                cmp     rax, rsi
                cmovnb  rax, rsi
                mov     al, [rax]
                jmp     short loc_1405D8CDE
; ---------------------------------------------------------------------------

loc_1405D8CD8:                          ; CODE XREF: sub_1405D8B28+199↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_1405D8CDE:                          ; CODE XREF: sub_1405D8B28+190↑j
                                        ; sub_1405D8B28+1AE↑j
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                mov     rax, [rax]
                mov     [rsp+0F8h+var_58], rax
                jmp     short loc_1405D8CF7
;   } // starts at 1405D8CB5
; ---------------------------------------------------------------------------

loc_1405D8CF0:                          ; DATA XREF: .rdata:0000000140042FB0↑o
;   __except(1) // owned by 1405D8CB5
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8CF7:                          ; CODE XREF: sub_1405D8B28+1C6↑j
                mov     r15d, 1
                cmp     eax, r15d
                jnz     loc_1405D912F
                shr     rax, 20h
                mov     ecx, eax
                call    sub_1405D8AA8
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8D16:                          ; CODE XREF: sub_1405D8B28+F3↑j
                sub     ecx, 3
                jnz     loc_1405D8FB7
                cmp     dword ptr [rsp+0F8h+var_B8+8], 20h ; ' '
                jnz     loc_1407EACC2

loc_1405D8D2A:                          ; DATA XREF: .rdata:0000000140042FC0↑o
;   __try { // __except at loc_1405D8D6F
                test    r14b, r14b
                jz      short loc_1405D8D51
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                test    al, 7
                jz      short loc_1405D8D3E
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_1405D8D3E:                          ; CODE XREF: sub_1405D8B28+20E↑j
                mov     rsi, 7FFFFFFF0000h
                cmp     rax, rsi
                cmovnb  rax, rsi
                mov     al, [rax]

loc_1405D8D51:                          ; CODE XREF: sub_1405D8B28+205↑j
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+0F8h+var_50], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  [rsp+0F8h+var_40], xmm1
                jmp     short loc_1405D8D76
;   } // starts at 1405D8D2A
; ---------------------------------------------------------------------------

loc_1405D8D6F:                          ; DATA XREF: .rdata:0000000140042FC0↑o
;   __except(1) // owned by 1405D8D2A
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8D76:                          ; CODE XREF: sub_1405D8B28+245↑j
                mov     dl, r14b
                lea     rcx, [rsp+0F8h+var_50]
                call    sub_14078BD28
                jmp     loc_1405D8C36
; ---------------------------------------------------------------------------

loc_1405D8D8B:                          ; CODE XREF: sub_1405D8B28+16C↑j
                mov     ecx, 0Ch
                cmp     dword ptr [rsp+0F8h+var_B8+8], ecx
                jnz     loc_1407EACC2
                mov     ebx, edi

loc_1405D8D9C:                          ; DATA XREF: .rdata:0000000140042FD0↑o
;   __try { // __except at loc_1405D8DDD
                test    r14b, r14b
                jz      short loc_1405D8DC5
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                test    al, 3
                jnz     short loc_1405D8DBF
                mov     rsi, 7FFFFFFF0000h
                cmp     rax, rsi
                cmovnb  rax, rsi
                mov     al, [rax]
                jmp     short loc_1405D8DC5
; ---------------------------------------------------------------------------

loc_1405D8DBF:                          ; CODE XREF: sub_1405D8B28+280↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D8DC5:                          ; CODE XREF: sub_1405D8B28+277↑j
                                        ; sub_1405D8B28+295↑j
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                movsd   xmm0, qword ptr [rax]
                movsd   [rsp+0F8h+var_98], xmm0
                mov     ecx, [rax+8]
                mov     [rsp+0F8h+var_90], ecx
                jmp     short loc_1405D8DE4
;   } // starts at 1405D8D9C
; ---------------------------------------------------------------------------

loc_1405D8DDD:                          ; DATA XREF: .rdata:0000000140042FD0↑o
;   __except(1) // owned by 1405D8D9C
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8DE4:                          ; CODE XREF: sub_1405D8B28+2B3↑j
                cmp     dword ptr [rsp+0F8h+var_98], 2
                jnz     loc_1405D912F
                mov     rax, [rsp+0F8h+var_98]
                shr     rax, 20h
                cmp     eax, 5
                jge     loc_1405D912F
                mov     r8b, byte ptr [rsp+0F8h+var_90]
                cmp     r8b, 7
                ja      loc_1405D912F
                mov     edx, ecx
                shr     edx, 8
                cmp     dl, 7
                ja      loc_1405D912F
                shr     ecx, 10h
                test    cx, cx
                jnz     loc_1405D912F
                mov     [rsp+0F8h+arg_0], edi
                mov     byte ptr [rsp+0F8h+arg_0], al
                mov     byte ptr [rsp+0F8h+arg_0+1], r8b
                mov     byte ptr [rsp+0F8h+arg_0+2], dl
                mov     ecx, [rsp+0F8h+arg_0]
                call    sub_14020194C
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8E58:                          ; CODE XREF: sub_1405D8B28+DC↑j
                mov     ecx, 10h
                cmp     dword ptr [rsp+0F8h+var_B8+8], ecx
                jnz     loc_1407EACC2

loc_1405D8E67:                          ; DATA XREF: .rdata:0000000140042FE0↑o
;   __try { // __except at loc_1405D8EAD
                test    r14b, r14b
                jz      short loc_1405D8E90
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                test    al, 7
                jnz     short loc_1405D8E8A
                mov     rsi, 7FFFFFFF0000h
                cmp     rax, rsi
                cmovnb  rax, rsi
                mov     al, [rax]
                jmp     short loc_1405D8E9A
; ---------------------------------------------------------------------------

loc_1405D8E8A:                          ; CODE XREF: sub_1405D8B28+34B↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 10h

loc_1405D8E90:                          ; CODE XREF: sub_1405D8B28+342↑j
                mov     rsi, 7FFFFFFF0000h

loc_1405D8E9A:                          ; CODE XREF: sub_1405D8B28+360↑j
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rsp+0F8h+var_78], xmm0
                jmp     short loc_1405D8EB4
;   } // starts at 1405D8E67
; ---------------------------------------------------------------------------

loc_1405D8EAD:                          ; DATA XREF: .rdata:0000000140042FE0↑o
;   __except(1) // owned by 1405D8E67
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8EB4:                          ; CODE XREF: sub_1405D8B28+383↑j
                mov     rbx, qword ptr [rsp+0F8h+var_78+8]
                test    rbx, rbx
                jz      loc_1405D912F
                mov     r12d, dword ptr [rsp+0F8h+var_78]
                mov     eax, r12d
                shr     eax, 7
                test    eax, eax
                jz      loc_1405D912F
                mov     edx, r12d
                and     edx, 1Fh
                cmp     edx, 2
                jb      loc_1407EACEA
                cmp     edx, 3
                jbe     loc_1407EACD6
                cmp     edx, 5
                jz      loc_1407EACCC
                cmp     edx, 1Bh
                jnz     loc_1407EACEA

loc_1405D8F05:                          ; CODE XREF: sub_1405D8B28+2121A9↓j
                                        ; sub_1405D8B28+2121B3↓j
                cmp     eax, ecx
                jb      loc_1405D912F
                cmp     eax, 0FF0h
                jnb     loc_1405D912F
                mov     edx, eax
                mov     r8d, 44456650h
                mov     r15d, 1
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     [rsp+0F8h+var_A0], rax
                test    rax, rax
                jz      loc_1407EACE0

loc_1405D8F3C:                          ; DATA XREF: .rdata:0000000140042FF0↑o
;   __try { // __except at loc_1405D8F82
                test    r14b, r14b
                jz      short loc_1405D8F6C
                test    r15b, bl
                jnz     short loc_1405D8F67
                mov     rcx, r12
                shr     rcx, 7
                add     rcx, rbx
                cmp     rcx, rsi
                ja      short loc_1405D8F5A
                cmp     rcx, rbx
                jnb     short loc_1405D8F6C

loc_1405D8F5A:                          ; CODE XREF: sub_1405D8B28+42B↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405D8F6C
; ---------------------------------------------------------------------------

loc_1405D8F67:                          ; CODE XREF: sub_1405D8B28+41C↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405D8F6C:                          ; CODE XREF: sub_1405D8B28+417↑j
                                        ; sub_1405D8B28+430↑j ...
                mov     r8, r12
                shr     r8, 7
                mov     rdx, rbx
                mov     rcx, [rsp+0F8h+var_A0]
                call    memmove
                jmp     short loc_1405D8F89
;   } // starts at 1405D8F3C
; ---------------------------------------------------------------------------

loc_1405D8F82:                          ; DATA XREF: .rdata:0000000140042FF0↑o
;   __except(1) // owned by 1405D8F3C
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D8F89:                          ; CODE XREF: sub_1405D8B28+458↑j
                mov     rax, [rsp+0F8h+var_A0]
                mov     qword ptr [rsp+0F8h+var_78+8], rax
                lea     rcx, [rsp+0F8h+var_78]
                call    sub_14077541C
                jmp     loc_1405D8C36
; ---------------------------------------------------------------------------

loc_1405D8FA8:                          ; CODE XREF: sub_1405D8B28+118↑j
                xor     edx, edx
                mov     rcx, rax
                call    ExFreePoolWithTag
                jmp     loc_1405D8C46
; ---------------------------------------------------------------------------

loc_1405D8FB7:                          ; CODE XREF: sub_1405D8B28+1F1↑j
                sub     ecx, 1
                jz      loc_1407EAC68
                cmp     ecx, 2
                jnz     loc_1407EAD02
                cmp     dword ptr [rsp+0F8h+var_B8+8], 8
                jnz     loc_1407EACC2

loc_1405D8FD4:                          ; DATA XREF: .rdata:0000000140043000↑o
;   __try { // __except at loc_1405D900F
                test    r14b, r14b
                jz      short loc_1405D8FFD
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                test    al, 3
                jnz     short loc_1405D8FF7
                mov     rsi, 7FFFFFFF0000h
                cmp     rax, rsi
                cmovnb  rax, rsi
                mov     al, [rax]
                jmp     short loc_1405D8FFD
; ---------------------------------------------------------------------------

loc_1405D8FF7:                          ; CODE XREF: sub_1405D8B28+4B8↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D8FFD:                          ; CODE XREF: sub_1405D8B28+4AF↑j
                                        ; sub_1405D8B28+4CD↑j
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                mov     rax, [rax]
                mov     [rsp+0F8h+var_60], rax
                jmp     short loc_1405D9016
;   } // starts at 1405D8FD4
; ---------------------------------------------------------------------------

loc_1405D900F:                          ; DATA XREF: .rdata:0000000140043000↑o
;   __except(1) // owned by 1405D8FD4
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D9016:                          ; CODE XREF: sub_1405D8B28+4E5↑j
                mov     r15d, 1
                cmp     ax, r15w
                jnz     loc_1405D912F
                mov     rdx, rax
                shr     rdx, 20h
                lea     ecx, [rdx-1]
                cmp     ecx, 4
                ja      loc_1405D912F
                shr     rax, 10h
                and     eax, r15d
                lea     r8d, [r15+rax]
                xor     r9d, r9d
                lea     rcx, unk_140C50160
                call    sub_14099AA30
                jmp     loc_1405D8C36
; ---------------------------------------------------------------------------

loc_1405D9058:                          ; CODE XREF: sub_1405D8B28+E5↑j
                xor     edx, edx
                lea     rcx, qword_140C4FAA8
                call    sub_140775604
                mov     ebx, edi
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D906D:                          ; CODE XREF: sub_1405D8B28+163↑j
                mov     ecx, 0Ch
                cmp     dword ptr [rsp+0F8h+var_B8+8], ecx
                jnz     loc_1407EACC2

loc_1405D907C:                          ; DATA XREF: .rdata:0000000140043010↑o
;   __try { // __except at loc_1405D90B9
                test    r14b, r14b
                jz      short loc_1405D90A5
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                test    al, 3
                jnz     short loc_1405D909F
                mov     rsi, 7FFFFFFF0000h
                cmp     rax, rsi
                cmovnb  rax, rsi
                mov     al, [rax]
                jmp     short loc_1405D90A5
; ---------------------------------------------------------------------------

loc_1405D909F:                          ; CODE XREF: sub_1405D8B28+560↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D90A5:                          ; CODE XREF: sub_1405D8B28+557↑j
                                        ; sub_1405D8B28+575↑j
                mov     rax, qword ptr [rsp+0F8h+var_B8]
                movsd   xmm0, qword ptr [rax]
                movsd   [rsp+0F8h+var_88], xmm0
                mov     esi, [rax+8]
                jmp     short loc_1405D90C0
;   } // starts at 1405D907C
; ---------------------------------------------------------------------------

loc_1405D90B9:                          ; DATA XREF: .rdata:0000000140043010↑o
;   __except(1) // owned by 1405D907C
                mov     ebx, eax
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D90C0:                          ; CODE XREF: sub_1405D8B28+58F↑j
                cmp     dword ptr [rsp+0F8h+var_88], 2
                jnz     short loc_1405D912F
                mov     rax, [rsp+0F8h+var_88]
                shr     rax, 20h
                cmp     eax, 2
                jnb     short loc_1405D912F
                test    esi, 0FFFFFFFCh
                jnz     short loc_1405D912F
                lea     r14, qword_140C4FA40
                mov     rcx, r14
                call    sub_1403CF240
                cmp     dword ptr [rsp+0F8h+var_88+4], edi
                jnz     loc_1407EAD1F
                mov     ebx, cs:dword_140C4FA48
                not     ebx
                and     ebx, esi

loc_1405D9100:                          ; CODE XREF: sub_1405D8B28+212218↓j
                mov     r8d, ebx
                mov     rcx, r14
                call    sub_1407BF31C
                mov     ebx, eax
                mov     rcx, r14
                call    sub_1403CFD10
                mov     edx, edi
                cmp     dword ptr [rsp+0F8h+var_88+4], edi
                setz    dl
                lea     rcx, unk_140C50160
                call    sub_1409A30CC
                jmp     loc_1405D8C38
; ---------------------------------------------------------------------------

loc_1405D912F:                          ; CODE XREF: sub_1405D8B28+B9↑j
                                        ; sub_1405D8B28+C8↑j ...
                mov     ebx, 0C000000Dh
                jmp     loc_1405D8C38
; } // starts at 1405D8B28
sub_1405D8B28   endp

; ---------------------------------------------------------------------------
algn_1405D9139:                         ; DATA XREF: .rdata:0000000140043044↑o
                                        ; .pdata:00000001400FB8EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405D9140   proc near               ; CODE XREF: sub_1405D8B28+141↑p
                                        ; DATA XREF: .rdata:0000000140043068↑o ...

var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001407EADD4 SIZE 00000014 BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                push    rbx
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_18], rax
                xor     eax, eax
                xorps   xmm0, xmm0
                and     [r11-48h], rax
                mov     r8b, dl
                movups  [rsp+78h+var_40], xmm0
                movups  [rsp+78h+var_30], xmm0
                mov     [r11-20h], rax
                mov     eax, cs:dword_140C50270
                test    al, 1
                jz      loc_1407EADD4
                mov     edx, [rcx+18h]
                cmp     edx, 18h
                jb      loc_1407EADDE
                mov     rcx, [rcx+10h]
                lea     r9, [r11-40h]
                mov     [r11-58h], r8b
                lea     r8, [r11-48h]
                call    sub_1405D9288
                mov     ebx, eax
                test    eax, eax
                js      short loc_1405D91C7
                mov     rcx, [rsp+78h+var_48]
                call    sub_1402019DC
                test    eax, eax
                jnz     short loc_1405D91FD
                mov     rdx, [rsp+78h+var_48]
                lea     rcx, unk_140C501D8
                call    sub_1405D920C
                mov     ebx, eax

loc_1405D91C7:                          ; CODE XREF: sub_1405D9140+64↑j
                                        ; sub_1405D9140+C2↓j
                cmp     [rsp+78h+var_48], 0
                jz      short loc_1405D91E7
                lea     rax, [rsp+78h+var_40]
                cmp     [rsp+78h+var_48], rax
                jz      short loc_1405D91E7
                mov     rcx, [rsp+78h+var_48]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1405D91E7:                          ; CODE XREF: sub_1405D9140+8D↑j
                                        ; sub_1405D9140+99↑j ...
                mov     eax, ebx
                mov     rcx, [rsp+78h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 70h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D91FD:                          ; CODE XREF: sub_1405D9140+72↑j
                mov     ebx, 0C000007Bh
                jmp     short loc_1405D91C7
; } // starts at 1405D9140
sub_1405D9140   endp

; ---------------------------------------------------------------------------
byte_1405D9204  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140043068↑o
                                        ; .pdata:00000001400FB8F8↑o

; =============== S U B R O U T I N E =======================================


sub_1405D920C   proc near               ; CODE XREF: sub_1405D9140+80↑p
                                        ; DATA XREF: .pdata:00000001400FB904↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rsi, [rcx+88h]
                mov     rbx, rcx
                mov     rcx, rsi
                mov     rdi, rdx
                call    sub_14024C840
                test    al, al
                jz      short loc_1405D9273
                movzx   ecx, word ptr [rdi+2]
                test    ecx, ecx
                jnz     short loc_1405D9264
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1405D94AC

loc_1405D9247:                          ; CODE XREF: sub_1405D920C+65↓j
                mov     ebx, eax

loc_1405D9249:                          ; CODE XREF: sub_1405D920C+73↓j
                mov     rcx, rsi
                call    sub_14024C380

loc_1405D9251:                          ; CODE XREF: sub_1405D920C+6C↓j
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405D9264:                          ; CODE XREF: sub_1405D920C+2E↑j
                cmp     ecx, 1
                jnz     short loc_1405D927A
                mov     rcx, rbx
                call    sub_1407C5040
                jmp     short loc_1405D9247
; ---------------------------------------------------------------------------

loc_1405D9273:                          ; CODE XREF: sub_1405D920C+26↑j
                mov     ebx, 0C0000080h
                jmp     short loc_1405D9251
; ---------------------------------------------------------------------------

loc_1405D927A:                          ; CODE XREF: sub_1405D920C+5B↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1405D9249
sub_1405D920C   endp

; ---------------------------------------------------------------------------
algn_1405D9281:                         ; DATA XREF: .pdata:00000001400FB904↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405D9288   proc near               ; CODE XREF: sub_1405D9140+5B↑p
                                        ; DATA XREF: .rdata:00000001400430D8↑o ...

var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 00000001407EADE8 SIZE 0000002D BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     rax, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 90h
                movaps  xmmword ptr [rax-38h], xmm6
                movaps  xmmword ptr [rax-48h], xmm7
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_58], rax
                mov     r14, r9
                mov     r15, r8
                mov     r9d, edx
                mov     rsi, rcx
                mov     [rsp+0B8h+var_88], r14
                xorps   xmm0, xmm0
                movdqu  [rsp+0B8h+var_68], xmm0
                and     [rsp+0B8h+var_90], 0
                xor     edi, edi
                mov     [rsp+0B8h+var_98], rdi

loc_1405D92D6:                          ; DATA XREF: .rdata:00000001400430B0↑o
;   __try { // __except at loc_1405D9330
                cmp     [rsp+0B8h+arg_20], dil
                jz      short loc_1405D9313
                test    edx, edx
                jz      short loc_1405D9313
                test    sil, 7
                jnz     short loc_1405D930E
                add     rcx, r9
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                ja      short loc_1405D9301
                cmp     rcx, rsi
                jnb     short loc_1405D9313

loc_1405D9301:                          ; CODE XREF: sub_1405D9288+72↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405D9313
; ---------------------------------------------------------------------------

loc_1405D930E:                          ; CODE XREF: sub_1405D9288+60↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405D9313:                          ; CODE XREF: sub_1405D9288+56↑j
                                        ; sub_1405D9288+5A↑j ...
                mov     [rsp+0B8h+var_90], 18h
                movups  xmm6, xmmword ptr [rsi]
                movups  [rsp+0B8h+var_80], xmm6
                movsd   xmm7, qword ptr [rsi+10h]
                movsd   [rsp+0B8h+var_70], xmm7
                jmp     short loc_1405D9341
;   } // starts at 1405D92D6
; ---------------------------------------------------------------------------

loc_1405D9330:                          ; DATA XREF: .rdata:00000001400430B0↑o
;   __except(1) // owned by 1405D92D6
                mov     ebx, eax
                mov     rdi, [rsp+0B8h+var_98]
                mov     r14, [rsp+0B8h+var_88]
                jmp     loc_1405D9413
; ---------------------------------------------------------------------------

loc_1405D9341:                          ; CODE XREF: sub_1405D9288+A6↑j
                movd    eax, xmm6
                cmp     ax, 3
                jnz     loc_1405D949B
                pextrw  eax, xmm6, 1
                cmp     ax, 4
                jnb     loc_1405D949B
                mov     r10d, 1
                cmp     ax, r10w
                jz      loc_1405D9452

loc_1405D936E:                          ; CODE XREF: sub_1405D9288+20D↓j
                mov     r8d, dword ptr [rsp+0B8h+var_80+8]
                mov     eax, dword ptr [rsp+0B8h+var_80+4]
                add     r8, rax
                mov     edx, dword ptr [rsp+0B8h+var_70]
                mov     eax, dword ptr [rsp+0B8h+var_80+0Ch]
                add     rax, rdx
                lea     rcx, ds:17h[r8*8]
                and     ecx, 7
                shl     rax, 3
                sub     rax, rcx
                lea     rcx, ds:1Fh[r8*8]
                add     rcx, rax
                mov     eax, 0FFFFFFFFh
                cmp     rcx, rax
                ja      loc_1407EADE8
                mov     ebx, ecx
                cmp     rbx, r9
                jnz     loc_1405D949B
                cmp     rbx, 28h ; '('
                jbe     loc_1405D9448
                mov     r8d, 43526650h
                mov     edx, ebx
                mov     ecx, r10d
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     [rsp+0B8h+var_98], rax
                test    rax, rax
                jz      loc_1407EADF2

loc_1405D93E6:                          ; CODE XREF: sub_1405D9288+1C8↓j
                                        ; DATA XREF: .rdata:00000001400430C0↑o
;   __try { // __except at loc_1405D93FE
                mov     r8, rbx
                mov     rdx, rsi
                mov     rcx, rdi
                call    memmove
                movups  xmmword ptr [rdi], xmm6
                movsd   qword ptr [rdi+10h], xmm7
                jmp     short loc_1405D940C
;   } // starts at 1405D93E6
; ---------------------------------------------------------------------------

loc_1405D93FE:                          ; DATA XREF: .rdata:00000001400430C0↑o
;   __except(1) // owned by 1405D93E6
                mov     ebx, eax
                mov     rdi, [rsp+0B8h+var_98]
                mov     r14, [rsp+0B8h+var_88]
                jmp     short loc_1405D9413
; ---------------------------------------------------------------------------

loc_1405D940C:                          ; CODE XREF: sub_1405D9288+174↑j
                mov     [r15], rdi
                xor     edi, edi
                xor     ebx, ebx

loc_1405D9413:                          ; CODE XREF: sub_1405D9288+B4↑j
                                        ; sub_1405D9288+182↑j ...
                test    rdi, rdi
                jnz     loc_1407EADFC

loc_1405D941C:                          ; CODE XREF: sub_1405D9288+211B77↓j
                                        ; sub_1405D9288+211B88↓j
                mov     eax, ebx
                mov     rcx, [rsp+0B8h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                movaps  xmm6, [rsp+0B8h+var_38]
                movaps  xmm7, [rsp+0B8h+var_48]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1405D9448:                          ; CODE XREF: sub_1405D9288+137↑j
                mov     rdi, r14
                mov     [rsp+0B8h+var_98], r14
                jmp     short loc_1405D93E6
; ---------------------------------------------------------------------------

loc_1405D9452:                          ; CODE XREF: sub_1405D9288+E0↑j
                movdqa  xmm0, xmm6
                psrldq  xmm0, 4
                movd    eax, xmm0
                mov     dword ptr [rsp+0B8h+var_80+4], eax
                test    eax, eax
                jnz     short loc_1405D949B
                movdqa  xmm0, xmm6
                psrldq  xmm0, 8
                movd    eax, xmm0
                mov     dword ptr [rsp+0B8h+var_80+8], eax
                test    eax, eax
                jnz     short loc_1405D949B
                movdqa  xmm0, xmm6
                psrldq  xmm0, 0Ch
                movd    eax, xmm0
                mov     dword ptr [rsp+0B8h+var_80+0Ch], eax
                test    eax, eax
                jnz     short loc_1405D949B
                cmp     dword ptr [rsp+0B8h+var_70], eax
                jz      loc_1405D936E

loc_1405D949B:                          ; CODE XREF: sub_1405D9288+C1↑j
                                        ; sub_1405D9288+D0↑j ...
                mov     ebx, 0C000000Dh
                jmp     loc_1405D9413
; } // starts at 1405D9288
sub_1405D9288   endp

; ---------------------------------------------------------------------------
byte_1405D94A5  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400430D8↑o
                                        ; .pdata:00000001400FB910↑o

; =============== S U B R O U T I N E =======================================


sub_1405D94AC   proc near               ; CODE XREF: sub_1405D920C+36↑p
                                        ; DATA XREF: .pdata:00000001400FB91C↑o

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax+8], 0
                mov     rbx, rdx
                add     rdx, 18h
                mov     rdi, rcx
                xor     esi, esi
                mov     r15, rdx
                mov     r14, rdx
                mov     r12d, [rbx+8]
                lea     r13, [rbx+1Fh]
                mov     ecx, [rbx+4]
                add     r12d, ecx
                lea     r13, [r13+r12*8+0]
                and     r13, 0FFFFFFFFFFFFFFF8h
                test    r12d, r12d
                jz      short loc_1405D955D

loc_1405D94FB:                          ; CODE XREF: sub_1405D94AC+A8↓j
                mov     ecx, [r14+4]
                mov     ebp, [r14]
                mov     [r15], rbp
                lea     r15, [r15+8]
                test    ecx, ecx
                jz      short loc_1405D954B
                lea     rdx, [rsp+58h+arg_0]
                call    PsLookupProcessByProcessId
                test    eax, eax
                js      short loc_1405D954B
                mov     rcx, [rsp+58h+arg_0]
                cmp     [rcx+5F4h], ebp
                jnz     short loc_1405D9541
                cmp     esi, [rbx+4]
                jb      loc_1405D95D3
                lock and dword ptr [rcx+464h], 0FFFFBFFFh

loc_1405D953C:                          ; CODE XREF: sub_1405D94AC+132↓j
                mov     rcx, [rsp+58h+arg_0]

loc_1405D9541:                          ; CODE XREF: sub_1405D94AC+7A↑j
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag

loc_1405D954B:                          ; CODE XREF: sub_1405D94AC+5F↑j
                                        ; sub_1405D94AC+6D↑j
                inc     esi
                add     r14, 8
                cmp     esi, r12d
                jb      short loc_1405D94FB
                mov     ecx, [rbx+4]
                lea     rdx, [rbx+18h]

loc_1405D955D:                          ; CODE XREF: sub_1405D94AC+4D↑j
                mov     dword ptr [rsp+58h+var_38], ecx
                lea     r8, [rdi+78h]
                mov     r9, rdx
                mov     rcx, rdi
                lea     rdx, [rdi+60h]
                call    sub_1405D9644
                xor     r14d, r14d
                test    eax, eax
                js      short loc_1405D95B5
                mov     r9d, [rbx+8]
                test    r9d, r9d
                jnz     short loc_1405D95E3

loc_1405D9584:                          ; CODE XREF: sub_1405D94AC+13B↓j
                                        ; sub_1405D94AC+15F↓j
                mov     eax, [rbx+0Ch]
                lea     r8, [rdi+58h]
                lea     rdx, [rdi+38h]
                mov     rcx, rdi
                lea     r9, ds:0[rax*8]
                mov     eax, [rbx+10h]
                add     r9, r13
                mov     dword ptr [rsp+58h+var_38], eax
                call    sub_1405D9644
                mov     r9d, [rbx+0Ch]
                test    r9d, r9d
                jnz     short loc_1405D9613

loc_1405D95B2:                          ; CODE XREF: sub_1405D94AC+16B↓j
                                        ; sub_1405D94AC+18A↓j
                mov     eax, r14d

loc_1405D95B5:                          ; CODE XREF: sub_1405D94AC+CD↑j
                                        ; sub_1405D94AC+165↓j ...
                mov     rbx, [rsp+58h+arg_8]
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

loc_1405D95D3:                          ; CODE XREF: sub_1405D94AC+7F↑j
                lock or dword ptr [rcx+464h], 4000h
                jmp     loc_1405D953C
; ---------------------------------------------------------------------------

loc_1405D95E3:                          ; CODE XREF: sub_1405D94AC+D6↑j
                cmp     [rdi+70h], r14d
                jz      short loc_1405D9584
                mov     eax, [rbx+4]
                lea     r8, [rdi+78h]
                add     rax, 3
                lea     rdx, [rdi+60h]
                lea     rcx, [rbx+rax*8]
                mov     [rsp+58h+var_38], rcx
                mov     rcx, rdi
                call    sub_1405D98BC
                test    eax, eax
                jns     loc_1405D9584
                jmp     short loc_1405D95B5
; ---------------------------------------------------------------------------

loc_1405D9613:                          ; CODE XREF: sub_1405D94AC+104↑j
                cmp     [rdi+48h], r14d
                jz      short loc_1405D95B2
                lea     r8, [rdi+58h]
                mov     [rsp+58h+var_38], r13
                lea     rdx, [rdi+38h]
                mov     rcx, rdi
                call    sub_1405D98BC
                test    eax, eax
                js      short loc_1405D95B5
                mov     [rdi+50h], r14
                jmp     loc_1405D95B2
sub_1405D94AC   endp

; ---------------------------------------------------------------------------
byte_1405D963B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FB91C↑o

; =============== S U B R O U T I N E =======================================


sub_1405D9644   proc near               ; CODE XREF: sub_1405D94AC+C3↑p
                                        ; sub_1405D94AC+F8↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 00000001407EAE16 SIZE 00000007 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r13d, [rsp+58h+arg_20]
                mov     r15, rcx
                mov     ecx, [rdx+8]
                mov     ebp, r13d
                and     [rsp+58h+arg_18], 0
                mov     r12d, 1
                shl     rbp, cl
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     rbp, r9
                shl     r12d, cl
                mov     r14, r9
                mov     rdi, r8
                mov     rsi, rdx
                test    r13d, r13d
                jnz     loc_1405D9828

loc_1405D9699:                          ; CODE XREF: sub_1405D9644+1FE↓j
                cmp     r14, rbp
                jb      short loc_1405D96D1

loc_1405D969E:                          ; CODE XREF: sub_1405D9644+164↓j
                test    r13d, r13d
                jnz     loc_1405D9805

loc_1405D96A7:                          ; CODE XREF: sub_1405D9644+1DF↓j
                xor     r15d, r15d

loc_1405D96AA:                          ; CODE XREF: sub_1405D9644+23C↓j
                                        ; sub_1405D9644+255↓j
                mov     rcx, [rsp+58h+arg_18]
                test    rcx, rcx
                jnz     loc_1405D9885
                mov     rbx, [rsp+58h+arg_10]
                mov     eax, r15d
                add     rsp, 20h
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

loc_1405D96D1:                          ; CODE XREF: sub_1405D9644+58↑j
                                        ; sub_1405D9644+16F↓j
                mov     eax, [rsi+10h]
                add     eax, eax
                cmp     eax, [rsi+0Ch]
                jnb     loc_1405D9847

loc_1405D96DF:                          ; CODE XREF: sub_1405D9644+236↓j
                mov     r8, [r14]
                mov     r9d, [rsi+0Ch]
                mov     [rsp+58h+arg_8], r8
                test    r9d, r9d
                jz      loc_1407EAE16
                mov     r11d, [rsi+8]
                mov     r15, [rsi]
                movzx   eax, r8b
                add     rax, 0B15DCBh
                imul    rcx, rax, 25h ; '%'
                movzx   eax, byte ptr [rsp+58h+arg_8+1]
                add     rcx, rax
                movzx   eax, byte ptr [rsp+58h+arg_8+2]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+58h+arg_8+3]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+58h+arg_8+4]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+58h+arg_8+5]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+58h+arg_8+6]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+58h+arg_8+7]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                lea     eax, [r9-1]
                mov     edx, eax
                mov     r9d, eax
                mov     eax, ecx
                mov     ecx, r11d
                and     r9, rax
                mov     [rsp+58h+arg_8], rdx
                mov     rax, r9
                xor     edx, edx
                shl     rax, cl
                add     rax, r15
                mov     rcx, [rax]
                test    rcx, rcx
                jz      short loc_1405D97F2
                mov     r13, [rsp+58h+arg_8]
                mov     r10, rcx

loc_1405D978A:                          ; CODE XREF: sub_1405D9644+1AA↓j
                mov     rcx, r10
                cmp     r10, r8
                jnz     short loc_1405D97B8

loc_1405D9792:                          ; CODE XREF: sub_1405D9644+1AC↓j
                mov     r13d, [rsp+58h+arg_20]
                test    rcx, rcx
                jz      short loc_1405D97F2

loc_1405D979F:                          ; CODE XREF: sub_1405D9644+1BF↓j
                mov     eax, r12d
                add     r14, rax
                cmp     r14, rbp
                jnb     loc_1405D969E
                mov     r15, [rsp+58h+arg_0]
                jmp     loc_1405D96D1
; ---------------------------------------------------------------------------

loc_1405D97B8:                          ; CODE XREF: sub_1405D9644+14C↑j
                test    rdx, rdx
                jnz     short loc_1405D97D3
                mov     ecx, 9E3779B1h
                mov     rax, r8
                imul    rax, rcx
                test    al, 1
                lea     rdx, [rax+1]
                cmovnz  rdx, rax

loc_1405D97D3:                          ; CODE XREF: sub_1405D9644+177↑j
                add     r9, rdx
                mov     ecx, r11d
                and     r9, r13
                mov     rax, r9
                shl     rax, cl
                add     rax, r15
                mov     rcx, [rax]
                mov     r10, rcx
                test    rcx, rcx
                jnz     short loc_1405D978A
                jmp     short loc_1405D9792
; ---------------------------------------------------------------------------

loc_1405D97F2:                          ; CODE XREF: sub_1405D9644+13C↑j
                                        ; sub_1405D9644+159↑j ...
                mov     r8d, r12d
                mov     rdx, r14
                mov     rcx, rax
                call    memmove
                inc     dword ptr [rsi+10h]
                jmp     short loc_1405D979F
; ---------------------------------------------------------------------------

loc_1405D9805:                          ; CODE XREF: sub_1405D9644+5D↑j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      loc_1405D98A8

loc_1405D9816:                          ; CODE XREF: sub_1405D9644+26C↓j
                mov     rcx, rdi
                call    sub_140243660
                call    KeLeaveCriticalRegion
                jmp     loc_1405D96A7
; ---------------------------------------------------------------------------

loc_1405D9828:                          ; CODE XREF: sub_1405D9644+4F↑j
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                jmp     loc_1405D9699
; ---------------------------------------------------------------------------

loc_1405D9847:                          ; CODE XREF: sub_1405D9644+95↑j
                mov     rax, rbx
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1405D989E

loc_1405D9855:                          ; CODE XREF: sub_1405D9644+262↓j
                mov     rcx, rdi
                call    sub_140243660
                call    KeLeaveCriticalRegion
                lea     r9, [rsp+58h+arg_18]
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1407B1978
                mov     r15d, eax
                test    eax, eax
                jns     loc_1405D96DF
                jmp     loc_1405D96AA
; ---------------------------------------------------------------------------

loc_1405D9885:                          ; CODE XREF: sub_1405D9644+6E↑j
                mov     rax, [rsp+58h+arg_18]
                mov     rdx, [rax]
                mov     [rsp+58h+arg_18], rdx
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     loc_1405D96AA
; ---------------------------------------------------------------------------

loc_1405D989E:                          ; CODE XREF: sub_1405D9644+20F↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_1405D9855
; ---------------------------------------------------------------------------

loc_1405D98A8:                          ; CODE XREF: sub_1405D9644+1CC↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     loc_1405D9816
sub_1405D9644   endp

; ---------------------------------------------------------------------------
byte_1405D98B5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140043124↑o
                                        ; .pdata:00000001400FB928↑o

; =============== S U B R O U T I N E =======================================


sub_1405D98BC   proc near               ; CODE XREF: sub_1405D94AC+158↑p
                                        ; sub_1405D94AC+17D↑p
                                        ; DATA XREF: ...

var_A8          = dword ptr -0A8h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407EAE1E SIZE 00000018 BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     r14, r8
                mov     r13, rdx
                add     [rax+1E4h], bx
                lea     r12, [rcx+80h]
                xor     edx, edx
                mov     rcx, r12
                mov     [rsp+0A8h+var_78], r12
                call    ExAcquirePushLockExclusiveEx
                mov     esi, [r13+0Ch]
                xor     edi, edi
                mov     ecx, [r13+8]
                shl     esi, cl
                test    esi, esi
                jz      loc_1405D9A88
                mov     edx, esi
                lea     ecx, [rbx+2]
                mov     r8d, 48436650h
                call    ExAllocatePoolWithTag
                mov     [rsp+0A8h+var_88], rax
                mov     r15, rax
                test    rax, rax
                jz      loc_1407EAE1E
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockSharedEx
                movups  xmm1, xmmword ptr [r13+0]
                lea     r8d, [rbx+2]
                or      edx, 0FFFFFFFFh
                movsd   xmm0, qword ptr [r13+10h]
                mov     ebp, r8d
                movups  [rsp+0A8h+var_58], xmm1
                psrldq  xmm1, 8
                movd    ecx, xmm1
                movsd   [rsp+0A8h+var_48], xmm0
                movd    dword ptr [rsp+0A8h+arg_0], xmm1
                shl     ebp, cl
                mov     ecx, edx
                mov     eax, ebp
                test    ebp, ebp
                jz      short loc_1405D9997

loc_1405D9990:                          ; CODE XREF: sub_1405D98BC+D9↓j
                add     ecx, r8d
                shr     eax, 1
                jnz     short loc_1405D9990

loc_1405D9997:                          ; CODE XREF: sub_1405D98BC+D2↑j
                lea     eax, [rbp-1]
                test    ebp, eax
                lea     r9d, [rcx+1]
                cmovz   r9d, ecx
                mov     ecx, r9d
                mov     [rsp+0A8h+arg_8], r9d
                shr     esi, cl
                lea     eax, [rsi-1]
                test    esi, eax
                jnz     loc_1405D9BF1

loc_1405D99BC:                          ; CODE XREF: sub_1405D98BC+347↓j
                mov     ecx, r9d
                mov     r8d, esi
                shl     r8, cl
                xor     edx, edx
                mov     rcx, r15
                mov     [rsp+0A8h+var_60], edi
                mov     [rsp+0A8h+var_68], r9d
                call    memset
                mov     r15, qword ptr [rsp+0A8h+var_58]
                mov     edx, dword ptr [rsp+0A8h+var_58+0Ch]
                mov     ecx, dword ptr [rsp+0A8h+arg_0]
                shl     rdx, cl
                add     rdx, r15
                mov     [rsp+0A8h+var_80], rdx
                cmp     r15, rdx
                jnb     short loc_1405D9A21
                mov     ebx, ebp
                mov     r12d, edi
                mov     ebp, [rsp+0A8h+arg_8]

loc_1405D9A04:                          ; CODE XREF: sub_1405D98BC+15A↓j
                mov     r8, [r15]
                test    r8, r8
                jnz     loc_1405D9AC2

loc_1405D9A10:                          ; CODE XREF: sub_1405D98BC+234↓j
                                        ; sub_1405D98BC+264↓j
                add     r15, rbx
                cmp     r15, rdx
                jb      short loc_1405D9A04
                mov     r12, [rsp+0A8h+var_78]
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_1405D9A21:                          ; CODE XREF: sub_1405D98BC+13A↑j
                mov     rax, [rsp+0A8h+var_88]
                mov     [r13+0], rax
                mov     eax, [rsp+0A8h+var_60]
                mov     [r13+10h], eax
                mov     eax, 11h
                lock cmpxchg [r14], rdi
                jnz     loc_1405D9C15

loc_1405D9A42:                          ; CODE XREF: sub_1405D98BC+361↓j
                mov     rcx, r14
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                lock or [rsp+0A8h+var_A8], edi
                mov     rax, [r14]
                test    al, 1
                jnz     loc_1407EAE28

loc_1405D9A6E:                          ; CODE XREF: sub_1405D98BC+211575↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, qword ptr [rsp+0A8h+var_58]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1405D9A88:                          ; CODE XREF: sub_1405D98BC+57↑j
                                        ; sub_1405D98BC+211567↓j
                lock xadd [r12], rbx
                and     bl, 6
                cmp     bl, 2
                jz      loc_1405D9C08

loc_1405D9A9A:                          ; CODE XREF: sub_1405D98BC+354↓j
                mov     rcx, r12
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     rbx, [rsp+0A8h+arg_10]
                mov     eax, edi
                add     rsp, 70h
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

loc_1405D9AC2:                          ; CODE XREF: sub_1405D98BC+14E↑j
                mov     r10, [rsp+0A8h+arg_20]
                test    r10, r10
                jz      short loc_1405D9AF6
                mov     r9d, [rsp+0A8h+arg_18]
                mov     ecx, edi
                test    r9d, r9d
                jz      short loc_1405D9AF6

loc_1405D9ADE:                          ; CODE XREF: sub_1405D98BC+22F↓j
                mov     eax, ecx
                cmp     [r10+rax*8], r8
                jz      short loc_1405D9AED
                inc     ecx
                cmp     ecx, r9d
                jb      short loc_1405D9ADE

loc_1405D9AED:                          ; CODE XREF: sub_1405D98BC+228↑j
                cmp     ecx, r9d
                jb      loc_1405D9A10

loc_1405D9AF6:                          ; CODE XREF: sub_1405D98BC+211↑j
                                        ; sub_1405D98BC+220↑j
                mov     [rsp+0A8h+arg_0], r8
                test    esi, esi
                jnz     short loc_1405D9B25
                mov     rax, rdi

loc_1405D9B05:                          ; CODE XREF: sub_1405D98BC+31F↓j
                                        ; sub_1405D98BC+328↓j
                mov     r8, rbx
                mov     rdx, r15
                mov     rcx, rax
                call    memmove
                mov     rdx, [rsp+0A8h+var_80]
                inc     r12d
                mov     [rsp+0A8h+var_60], r12d
                jmp     loc_1405D9A10
; ---------------------------------------------------------------------------

loc_1405D9B25:                          ; CODE XREF: sub_1405D98BC+244↑j
                mov     r10, [rsp+0A8h+var_88]
                lea     r11d, [rsi-1]
                movzx   eax, r8b
                add     rax, 0B15DCBh
                mov     r9d, r11d
                imul    rcx, rax, 25h ; '%'
                movzx   eax, byte ptr [rsp+0A8h+arg_0+1]
                add     rcx, rax
                movzx   eax, byte ptr [rsp+0A8h+arg_0+2]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+0A8h+arg_0+3]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+0A8h+arg_0+4]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+0A8h+arg_0+5]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [rsp+0A8h+arg_0+6]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [rsp+0A8h+arg_0+7]
                imul    rcx, rdx, 25h ; '%'
                mov     rdx, rdi
                add     rax, rcx
                mov     eax, eax
                jmp     short loc_1405D9BC7
; ---------------------------------------------------------------------------

loc_1405D9BAB:                          ; CODE XREF: sub_1405D98BC+333↓j
                mov     ecx, 9E3779B1h
                mov     rax, r8
                imul    rax, rcx
                test    al, 1
                lea     rdx, [rax+1]
                cmovnz  rdx, rax

loc_1405D9BC1:                          ; CODE XREF: sub_1405D98BC+331↓j
                add     r9, rdx
                mov     eax, r11d

loc_1405D9BC7:                          ; CODE XREF: sub_1405D98BC+2ED↑j
                and     r9, rax
                mov     ecx, ebp
                mov     rax, r9
                shl     rax, cl
                add     rax, r10
                mov     rcx, [rax]
                test    rcx, rcx
                jz      loc_1405D9B05
                cmp     rcx, r8
                jz      loc_1405D9B05
                test    rdx, rdx
                jnz     short loc_1405D9BC1
                jmp     short loc_1405D9BAB
; ---------------------------------------------------------------------------

loc_1405D9BF1:                          ; CODE XREF: sub_1405D98BC+FA↑j
                test    esi, esi
                jz      short loc_1405D9BFC

loc_1405D9BF5:                          ; CODE XREF: sub_1405D98BC+33E↓j
                add     edx, r8d
                shr     esi, 1
                jnz     short loc_1405D9BF5

loc_1405D9BFC:                          ; CODE XREF: sub_1405D98BC+337↑j
                mov     ecx, edx
                mov     esi, r8d
                shl     esi, cl
                jmp     loc_1405D99BC
; ---------------------------------------------------------------------------

loc_1405D9C08:                          ; CODE XREF: sub_1405D98BC+1D8↑j
                mov     rcx, r12
                call    ExfTryToWakePushLock
                jmp     loc_1405D9A9A
; ---------------------------------------------------------------------------

loc_1405D9C15:                          ; CODE XREF: sub_1405D98BC+180↑j
                mov     rcx, r14
                call    ExfReleasePushLockShared
                jmp     loc_1405D9A42
sub_1405D98BC   endp

; ---------------------------------------------------------------------------
algn_1405D9C22:                         ; DATA XREF: .rdata:0000000140043150↑o
                                        ; .pdata:00000001400FB934↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405D9C28   proc near               ; CODE XREF: sub_1405D9D0C+1BE↓p
                                        ; sub_1405D9D0C+25D↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001407EAE36 SIZE 00000030 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     r11, r8
                mov     rax, rdx
                mov     r8d, [r8]
                mov     edi, r9d
                mov     rbx, rcx
                mov     edx, [r11+8]
                test    r8d, r8d
                jz      loc_1407EAE36
                test    edx, edx
                jz      loc_1407EAE48
                cmp     r8d, [rax+20h]
                ja      loc_1407EAE52
                and     [rsp+38h+var_18], 0
                lea     rcx, [rax+18h]
                shl     r8d, 4
                mov     r9d, 8
                call    sub_1405DA018
                test    al, al
                jz      loc_1407EAE5C
                mov     edx, [r11+8]
                xor     r10d, r10d
                mov     r11d, [r11]
                add     rdx, rbx
                xor     ecx, ecx
                xor     r9d, r9d
                test    r11d, r11d
                jz      short loc_1405D9CD5

loc_1405D9C97:                          ; CODE XREF: sub_1405D9C28+AB↓j
                mov     r8, [rdx]
                cmp     r8, rcx
                jb      short loc_1405D9CFF
                lea     ecx, [rdi-1]
                test    r8, rcx
                jnz     short loc_1405D9CF8
                mov     eax, [rdx+8]
                lea     rcx, [r8+rax]
                cmp     rcx, r8
                jb      short loc_1405D9CF1
                test    eax, eax
                jz      short loc_1405D9CEA
                shr     eax, 0Ch
                lea     r8d, [r10+2]
                add     r8d, eax
                cmp     r8d, r10d
                jb      short loc_1405D9CE3
                inc     r9d
                add     rdx, 10h
                mov     r10d, r8d
                cmp     r9d, r11d
                jb      short loc_1405D9C97

loc_1405D9CD5:                          ; CODE XREF: sub_1405D9C28+6D↑j
                                        ; sub_1405D9C28+211210↓j
                xor     eax, eax

loc_1405D9CD7:                          ; CODE XREF: sub_1405D9C28+C0↓j
                                        ; sub_1405D9C28+C7↓j ...
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D9CE3:                          ; CODE XREF: sub_1405D9C28+9C↑j
                mov     eax, 6590h
                jmp     short loc_1405D9CD7
; ---------------------------------------------------------------------------

loc_1405D9CEA:                          ; CODE XREF: sub_1405D9C28+8D↑j
                mov     eax, 61A8h
                jmp     short loc_1405D9CD7
; ---------------------------------------------------------------------------

loc_1405D9CF1:                          ; CODE XREF: sub_1405D9C28+89↑j
                mov     eax, 60AEh
                jmp     short loc_1405D9CD7
; ---------------------------------------------------------------------------

loc_1405D9CF8:                          ; CODE XREF: sub_1405D9C28+7D↑j
                mov     eax, 5FB4h
                jmp     short loc_1405D9CD7
; ---------------------------------------------------------------------------

loc_1405D9CFF:                          ; CODE XREF: sub_1405D9C28+75↑j
                mov     eax, 5DC0h
                jmp     short loc_1405D9CD7
sub_1405D9C28   endp

; ---------------------------------------------------------------------------
byte_1405D9D06  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140043170↑o
                                        ; .pdata:00000001400FB940↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1405D9D0C   proc near               ; CODE XREF: sub_1405DA2CC+C8↓p
                                        ; DATA XREF: .rdata:00000001400431A0↑o ...

var_60          = dword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_8           = dword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h

; FUNCTION CHUNK AT 00000001407EAE66 SIZE 00000087 BYTES

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                mov     [rsp-28h+arg_10], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xorps   xmm0, xmm0
                xor     eax, eax
                mov     [rbp+var_10], rax
                mov     rbx, rcx
                mov     [rbp+var_8], eax
                movups  [rbp+var_40], xmm0
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_50], xmm0
                cmp     edx, 80h
                jb      loc_1407EAE66
                cmp     dword ptr [rcx], 0Dh
                jnz     loc_1407EAE70
                mov     eax, [rcx+4]
                cmp     edx, eax
                jnz     loc_1407EAE7A
                add     rax, rcx
                cmp     rax, rcx
                jb      loc_1407EAE84
                mov     eax, [rcx+1Ch]
                mov     r13d, 8
                movzx   ecx, ax
                cmp     ecx, r13d
                jnb     loc_1407EAE8E
                cmp     [rbx+1Eh], r13w
                jnb     loc_1407EAE98
                mov     eax, [rbx+50h]
                test    al, 0C0h
                jnz     loc_1407EAEA2
                cmp     byte ptr [rbx+51h], 6
                jnb     loc_1407EAEAC
                lea     r8, [rbp+var_40]
                mov     rcx, rbx
                call    sub_1405DA058
                test    eax, eax
                jnz     loc_1405D9F2C
                mov     eax, [rbx+8]
                lea     r15d, [r13-7]
                mov     edx, [rbx+20h]
                lea     rcx, [rbp+var_40]
                mov     r9d, r13d
                mov     [rsp+80h+var_60], r15d
                lea     r8d, [rax+rax*4]
                shl     r8d, 3
                call    sub_1405DA018
                test    al, al
                jz      loc_1407EAEB6
                lfence
                mov     edi, [rbx+20h]
                xor     r14d, r14d
                add     rdi, rbx
                cmp     [rbx+8], r14d
                jbe     loc_1405D9EF9

loc_1405D9E03:                          ; CODE XREF: sub_1405D9D0C+1E7↓j
                lea     r12, [r14+r14*4]
                mov     rcx, rbx
                mov     eax, [rdi+r12*8+20h]
                lea     r8, [rbp+var_50]
                mov     dword ptr [rbp+var_50], eax
                lea     rdx, [rbp+var_40]
                mov     eax, [rdi+r12*8+18h]
                mov     dword ptr [rbp+var_50+8], eax
                call    sub_1405D9F8C
                test    eax, eax
                jnz     loc_1405D9F2C
                mov     r11d, [rdi+r12*8+0Ch]
                shr     r11d, 1
                jz      loc_1407EAEE3
                cmp     r11d, dword ptr [rbp+var_30+4]
                ja      loc_1407EAED9
                mov     esi, [rdi+r12*8+10h]
                lea     r8d, [r11+r11*2]
                shl     r8d, 4
                lea     rcx, [rbp+var_40+0Ch]
                mov     edx, esi
                mov     [rsp+80h+var_60], r15d
                mov     r9d, r13d
                call    sub_1405DA018
                test    al, al
                jz      loc_1407EAECF
                xor     r15d, r15d
                lea     r13, [rbx+rsi]
                test    r11d, r11d
                jz      short loc_1405D9EE2

loc_1405D9E7B:                          ; CODE XREF: sub_1405D9D0C+1D4↓j
                lea     rsi, [r15+r15*2]
                shl     rsi, 4
                add     rsi, r13
                lea     r8, [rsi+20h]
                cmp     dword ptr [r8], 0
                jz      loc_1407EAEC0

loc_1405D9E94:                          ; CODE XREF: sub_1405D9D0C+2111BE↓j
                lea     rdx, [rbp+var_40]
                mov     rcx, rbx
                call    sub_1405D9F8C
                test    eax, eax
                jnz     loc_1405D9F2C

loc_1405D9EA8:                          ; CODE XREF: sub_1405D9D0C+2111B8↓j
                mov     eax, [rsi]
                lea     r8, [rsi+10h]
                and     al, 1
                lea     rdx, [rbp+var_40]
                neg     al
                mov     rcx, rbx
                sbb     r9d, r9d
                and     r9d, 0FFFFF200h
                add     r9d, 1000h
                call    sub_1405D9C28
                test    eax, eax
                jnz     short loc_1405D9F2C
                mov     eax, [rdi+r12*8+0Ch]
                inc     r15d
                shr     eax, 1
                cmp     r15d, eax
                jb      short loc_1405D9E7B

loc_1405D9EE2:                          ; CODE XREF: sub_1405D9D0C+16D↑j
                mov     r15d, 1
                add     r14d, r15d
                lea     r13d, [r15+7]
                cmp     r14d, [rbx+8]
                jb      loc_1405D9E03

loc_1405D9EF9:                          ; CODE XREF: sub_1405D9D0C+F1↑j
                mov     r11d, [rbx+14h]
                lea     rcx, [rbp+var_20+4]
                mov     edi, [rbx+38h]
                mov     r9d, r13d
                mov     edx, edi
                mov     [rsp+80h+var_60], r15d
                lea     r8d, [r11+r11*4]
                shl     r8d, 3
                call    sub_1405DA018
                test    al, al
                jz      short loc_1405D9F7C
                lea     rsi, [rbx+rdi]
                xor     edi, edi
                test    r11d, r11d
                jnz     short loc_1405D9F4E

loc_1405D9F2A:                          ; CODE XREF: sub_1405D9D0C+26C↓j
                xor     eax, eax

loc_1405D9F2C:                          ; CODE XREF: sub_1405D9D0C+B0↑j
                                        ; sub_1405D9D0C+11D↑j ...
                lea     r11, [rsp+80h+var_s0]
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
                align 2

loc_1405D9F4E:                          ; CODE XREF: sub_1405D9D0C+21C↑j
                                        ; sub_1405D9D0C+26E↓j
                mov     ecx, edi
                lea     rdx, [rbp+var_40]
                add     rcx, 3
                mov     r9d, 1000h
                lea     rcx, [rcx+rdi*4]
                lea     r8, [rsi+rcx*8]
                mov     rcx, rbx
                call    sub_1405D9C28
                test    eax, eax
                jnz     short loc_1405D9F2C
                add     edi, r15d
                cmp     edi, [rbx+14h]
                jnb     short loc_1405D9F2A
                jmp     short loc_1405D9F4E
; ---------------------------------------------------------------------------

loc_1405D9F7C:                          ; CODE XREF: sub_1405D9D0C+211↑j
                mov     eax, 9C40h
                jmp     short loc_1405D9F2C
sub_1405D9D0C   endp

; ---------------------------------------------------------------------------
byte_1405D9F83  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400431A0↑o
                                        ; .pdata:00000001400FB94C↑o

; =============== S U B R O U T I N E =======================================


sub_1405D9F8C   proc near               ; CODE XREF: sub_1405D9D0C+116↑p
                                        ; sub_1405D9D0C+18F↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     r11, r8
                mov     rax, rdx
                mov     r8d, [r8+8]
                mov     rbx, rcx
                cmp     r8d, 7FFFh
                jnb     short loc_1405D9FF6
                test    r8d, r8d
                jz      short loc_1405D9FFD
                mov     edx, [r11]
                test    edx, edx
                jz      short loc_1405DA004
                lea     r8d, ds:2[r8*2]
                mov     [rsp+38h+var_18], 1
                lea     rcx, [rax+30h]
                mov     r9d, 2
                call    sub_1405DA018
                test    al, al
                jz      short loc_1405DA00B
                mov     ecx, [r11]
                mov     edx, [r11+8]
                add     rcx, rbx
                movzx   eax, word ptr [rcx+rdx*2]
                neg     ax
                sbb     eax, eax
                and     eax, 2EE0h

loc_1405D9FEF:                          ; CODE XREF: sub_1405D9F8C+6F↓j
                                        ; sub_1405D9F8C+76↓j ...
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405D9FF6:                          ; CODE XREF: sub_1405D9F8C+1A↑j
                mov     eax, 2710h
                jmp     short loc_1405D9FEF
; ---------------------------------------------------------------------------

loc_1405D9FFD:                          ; CODE XREF: sub_1405D9F8C+1F↑j
                mov     eax, 2904h
                jmp     short loc_1405D9FEF
; ---------------------------------------------------------------------------

loc_1405DA004:                          ; CODE XREF: sub_1405D9F8C+26↑j
                mov     eax, 29FEh
                jmp     short loc_1405D9FEF
; ---------------------------------------------------------------------------

loc_1405DA00B:                          ; CODE XREF: sub_1405D9F8C+49↑j
                mov     eax, 2AF8h
                jmp     short loc_1405D9FEF
sub_1405D9F8C   endp

; ---------------------------------------------------------------------------
algn_1405DA012:                         ; DATA XREF: .pdata:00000001400FB958↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405DA018   proc near               ; CODE XREF: sub_1405D9C28+4B↑p
                                        ; sub_1405D9D0C+D4↑p ...

arg_20          = dword ptr  28h

                mov     r10d, [rcx]
                cmp     edx, r10d
                jb      short loc_1405DA04D
                mov     eax, [rcx+4]
                cmp     edx, eax
                jnb     short loc_1405DA048

loc_1405DA027:                          ; CODE XREF: sub_1405DA018+33↓j
                add     edx, r8d
                cmp     edx, r10d
                jb      short loc_1405DA04D
                cmp     edx, eax
                ja      short loc_1405DA04D
                lea     eax, [r9-1]
                test    edx, eax
                jnz     short loc_1405DA04D
                cmp     [rsp+arg_20], 0
                jz      short loc_1405DA044
                mov     [rcx], edx

loc_1405DA044:                          ; CODE XREF: sub_1405DA018+28↑j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1405DA048:                          ; CODE XREF: sub_1405DA018+D↑j
                test    r8d, r8d
                jz      short loc_1405DA027

loc_1405DA04D:                          ; CODE XREF: sub_1405DA018+6↑j
                                        ; sub_1405DA018+15↑j ...
                xor     al, al
                retn
sub_1405DA018   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1405DA051:                         ; DATA XREF: .pdata:00000001400FB964↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405DA058   proc near               ; CODE XREF: sub_1405D9D0C+A9↑p
                                        ; DATA XREF: .rdata:00000001400431D0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407EAEEE SIZE 000000E8 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                xorps   xmm0, xmm0
                mov     r10d, edx
                movups  xmmword ptr [r8], xmm0
                xor     eax, eax
                mov     r11, rcx
                movups  xmmword ptr [r8+10h], xmm0
                mov     r9d, 80h
                movups  xmmword ptr [r8+20h], xmm0
                mov     [r8+30h], rax
                mov     [r8+38h], eax
                mov     edi, [rcx+8]
                mov     ebx, [rcx+20h]
                test    edi, edi
                jz      loc_1407EAEF8
                test    ebx, ebx
                jz      loc_1407EAEEE

loc_1405DA0A4:                          ; CODE XREF: sub_1405DA058+210EA2↓j
                mov     rsi, 0CCCCCCCCCCCCCCCDh
                test    ebx, ebx
                jz      short loc_1405DA106
                cmp     ebx, r9d
                jb      loc_1407EAF0A
                mov     rax, rsi
                mul     r10
                shr     rdx, 5
                cmp     rdi, rdx
                ja      loc_1407EAF14
                lea     ecx, [rdi+rdi*4]
                shl     ecx, 3
                cmp     ebx, r10d
                jnb     loc_1407EAF1E
                cmp     ecx, r10d
                jnb     loc_1407EAF1E
                mov     eax, r10d
                sub     eax, ecx
                cmp     ebx, eax
                ja      loc_1407EAF1E
                lea     r9d, [rbx+rcx]
                mov     [r8], ebx
                mov     [r8+4], r9d
                mov     eax, [r11+8]
                mov     [r8+8], eax

loc_1405DA106:                          ; CODE XREF: sub_1405DA058+58↑j
                mov     edi, [r11+0Ch]
                mov     ebx, [r11+28h]
                test    edi, edi
                jz      loc_1407EAF32
                test    ebx, ebx
                jz      loc_1407EAF28
                cmp     ebx, r9d
                jb      loc_1407EAF44
                mov     rax, 0AAAAAAAAAAAAAAABh
                mul     r10
                shr     rdx, 5
                cmp     rdi, rdx
                ja      loc_1407EAF4E
                lea     ecx, [rdi+rdi*2]
                shl     ecx, 4
                cmp     ebx, r10d
                jnb     loc_1407EAF58
                cmp     ecx, r10d
                jnb     loc_1407EAF58
                mov     eax, r10d
                sub     eax, ecx
                cmp     ebx, eax
                ja      loc_1407EAF58
                lea     r9d, [rbx+rcx]
                mov     [r8+0Ch], ebx
                mov     [r8+10h], r9d
                mov     eax, [r11+0Ch]
                mov     [r8+14h], eax

loc_1405DA17A:                          ; CODE XREF: sub_1405DA058+210EDC↓j
                mov     edx, [r11+10h]
                mov     ecx, [r11+30h]
                test    edx, edx
                jz      loc_1407EAF6C
                test    ecx, ecx
                jz      loc_1407EAF62
                cmp     ecx, r9d
                jb      loc_1407EAF7E
                mov     eax, r10d
                shr     eax, 4
                cmp     edx, eax
                ja      loc_1407EAF88
                shl     edx, 4
                cmp     ecx, r10d
                jnb     loc_1407EAF92
                cmp     edx, r10d
                jnb     loc_1407EAF92
                mov     eax, r10d
                sub     eax, edx
                cmp     ecx, eax
                ja      loc_1407EAF92
                lea     r9d, [rcx+rdx]
                mov     [r8+18h], ecx
                mov     [r8+1Ch], r9d
                mov     eax, [r11+10h]
                mov     [r8+20h], eax

loc_1405DA1DF:                          ; CODE XREF: sub_1405DA058+210F16↓j
                mov     edi, [r11+14h]
                mov     ebx, [r11+38h]
                test    edi, edi
                jnz     short loc_1405DA25D
                test    ebx, ebx
                jnz     loc_1407EAF9C

loc_1405DA1F3:                          ; CODE XREF: sub_1405DA058+24A↓j
                mov     edx, [r11+18h]
                mov     ecx, [r11+40h]
                test    edx, edx
                jz      loc_1407EAFB0
                test    ecx, ecx
                jz      loc_1407EAFA6
                cmp     ecx, r9d
                jb      loc_1407EAFC2
                cmp     ecx, r10d
                jnb     loc_1407EAFCC
                cmp     edx, r10d
                jnb     loc_1407EAFCC
                mov     eax, r10d
                sub     eax, edx
                cmp     ecx, eax
                ja      loc_1407EAFCC
                lea     r9d, [rcx+rdx]
                mov     [r8+30h], ecx
                mov     [r8+34h], r9d

loc_1405DA23F:                          ; CODE XREF: sub_1405DA058+210F5A↓j
                sub     r9d, r10d
                neg     r9d
                sbb     eax, eax
                and     eax, 2328h

loc_1405DA24C:                          ; CODE XREF: sub_1405DA058+254↓j
                                        ; sub_1405DA058+25B↓j ...
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405DA25D:                          ; CODE XREF: sub_1405DA058+191↑j
                test    ebx, ebx
                jz      short loc_1405DA2A7
                cmp     ebx, r9d
                jb      short loc_1405DA2AE
                mov     rax, rsi
                mul     r10
                shr     rdx, 5
                cmp     rdi, rdx
                ja      short loc_1405DA2B5
                lea     ecx, [rdi+rdi*4]
                shl     ecx, 3
                cmp     ebx, r10d
                jnb     short loc_1405DA2BC
                cmp     ecx, r10d
                jnb     short loc_1405DA2BC
                mov     eax, r10d
                sub     eax, ecx
                cmp     ebx, eax
                ja      short loc_1405DA2BC
                lea     r9d, [rbx+rcx]
                mov     [r8+24h], ebx
                mov     [r8+28h], r9d
                mov     eax, [r11+14h]
                mov     [r8+2Ch], eax
                jmp     loc_1405DA1F3
; ---------------------------------------------------------------------------

loc_1405DA2A7:                          ; CODE XREF: sub_1405DA058+207↑j
                mov     eax, 1B58h
                jmp     short loc_1405DA24C
; ---------------------------------------------------------------------------

loc_1405DA2AE:                          ; CODE XREF: sub_1405DA058+20C↑j
                mov     eax, 1C20h
                jmp     short loc_1405DA24C
; ---------------------------------------------------------------------------

loc_1405DA2B5:                          ; CODE XREF: sub_1405DA058+21B↑j
                mov     eax, 1C84h
                jmp     short loc_1405DA24C
; ---------------------------------------------------------------------------

loc_1405DA2BC:                          ; CODE XREF: sub_1405DA058+226↑j
                                        ; sub_1405DA058+22B↑j ...
                mov     eax, 1CE8h
                jmp     short loc_1405DA24C
sub_1405DA058   endp

; ---------------------------------------------------------------------------
byte_1405DA2C3  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400431D0↑o
                                        ; .pdata:00000001400FB970↑o

; =============== S U B R O U T I N E =======================================


sub_1405DA2CC   proc near               ; CODE XREF: sub_1405D8B28+150↑p
                                        ; DATA XREF: .rdata:0000000140043220↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407EAFD6 SIZE 00000028 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], dl
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     dil, dl
                mov     rsi, rcx
                xor     ebx, ebx
                and     [rsp+78h+arg_0], ebx
                cmp     dword ptr [rcx+8], 5
                jnz     loc_1407EAFD6
                mov     eax, [rcx+18h]
                cmp     eax, 80h
                jb      loc_1407EAFE0
                mov     edx, eax
                mov     r8d, 51526650h
                lea     r14d, [rbx+1]
                mov     ecx, r14d
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+78h+arg_18], rax
                test    rax, rax
                jz      loc_1407EAFEA

loc_1405DA32E:                          ; DATA XREF: .rdata:00000001400431FC↑o
;   __try { // __except at loc_1405DA37F
                test    dil, dil
                jz      short loc_1405DA36D
                mov     eax, [rsi+18h]
                test    eax, eax
                jz      short loc_1405DA36D
                mov     rcx, [rsi+10h]
                test    cl, 7
                jnz     short loc_1405DA368
                lea     rdx, [rcx+rax]
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                ja      short loc_1405DA35B
                cmp     rdx, rcx
                jnb     short loc_1405DA36D

loc_1405DA35B:                          ; CODE XREF: sub_1405DA2CC+88↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405DA36D
; ---------------------------------------------------------------------------

loc_1405DA368:                          ; CODE XREF: sub_1405DA2CC+75↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405DA36D:                          ; CODE XREF: sub_1405DA2CC+65↑j
                                        ; sub_1405DA2CC+6C↑j ...
                mov     r8d, [rsi+18h]
                mov     rdx, [rsi+10h]
                mov     rcx, rbx
                call    memmove
                jmp     short loc_1405DA38E
;   } // starts at 1405DA32E
; ---------------------------------------------------------------------------

loc_1405DA37F:                          ; DATA XREF: .rdata:00000001400431FC↑o
;   __except(1) // owned by 1405DA32E
                mov     edi, eax
                mov     rbx, [rsp+78h+arg_18]
                jmp     loc_1405DA48D
; ---------------------------------------------------------------------------

loc_1405DA38E:                          ; CODE XREF: sub_1405DA2CC+B1↑j
                mov     edx, [rsi+18h]
                mov     rcx, rbx
                call    sub_1405D9D0C
                test    eax, eax
                jnz     loc_1407EAFF4
                mov     rcx, [rbx+48h]
                test    rcx, rcx
                jz      short loc_1405DA3F6
                mov     r8, cs:ExEventObjectType
                and     [rsp+78h+arg_10], 0
                and     [rsp+78h+var_50], 0
                lea     rax, [rsp+78h+arg_10]
                mov     [rsp+78h+var_58], rax
                mov     r9b, dil
                mov     edx, r14d
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     rax, [rsp+78h+arg_10]
                mov     [rbx+48h], rax
                test    edi, edi
                js      loc_1405DA48D
                mov     [rsp+78h+arg_0], r14d

loc_1405DA3F6:                          ; CODE XREF: sub_1405DA2CC+DC↑j
                mov     rcx, rbx
                call    sub_1405DA5D8
                mov     edi, eax
                mov     edx, [rbx+28h]
                lea     r15, [rdx+rbx]
                mov     ecx, [rbx+0Ch]
                lea     r12, [rcx+rcx*2]
                shl     r12, 4
                add     r12, r15
                mov     r13, [rsi+10h]
                lea     r14, [rdx+r13]

loc_1405DA41D:                          ; DATA XREF: .rdata:000000014004320C↑o
;   __try { // __except at loc_1405DA483
                cmp     [rsp+78h+arg_8], 0
                jz      short loc_1405DA438
                mov     edx, [rsi+18h]
                mov     r8d, 8
                mov     rcx, r13
                call    ProbeForWrite

loc_1405DA438:                          ; CODE XREF: sub_1405DA2CC+159↑j
                                        ; sub_1405DA2CC+18F↓j
                cmp     r15, r12
                jnb     short loc_1405DA45D
                mov     ecx, [r15]
                xor     ecx, [r14]
                and     ecx, 8
                xor     [r14], ecx
                add     r15, 30h ; '0'
                mov     [rsp+78h+var_48], r15
                add     r14, 30h ; '0'
                mov     [rsp+78h+var_40], r14
                jmp     short loc_1405DA438
; ---------------------------------------------------------------------------

loc_1405DA45D:                          ; CODE XREF: sub_1405DA2CC+16F↑j
                movups  xmm0, xmmword ptr [rbx+54h]
                movups  xmmword ptr [r13+54h], xmm0
                movups  xmm1, xmmword ptr [rbx+64h]
                movups  xmmword ptr [r13+64h], xmm1
                movsd   xmm0, qword ptr [rbx+74h]
                movsd   qword ptr [r13+74h], xmm0
                mov     eax, [rbx+7Ch]
                mov     [r13+7Ch], eax
                jmp     short loc_1405DA48D
;   } // starts at 1405DA41D
; ---------------------------------------------------------------------------

loc_1405DA483:                          ; DATA XREF: .rdata:000000014004320C↑o
;   __except(1) // owned by 1405DA41D
                mov     edi, eax
                mov     rbx, [rsp+78h+arg_18]

loc_1405DA48D:                          ; CODE XREF: sub_1405DA2CC+BD↑j
                                        ; sub_1405DA2CC+11C↑j ...
                cmp     [rsp+78h+arg_0], 0
                jz      short loc_1405DA4A0
                mov     rcx, [rbx+48h]
                call    PsDereferenceSiloContext

loc_1405DA4A0:                          ; CODE XREF: sub_1405DA2CC+1C9↑j
                test    rbx, rbx
                jz      short loc_1405DA4AF
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1405DA4AF:                          ; CODE XREF: sub_1405DA2CC+1D7↑j
                mov     eax, edi
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405DA2CC
sub_1405DA2CC   endp

algn_1405DA4C2:                         ; DATA XREF: .rdata:0000000140043220↑o
                                        ; .pdata:00000001400FB97C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405DA4C8   proc near               ; CODE XREF: sub_1405DA5D8+B6↓p
                                        ; sub_1406962F0+13E↓p ...
                push    rbx
                sub     rsp, 20h
                xor     edx, edx
                mov     r8d, 90h
                mov     rbx, rcx
                call    memset
                lea     rax, sub_1408E1340
                mov     [rbx+30h], rbx
                lea     rcx, [rbx+58h]
                mov     [rbx+28h], rax
                xor     r8d, r8d
                xor     edx, edx
                call    KeInitializeEvent
                mov     qword ptr [rbx+78h], 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405DA4C8   endp

algn_1405DA50A:                         ; DATA XREF: .pdata:00000001400FB988↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405DA510   proc near               ; CODE XREF: sub_1405DA5D8+1FE↓p
                                        ; DATA XREF: .pdata:00000001400FB994↑o
                mov     eax, [rcx+20h]
                xor     r8d, r8d
                add     rax, rcx
                mov     [rcx+20h], rax
                cmp     [rcx+8], r8d
                jbe     short loc_1405DA596

loc_1405DA523:                          ; CODE XREF: sub_1405DA510+84↓j
                mov     r11, [rcx+20h]
                lea     r10, [r8+r8*4]
                xor     r9d, r9d
                mov     eax, [r11+r10*8+20h]
                add     rax, rcx
                mov     [r11+r10*8+20h], rax
                mov     eax, [r11+r10*8+10h]
                add     rax, rcx
                test    dword ptr [r11+r10*8+0Ch], 0FFFFFFFEh
                mov     [r11+r10*8+10h], rax
                jbe     short loc_1405DA58D

loc_1405DA553:                          ; CODE XREF: sub_1405DA510+7B↓j
                lea     rdx, [r9+r9*2]
                shl     rdx, 4
                add     rdx, [r11+r10*8+10h]
                mov     eax, [rdx+20h]
                test    eax, eax
                jz      short loc_1405DA56E
                add     rax, rcx
                mov     [rdx+20h], rax

loc_1405DA56E:                          ; CODE XREF: sub_1405DA510+55↑j
                cmp     dword ptr [rdx+10h], 0
                jz      short loc_1405DA57E
                mov     eax, [rdx+18h]
                add     rax, rcx
                mov     [rdx+18h], rax

loc_1405DA57E:                          ; CODE XREF: sub_1405DA510+62↑j
                mov     eax, [r11+r10*8+0Ch]
                inc     r9d
                shr     eax, 1
                cmp     r9d, eax
                jb      short loc_1405DA553

loc_1405DA58D:                          ; CODE XREF: sub_1405DA510+41↑j
                inc     r8d
                cmp     r8d, [rcx+8]
                jb      short loc_1405DA523

loc_1405DA596:                          ; CODE XREF: sub_1405DA510+11↑j
                mov     eax, [rcx+38h]
                xor     edx, edx
                add     rax, rcx
                mov     [rcx+38h], rax
                cmp     [rcx+14h], edx
                ja      short loc_1405DA5A9

locret_1405DA5A7:                       ; CODE XREF: sub_1405DA510+BB↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405DA5A9:                          ; CODE XREF: sub_1405DA510+95↑j
                                        ; sub_1405DA510+BD↓j
                mov     r9, [rcx+38h]
                lea     r8, [rdx+rdx*4]
                cmp     dword ptr [r9+r8*8+18h], 0
                jz      short loc_1405DA5C6
                mov     eax, [r9+r8*8+20h]
                add     rax, rcx
                mov     [r9+r8*8+20h], rax

loc_1405DA5C6:                          ; CODE XREF: sub_1405DA510+A7↑j
                inc     edx
                cmp     edx, [rcx+14h]
                jnb     short locret_1405DA5A7
                jmp     short loc_1405DA5A9
sub_1405DA510   endp

; ---------------------------------------------------------------------------
byte_1405DA5CF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FB994↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_1405DA5D8   proc near               ; CODE XREF: sub_1405DA2CC+12D↑p
                                        ; DATA XREF: .rdata:000000014004325C↑o ...

var_140         = dword ptr -140h
var_138         = xmmword ptr -138h
var_120         = qword ptr -120h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001407EAFFE SIZE 000001BC BYTES

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
                lea     rbp, [rax-68h]
                sub     rsp, 140h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_30], rax
                mov     rsi, rcx
                xorps   xmm0, xmm0
                xor     eax, eax
                lea     rcx, [rsp+160h+var_108]
                xor     edx, edx
                mov     [rsp+160h+var_120], rax
                mov     r8d, 0D8h
                movups  [rsp+160h+var_138+8], xmm0
                call    memset
                xor     r8d, r8d
                mov     [rsp+160h+var_110], rsi
                xor     edx, edx
                lea     rcx, [rsp+160h+var_138+8]
                call    KeInitializeEvent
                mov     rax, gs:188h
                xor     r13d, r13d
                mov     edx, 90h
                mov     ecx, 200h
                mov     r8d, 43536650h
                mov     r12b, [rax+232h]
                mov     rax, gs:188h
                mov     [rax+232h], r13b
                call    ExAllocatePoolWithTag
                mov     [rsp+160h+var_E8], rax
                lea     r14d, [r13+1]
                test    rax, rax
                jz      loc_1407EAFFE
                mov     rcx, rax
                call    sub_1405DA4C8
                mov     rax, [rsp+160h+var_E8]
                lea     rcx, [rsp+160h+var_110]
                mov     [rax+18h], rcx
                mov     rax, [rsp+160h+var_110]
                mov     ecx, [rax+50h]
                mov     rax, [rsp+160h+var_E8]
                test    cl, 4
                jz      loc_1407EB008
                mov     dword ptr [rax+3Ch], 0EA60h
                mov     rax, [rsp+160h+var_E8]
                mov     dword ptr [rax+38h], 96h

loc_1405DA6CA:                          ; CODE XREF: sub_1405DA5D8+210A43↓j
                mov     rcx, [rsp+160h+var_E8]
                call    sub_1405DB2DC
                mov     ebx, eax
                test    eax, eax
                js      loc_1405DA897
                mov     rax, [rsp+160h+var_110]
                movzx   r15d, byte ptr [rax+51h]
                test    r15d, r15d
                jnz     loc_1407EB020

loc_1405DA6F1:                          ; CODE XREF: sub_1405DA5D8+210A8F↓j
                                        ; sub_1405DA5D8+210A9E↓j
                mov     eax, [rsi+8]
                mov     rdi, 200000000h
                shl     eax, 6
                test    eax, eax
                jz      short loc_1405DA773
                mov     r8d, 48566650h
                mov     edx, eax
                mov     ecx, r14d
                mov     ebx, eax
                call    ExAllocatePoolWithTag
                mov     [rsp+160h+var_100], rax
                test    rax, rax
                jz      loc_1407EB07B
                mov     r8d, ebx
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     edx, r13d
                cmp     [rsi+8], r13d
                jbe     short loc_1405DA773

loc_1405DA73B:                          ; CODE XREF: sub_1405DA5D8+199↓j
                mov     rax, [rsp+160h+var_100]
                xorps   xmm0, xmm0
                mov     ecx, edx
                add     edx, r14d
                shl     rcx, 6
                movups  xmmword ptr [rcx+rax], xmm0
                movups  xmmword ptr [rcx+rax+10h], xmm0
                or      [rcx+rax+18h], rdi
                mov     rax, [rsp+160h+var_100]
                movups  xmmword ptr [rcx+rax+20h], xmm0
                movups  xmmword ptr [rcx+rax+30h], xmm0
                or      [rcx+rax+38h], rdi
                cmp     edx, [rsi+8]
                jb      short loc_1405DA73B

loc_1405DA773:                          ; CODE XREF: sub_1405DA5D8+12B↑j
                                        ; sub_1405DA5D8+161↑j
                mov     rax, [rsp+160h+var_110]
                mov     r8d, 504D6650h
                mov     edx, [rax+50h]
                and     edx, 4
                mov     eax, edx
                neg     eax
                sbb     ecx, ecx
                and     ecx, 0FFFFFD10h
                add     ecx, 300h
                neg     edx
                mov     dword ptr [rsp+160h+var_F0], ecx
                mov     ecx, r14d
                sbb     rdx, rdx
                and     rdx, 0FFFFFFFFFFFFE880h
                add     rdx, 1810h
                call    ExAllocatePoolWithTag
                mov     qword ptr [rsp+160h+var_F8], rax
                test    rax, rax
                jz      loc_1407EB07B
                mov     rcx, [rsp+160h+var_110]
                mov     eax, [rcx+50h]
                test    al, 4
                jz      loc_1407EB085

loc_1405DA7D3:                          ; CODE XREF: sub_1405DA5D8+210AB2↓j
                                        ; sub_1405DA5D8+210AE1↓j ...
                mov     rcx, rsi
                call    sub_1405DA510
                cmp     [rsi+1Eh], r13w
                jnz     short loc_1405DA7F5
                cmp     [rsi+1Ch], r13w
                jz      short loc_1405DA7F5
                movzx   eax, word ptr [rsi+1Ch]
                sub     ax, r14w
                mov     [rsi+1Eh], ax

loc_1405DA7F5:                          ; CODE XREF: sub_1405DA5D8+208↑j
                                        ; sub_1405DA5D8+20F↑j
                mov     edi, 0C000009Ah
                cmp     [rsi+14h], r13d
                jnz     loc_1405DA916

loc_1405DA804:                          ; CODE XREF: sub_1405DA5D8+362↓j
                mov     r14d, r13d
                cmp     [rsi+8], r13d
                jbe     short loc_1405DA856

loc_1405DA80D:                          ; CODE XREF: sub_1405DA5D8+27C↓j
                mov     rax, [rsi+20h]
                mov     edx, r14d
                lea     rcx, [rdx+rdx*4]
                shl     rdx, 6
                add     rdx, [rsp+160h+var_100]
                lea     r8, [rax+rcx*8]
                mov     rcx, [rsp+160h+var_E8]
                call    sub_1405DAA5C
                test    eax, eax
                js      short loc_1405DA84D
                mov     edx, r14d
                lea     rcx, [rsp+160h+var_110]
                call    sub_1405DB528
                mov     ebx, eax
                cmp     eax, 0C0000240h
                jz      loc_1407EB136

loc_1405DA84D:                          ; CODE XREF: sub_1405DA5D8+259↑j
                inc     r14d
                cmp     r14d, [rsi+8]
                jb      short loc_1405DA80D

loc_1405DA856:                          ; CODE XREF: sub_1405DA5D8+233↑j
                mov     rax, [rsp+160h+var_110]
                mov     ecx, [rax+50h]
                test    cl, 4
                lea     rcx, [rsp+160h+var_110]
                jz      loc_1407EB0EA
                call    sub_14065F5D0
                cmp     eax, 0C0000240h
                mov     r14d, 1

loc_1405DA87C:                          ; CODE XREF: sub_1405DA5D8+210B59↓j
                mov     ebx, eax
                jz      short loc_1405DA88E
                cmp     eax, edi
                jz      short loc_1405DA88E
                cmp     eax, 0C0000017h
                jz      short loc_1405DA88E
                mov     ebx, r13d

loc_1405DA88E:                          ; CODE XREF: sub_1405DA5D8+2A6↑j
                                        ; sub_1405DA5D8+2AA↑j ...
                test    r15d, r15d
                jnz     loc_1407EB141

loc_1405DA897:                          ; CODE XREF: sub_1405DA5D8+100↑j
                                        ; sub_1405DA5D8+210A2B↓j ...
                cmp     [rsp+160h+var_108], r13
                jnz     loc_1407EB168

loc_1405DA8A2:                          ; CODE XREF: sub_1405DA5D8+210BDD↓j
                lea     rcx, [rsp+160h+var_110]
                call    sub_1405DA9AC
                mov     rcx, qword ptr [rsp+160h+var_F8]
                test    rcx, rcx
                jz      short loc_1405DA8BD
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1405DA8BD:                          ; CODE XREF: sub_1405DA5D8+2DC↑j
                mov     rcx, [rsp+160h+var_E8]
                test    rcx, rcx
                jz      short loc_1405DA8D6
                call    sub_1405DB428
                mov     rcx, [rsp+160h+var_E8]
                call    sub_1405DE16C

loc_1405DA8D6:                          ; CODE XREF: sub_1405DA5D8+2ED↑j
                mov     rax, gs:188h
                mov     [rax+232h], r12b
                mov     eax, ebx
                mov     rcx, [rbp+60h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+160h+var_20]
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

loc_1405DA916:                          ; CODE XREF: sub_1405DA5D8+226↑j
                lea     rcx, [rsp+160h+var_110]
                call    sub_1405D8850
                mov     ebx, eax
                cmp     eax, 0C0000240h
                jz      loc_1405DA88E
                cmp     eax, edi
                jz      loc_1405DA88E
                cmp     eax, 0C0000017h
                jnz     loc_1405DA804
                jmp     loc_1405DA88E
; } // starts at 1405DA5D8
sub_1405DA5D8   endp

; ---------------------------------------------------------------------------
algn_1405DA945:                         ; DATA XREF: .rdata:000000014004325C↑o
                                        ; .pdata:00000001400FB9A0↑o
                align 10h
; Exported entry 916. IoQueryFileInformation

; =============== S U B R O U T I N E =======================================


