RtlDeleteAce    proc near               ; CODE XREF: sub_140201F54+30↑p
                                        ; DATA XREF: .rdata:0000000140044E5C↑o ...

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407F337E SIZE 0000001C BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     rbx, rcx
                mov     edi, edx
                call    RtlValidAcl
                test    al, al
                jz      short loc_1405E282D
                movzx   eax, word ptr [rbx+4]
                cmp     edi, eax
                jnb     short loc_1405E282D
                lea     rdx, [rsp+28h+arg_10]
                mov     rcx, rbx
                call    RtlFirstFreeAce
                test    al, al
                jz      short loc_1405E282D
                lea     rdx, [rbx+8]
                test    edi, edi
                jz      short loc_1405E27DE
                mov     ecx, edi

loc_1405E27D1:                          ; CODE XREF: RtlDeleteAce+4C↓j
                movzx   eax, word ptr [rdx+2]
                add     rdx, rax
                sub     rcx, 1
                jnz     short loc_1405E27D1

loc_1405E27DE:                          ; CODE XREF: RtlDeleteAce+3D↑j
                movzx   r9d, word ptr [rdx+2]
                mov     r8d, dword ptr [rsp+28h+arg_10]
                mov     r10d, r9d
                sub     r8d, edx
                cmp     r9d, r8d
                jb      short loc_1405E2824

loc_1405E27F3:                          ; CODE XREF: RtlDeleteAce+210C05↓j
                mov     eax, r8d
                sub     eax, r9d
                cmp     eax, r8d
                jnb     short loc_1405E280D
                mov     ecx, eax
                mov     r8, r9
                add     rcx, rdx
                xor     edx, edx
                call    memset

loc_1405E280D:                          ; CODE XREF: RtlDeleteAce+6C↑j
                mov     eax, 0FFFFh
                add     [rbx+4], ax
                xor     eax, eax

loc_1405E2818:                          ; CODE XREF: RtlDeleteAce+A2↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405E2824:                          ; CODE XREF: RtlDeleteAce+61↑j
                lea     r11, [rdx+r9]
                jmp     loc_1407F337E
; ---------------------------------------------------------------------------

loc_1405E282D:                          ; CODE XREF: RtlDeleteAce+1C↑j
                                        ; RtlDeleteAce+24↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_1405E2818
RtlDeleteAce    endp

; ---------------------------------------------------------------------------
byte_1405E2834  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140044E5C↑o
                                        ; .pdata:00000001400FBD90↑o

; =============== S U B R O U T I N E =======================================


sub_1405E283C   proc near               ; CODE XREF: NtSetInformationToken+7DD↓p
                                        ; sub_14091DD10+135↓p ...

var_38          = dword ptr -38h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407F339A SIZE 00000044 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                xor     esi, esi
                xor     edi, edi
                and     [rax+8], rsi
                mov     ebp, edx
                cmp     cs:dword_140D2D0E0, esi
                mov     rbx, rcx
                jnz     short loc_1405E286F
                mov     ecx, edx
                call    sub_140201F98
                mov     rdi, rax

loc_1405E286F:                          ; CODE XREF: sub_1405E283C+27↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx+30h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+38h+var_38], esi
                cmp     [rbx+0CCh], sil
                jnz     loc_1407F339A
                test    dword ptr [rbx+0C8h], 4000h
                jnz     loc_1407F33A4

loc_1405E28AB:                          ; CODE XREF: sub_1405E283C+210B72↓j
                                        ; sub_1405E283C+210B87↓j
                cmp     [rbx+78h], ebp
                jnz     short loc_1405E2905

loc_1405E28B0:                          ; CODE XREF: sub_1405E283C+E5↓j
                test    dword ptr [rbx+0C8h], 4000h
                mov     [rbx+78h], ebp
                jnz     loc_1407F33C8

loc_1405E28C3:                          ; CODE XREF: sub_1405E283C+210B63↓j
                                        ; sub_1405E283C+210B9D↓j
                lock or [rsp+38h+var_38], 0
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                test    rdi, rdi
                jz      short loc_1405E28E3
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_1405E28E3:                          ; CODE XREF: sub_1405E283C+9D↑j
                mov     rcx, [rsp+38h+arg_0]
                test    rcx, rcx
                jnz     short loc_1405E2923

loc_1405E28ED:                          ; CODE XREF: sub_1405E283C+EC↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E2905:                          ; CODE XREF: sub_1405E283C+72↑j
                lea     rax, [rsp+38h+arg_0]
                mov     r9, rdi
                mov     r8b, 1
                mov     [rsp+38h+var_18], rax
                mov     edx, ebp
                mov     rcx, rbx
                call    sub_1405E4E18
                xor     edi, edi
                jmp     short loc_1405E28B0
; ---------------------------------------------------------------------------

loc_1405E2923:                          ; CODE XREF: sub_1405E283C+AF↑j
                call    PsDereferenceSiloContext
                jmp     short loc_1405E28ED
sub_1405E283C   endp

; ---------------------------------------------------------------------------
algn_1405E292A:                         ; DATA XREF: .rdata:0000000140044E84↑o
                                        ; .pdata:00000001400FBD9C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405E2930   proc near               ; CODE XREF: NtSetInformationToken+821↓p
                                        ; NtSetInformationToken+8E5↓p ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 00000001407F33DE SIZE 00000022 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 30h
                mov     rdi, rcx
                and     dword ptr [rax-18h], 0
                test    dl, dl
                jz      loc_1405E2A2E

loc_1405E2954:                          ; DATA XREF: .rdata:0000000140044ED4↑o
;   __try { // __except at loc_1405E299D
                lea     rax, [rcx+2]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                cmovnb  rax, rdx
                movzx   eax, word ptr [rax]
                mov     ebx, eax
                mov     [rsp+38h+var_18], eax
                test    eax, eax
                jz      short loc_1405E299B
                test    dil, 3
                jnz     short loc_1405E2996
                add     rcx, rax
                cmp     rcx, rdx
                ja      short loc_1405E2989
                cmp     rcx, rdi
                jnb     short loc_1405E299B

loc_1405E2989:                          ; CODE XREF: sub_1405E2930+52↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405E299B
; ---------------------------------------------------------------------------

loc_1405E2996:                          ; CODE XREF: sub_1405E2930+4A↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E299B:                          ; CODE XREF: sub_1405E2930+44↑j
                                        ; sub_1405E2930+57↑j ...
                jmp     short loc_1405E299F
;   } // starts at 1405E2954
; ---------------------------------------------------------------------------

loc_1405E299D:                          ; DATA XREF: .rdata:0000000140044ED4↑o
;   __except(1) // owned by 1405E2954
                jmp     short loc_1405E2A17
; ---------------------------------------------------------------------------

loc_1405E299F:                          ; CODE XREF: sub_1405E2930:loc_1405E299B↑j
                                        ; sub_1405E2930+106↓j
                cmp     ebx, 8
                jb      loc_1407F33EC
                lea     ecx, [rbx+3]
                and     ecx, 0FFFFFFFCh
                mov     rax, [rsp+38h+arg_38]
                mov     [rax], ecx
                mov     r14d, ebx
                mov     r8d, 63416553h
                mov     edx, ebx
                mov     ecx, [rsp+38h+arg_20]
                call    ExAllocatePoolWithTag
                mov     rsi, [rsp+38h+arg_30]
                mov     [rsi], rax
                test    rax, rax
                jz      loc_1407F33F6

loc_1405E29DA:                          ; DATA XREF: .rdata:0000000140044EE4↑o
;   __try { // __except at loc_1405E29EA
                mov     r8d, r14d
                mov     rdx, rdi
                mov     rcx, rax
                call    memmove
                jmp     short loc_1405E2A03
;   } // starts at 1405E29DA
; ---------------------------------------------------------------------------

loc_1405E29EA:                          ; DATA XREF: .rdata:0000000140044EE4↑o
;   __except(1) // owned by 1405E29DA
                mov     edi, eax
                xor     edx, edx
                mov     rbx, [rsp+38h+arg_30]
                mov     rcx, [rbx]
                call    ExFreePoolWithTag
                and     qword ptr [rbx], 0
                mov     eax, edi
                jmp     short loc_1405E2A17
; ---------------------------------------------------------------------------

loc_1405E2A03:                          ; CODE XREF: sub_1405E2930+B8↑j
                mov     edx, ebx
                mov     rcx, [rsi]
                call    sub_1405E2A44
                test    al, al
                jz      loc_1407F33DE
                xor     eax, eax

loc_1405E2A17:                          ; CODE XREF: sub_1405E2930:loc_1405E299D↑j
                                        ; sub_1405E2930+D1↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E2A2E:                          ; CODE XREF: sub_1405E2930+1E↑j
                movzx   ebx, word ptr [rcx+2]
                mov     [rsp+38h+var_18], ebx
                jmp     loc_1405E299F
; } // starts at 1405E2930
sub_1405E2930   endp

; ---------------------------------------------------------------------------
byte_1405E2A3B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140044EF8↑o
                                        ; .pdata:00000001400FBDA8↑o

; =============== S U B R O U T I N E =======================================


sub_1405E2A44   proc near               ; CODE XREF: sub_1405E2930+D8↑p
                                        ; DATA XREF: .pdata:00000001400FBDB4↑o
                sub     rsp, 28h
                cmp     edx, 8
                jb      short loc_1405E2A60
                movzx   eax, word ptr [rcx+2]
                cmp     edx, eax
                jnz     short loc_1405E2A60
                call    RtlValidAcl

loc_1405E2A5A:                          ; CODE XREF: sub_1405E2A44+1E↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1405E2A60:                          ; CODE XREF: sub_1405E2A44+7↑j
                                        ; sub_1405E2A44+F↑j
                xor     al, al
                jmp     short loc_1405E2A5A
sub_1405E2A44   endp

; ---------------------------------------------------------------------------
byte_1405E2A64  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400FBDB4↑o

; =============== S U B R O U T I N E =======================================


sub_1405E2A6C   proc near               ; CODE XREF: NtSetInformationToken+974↓p
                                        ; NtSetInformationToken+988↓p ...
                sub     rsp, 28h
                cmp     dl, 1
                ja      short loc_1405E2A7C
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1405E2A7C:                          ; CODE XREF: sub_1405E2A6C+7↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E2A6C   endp

algn_1405E2A82:                         ; DATA XREF: .pdata:00000001400FBDC0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405E2A88   proc near               ; CODE XREF: sub_1405E32DC+319↓p
                                        ; DATA XREF: .rdata:0000000140044F38↑o ...

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407F3400 SIZE 0000001A BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+20h], r9
                mov     [r11+18h], r8b
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12, r9
                mov     rsi, rcx
                mov     eax, edx
                shl     rax, 3
                mov     ecx, 0FFFFFFFFh
                mov     r15d, ecx
                cmp     rax, rcx
                cmovbe  r15d, eax
                mov     [r11+18h], r15d
                cmp     rcx, rax
                sbb     edi, edi
                and     edi, 0C0000095h
                cmp     rax, rcx
                ja      loc_1405E2B5A
                mov     r14d, r15d
                mov     r8d, 74416553h
                mov     edx, r15d
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+58h+var_38], rax
                test    rax, rax
                jz      loc_1407F3400

loc_1405E2AFD:                          ; DATA XREF: .rdata:0000000140044F24↑o
;   __try { // __except at loc_1405E2B42
                test    r15d, r15d
                jz      short loc_1405E2B32
                test    sil, 3
                jnz     short loc_1405E2B2D
                lea     rax, [r15+rsi]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      short loc_1405E2B20
                cmp     rax, rsi
                jnb     short loc_1405E2B32

loc_1405E2B20:                          ; CODE XREF: sub_1405E2A88+91↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405E2B32
; ---------------------------------------------------------------------------

loc_1405E2B2D:                          ; CODE XREF: sub_1405E2A88+7E↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E2B32:                          ; CODE XREF: sub_1405E2A88+78↑j
                                        ; sub_1405E2A88+96↑j ...
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, rbx
                call    memmove
                jmp     short loc_1405E2B4E
;   } // starts at 1405E2AFD
; ---------------------------------------------------------------------------

loc_1405E2B42:                          ; DATA XREF: .rdata:0000000140044F24↑o
;   __except(1) // owned by 1405E2AFD
                mov     edi, eax
                mov     r12, [rsp+58h+arg_18]
                mov     rbx, [rsp+58h+var_38]

loc_1405E2B4E:                          ; CODE XREF: sub_1405E2A88+B8↑j
                test    edi, edi
                js      loc_1407F340A
                mov     [r12], rbx

loc_1405E2B5A:                          ; CODE XREF: sub_1405E2A88+48↑j
                                        ; sub_1405E2A88+21098D↓j
                mov     eax, edi

loc_1405E2B5C:                          ; CODE XREF: sub_1405E2A88+21097D↓j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405E2A88
sub_1405E2A88   endp

byte_1405E2B6F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140044F38↑o
                                        ; .pdata:00000001400FBDCC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1405E2B78   proc near               ; CODE XREF: sub_1405E4840+1F0↓p
                                        ; sub_1405E4840+302↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = dword ptr  48h
arg_8           = qword ptr  50h
arg_10          = qword ptr  58h
arg_18          = dword ptr  60h
arg_20          = qword ptr  68h
arg_28          = byte ptr  70h

; FUNCTION CHUNK AT 00000001407F341A SIZE 00000044 BYTES

                mov     rax, rsp
                mov     [rax+20h], r9d
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
                mov     rbp, rsp
                sub     rsp, 58h
                mov     r12, [rbp+arg_20]
                lea     rcx, [rbp+arg_0]
                xor     r13d, r13d
                mov     r15, r8
                mov     [rax-68h], r13
                xor     r9d, r9d
                mov     [rax-70h], rcx
                xor     r8d, r8d
                lea     rcx, [rbp+var_10]
                mov     [rbp+var_10], r13d
                mov     [rax-78h], rcx
                mov     [rbp+arg_0], r13d
                mov     [rbp+var_14], r13d
                mov     [rbp+var_18], r13d
                mov     [rbp+var_C], r13d
                mov     [r12], r13d
                call    sub_1405E2F04
                mov     ebx, eax
                test    eax, eax
                js      loc_1405E2D5D
                mov     r14d, [rbp+arg_0]
                mov     edi, [rbp+var_10]
                inc     r14d
                test    edi, edi
                jz      loc_1407F341A
                mov     eax, r14d
                cmp     [rbp+arg_28], r13b
                jz      short loc_1405E2C0B
                lea     eax, [r14+10h]
                mov     r14d, eax

loc_1405E2C0B:                          ; CODE XREF: sub_1405E2B78+8A↑j
                mov     edx, eax
                mov     ecx, 1
                add     rdx, rdx
                mov     r8d, 42444450h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_1407F3424
                test    edi, edi
                jz      loc_1405E2D2A

loc_1405E2C34:                          ; CODE XREF: sub_1405E2B78+1AC↓j
                mov     rdx, [rbp+arg_8]
                xor     edi, edi
                mov     r9, rsi
                mov     [rbp+arg_0], r14d
                mov     r8d, r13d
                cmp     [rbp+arg_28], dil
                jz      loc_1405E2D71
                lea     rax, [rbp+arg_20]
                mov     dword ptr [rbp+arg_20], 4
                mov     [rsp+58h+var_20], rax
                lea     rax, [rbp+var_18]
                mov     [rsp+58h+var_28], rax
                lea     rax, [rbp+var_14]
                mov     [rsp+58h+var_30], rax
                lea     rax, [rbp+arg_0]
                mov     [rsp+58h+var_38], rax
                call    sub_1405E2DCC
                mov     ebx, eax
                test    eax, eax
                js      loc_1407F3442
                mov     eax, [rbp+arg_0]
                test    eax, eax
                jz      loc_1407F342E
                cmp     [rbp+var_14], 3
                jnz     loc_1405E2DB6
                cmp     dword ptr [rbp+arg_20], 4
                jnz     loc_1407F342E

loc_1405E2CA7:                          ; CODE XREF: sub_1405E2B78+241↓j
                mov     r9d, r14d
                lea     r8, [rsi+rax*2]
                sub     r9d, eax
                lea     rdx, [rbp+var_18]
                call    sub_1405E2E1C
                mov     ebx, eax
                test    eax, eax
                js      loc_1405E2D53
                or      rdi, 0FFFFFFFFFFFFFFFFh
                xor     r8d, r8d

loc_1405E2CCB:                          ; CODE XREF: sub_1405E2B78+15B↓j
                inc     rdi
                cmp     [rsi+rdi*2], r8w
                jnz     short loc_1405E2CCB
                inc     edi

loc_1405E2CD7:                          ; CODE XREF: sub_1405E2B78+239↓j
                test    r15, r15
                jz      short loc_1405E2D19
                mov     ecx, [rbp+var_C]
                mov     eax, [rbp+arg_18]
                lea     r15d, [rdi+rcx]
                cmp     r15d, eax
                jnb     short loc_1405E2D15
                sub     eax, ecx
                mov     dword ptr [rsp+58h+var_30], 900h
                mov     edx, eax
                xor     r9d, r9d
                mov     eax, ecx
                mov     [rsp+58h+var_38], r8
                mov     rcx, [rbp+arg_10]
                mov     r8, rsi
                lea     rcx, [rcx+rax*2]
                call    sub_140203D40
                mov     [rbp+var_C], r15d

loc_1405E2D15:                          ; CODE XREF: sub_1405E2B78+171↑j
                mov     r15, [rbp+arg_10]

loc_1405E2D19:                          ; CODE XREF: sub_1405E2B78+162↑j
                add     [r12], edi
                inc     r13d
                cmp     r13d, [rbp+var_10]
                jb      loc_1405E2C34

loc_1405E2D2A:                          ; CODE XREF: sub_1405E2B78+B6↑j
                xor     edi, edi

loc_1405E2D2C:                          ; CODE XREF: sub_1405E2B78+2108C5↓j
                                        ; sub_1405E2B78+2108CF↓j ...
                test    ebx, ebx
                js      short loc_1405E2D53
                mov     eax, [r12]
                test    eax, eax
                jz      loc_1407F3454
                inc     eax
                mov     [r12], eax
                test    r15, r15
                jz      short loc_1405E2DBE
                cmp     eax, [rbp+arg_18]
                ja      short loc_1405E2DBE
                dec     eax
                mov     [r15+rax*2], di

loc_1405E2D53:                          ; CODE XREF: sub_1405E2B78+146↑j
                                        ; sub_1405E2B78+1B6↑j ...
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1405E2D5D:                          ; CODE XREF: sub_1405E2B78+6B↑j
                                        ; sub_1405E2B78+2108A7↓j ...
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
; ---------------------------------------------------------------------------

loc_1405E2D71:                          ; CODE XREF: sub_1405E2B78+D0↑j
                mov     [rsp+58h+var_20], rdi
                lea     rax, [rbp+var_14]
                mov     [rsp+58h+var_28], rdi
                mov     [rsp+58h+var_30], rax
                lea     rax, [rbp+arg_0]
                mov     [rsp+58h+var_38], rax
                call    sub_1405E2DCC
                mov     ebx, eax
                test    eax, eax
                js      loc_1407F3442
                mov     ecx, [rbp+arg_0]
                test    ecx, ecx
                jz      loc_1407F3438
                mov     [rsi+rcx*2], di
                xor     r8d, r8d
                lea     edi, [rcx+1]
                jmp     loc_1405E2CD7
; ---------------------------------------------------------------------------

loc_1405E2DB6:                          ; CODE XREF: sub_1405E2B78+11F↑j
                mov     [rbp+var_18], edi
                jmp     loc_1405E2CA7
; ---------------------------------------------------------------------------

loc_1405E2DBE:                          ; CODE XREF: sub_1405E2B78+1CD↑j
                                        ; sub_1405E2B78+1D2↑j
                mov     ebx, 0C0000023h
                jmp     short loc_1405E2D53
sub_1405E2B78   endp

; ---------------------------------------------------------------------------
byte_1405E2DC5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140044F64↑o
                                        ; .pdata:00000001400FBDD8↑o

; =============== S U B R O U T I N E =======================================


sub_1405E2DCC   proc near               ; CODE XREF: sub_1403C72E0+398↑p
                                        ; sub_1405E2B78+101↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                push    rbx
                sub     rsp, 40h
                mov     rax, [rsp+48h+arg_38]
                mov     r10, r9
                mov     r9, [rsp+48h+arg_20]
                mov     r11d, r8d
                mov     [rsp+48h+var_18], rax
                mov     rcx, rdx
                mov     rax, [rsp+48h+arg_30]
                mov     r8, r10
                mov     [rsp+48h+var_20], rax
                mov     edx, r11d
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_28], rax
                call    sub_1407121B8
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E2DCC   endp

byte_1405E2E16  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400FBDE4↑o

; =============== S U B R O U T I N E =======================================


sub_1405E2E1C   proc near               ; CODE XREF: sub_1405E2B78+13D↑p
                                        ; DATA XREF: .rdata:0000000140044F8C↑o ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001407F345E SIZE 00000036 BYTES

                mov     [rsp+arg_0], rcx
                push    rbx
                sub     rsp, 40h
                and     [rsp+48h+arg_8], 0
                mov     r10, r8
                and     [rsp+48h+arg_0], 0
                mov     rbx, rdx
                mov     al, [rdx]
                test    al, al
                jz      short loc_1405E2E9D
                cmp     al, 2
                ja      loc_1407F345E
                cmp     al, 1
                jnz     loc_1405E2EF1
                xor     eax, eax

loc_1405E2E50:                          ; CODE XREF: sub_1405E2E1C+DB↓j
                mov     [rsp+48h+var_10], eax
                lea     r8, qword_1407D6460
                mov     [rsp+48h+var_18], r8
                lea     rax, aWsX       ; "%ws\\%X"
                mov     edx, r9d
                lea     r8, [rsp+48h+arg_8]
                mov     [rsp+48h+var_20], rax
                lea     r9, [rsp+48h+arg_0]
                mov     rcx, r10
                mov     dword ptr [rsp+48h+var_28], 800h
                call    sub_14021D28C
                test    eax, eax
                js      short loc_1405E2E96
                movzx   ecx, byte ptr [rbx+1]
                cmp     cl, 0FFh
                jnz     short loc_1405E2EC2

loc_1405E2E96:                          ; CODE XREF: sub_1405E2E1C+6F↑j
                                        ; sub_1405E2E1C+A4↓j ...
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E2E9D:                          ; CODE XREF: sub_1405E2E1C+20↑j
                mov     edx, r9d
                lea     r8, qword_1407D6460
                mov     dword ptr [rsp+48h+var_20], 800h
                xor     r9d, r9d
                and     [rsp+48h+var_28], 0
                mov     rcx, r10
                call    sub_140203D40
                jmp     short loc_1405E2E96
; ---------------------------------------------------------------------------

loc_1405E2EC2:                          ; CODE XREF: sub_1405E2E1C+78↑j
                mov     rdx, [rsp+48h+arg_0]
                lea     rax, asc_1407E45C0 ; "\\%X"
                xor     r9d, r9d
                mov     dword ptr [rsp+48h+var_18], ecx
                mov     rcx, [rsp+48h+arg_8]
                xor     r8d, r8d

loc_1405E2EDD:                          ; CODE XREF: sub_1405E2E1C+210669↓j
                mov     [rsp+48h+var_20], rax
                mov     dword ptr [rsp+48h+var_28], 800h
                call    sub_14021D28C
                jmp     short loc_1405E2E96
; ---------------------------------------------------------------------------

loc_1405E2EF1:                          ; CODE XREF: sub_1405E2E1C+2C↑j
                movzx   eax, word ptr [rdx+2]
                inc     eax
                jmp     loc_1405E2E50
sub_1405E2E1C   endp

; ---------------------------------------------------------------------------
byte_1405E2EFC  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140044F8C↑o
                                        ; .pdata:00000001400FBDF0↑o

; =============== S U B R O U T I N E =======================================


sub_1405E2F04   proc near               ; CODE XREF: sub_1403C72E0+1B3↑p
                                        ; sub_1403C72E0+30C↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                push    rbx
                sub     rsp, 30h
                mov     rax, [rsp+38h+arg_30]
                mov     r10, r9
                mov     r9, [rsp+38h+arg_20]
                mov     r11, r8
                mov     [rsp+38h+var_10], rax
                mov     rcx, rdx
                mov     rax, [rsp+38h+arg_28]
                mov     r8, r10
                mov     rdx, r11
                mov     [rsp+38h+var_18], rax
                call    sub_14071703C
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E2F04   endp

byte_1405E2F3E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400FBDFC↑o

; =============== S U B R O U T I N E =======================================


sub_1405E2F50   proc near               ; DATA XREF: .rdata:0000000140008418↑o
                                        ; .rdata:0000000140044FB8↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407F3494 SIZE 00000132 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                and     [rsp+58h+var_18], 0
                mov     eax, r8d
                mov     rdi, rdx
                lea     r8, [rsp+58h+var_18]
                mov     edx, eax
                mov     r10d, r9d
                call    sub_1405E5EA8
                mov     r8d, eax
                test    eax, eax
                js      loc_1405E3014
                mov     r11, [rsp+58h+var_18]
                mov     rbx, [rsp+58h+arg_20]
                mov     ecx, [r11+0Ch]
                bt      ecx, 1Ch
                jnb     loc_1407F3494

loc_1405E2F9B:                          ; CODE XREF: sub_1405E2F50+2105A1↓j
                sub     r10d, 1
                jz      loc_1407F35B8
                sub     r10d, 1
                jz      loc_1405E3054
                sub     r10d, 1
                jz      loc_1407F3574
                sub     r10d, 1
                jz      loc_1407F3559
                sub     r10d, 1
                jz      loc_1407F351E
                sub     r10d, 1
                jz      loc_1407F34F6
                sub     r10d, 2
                jnz     short loc_1405E3023
                mov     rax, [rbx+30h]
                mov     rdx, rdi
                mov     r9, [rbx+10h]
                mov     rcx, r11
                mov     r8, [rbx]
                mov     [rsp+58h+var_20], rax
                mov     eax, [rbx+28h]
                mov     dword ptr [rsp+58h+var_28], eax
                mov     rax, [rbx+20h]
                mov     [rsp+58h+var_30], rax
                mov     rax, [rbx+18h]
                mov     [rsp+58h+var_38], rax
                call    sub_1405E4840

loc_1405E3011:                          ; CODE XREF: sub_1405E2F50+102↓j
                                        ; sub_1405E2F50+128↓j ...
                mov     r8d, eax

loc_1405E3014:                          ; CODE XREF: sub_1405E2F50+2A↑j
                                        ; sub_1405E2F50+130↓j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, r8d
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E3023:                          ; CODE XREF: sub_1405E2F50+8B↑j
                cmp     r10d, 1
                jnz     short loc_1405E307A
                mov     eax, [rbx+28h]
                mov     rdx, rdi
                mov     r9, [rbx+10h]
                mov     rcx, r11
                mov     r8, [rbx]
                mov     dword ptr [rsp+58h+var_28], eax
                mov     rax, [rbx+20h]
                mov     [rsp+58h+var_30], rax
                mov     eax, [rbx+18h]
                mov     dword ptr [rsp+58h+var_38], eax
                call    sub_14072583C
                jmp     short loc_1405E3011
; ---------------------------------------------------------------------------

loc_1405E3054:                          ; CODE XREF: sub_1405E2F50+59↑j
                mov     r9b, [rbx+4]
                lea     rax, [rbx+10h]
                mov     r8d, [rbx]
                mov     rdx, rdi
                mov     [rsp+58h+var_30], rax
                mov     rcx, r11
                mov     rax, [rbx+8]
                mov     [rsp+58h+var_38], rax
                call    sub_140725570
                jmp     short loc_1405E3011
; ---------------------------------------------------------------------------

loc_1405E307A:                          ; CODE XREF: sub_1405E2F50+D7↑j
                mov     r8d, 0C000000Dh
                jmp     short loc_1405E3014
sub_1405E2F50   endp

; ---------------------------------------------------------------------------
algn_1405E3082:                         ; DATA XREF: .rdata:0000000140044FB8↑o
                                        ; .pdata:00000001400FBE08↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405E3088   proc near               ; CODE XREF: sub_140363AB4+211↑p
                                        ; sub_140363AB4+220↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140202074
                mov     edi, eax
                test    eax, eax
                js      short loc_1405E30B5
                mov     rcx, [rbx+0D8h]
                call    sub_14020203C
                or      dword ptr [rbx+0C8h], 20h
                mov     eax, edi

loc_1405E30B5:                          ; CODE XREF: sub_1405E3088+16↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E3088   endp

algn_1405E30C1:                         ; DATA XREF: .pdata:00000001400FBE14↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405E30C8   proc near               ; CODE XREF: NtSetInformationToken+423↓p
                                        ; sub_140679960+319↓p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                test    dword ptr [rdx], 0FFFFFFFCh
                mov     rbx, rdx
                mov     rdi, rcx
                jnz     short loc_1405E3152
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+28h+var_28], 0
                mov     eax, [rbx]
                mov     rcx, cs:qword_14003AFE0
                mov     [rdi+0D4h], eax
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdi+38h], eax
                shr     rax, 20h
                mov     [rdi+3Ch], eax
                lock or [rsp+28h+var_28], 0
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax

loc_1405E3146:                          ; CODE XREF: sub_1405E30C8+8F↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E3152:                          ; CODE XREF: sub_1405E30C8+16↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1405E3146
sub_1405E30C8   endp

; ---------------------------------------------------------------------------
algn_1405E3159:                         ; DATA XREF: .pdata:00000001400FBE20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405E3160   proc near               ; CODE XREF: NtSetInformationToken+178↓p
                                        ; DATA XREF: .rdata:0000000140045060↑o ...

var_48          = byte ptr -48h
var_40          = qword ptr -40h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407F35C6 SIZE 00000043 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rsi, r8
                mov     r15b, dl
                and     qword ptr [r11+20h], 0
                and     qword ptr [r11+18h], 0
                and     qword ptr [r8], 0
                test    dl, dl
                jz      loc_1407F35C6

loc_1405E3190:                          ; DATA XREF: .rdata:000000014004504C↑o
;   __try { // __except at loc_1405E3223
                mov     dl, 3
                test    dl, cl
                jnz     loc_1405E321D
                mov     r8, 7FFFFFFF0000h
                mov     rax, r8
                cmp     rcx, r8
                cmovb   rax, rcx
                mov     al, [rax]
                mov     rax, [rcx+8]
                mov     [r11-30h], rax
                test    rax, rax
                jz      short loc_1405E31FF
                test    dl, al
                jnz     short loc_1405E321D
                cmp     rax, r8
                cmovnb  rax, r8
                mov     al, [rax]
                mov     rax, [rcx]
                mov     [r11-28h], rax
                xor     r14d, r14d
                mov     [r11-38h], r14d
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1405E3209
                test    dl, bl
                jnz     short loc_1405E321D
                cmp     rax, r8
                cmovnb  rbx, r8
                mov     al, [rbx]
                mov     rbx, [r11-28h]
                mov     r14d, [rbx+4]
                mov     [r11-38h], r14d
                mov     rdi, [r11-30h]

loc_1405E31FD:                          ; CODE XREF: sub_1405E3160+B1↓j
                jmp     short loc_1405E3228
; ---------------------------------------------------------------------------

loc_1405E31FF:                          ; CODE XREF: sub_1405E3160+5B↑j
                mov     eax, 0C000000Dh
                jmp     loc_1405E32B2
; ---------------------------------------------------------------------------

loc_1405E3209:                          ; CODE XREF: sub_1405E3160+7E↑j
                mov     rdi, [rsp+68h+var_30]
                cmp     dword ptr [rdi], 1
                jz      short loc_1405E31FD
                mov     eax, 0C000000Dh
                jmp     loc_1405E32B2
; ---------------------------------------------------------------------------

loc_1405E321D:                          ; CODE XREF: sub_1405E3160+34↑j
                                        ; sub_1405E3160+5F↑j ...
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1405E3190
; ---------------------------------------------------------------------------

loc_1405E3223:                          ; DATA XREF: .rdata:000000014004504C↑o
;   __except(1) // owned by 1405E3190
                jmp     loc_1405E32B2
; ---------------------------------------------------------------------------

loc_1405E3228:                          ; CODE XREF: sub_1405E3160:loc_1405E31FD↑j
                lea     r9, [rsp+68h+arg_10]
                mov     r8b, r15b
                mov     edx, r14d
                mov     rcx, rdi
                call    sub_140202124
                test    eax, eax
                js      short loc_1405E32B2
                test    rbx, rbx
                jz      short loc_1405E3270
                lea     rax, [rsp+68h+arg_18]
                mov     [rsp+68h+var_40], rax
                mov     [rsp+68h+var_48], 1
                mov     r9b, r15b
                mov     r8d, r14d
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1405E32DC
                mov     edi, eax
                test    eax, eax
                js      short loc_1405E32C7

loc_1405E3270:                          ; CODE XREF: sub_1405E3160+E5↑j
                mov     edx, 10h
                lea     ecx, [rdx-0Fh]
                mov     r8d, 6F416553h
                call    ExAllocatePoolWithTag
                mov     rbx, [rsp+68h+arg_18]
                mov     rcx, [rsp+68h+arg_10]
                test    rax, rax
                jz      loc_1407F35E1
                mov     [rax+8], rcx
                mov     [rax], rbx
                mov     [rsi], rax
                xor     edi, edi

loc_1405E32A8:                          ; CODE XREF: sub_1405E3160+171↓j
                test    edi, edi
                js      loc_1407F35E6

loc_1405E32B0:                          ; CODE XREF: sub_1405E3160+210495↓j
                                        ; sub_1405E3160+2104A4↓j
                mov     eax, edi

loc_1405E32B2:                          ; CODE XREF: sub_1405E3160+A4↑j
                                        ; sub_1405E3160+B8↑j ...
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E32C7:                          ; CODE XREF: sub_1405E3160+10E↑j
                xor     ebx, ebx
                mov     rcx, [rsp+68h+arg_10]
                jmp     short loc_1405E32A8
; } // starts at 1405E3160
sub_1405E3160   endp

; ---------------------------------------------------------------------------
byte_1405E32D3  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140045060↑o
                                        ; .pdata:00000001400FBE2C↑o

; =============== S U B R O U T I N E =======================================


sub_1405E32DC   proc near               ; CODE XREF: sub_1405E3160+105↑p
                                        ; sub_1406B7850+65F↓p ...

var_98          = byte ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407F360A SIZE 000000AF BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9b
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r12, rcx
                xor     ebx, ebx
                mov     esi, ebx
                mov     [rax-50h], rbx
                mov     [rax-80h], ebx
                mov     [rax-68h], ebx
                mov     [rsp+0B8h+var_98], bl
                mov     edi, ebx
                mov     [rsp+0B8h+var_94], ebx
                mov     r13d, ebx
                mov     [rax-70h], rbx
                mov     [rax-60h], rbx
                mov     [rax-7Ch], ebx
                mov     [rax-64h], ebx
                mov     [rsp+0B8h+var_88], rbx
                test    r9b, r9b
                jz      loc_1407F360A
                lea     edx, [rbx+10h]
                mov     r8d, 74416553h
                lea     r15d, [rbx+1]
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     r14, rax
                mov     [rsp+0B8h+var_58], rax
                test    rax, rax
                jz      loc_1407F3614
                mov     rax, [rsp+0B8h+arg_8]
                test    rax, rax
                jz      loc_1407F361E
                cmp     [rsp+0B8h+arg_10], r15d
                jb      loc_1407F361E
                cmp     [rax], r15d
                jz      loc_1407F361E

loc_1405E3385:                          ; CODE XREF: sub_1405E32DC+210347↓j
                xorps   xmm0, xmm0
                movups  xmmword ptr [r14], xmm0
                cmp     byte ptr [rsp+0B8h+arg_18], r15b
                jnz     loc_1405E3808

loc_1405E339A:                          ; DATA XREF: .rdata:000000014004508C↑o
;   __try { // __except at loc_1405E377B
                test    r12b, 3
                jnz     loc_1405E3657
                lea     rax, [r12+10h]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      loc_1405E365C
                cmp     rax, r12
                jb      loc_1405E365C

loc_1405E33C5:                          ; CODE XREF: sub_1405E32DC+38B↓j
                movzx   eax, word ptr [r12]
                mov     [r14], ax
                movzx   eax, word ptr [r12+2]
                mov     [r14+2], ax
                mov     ecx, [r12+4]
                mov     [r14+4], ecx
                test    ecx, ecx
                jz      loc_1405E366C
                mov     rax, [r12+8]
                mov     [r14+8], rax
                lea     rcx, [rcx+rcx*4]
                shl     rcx, 3
                mov     [rsp+0B8h+var_48], rcx
                mov     eax, 0FFFFFFFFh
                mov     r12d, eax
                cmp     rcx, rax
                cmovbe  r12d, ecx
                mov     [rsp+0B8h+arg_18], r12d
                cmp     rax, rcx
                sbb     edi, edi
                and     edi, 0C0000095h
                mov     [rsp+0B8h+var_94], edi
                jl      loc_1405E367E
                mov     r13d, r12d
                mov     r8d, 74416553h
                mov     edx, r12d
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                mov     [rsp+0B8h+var_50], rax
                test    rax, rax
                jz      loc_1405E368F
                test    r12d, r12d
                jz      short loc_1405E3482
                mov     rax, [r14+8]
                test    al, 3
                jnz     loc_1405E36A3
                lea     rcx, [rax+r12]
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                ja      loc_1405E36A8
                cmp     rcx, rax
                jb      loc_1405E36A8

loc_1405E3482:                          ; CODE XREF: sub_1405E32DC+178↑j
                                        ; sub_1405E32DC+3D7↓j
                mov     r8, r13
                mov     rdx, [r14+8]
                mov     rcx, rsi
                call    memmove
                mov     r12d, ebx
                mov     [rsp+0B8h+var_90], ebx

loc_1405E3498:                          ; CODE XREF: sub_1405E32DC+285↓j
                mov     r13, rbx
                mov     [rsp+0B8h+var_70], rbx
                mov     [rsp+0B8h+var_60], rbx
                cmp     r12d, [r14+4]
                jnb     loc_1405E3566
                mov     eax, r12d
                lea     rcx, [rax+rax*4]
                mov     [rsp+0B8h+var_78], rcx
                movzx   eax, word ptr [rsi+rcx*8]
                test    ax, ax
                jz      loc_1405E36B8
                mov     edx, eax
                mov     r8d, 74416553h
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     r13, rax
                mov     [rsp+0B8h+var_70], rax
                mov     [rsp+0B8h+var_60], rax
                test    rax, rax
                jz      loc_1405E36DE
                mov     rdx, [rsp+0B8h+var_78]
                movzx   ecx, word ptr [rsi+rdx*8]
                test    cx, cx
                jz      short loc_1405E352A
                mov     r8, [rsi+rdx*8+8]
                test    r15b, r8b
                jnz     loc_1405E36F8
                lea     r9, [r8+rcx]
                mov     rax, 7FFFFFFF0000h
                cmp     r9, rax
                ja      loc_1405E36FD
                cmp     r9, r8
                jb      loc_1405E36FD

loc_1405E352A:                          ; CODE XREF: sub_1405E32DC+21E↑j
                                        ; sub_1405E32DC+430↓j
                movzx   r8d, cx
                mov     rdx, [rsi+rdx*8+8]
                mov     rcx, r13
                call    memmove
                mov     rcx, [rsp+0B8h+var_78]
                mov     [rsi+rcx*8+8], r13
                mov     eax, [rsp+0B8h+var_80]
                add     eax, r15d
                mov     [rsp+0B8h+var_80], eax
                mov     [rsp+0B8h+var_68], eax
                mov     [rsp+0B8h+var_60], rbx
                add     r12d, r15d
                mov     [rsp+0B8h+var_90], r12d
                jmp     loc_1405E3498
; ---------------------------------------------------------------------------

loc_1405E3566:                          ; CODE XREF: sub_1405E32DC+1CD↑j
                mov     ecx, ebx
                mov     [rsp+0B8h+var_90], ebx
                mov     r8d, 4

loc_1405E3572:                          ; CODE XREF: sub_1405E32DC+2C4↓j
                cmp     ecx, [r14+4]
                jnb     short loc_1405E35A2
                mov     eax, ecx
                lea     r12, [rax+rax*4]
                mov     edx, [rsi+r12*8+18h]
                test    edx, edx
                jnz     short loc_1405E35D6
                cmp     [rsp+0B8h+arg_20], bl
                jz      loc_1405E3711
                mov     [rsi+r12*8+20h], rbx

loc_1405E3599:                          ; CODE XREF: sub_1405E32DC+358↓j
                add     ecx, r15d
                mov     [rsp+0B8h+var_90], ecx
                jmp     short loc_1405E3572
; ---------------------------------------------------------------------------

loc_1405E35A2:                          ; CODE XREF: sub_1405E32DC+29A↑j
                test    edi, edi
                js      loc_1405E36ED
                mov     [r14+8], rsi
                cmp     [rsp+0B8h+var_98], bl
                jnz     loc_1405E36ED
                mov     r12d, 0C000000Dh
                mov     ecx, [rsp+0B8h+arg_10]
                cmp     ecx, [r14+4]
                cmovnz  edi, r12d
                mov     [rsp+0B8h+var_94], edi
                jmp     loc_1405E3779
; ---------------------------------------------------------------------------

loc_1405E35D6:                          ; CODE XREF: sub_1405E32DC+2A9↑j
                movzx   eax, word ptr [rsi+r12*8+10h]
                test    ax, ax
                jz      loc_1405E376B
                cmp     ax, 2
                ja      short loc_1405E3639

loc_1405E35EB:                          ; CODE XREF: sub_1405E32DC+455↓j
                lea     r9, [rsp+0B8h+var_88]
                mov     rcx, [rsi+r12*8+20h]
                call    sub_1405E2A88

loc_1405E35FA:                          ; CODE XREF: sub_1405E32DC+379↓j
                                        ; sub_1405E32DC+476↓j ...
                mov     edi, eax
                mov     [rsp+0B8h+var_94], eax
                test    eax, eax
                js      short loc_1405E360E
                mov     rax, [rsp+0B8h+var_88]
                mov     [rsi+r12*8+20h], rax

loc_1405E360E:                          ; CODE XREF: sub_1405E32DC+326↑j
                mov     ecx, [rsp+0B8h+var_90]
                mov     r8d, 4

loc_1405E3618:                          ; CODE XREF: sub_1405E32DC+498↓j
                test    edi, edi
                js      loc_1405E36ED
                mov     eax, [rsp+0B8h+var_7C]
                add     eax, r15d
                mov     [rsp+0B8h+var_7C], eax
                mov     [rsp+0B8h+var_64], eax
                mov     [rsp+0B8h+var_88], rbx
                jmp     loc_1405E3599
; ---------------------------------------------------------------------------

loc_1405E3639:                          ; CODE XREF: sub_1405E32DC+30D↑j
                cmp     ax, 3
                jnz     loc_1405E3721
                lea     r9, [rsp+0B8h+var_88]
                mov     r8b, r15b
                mov     rcx, [rsi+r12*8+20h]
                call    sub_1405E9390
                jmp     short loc_1405E35FA
; ---------------------------------------------------------------------------

loc_1405E3657:                          ; CODE XREF: sub_1405E32DC+C2↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E365C:                          ; CODE XREF: sub_1405E32DC+DA↑j
                                        ; sub_1405E32DC+E3↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_1405E33C5
; ---------------------------------------------------------------------------

loc_1405E366C:                          ; CODE XREF: sub_1405E32DC+108↑j
                mov     rax, [rsp+0B8h+arg_28]
                mov     [rax], r14
                xor     eax, eax
                jmp     loc_1405E381D
; ---------------------------------------------------------------------------

loc_1405E367E:                          ; CODE XREF: sub_1405E32DC+14A↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                mov     eax, edi
                jmp     loc_1405E381D
; ---------------------------------------------------------------------------

loc_1405E368F:                          ; CODE XREF: sub_1405E32DC+16F↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                mov     eax, 0C000009Ah
                jmp     loc_1405E381D
; ---------------------------------------------------------------------------

loc_1405E36A3:                          ; CODE XREF: sub_1405E32DC+180↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E36A8:                          ; CODE XREF: sub_1405E32DC+197↑j
                                        ; sub_1405E32DC+1A0↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_1405E3482
; ---------------------------------------------------------------------------

loc_1405E36B8:                          ; CODE XREF: sub_1405E32DC+1E6↑j
                mov     r12d, 0C000000Dh
                mov     edi, r12d
                mov     [rsp+0B8h+var_94], r12d
                mov     r13, rbx
                mov     [rsp+0B8h+var_70], rbx
                mov     [rsp+0B8h+var_60], rbx
                mov     r8d, 4
                jmp     loc_1405E3779
; ---------------------------------------------------------------------------

loc_1405E36DE:                          ; CODE XREF: sub_1405E32DC+20C↑j
                mov     edi, 0C000009Ah
                mov     [rsp+0B8h+var_94], edi
                mov     r8d, 4

loc_1405E36ED:                          ; CODE XREF: sub_1405E32DC+2C8↑j
                                        ; sub_1405E32DC+2D6↑j ...
                mov     r12d, 0C000000Dh
                jmp     loc_1405E3779
; ---------------------------------------------------------------------------

loc_1405E36F8:                          ; CODE XREF: sub_1405E32DC+228↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E36FD:                          ; CODE XREF: sub_1405E32DC+23F↑j
                                        ; sub_1405E32DC+248↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                movzx   ecx, word ptr [rsi+rdx*8]
                jmp     loc_1405E352A
; ---------------------------------------------------------------------------

loc_1405E3711:                          ; CODE XREF: sub_1405E32DC+2B2↑j
                mov     r12d, 0C000000Dh
                mov     edi, r12d
                mov     [rsp+0B8h+var_94], r12d
                jmp     short loc_1405E3779
; ---------------------------------------------------------------------------

loc_1405E3721:                          ; CODE XREF: sub_1405E32DC+361↑j
                cmp     ax, r8w
                jz      short loc_1405E3757
                cmp     ax, 5
                jz      short loc_1405E3743
                cmp     ax, 6
                jz      loc_1405E35EB
                mov     r9d, 10h
                cmp     ax, r9w
                jnz     short loc_1405E376B

loc_1405E3743:                          ; CODE XREF: sub_1405E32DC+44F↑j
                lea     r9, [rsp+0B8h+var_88]
                mov     rcx, [rsi+r12*8+20h]
                call    sub_1409224B4
                jmp     loc_1405E35FA
; ---------------------------------------------------------------------------

loc_1405E3757:                          ; CODE XREF: sub_1405E32DC+449↑j
                lea     r9, [rsp+0B8h+var_88]
                mov     rcx, [rsi+r12*8+20h]
                call    sub_14092227C
                jmp     loc_1405E35FA
; ---------------------------------------------------------------------------

loc_1405E376B:                          ; CODE XREF: sub_1405E32DC+303↑j
                                        ; sub_1405E32DC+465↑j
                mov     edi, 0C00000BBh
                mov     [rsp+0B8h+var_94], edi
                jmp     loc_1405E3618
; ---------------------------------------------------------------------------

loc_1405E3779:                          ; CODE XREF: sub_1405E32DC+2F5↑j
                                        ; sub_1405E32DC+3FD↑j ...
                jmp     short loc_1405E37B5
;   } // starts at 1405E339A
; ---------------------------------------------------------------------------

loc_1405E377B:                          ; DATA XREF: .rdata:000000014004508C↑o
;   __except(1) // owned by 1405E339A
                mov     edi, eax
                mov     [rsp+0B8h+var_94], eax
                xor     ebx, ebx
                lea     r15d, [rbx+1]
                mov     r12d, 0C000000Dh
                lea     r8d, [rbx+4]
                mov     r14, [rsp+0B8h+var_58]
                mov     rsi, [rsp+0B8h+var_50]
                mov     eax, [rsp+0B8h+var_68]
                mov     [rsp+0B8h+var_80], eax
                mov     r13, [rsp+0B8h+var_60]
                mov     [rsp+0B8h+var_70], r13
                mov     eax, [rsp+0B8h+var_64]
                mov     [rsp+0B8h+var_7C], eax

loc_1405E37B5:                          ; CODE XREF: sub_1405E32DC:loc_1405E3779↑j
                test    edi, edi
                js      loc_1407F3628
                mov     eax, ebx
                mov     ecx, [r14+4]
                lea     r9, qword_1409866C0
                mov     r14d, ecx
                mov     r13b, [rsp+0B8h+var_98]

loc_1405E37D2:                          ; CODE XREF: sub_1405E32DC+520↓j
                mov     [rsp+0B8h+arg_18], eax
                cmp     eax, r14d
                jnb     short loc_1405E37FE
                test    r13b, r13b
                jnz     short loc_1405E3831
                mov     rcx, [rsp+0B8h+arg_8]
                mov     ecx, [rcx+rax*4]
                add     ecx, 0FFFFFFFEh
                test    ecx, 0FFFFFFFDh
                jz      short loc_1405E3831

loc_1405E37F9:                          ; CODE XREF: sub_1405E32DC+55E↓j
                                        ; sub_1405E32DC+5CA↓j
                add     eax, r15d
                jmp     short loc_1405E37D2
; ---------------------------------------------------------------------------

loc_1405E37FE:                          ; CODE XREF: sub_1405E32DC+500↑j
                mov     r14, [rsp+0B8h+var_58]
                mov     r13, [rsp+0B8h+var_70]

loc_1405E3808:                          ; CODE XREF: sub_1405E32DC+B8↑j
                test    edi, edi
                js      loc_1407F3628
                mov     rax, [rsp+0B8h+arg_28]
                mov     [rax], r14

loc_1405E381B:                          ; CODE XREF: sub_1405E32DC+2103D8↓j
                mov     eax, edi

loc_1405E381D:                          ; CODE XREF: sub_1405E32DC+39D↑j
                                        ; sub_1405E32DC+3AE↑j ...
                add     rsp, 80h
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
; ---------------------------------------------------------------------------

loc_1405E3831:                          ; CODE XREF: sub_1405E32DC+505↑j
                                        ; sub_1405E32DC+51B↑j
                mov     ecx, ebx

loc_1405E3833:                          ; CODE XREF: sub_1405E32DC+5DD↓j
                mov     dword ptr [rsp+0B8h+var_78], ecx
                cmp     ecx, r8d
                jnb     short loc_1405E37F9
                mov     [rsp+0B8h+var_48], rcx
                mov     r8d, eax
                mov     [rsp+0B8h+var_40], r8
                lea     rax, [rcx+rcx*2]
                lea     rdx, [r9+rax*8]
                lea     rax, [r8+r8*4]
                lea     rcx, [rsi+rax*8]
                mov     r8b, r15b
                call    RtlCompareUnicodeString
                mov     r8d, 4
                lea     r9, qword_1409866C0
                test    eax, eax
                jnz     short loc_1405E38AB
                mov     rax, [rsp+0B8h+var_40]
                lea     rdx, [rax+rax*4]
                mov     rax, [rsp+0B8h+var_48]
                lea     rcx, [rax+rax*2]
                movzx   eax, word ptr [rsi+rdx*8+10h]
                cmp     eax, [r9+rcx*8+10h]
                cmovnz  edi, r12d
                mov     eax, [r9+rcx*8+14h]
                cmp     [rsi+rdx*8+18h], eax
                cmovb   edi, r12d
                mov     eax, [rsp+0B8h+arg_18]
                jmp     loc_1405E37F9
; ---------------------------------------------------------------------------

loc_1405E38AB:                          ; CODE XREF: sub_1405E32DC+594↑j
                mov     ecx, dword ptr [rsp+0B8h+var_78]
                add     ecx, r15d
                mov     eax, [rsp+0B8h+arg_18]
                jmp     loc_1405E3833
; } // starts at 1405E32DC
sub_1405E32DC   endp

; ---------------------------------------------------------------------------
byte_1405E38BE  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400450A0↑o
                                        ; .pdata:00000001400FBE38↑o

; =============== S U B R O U T I N E =======================================


sub_1405E38C4   proc near               ; CODE XREF: sub_140595E84+69↑p
                                        ; NtSetInformationToken+1E6↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rsi, rdx
                cmp     dword ptr [rcx], 1
                jz      short loc_1405E391A
                mov     edi, ebx
                cmp     [rdx+4], ebx
                jbe     short loc_1405E3907

loc_1405E38E4:                          ; CODE XREF: sub_1405E38C4+41↓j
                mov     eax, edi
                lea     rcx, [rax+rax*4]
                mov     rax, [rsi+8]
                lea     rcx, [rax+rcx*8]
                test    rcx, rcx
                jz      short loc_1405E3900
                call    sub_140202244
                test    al, al
                jnz     short loc_1405E391A

loc_1405E3900:                          ; CODE XREF: sub_1405E38C4+31↑j
                inc     edi
                cmp     edi, [rsi+4]
                jb      short loc_1405E38E4

loc_1405E3907:                          ; CODE XREF: sub_1405E38C4+1E↑j
                                        ; sub_1405E38C4+58↓j
                mov     rsi, [rsp+28h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E391A:                          ; CODE XREF: sub_1405E38C4+17↑j
                                        ; sub_1405E38C4+3A↑j
                mov     bl, 1
                jmp     short loc_1405E3907
sub_1405E38C4   endp

; ---------------------------------------------------------------------------
byte_1405E391E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400FBE44↑o
; Exported entry 1623. NtSetInformationToken

; =============== S U B R O U T I N E =======================================


