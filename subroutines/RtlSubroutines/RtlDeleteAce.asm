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


                public NtSetInformationToken
NtSetInformationToken proc near         ; DATA XREF: .rdata:0000000140045274↑o
                                        ; .pdata:00000001400FBE50↑o ...

var_108         = dword ptr -108h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = byte ptr -0ACh
var_AB          = byte ptr -0ABh
var_A8          = dword ptr -0A8h
var_A4          = byte ptr -0A4h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = byte ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 00000001407F36BA SIZE 00000536 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0F0h
                mov     r14d, r9d
                mov     r12, r8
                movsxd  rbx, edx
                mov     r13, rcx
                xor     edi, edi
                mov     [rsp+108h+var_AC], dil
                mov     [rsp+108h+var_A8], edi
                mov     [rax-70h], edi
                mov     [rsp+108h+var_90], rdi
                mov     [rsp+108h+var_98], rdi
                mov     [rsp+108h+var_A0], rdi
                mov     [rax-58h], rdi
                mov     [rax-50h], rdi
                mov     [rax-60h], edi
                mov     rax, gs:188h
                mov     r15b, [rax+232h]
                mov     [rsp+108h+var_AB], r15b
                test    r15b, r15b
                jz      short loc_1405E39DA

loc_1405E399E:                          ; DATA XREF: .rdata:0000000140045160↑o
;   __try { // __except at loc_1405E39D5
                test    r9d, r9d
                jz      short loc_1405E39D3
                test    r12b, 3
                jnz     short loc_1405E39CE
                lea     rcx, [r8+r14]
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                ja      short loc_1405E39C1
                cmp     rcx, r8
                jnb     short loc_1405E39D3

loc_1405E39C1:                          ; CODE XREF: NtSetInformationToken+8A↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1405E39D3
; ---------------------------------------------------------------------------

loc_1405E39CE:                          ; CODE XREF: NtSetInformationToken+77↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1405E39D3:                          ; CODE XREF: NtSetInformationToken+71↑j
                                        ; NtSetInformationToken+8F↑j ...
                jmp     short loc_1405E39DA
;   } // starts at 1405E399E
; ---------------------------------------------------------------------------

loc_1405E39D5:                          ; DATA XREF: .rdata:0000000140045160↑o
;   __except(1) // owned by 1405E399E
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E39DA:                          ; CODE XREF: NtSetInformationToken+6C↑j
                                        ; NtSetInformationToken:loc_1405E39D3↑j
                cmp     ebx, 2Dh ; '-'
                ja      loc_1407F3BE6
                mov     rcx, 24800F8B5070h
                bt      rcx, rbx
                jnb     loc_1407F3BE6
                mov     edx, 80h
                cmp     ebx, 0Ch
                jz      loc_1405E40BD
                lea     eax, [rdx+8]
                cmp     ebx, 13h
                cmovz   edx, eax

loc_1405E3A0E:                          ; CODE XREF: NtSetInformationToken+792↓j
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+108h+var_B8], rdi
                mov     [rsp+108h+var_E0], rdi
                lea     rax, [rsp+108h+var_B8]
                mov     [rsp+108h+var_E8], rax
                mov     r9b, r15b
                mov     rcx, r13
                call    ObReferenceObjectByHandle
                mov     rsi, [rsp+108h+var_B8]
                mov     [rsp+108h+var_88], rsi
                test    eax, eax
                js      loc_1405E3CDA
                cmp     ebx, 17h
                jle     loc_1405E3BCC
                sub     ebx, 18h
                jz      loc_1405E4391
                sub     ebx, 1
                jz      loc_1405E3E19
                sub     ebx, 1
                jz      loc_1405E467E
                sub     ebx, 1
                jz      loc_1405E3CFD
                sub     ebx, 0Ch
                jnz     loc_1407F3A2C
                mov     [rsp+108h+var_80], rdi
                test    r12, r12
                jz      loc_1407F36BA
                cmp     r14d, 10h
                jb      loc_1407F36BA
                lea     r8, [rsp+108h+var_80]
                mov     dl, r15b
                mov     rcx, r12
                call    sub_1405E3160
                mov     r14d, eax
                test    eax, eax
                js      loc_1407F3B73
                mov     dword ptr [rsp+108h+var_E0], edi
                lea     rax, dword_14000A77C
                mov     [rsp+108h+var_E8], rax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 0FC13FCh
                lea     rcx, unk_140CDB418
                call    sub_140206E14
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                mov     ebx, 0C0000061h
                test    al, al
                cmovz   r14d, ebx
                mov     [rsp+108h+var_B0], r14d
                test    r14d, r14d
                js      loc_1407F3B63
                mov     rbx, [rsp+108h+var_80]
                mov     rdx, [rbx]
                mov     rcx, [rbx+8]
                call    sub_1405E38C4
                movzx   esi, dil
                mov     r14d, 1
                test    al, al
                cmovnz  esi, r14d
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r13, [rsp+108h+var_B8]
                mov     dl, r14b
                mov     rcx, [r13+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     r8, [rsp+108h+var_80]
                mov     r8, [r8]
                mov     rdx, [rbx+8]
                mov     rbx, [rsp+108h+var_B8]
                mov     rcx, [rbx+308h]
                call    sub_140203548
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                jns     loc_1405E3E0B

loc_1405E3B7C:                          ; CODE XREF: NtSetInformationToken+4DE↓j
                                        ; NtSetInformationToken+210253↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rbx+38h], eax
                shr     rax, 20h
                mov     [rbx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [r13+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     dl, r15b
                mov     rcx, [rsp+108h+var_80]
                call    sub_1405E4750
                mov     ebx, [rsp+108h+var_B0]

loc_1405E3BC2:                          ; CODE XREF: NtSetInformationToken+A5C↓j
                                        ; NtSetInformationToken+E0C↓j
                mov     rsi, [rsp+108h+var_B8]
                jmp     loc_1405E3CD0
; ---------------------------------------------------------------------------

loc_1405E3BCC:                          ; CODE XREF: NtSetInformationToken+11C↑j
                jz      loc_1405E43C8
                sub     ebx, 4
                jz      loc_1405E44BA
                sub     ebx, 1
                jz      loc_1407F3853
                sub     ebx, 1
                jz      loc_1405E4117
                sub     ebx, 6
                jz      loc_1405E40C7
                sub     ebx, 2
                jz      loc_1405E3D5F
                sub     ebx, 2
                jnz     loc_1405E42C4
                mov     [rsp+108h+var_78], rdi
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+108h+var_B8]
                lea     r14d, [rbx+1]
                mov     dl, r14b
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceSharedLite
                mov     bl, [rsi+76h]
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                test    bl, bl
                jnz     loc_1407F37C2
                test    r12, r12
                jnz     loc_1407F36C4
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, r14b
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     [rsi+76h], r14b
                mov     rdx, [rsp+108h+var_B8]
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdx+38h], eax
                shr     rax, 20h
                mov     [rdx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rsi+30h]

loc_1405E3CBF:                          ; CODE XREF: NtSetInformationToken+4D6↓j
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rsi, [rsp+108h+var_B8]

loc_1405E3CCE:                          ; CODE XREF: NtSetInformationToken+A93↓j
                mov     ebx, edi

loc_1405E3CD0:                          ; CODE XREF: NtSetInformationToken+297↑j
                                        ; NtSetInformationToken+42A↓j ...
                mov     rcx, rsi

loc_1405E3CD3:                          ; CODE XREF: NtSetInformationToken+20FF73↓j
                call    PsDereferenceSiloContext

loc_1405E3CD8:                          ; CODE XREF: NtSetInformationToken+788↓j
                mov     eax, ebx

loc_1405E3CDA:                          ; CODE XREF: NtSetInformationToken:loc_1405E39D5↑j
                                        ; NtSetInformationToken+113↑j ...
                lea     r11, [rsp+108h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E3CFD:                          ; CODE XREF: NtSetInformationToken+140↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E3D07:                          ; DATA XREF: .rdata:0000000140045170↑o
;   __try { // __except at loc_1405E3D14
                mov     eax, [r12]
                mov     [rsp+108h+var_68], eax
                jmp     short loc_1405E3D24
;   } // starts at 1405E3D07
; ---------------------------------------------------------------------------

loc_1405E3D14:                          ; DATA XREF: .rdata:0000000140045170↑o
;   __except(1) // owned by 1405E3D07
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     short loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E3D24:                          ; CODE XREF: NtSetInformationToken+3E2↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                cmp     [rsi+0CCh], dil
                jnz     loc_1407F3B88
                lea     rdx, [rsp+108h+var_68]
                mov     rcx, rsi
                call    sub_1405E30C8

loc_1405E3D58:                          ; CODE XREF: NtSetInformationToken+541↓j
                                        ; NtSetInformationToken+7E2↓j ...
                mov     ebx, eax
                jmp     loc_1405E3CD0
; ---------------------------------------------------------------------------

loc_1405E3D5F:                          ; CODE XREF: NtSetInformationToken+2C9↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E3D69:                          ; DATA XREF: .rdata:0000000140045180↑o
;   __try { // __except at loc_1405E3D76
                mov     ebx, [r12]
                mov     [rsp+108h+var_40], ebx
                jmp     short loc_1405E3D89
;   } // starts at 1405E3D69
; ---------------------------------------------------------------------------

loc_1405E3D76:                          ; DATA XREF: .rdata:0000000140045180↑o
;   __except(1) // owned by 1405E3D69
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E3D89:                          ; CODE XREF: NtSetInformationToken+444↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                test    ebx, ebx
                jnz     loc_1407F37C2
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     r15, [rsp+108h+var_B8]
                lea     edx, [rbx+1]
                mov     rcx, [r15+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rsi, [rsp+108h+var_B8]
                mov     eax, [rsi+0C8h]
                test    al, 20h
                jnz     short loc_1405E3DFE
                cmp     cs:dword_140D2D010, ebx
                jnz     loc_1407F37CC

loc_1405E3DE8:                          ; CODE XREF: NtSetInformationToken+20FEA5↓j
                mov     rcx, rsi
                call    sub_1405E3088
                mov     ebx, eax
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                js      loc_1405E3CD0

loc_1405E3DFE:                          ; CODE XREF: NtSetInformationToken+4AA↑j
                lock or [rsp+108h+var_108], edi
                mov     rcx, [r15+30h]
                jmp     loc_1405E3CBF
; ---------------------------------------------------------------------------

loc_1405E3E0B:                          ; CODE XREF: NtSetInformationToken+246↑j
                test    sil, sil
                jz      loc_1405E3B7C
                jmp     loc_1407F3B7B
; ---------------------------------------------------------------------------

loc_1405E3E19:                          ; CODE XREF: NtSetInformationToken+12E↑j
                cmp     r14d, 10h
                jb      loc_1407F36BA

loc_1405E3E23:                          ; DATA XREF: .rdata:0000000140045190↑o
;   __try { // __except at loc_1405E3E5C
                lea     rax, [rsp+108h+var_60]
                mov     [rsp+108h+var_C8], rax
                lea     rax, [rsp+108h+var_50]
                mov     [rsp+108h+var_D0], rax
                mov     dword ptr [rsp+108h+var_E8], edi
                xor     r9d, r9d
                mov     r8b, r15b
                lea     r14d, [r9+1]
                mov     edx, r14d
                mov     rcx, r12
                call    sub_1406B8460
                mov     [rsp+108h+var_B0], eax
                jmp     short loc_1405E3E6F
;   } // starts at 1405E3E23
; ---------------------------------------------------------------------------

loc_1405E3E5C:                          ; DATA XREF: .rdata:0000000140045190↑o
;   __except(1) // owned by 1405E3E23
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E3E6F:                          ; CODE XREF: NtSetInformationToken+52A↑j
                test    eax, eax
                js      loc_1405E3D58
                mov     r13, [rsp+108h+var_50]
                mov     rbx, [r13+0]
                mov     rcx, cs:qword_140C1D9C8
                mov     edx, [rbx+2]
                sub     edx, [rcx+2]
                jnz     short loc_1405E3E9C
                movzx   edx, word ptr [rbx+6]
                movzx   eax, word ptr [rcx+6]
                sub     edx, eax

loc_1405E3E9C:                          ; CODE XREF: NtSetInformationToken+560↑j
                test    edx, edx
                jnz     loc_1407F3B92
                mov     rcx, rbx
                call    RtlSubAuthorityCountSid
                movzx   ecx, byte ptr [rax]
                test    cl, cl
                jz      loc_1407F3BAF
                mov     edx, ecx
                sub     edx, r14d
                mov     rcx, rbx
                call    RtlSubAuthoritySid
                mov     r12d, [rax]
                cmp     r12d, 4000h
                ja      loc_1407F3B92

loc_1405E3ED4:                          ; CODE XREF: NtSetInformationToken+210282↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, [rsp+108h+var_B8]
                mov     [rsp+108h+var_48], rax
                mov     dl, r14b
                mov     rcx, [rax+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rbx, [rsp+108h+var_B8]
                mov     rcx, rbx
                call    sub_14021BD88
                mov     rsi, rax
                test    rax, rax
                jz      loc_1407F3BB7
                mov     r13, [rax]
                mov     rcx, r13
                call    RtlSubAuthorityCountSid
                movzx   ecx, byte ptr [rax]
                test    cl, cl
                jz      loc_1407F3BC1
                mov     edx, ecx
                sub     edx, r14d
                mov     rcx, r13
                call    RtlSubAuthoritySid
                mov     eax, [rax]

loc_1405E3F3F:                          ; CODE XREF: NtSetInformationToken+210293↓j
                cmp     r12d, eax
                jbe     short loc_1405E3F68
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F3BC8
                cmp     [rbx+0CCh], dil
                jnz     loc_1407F3BD2

loc_1405E3F68:                          ; CODE XREF: NtSetInformationToken+612↑j
                mov     rcx, [rsi]
                movzx   eax, byte ptr [rcx+1]
                test    al, al
                jz      loc_1407F3BDC
                mov     edx, eax
                sub     edx, r14d
                call    RtlSubAuthoritySid
                mov     [rax], r12d
                cmp     r12d, 3000h
                jnb     short loc_1405E3F9F
                mov     rax, 0FFFFFFEEDFE9F97Bh
                and     [rbx+48h], rax
                and     [rbx+50h], rax

loc_1405E3F9F:                          ; CODE XREF: NtSetInformationToken+65B↑j
                mov     esi, 2000h
                cmp     r12d, esi
                jb      loc_1405E4457
                test    dword ptr [rbx+0C8h], 4000h
                jz      loc_1405E405C
                mov     rdx, [rbx+310h]
                mov     rcx, rbx
                call    sub_140201F54
                btr     dword ptr [rbx+0C8h], 0Eh
                mov     rcx, [rbx+310h]
                test    rcx, rcx
                jz      short loc_1405E3FEE
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rbx+310h], rdi

loc_1405E3FEE:                          ; CODE XREF: NtSetInformationToken+6AE↑j
                mov     rcx, [rbx+318h]
                test    rcx, rcx
                jz      short loc_1405E4022
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rbx+318h], rdi
                mov     [rbx+320h], edi
                lea     rcx, [rbx+328h]
                xor     edx, edx
                mov     r8d, 110h
                call    memset

loc_1405E4022:                          ; CODE XREF: NtSetInformationToken+6C8↑j
                mov     rdx, [rbx+438h]
                test    rdx, rdx
                jz      short loc_1405E403D
                mov     ecx, [rbx+78h]
                call    sub_1406A0F7C
                mov     [rbx+438h], rdi

loc_1405E403D:                          ; CODE XREF: NtSetInformationToken+6FC↑j
                mov     rdx, [rbx+440h]
                test    rdx, rdx
                jz      short loc_1405E405C
                mov     rcx, [rbx+0D8h]
                call    sub_1406A10C0
                mov     [rbx+440h], rdi

loc_1405E405C:                          ; CODE XREF: NtSetInformationToken+687↑j
                                        ; NtSetInformationToken+717↑j
                or      [rbx+0C8h], esi

loc_1405E4062:                          ; CODE XREF: NtSetInformationToken+B41↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rbx+38h], eax
                shr     rax, 20h
                mov     [rbx+3Ch], eax
                mov     ebx, edi

loc_1405E4084:                          ; CODE XREF: NtSetInformationToken+21028C↓j
                                        ; NtSetInformationToken+21029D↓j ...
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rsp+108h+var_48]
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     dl, r15b
                mov     rcx, [rsp+108h+var_50]
                call    sub_140629F38
                jmp     loc_1405E3CD8
; ---------------------------------------------------------------------------

loc_1405E40BD:                          ; CODE XREF: NtSetInformationToken+CF↑j
                mov     edx, 180h
                jmp     loc_1405E3A0E
; ---------------------------------------------------------------------------

loc_1405E40C7:                          ; CODE XREF: NtSetInformationToken+2C0↑j
                cmp     r14d, 4
                jnz     loc_1407F39CD

loc_1405E40D1:                          ; DATA XREF: .rdata:00000001400451A0↑o
;   __try { // __except at loc_1405E40DE
                mov     ebx, [r12]
                mov     [rsp+108h+var_3C], ebx
                jmp     short loc_1405E40F1
;   } // starts at 1405E40D1
; ---------------------------------------------------------------------------

loc_1405E40DE:                          ; DATA XREF: .rdata:00000001400451A0↑o
;   __except(1) // owned by 1405E40D1
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E40F1:                          ; CODE XREF: NtSetInformationToken+7AC↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     edx, ebx
                mov     rcx, rsi
                call    sub_1405E283C
                jmp     loc_1405E3D58
; ---------------------------------------------------------------------------

loc_1405E4117:                          ; CODE XREF: NtSetInformationToken+2B7↑j
                cmp     r14d, 8
                jb      loc_1407F39CD

loc_1405E4121:                          ; DATA XREF: .rdata:00000001400451B0↑o
;   __try { // __except at loc_1405E416A
                mov     rcx, [r12]
                mov     [rsp+108h+var_A0], rcx
                mov     r14d, 1
                test    rcx, rcx
                jz      short loc_1405E415E
                lea     rax, [rsp+108h+var_A8]
                mov     [rsp+108h+var_D0], rax
                lea     rax, [rsp+108h+var_A0]
                mov     [rsp+108h+var_D8], rax
                mov     dword ptr [rsp+108h+var_E8], r14d
                mov     dl, r15b
                call    sub_1405E2930
                mov     ebx, eax
                mov     [rsp+108h+var_B0], eax
                jmp     short loc_1405E4168
; ---------------------------------------------------------------------------

loc_1405E415E:                          ; CODE XREF: NtSetInformationToken+803↑j
                mov     [rsp+108h+var_A8], edi
                mov     ebx, edi
                mov     [rsp+108h+var_B0], ebx

loc_1405E4168:                          ; CODE XREF: NtSetInformationToken+82C↑j
                jmp     short loc_1405E417D
;   } // starts at 1405E4121
; ---------------------------------------------------------------------------

loc_1405E416A:                          ; DATA XREF: .rdata:00000001400451B0↑o
;   __except(1) // owned by 1405E4121
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E417D:                          ; CODE XREF: NtSetInformationToken:loc_1405E4168↑j
                test    ebx, ebx
                js      loc_1405E3CD0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+108h+var_B8]
                mov     dl, r14b
                mov     rcx, [rsi+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rbx, [rsp+108h+var_B8]
                mov     rax, [rbx+0A8h]
                movzx   edx, byte ptr [rax+1]
                mov     eax, [rsp+108h+var_A8]
                add     eax, 8
                lea     edx, [rax+rdx*4]
                mov     [rsp+108h+var_A8], edx
                cmp     edx, [rbx+88h]
                ja      loc_1407F37E4
                mov     rcx, rbx
                call    sub_1405E2384
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                js      loc_1407F381C
                mov     rcx, [rbx+0B8h]
                test    rcx, rcx
                jz      short loc_1405E4226
                lea     rax, [rsp+108h+var_70]
                mov     [rsp+108h+var_D0], rax
                lea     rax, [rsp+108h+var_58]
                mov     [rsp+108h+var_D8], rax
                mov     dword ptr [rsp+108h+var_E8], r14d
                xor     edx, edx
                call    sub_1405E2930
                mov     [rsp+108h+var_B0], eax
                test    eax, eax
                js      loc_1407F381C

loc_1405E4226:                          ; CODE XREF: NtSetInformationToken+8C2↑j
                mov     rcx, rbx
                call    sub_1405E246C
                mov     r14, [rsp+108h+var_A0]
                test    r14, r14
                jz      short loc_1405E4243
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1405E24B8

loc_1405E4243:                          ; CODE XREF: NtSetInformationToken+906↑j
                mov     [rsp+108h+var_E8], r14
                mov     r9, [rsp+108h+var_58]
                mov     r8, r13
                mov     rdx, rbx
                call    sub_1405E2518
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rbx+38h], eax
                shr     rax, 20h
                mov     [rbx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     rcx, [rsp+108h+var_A0]
                test    rcx, rcx
                jz      short loc_1405E42A9
                mov     dl, r15b
                call    sub_1405E2A6C

loc_1405E42A9:                          ; CODE XREF: NtSetInformationToken+96F↑j
                mov     rcx, [rsp+108h+var_58]
                test    rcx, rcx
                jz      short loc_1405E42BD
                xor     edx, edx
                call    sub_1405E2A6C

loc_1405E42BD:                          ; CODE XREF: NtSetInformationToken+984↑j
                                        ; NtSetInformationToken+20FE8D↓j ...
                xor     eax, eax
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E42C4:                          ; CODE XREF: NtSetInformationToken+2D2↑j
                sub     ebx, 1
                jnz     loc_1405E4476
                cmp     r14d, 8
                jnz     loc_1407F36BA

loc_1405E42D7:                          ; DATA XREF: .rdata:00000001400451C0↑o
;   __try { // __except at loc_1405E42E5
                mov     rax, [r12]
                mov     [rsp+108h+var_28], rax
                jmp     short loc_1405E42F8
;   } // starts at 1405E42D7
; ---------------------------------------------------------------------------

loc_1405E42E5:                          ; DATA XREF: .rdata:00000001400451C0↑o
;   __except(1) // owned by 1405E42D7
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E42F8:                          ; CODE XREF: NtSetInformationToken+9B3↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_B8]
                mov     edx, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rdx, [rsp+108h+var_B8]
                mov     eax, [rdx+0E4h]
                or      eax, [rdx+0E0h]
                jnz     short loc_1405E4358
                mov     rax, [rsp+108h+var_28]
                mov     [rdx+0E0h], rax

loc_1405E4358:                          ; CODE XREF: NtSetInformationToken+A17↑j
                                        ; NtSetInformationToken+B22↓j
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdx+38h], eax
                shr     rax, 20h
                mov     [rdx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                xor     ebx, ebx
                jmp     loc_1405E3BC2
; ---------------------------------------------------------------------------

loc_1405E4391:                          ; CODE XREF: NtSetInformationToken+125↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E439B:                          ; DATA XREF: .rdata:00000001400451D0↑o
;   __try { // __except at loc_1405E43A8
                mov     edx, [r12]
                mov     [rsp+108h+var_30], edx
                jmp     short loc_1405E43BB
;   } // starts at 1405E439B
; ---------------------------------------------------------------------------

loc_1405E43A8:                          ; DATA XREF: .rdata:00000001400451D0↑o
;   __except(1) // owned by 1405E439B
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E43BB:                          ; CODE XREF: NtSetInformationToken+A76↑j
                mov     rcx, rsi
                call    sub_14071E06C
                jmp     loc_1405E3CCE
; ---------------------------------------------------------------------------

loc_1405E43C8:                          ; CODE XREF: NtSetInformationToken:loc_1405E3BCC↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E43D2:                          ; DATA XREF: .rdata:00000001400451E0↑o
;   __try { // __except at loc_1405E43DF
                mov     eax, [r12]
                mov     [rsp+108h+var_6C], eax
                jmp     short loc_1405E43F2
;   } // starts at 1405E43D2
; ---------------------------------------------------------------------------

loc_1405E43DF:                          ; DATA XREF: .rdata:00000001400451E0↑o
;   __except(1) // owned by 1405E43D2
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E43F2:                          ; CODE XREF: NtSetInformationToken+AAD↑j
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E7A8
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_B8]
                mov     edx, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rdx, [rsp+108h+var_B8]
                mov     eax, [rdx+0C8h]
                cmp     [rsp+108h+var_6C], edi
                jz      loc_1407F3A23
                bts     eax, 9

loc_1405E444C:                          ; CODE XREF: NtSetInformationToken+2100F7↓j
                mov     [rdx+0C8h], eax
                jmp     loc_1405E4358
; ---------------------------------------------------------------------------

loc_1405E4457:                          ; CODE XREF: NtSetInformationToken+677↑j
                mov     rax, 202800000h
                and     [rbx+48h], rax
                and     [rbx+50h], rax
                btr     dword ptr [rbx+0C8h], 0Dh
                jmp     loc_1405E4062
; ---------------------------------------------------------------------------

loc_1405E4476:                          ; CODE XREF: NtSetInformationToken+997↑j
                cmp     ebx, 2
                jnz     loc_1407F3B08
                cmp     r14d, 8
                jnz     loc_1407F36BA

loc_1405E4489:                          ; DATA XREF: .rdata:00000001400451F0↑o
;   __try { // __except at loc_1405E4497
                mov     rdx, [r12]
                mov     [rsp+108h+var_20], rdx
                jmp     short loc_1405E44AA
;   } // starts at 1405E4489
; ---------------------------------------------------------------------------

loc_1405E4497:                          ; DATA XREF: .rdata:00000001400451F0↑o
;   __except(1) // owned by 1405E4489
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E44AA:                          ; CODE XREF: NtSetInformationToken+B65↑j
                mov     r8b, r15b
                mov     rcx, rsi
                call    sub_140363AB4
                jmp     loc_1405E3D58
; ---------------------------------------------------------------------------

loc_1405E44BA:                          ; CODE XREF: NtSetInformationToken+2A5↑j
                cmp     r14d, 8
                jb      loc_1407F39CD

loc_1405E44C4:                          ; DATA XREF: .rdata:0000000140045200↑o
;   __try { // __except at loc_1405E44F2
                mov     rcx, [r12]
                mov     [rsp+108h+var_90], rcx
                lea     rax, [rsp+108h+var_90]
                mov     [rsp+108h+var_D8], rax
                mov     r14d, 1
                mov     byte ptr [rsp+108h+var_E0], r14b
                mov     dl, r15b
                call    sub_1406B967C
                mov     ebx, eax
                mov     [rsp+108h+var_B0], eax
                jmp     short loc_1405E4505
;   } // starts at 1405E44C4
; ---------------------------------------------------------------------------

loc_1405E44F2:                          ; DATA XREF: .rdata:0000000140045200↑o
;   __except(1) // owned by 1405E44C4
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E4505:                          ; CODE XREF: NtSetInformationToken+BC0↑j
                test    ebx, ebx
                js      loc_1405E3CD0
                mov     ebx, edi
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, r14b
                mov     rcx, [rsp+108h+var_B8]
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rsi, [rsp+108h+var_88]

loc_1405E453C:                          ; CODE XREF: NtSetInformationToken+2100B2↓j
                cmp     ebx, [rsi+7Ch]
                jnb     loc_1407F39E7

loc_1405E4545:                          ; DATA XREF: .rdata:0000000140045210↑o
;   __try { // __except at loc_1405E4610
                mov     eax, ebx
                add     rax, rax
                mov     rdx, [rsi+98h]
                mov     rdx, [rdx+rax*8]
                mov     rcx, [rsp+108h+var_90]
                call    RtlEqualSid
                mov     [rsp+108h+var_A4], al
                test    al, al
                jz      loc_1405E460B
                mov     edx, ebx
                mov     rcx, rsi
                call    sub_14070176C
                test    al, al
                jz      loc_1405E45FD
                mov     [rsi+90h], ebx
                mov     al, r14b
                mov     [rsp+108h+var_AC], al
                mov     [rsp+108h+var_B0], edi

loc_1405E458E:                          ; CODE XREF: NtSetInformationToken+CD9↓j
                test    al, al
                jz      short loc_1405E45C2
                mov     [rsp+108h+var_48], rdi
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rsp+108h+var_48], rax
                mov     [rsi+38h], eax
                shr     rax, 20h
                mov     [rsi+3Ch], eax

loc_1405E45C2:                          ; CODE XREF: NtSetInformationToken+C60↑j
                lock or [rsp+108h+var_108], edi
                mov     rbx, [rsp+108h+var_88]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     r8b, r14b
                mov     dl, r15b
                mov     rcx, [rsp+108h+var_90]
                call    sub_1406B9780
                mov     eax, [rsp+108h+var_B0]
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E45FD:                          ; CODE XREF: NtSetInformationToken+C47↑j
                mov     [rsp+108h+var_B0], 0C000005Ah
                mov     al, [rsp+108h+var_AC]
                jmp     short loc_1405E458E
; ---------------------------------------------------------------------------

loc_1405E460B:                          ; CODE XREF: NtSetInformationToken+C35↑j
                jmp     loc_1407F39DF
;   } // starts at 1405E4545
; ---------------------------------------------------------------------------

loc_1405E4610:                          ; DATA XREF: .rdata:0000000140045210↑o
;   __except(1) // owned by 1405E4545
                mov     edi, eax
                cmp     [rsp+108h+var_AC], 0
                jz      short loc_1405E4643
                mov     r8, [rsp+108h+var_88]
                mov     rdx, cs:qword_14003AFE0
                mov     rcx, rdx
                lock xadd cs:qword_140C12E38, rcx
                add     rcx, rdx
                mov     [r8+38h], ecx
                shr     rcx, 20h
                mov     [r8+3Ch], ecx

loc_1405E4643:                          ; CODE XREF: NtSetInformationToken+CE7↑j
                lock or [rsp+108h+var_108], 0
                mov     rbx, [rsp+108h+var_88]
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     r8b, 1
                mov     dl, [rsp+108h+var_AB]
                mov     rcx, [rsp+108h+var_90]
                call    sub_1406B9780
                mov     eax, edi
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E467E:                          ; CODE XREF: NtSetInformationToken+137↑j
                cmp     r14d, 4
                jnz     loc_1407F36BA

loc_1405E4688:                          ; DATA XREF: .rdata:0000000140045220↑o
;   __try { // __except at loc_1405E4695
                mov     eax, [r12]
                mov     [rsp+108h+var_64], eax
                jmp     short loc_1405E46A8
;   } // starts at 1405E4688
; ---------------------------------------------------------------------------

loc_1405E4695:                          ; DATA XREF: .rdata:0000000140045220↑o
;   __except(1) // owned by 1405E4688
                mov     ebx, eax
                mov     rcx, [rsp+108h+var_B8]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     loc_1405E3CDA
; ---------------------------------------------------------------------------

loc_1405E46A8:                          ; CODE XREF: NtSetInformationToken+D63↑j
                test    eax, eax
                jz      short loc_1405E46C3
                mov     dl, r15b
                mov     rcx, cs:qword_140D2E690
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      loc_1407F37DA

loc_1405E46C3:                          ; CODE XREF: NtSetInformationToken+D7A↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+108h+var_B8]
                mov     edx, 1
                mov     rcx, [rbx+30h]
                call    ExAcquireResourceExclusiveLite
                lock or [rsp+108h+var_108], edi
                mov     rdx, [rsp+108h+var_B8]
                mov     eax, [rdx+0C8h]
                cmp     [rsp+108h+var_64], edi
                jz      short loc_1405E4741
                bts     eax, 0Ch

loc_1405E4702:                          ; CODE XREF: NtSetInformationToken+E15↓j
                mov     [rdx+0C8h], eax
                mov     rcx, cs:qword_14003AFE0
                mov     rax, rcx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rcx
                mov     [rdx+38h], eax
                shr     rax, 20h
                mov     [rdx+3Ch], eax
                lock or [rsp+108h+var_108], edi
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     ebx, edi
                jmp     loc_1405E3BC2
; ---------------------------------------------------------------------------

loc_1405E4741:                          ; CODE XREF: NtSetInformationToken+DCC↑j
                btr     eax, 0Ch
                jmp     short loc_1405E4702
; } // starts at 1405E3930
NtSetInformationToken endp

; ---------------------------------------------------------------------------
algn_1405E4747:                         ; DATA XREF: .rdata:0000000140045274↑o
                                        ; .pdata:00000001400FBE50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405E4750   proc near               ; CODE XREF: NtSetInformationToken+289↑p
                                        ; NtSetInformationToken+21023E↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    dl, dl
                jz      short loc_1405E477F
                mov     rcx, [rcx+8]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_1405E4775
                call    sub_1405E4790

loc_1405E4775:                          ; CODE XREF: sub_1405E4750+1E↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1405E477F:                          ; CODE XREF: sub_1405E4750+B↑j
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E4750   endp

algn_1405E4788:                         ; DATA XREF: .pdata:00000001400FBE5C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405E4790   proc near               ; CODE XREF: sub_1405E4750+20↑p
                                        ; sub_1406B7850+760↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407F3BF0 SIZE 0000002D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbx, [rcx+8]
                xor     r14d, r14d
                mov     rsi, rcx
                mov     ebp, r14d
                cmp     [rcx+4], r14d
                jbe     short loc_1405E47DC

loc_1405E47BC:                          ; CODE XREF: sub_1405E4790+4A↓j
                mov     eax, ebp
                xor     edx, edx
                lea     rdi, [rax+rax*4]
                mov     rcx, [rbx+rdi*8+8]
                call    ExFreePoolWithTag
                cmp     [rbx+rdi*8+18h], r14d
                jnz     short loc_1405E4811

loc_1405E47D5:                          ; CODE XREF: sub_1405E4790+89↓j
                                        ; sub_1405E4790+9D↓j ...
                inc     ebp
                cmp     ebp, [rsi+4]
                jb      short loc_1405E47BC

loc_1405E47DC:                          ; CODE XREF: sub_1405E4790+2A↑j
                test    rbx, rbx
                jz      short loc_1405E47EB
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1405E47EB:                          ; CODE XREF: sub_1405E4790+4F↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E4811:                          ; CODE XREF: sub_1405E4790+43↑j
                movzx   eax, word ptr [rbx+rdi*8+10h]
                test    ax, ax
                jz      short loc_1405E47D5
                cmp     ax, 2
                ja      short loc_1405E482F

loc_1405E4821:                          ; CODE XREF: sub_1405E4790+A3↓j
                                        ; sub_1405E4790+20F464↓j ...
                mov     rcx, [rbx+rdi*8+20h]
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1405E47D5
; ---------------------------------------------------------------------------

loc_1405E482F:                          ; CODE XREF: sub_1405E4790+8F↑j
                cmp     ax, 3
                jz      short loc_1405E4821
                jmp     loc_1407F3BF0
sub_1405E4790   endp

; ---------------------------------------------------------------------------
algn_1405E483A:                         ; DATA XREF: .rdata:00000001400452A0↑o
                                        ; .pdata:00000001400FBE68↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1405E4840   proc near               ; CODE XREF: sub_1405E2F50+BC↑p
                                        ; DATA XREF: .rdata:0000000140045360↑o ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_18          = byte ptr  58h
arg_20          = qword ptr  60h
arg_28          = qword ptr  68h
arg_30          = dword ptr  70h
arg_38          = qword ptr  78h

; FUNCTION CHUNK AT 00000001407F3C1E SIZE 0000010B BYTES

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     r12, [rbp+arg_20]
                mov     rbx, r8
                mov     rsi, [rbp+arg_38]
                xor     r8d, r8d
                mov     r14, rdx
                mov     [rbp+var_8], r8
                mov     r13, rcx
                mov     [rbp+var_10], r8d
                mov     [r12], r8d
                mov     [rsi], r8d
                lea     r15d, [r8+1]
                mov     r11d, [r9+10h]
                mov     [rbp+var_C], r8d
                mov     [rbp+arg_18], r8b
                cmp     r11d, 2
                jz      loc_1405E49BF
                cmp     r11d, 3
                jnz     loc_1407F3C75
                mov     rax, [r9]
                mov     rdx, cs:qword_14000A788
                mov     rcx, cs:qword_14000A790
                sub     rax, rdx
                jnz     short loc_1405E48C0
                mov     rax, [r9+8]
                sub     rax, rcx

loc_1405E48C0:                          ; CODE XREF: sub_1405E4840+77↑j
                test    rax, rax
                jnz     loc_1407F3C75
                mov     rax, [r9]
                sub     rax, rdx
                jnz     short loc_1405E48D8
                mov     rax, [r9+8]
                sub     rax, rcx

loc_1405E48D8:                          ; CODE XREF: sub_1405E4840+8F↑j
                mov     dil, r15b
                test    rax, rax
                jnz     loc_1405E49FF

loc_1405E48E4:                          ; CODE XREF: sub_1405E4840+1C2↓j
                cmp     word ptr [r14], 40h ; '@'
                mov     byte ptr [rbp+arg_38], dil
                jz      loc_1405E4AC3

loc_1405E48F3:                          ; CODE XREF: sub_1405E4840+297↓j
                                        ; sub_1405E4840+2A7↓j
                mov     rax, r14

loc_1405E48F6:                          ; CODE XREF: sub_1405E4840+2A1↓j
                cmp     rax, r14
                jnz     loc_1405E4AEC
                cmp     [r13+28h], r8
                jnz     loc_1405E4AEC
                lea     rax, [r13+10h]
                mov     r12, [rax]
                cmp     r12, rax
                jz      short loc_1405E4992
                mov     r13, [rbp+arg_28]
                mov     edi, 0C0000023h

loc_1405E491E:                          ; CODE XREF: sub_1405E4840+136↓j
                mov     rcx, [rbp+arg_0]
                lea     rax, [rbp+var_8]
                mov     [rsp+60h+var_20], r8
                mov     r9, r14
                mov     [rsp+60h+var_28], r8
                mov     rdx, r12
                mov     [rsp+60h+var_30], rax
                mov     byte ptr [rsp+60h+var_38], r8b
                mov     r8d, 5
                mov     dword ptr [rsp+60h+var_40], r15d
                call    sub_1405E60D8
                xor     r8d, r8d
                mov     ebx, eax
                test    eax, eax
                jns     loc_1405E4A07
                cmp     eax, 0C0000034h
                jnz     short loc_1405E4978

loc_1405E4964:                          ; CODE XREF: sub_1405E4840+338↓j
                mov     ebx, r8d

loc_1405E4967:                          ; CODE XREF: sub_1405E4840+233↓j
                mov     rax, [rbp+arg_0]
                mov     r12, [r12]
                add     rax, 10h
                cmp     r12, rax
                jnz     short loc_1405E491E

loc_1405E4978:                          ; CODE XREF: sub_1405E4840+122↑j
                                        ; sub_1405E4840+346↓j
                mov     edx, 80000000h
                lea     eax, [rbx+rdx]
                test    edx, eax
                jz      loc_1405E4AB6

loc_1405E4988:                          ; CODE XREF: sub_1405E4840+278↓j
                cmp     [rbp+arg_18], 0
                jnz     loc_1405E4A78

loc_1405E4992:                          ; CODE XREF: sub_1405E4840+D3↑j
                mov     ebx, 0C0000034h

loc_1405E4997:                          ; CODE XREF: sub_1405E4840+271↓j
                                        ; sub_1405E4840+27E↓j ...
                mov     rcx, [rbp+var_8]
                test    rcx, rcx
                jnz     loc_1405E4B68

loc_1405E49A4:                          ; CODE XREF: sub_1405E4840+32D↓j
                                        ; sub_1405E4840+20F4E4↓j
                mov     eax, ebx
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E49BF:                          ; CODE XREF: sub_1405E4840+53↑j
                mov     rax, [r9]
                sub     rax, cs:qword_14000A7A0
                jnz     short loc_1405E49D6
                mov     rax, [r9+8]
                sub     rax, cs:qword_14000A7A8

loc_1405E49D6:                          ; CODE XREF: sub_1405E4840+189↑j
                test    rax, rax
                jz      loc_1407F3C1E
                mov     rax, [r9]
                sub     rax, cs:qword_14000A768
                jnz     short loc_1405E49F6
                mov     rax, [r9+8]
                sub     rax, cs:qword_14000A770

loc_1405E49F6:                          ; CODE XREF: sub_1405E4840+1A9↑j
                test    rax, rax
                jnz     loc_1407F3C75

loc_1405E49FF:                          ; CODE XREF: sub_1405E4840+9E↑j
                mov     dil, r8b
                jmp     loc_1405E48E4
; ---------------------------------------------------------------------------

loc_1405E4A07:                          ; CODE XREF: sub_1405E4840+117↑j
                mov     eax, [rbp+var_C]
                mov     r9d, [rbp+arg_30]
                mov     rdx, [rbp+var_8]
                sub     r9d, eax
                shr     r9d, 1
                lea     r8, [rax+r13]
                mov     [rbp+arg_18], r15b
                mov     al, byte ptr [rbp+arg_38]
                mov     byte ptr [rsp+60h+var_38], al
                lea     rax, [rbp+var_10]
                mov     [rsp+60h+var_40], rax
                call    sub_1405E2B78
                mov     rcx, [rbp+var_8]
                mov     ebx, eax
                call    ZwClose
                xor     r8d, r8d
                mov     [rbp+var_8], r8
                test    ebx, ebx
                js      loc_1405E4B72

loc_1405E4A4F:                          ; CODE XREF: sub_1405E4840+340↓j
                mov     eax, [rbp+var_10]
                add     eax, eax
                cmp     eax, 2
                lea     ecx, [rax-2]
                cmovbe  ecx, eax
                test    r13, r13
                jz      short loc_1405E4A71
                mov     edx, [rbp+var_C]
                lea     eax, [rcx+rdx]
                cmp     eax, [rbp+arg_30]
                cmovb   edx, eax
                mov     [rbp+var_C], edx

loc_1405E4A71:                          ; CODE XREF: sub_1405E4840+220↑j
                add     [rsi], ecx
                jmp     loc_1405E4967
; ---------------------------------------------------------------------------

loc_1405E4A78:                          ; CODE XREF: sub_1405E4840+14C↑j
                cmp     [rsi], r8d
                jz      loc_1407F3C6B
                mov     rax, [rbp+arg_20]
                mov     dword ptr [rax], 2012h
                mov     eax, [rsi]
                add     eax, 2
                mov     ecx, eax
                mov     [rsi], eax
                test    r13, r13
                jz      loc_1405E4B8B
                cmp     ecx, [rbp+arg_30]
                ja      loc_1405E4B8B
                mov     eax, ecx
                shr     rax, 1
                mov     [r13+rax*2-2], r8w
                jmp     loc_1405E4997
; ---------------------------------------------------------------------------

loc_1405E4AB6:                          ; CODE XREF: sub_1405E4840+142↑j
                cmp     ebx, edi
                jz      loc_1405E4988
                jmp     loc_1405E4997
; ---------------------------------------------------------------------------

loc_1405E4AC3:                          ; CODE XREF: sub_1405E4840+AD↑j
                mov     edx, 3Ah ; ':'
                lea     rcx, [r14+2]
                call    wcschr
                xor     r8d, r8d
                test    rax, rax
                jz      loc_1405E48F3
                add     rax, 2
                jnz     loc_1405E48F6
                jmp     loc_1405E48F3
; ---------------------------------------------------------------------------

loc_1405E4AEC:                          ; CODE XREF: sub_1405E4840+B9↑j
                                        ; sub_1405E4840+C3↑j
                cmp     rbx, 0FFFFFFFFFFFFFFFFh
                mov     rdx, r8
                cmovnz  rdx, rbx
                test    rdx, rdx
                jnz     short loc_1405E4B29
                mov     [rsp+60h+var_38], r8
                lea     rax, [rbp+var_8]
                mov     r8d, r15d
                mov     [rsp+60h+var_40], rax
                xor     r9d, r9d
                mov     rdx, r14
                mov     rcx, r13
                call    sub_140725570
                mov     ebx, eax
                test    eax, eax
                js      loc_1405E4997
                mov     rdx, [rbp+var_8]

loc_1405E4B29:                          ; CODE XREF: sub_1405E4840+2BA↑j
                mov     r9d, [rbp+arg_30]
                lea     rax, [rbp+var_10]
                mov     r8, [rbp+arg_28]
                shr     r9d, 1
                mov     byte ptr [rsp+60h+var_38], dil
                mov     [rsp+60h+var_40], rax
                call    sub_1405E2B78
                mov     edx, 80000000h
                mov     ebx, eax
                add     eax, edx
                test    edx, eax
                jz      short loc_1405E4B92

loc_1405E4B54:                          ; CODE XREF: sub_1405E4840+359↓j
                mov     eax, [rbp+var_10]
                add     eax, eax
                mov     dword ptr [r12], 2012h
                mov     [rsi], eax
                jmp     loc_1405E4997
; ---------------------------------------------------------------------------

loc_1405E4B68:                          ; CODE XREF: sub_1405E4840+15E↑j
                call    ZwClose
                jmp     loc_1405E49A4
; ---------------------------------------------------------------------------

loc_1405E4B72:                          ; CODE XREF: sub_1405E4840+209↑j
                cmp     ebx, 0C0000225h
                jz      loc_1405E4964
                cmp     ebx, edi
                jz      loc_1405E4A4F
                jmp     loc_1405E4978
; ---------------------------------------------------------------------------

loc_1405E4B8B:                          ; CODE XREF: sub_1405E4840+257↑j
                                        ; sub_1405E4840+260↑j
                mov     ebx, edi
                jmp     loc_1405E4997
; ---------------------------------------------------------------------------

loc_1405E4B92:                          ; CODE XREF: sub_1405E4840+312↑j
                mov     edi, 0C0000023h
                cmp     ebx, edi
                jz      short loc_1405E4B54
                jmp     loc_1405E4997
sub_1405E4840   endp

; ---------------------------------------------------------------------------
byte_1405E4BA0  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140045360↑o
                                        ; .pdata:00000001400FBE74↑o

; =============== S U B R O U T I N E =======================================


sub_1405E4BA8   proc near               ; CODE XREF: sub_1405E5A50+B8↓p
                                        ; DATA XREF: .rdata:000000014004538C↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 00000001407F3D2A SIZE 00000053 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r14, [rsp+58h+arg_20]
                mov     r10, r8
                mov     rdi, [rsp+58h+arg_38]
                mov     rbp, rdx
                and     qword ptr [rax+20h], 0
                mov     r15, rcx
                and     dword ptr [r14], 0
                and     dword ptr [rdi], 0
                mov     ebx, [r9+10h]
                cmp     ebx, 2
                jz      loc_1405E4CD4

loc_1405E4BF2:                          ; CODE XREF: sub_1405E4BA8+146↓j
                lea     rsi, off_1400013F0
                xor     edx, edx
                mov     r8, rsi

loc_1405E4BFE:                          ; CODE XREF: sub_1405E4BA8+11F↓j
                mov     r11, [r8]
                cmp     [r11+10h], ebx
                jnz     loc_1405E4CBE
                mov     rcx, [r11]
                sub     rcx, [r9]
                jnz     short loc_1405E4C1B
                mov     rcx, [r11+8]
                sub     rcx, [r9+8]

loc_1405E4C1B:                          ; CODE XREF: sub_1405E4BA8+69↑j
                test    rcx, rcx
                jnz     loc_1405E4CBE
                lea     rcx, [rdx+rdx*4]
                lea     rsi, [rsi+rcx*8]
                test    rsi, rsi
                jz      loc_1405E4CCD
                test    r10, r10
                jnz     short loc_1405E4C66
                and     [rsp+58h+var_30], r10
                lea     rax, [rsp+58h+arg_18]
                xor     r9d, r9d
                mov     [rsp+58h+var_38], rax
                lea     r8d, [r10+1]
                mov     rdx, rbp
                mov     rcx, r15
                call    sub_1405E59FC
                mov     ebx, eax
                test    eax, eax
                js      short loc_1405E4C93
                mov     r10, [rsp+58h+arg_18]

loc_1405E4C66:                          ; CODE XREF: sub_1405E4BA8+90↑j
                mov     eax, [rsp+58h+arg_30]
                mov     r9, r14
                mov     [rsp+58h+var_28], rdi
                mov     r8, rsi
                mov     dword ptr [rsp+58h+var_30], eax
                mov     rdx, r10
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_38], rax
                call    sub_1405E56B0
                mov     ebx, eax

loc_1405E4C93:                          ; CODE XREF: sub_1405E4BA8+B7↑j
                                        ; sub_1405E4BA8+20F1C4↓j ...
                mov     rcx, [rsp+58h+arg_18]
                test    rcx, rcx
                jz      short loc_1405E4CA2
                call    ZwClose

loc_1405E4CA2:                          ; CODE XREF: sub_1405E4BA8+F3↑j
                                        ; sub_1405E4BA8+12A↓j
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E4CBE:                          ; CODE XREF: sub_1405E4BA8+5D↑j
                                        ; sub_1405E4BA8+76↑j
                inc     edx
                add     r8, 28h ; '('
                cmp     edx, 4
                jb      loc_1405E4BFE

loc_1405E4CCD:                          ; CODE XREF: sub_1405E4BA8+87↑j
                mov     ebx, 0C0000016h
                jmp     short loc_1405E4CA2
; ---------------------------------------------------------------------------

loc_1405E4CD4:                          ; CODE XREF: sub_1405E4BA8+44↑j
                mov     rax, [r9]
                sub     rax, cs:qword_14000A7A0
                jnz     short loc_1405E4CEB
                mov     rax, [r9+8]
                sub     rax, cs:qword_14000A7A8

loc_1405E4CEB:                          ; CODE XREF: sub_1405E4BA8+136↑j
                test    rax, rax
                jnz     loc_1405E4BF2
                jmp     loc_1407F3D2A
sub_1405E4BA8   endp

; ---------------------------------------------------------------------------
algn_1405E4CF9:                         ; DATA XREF: .rdata:000000014004538C↑o
                                        ; .pdata:00000001400FBE80↑o
                align 20h
; Exported entry 1917. PsReferenceProcessFilePointer

; =============== S U B R O U T I N E =======================================


                public PsReferenceProcessFilePointer
PsReferenceProcessFilePointer proc near ; CODE XREF: sub_1402013A4+5E↑p
                                        ; sub_140202D3C+73↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+458h]
                mov     rbx, rcx
                mov     rcx, rdi
                mov     rsi, rdx
                call    sub_14024C840
                test    al, al
                jz      short loc_1405E4D6A
                mov     rcx, [rbx+518h]
                test    rcx, rcx
                jz      short loc_1405E4D62
                call    sub_140267410
                mov     rcx, rax
                call    sub_14026F920
                mov     rcx, rdi
                mov     rbx, rax
                call    sub_14024C380
                xor     eax, eax
                mov     [rsi], rbx

loc_1405E4D51:                          ; CODE XREF: PsReferenceProcessFilePointer+6F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E4D62:                          ; CODE XREF: PsReferenceProcessFilePointer+32↑j
                mov     rcx, rdi
                call    sub_14024C380

loc_1405E4D6A:                          ; CODE XREF: PsReferenceProcessFilePointer+26↑j
                mov     eax, 0C0000001h
                jmp     short loc_1405E4D51
PsReferenceProcessFilePointer endp

; ---------------------------------------------------------------------------
algn_1405E4D71:                         ; DATA XREF: .pdata:00000001400FBE8C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405E4D78   proc near               ; CODE XREF: sub_1402013A4+B2↑p
                                        ; sub_1402013A4+112↑p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_8           = dword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

                mov     [rsp+arg_18], r9d
                mov     [rsp+arg_8], edx
                sub     rsp, 58h
                mov     r10, r8
                mov     [rsp+58h+var_18], 0
                lea     r8, [rcx-30h]
                mov     r11, rcx
                mov     rax, r8
                lea     r9, qword_140CFCE60
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [r8+18h]
                add     r8, 28h ; '('
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     r9, [r9+rdx*8]
                mov     ecx, [r9+64h]
                lea     rdx, [r9+4Ch]
                mov     rax, [r9+98h]
                mov     r9, r10
                mov     [rsp+58h+var_20], rdx
                mov     edx, 1
                mov     [rsp+58h+var_28], ecx
                lea     rcx, [rsp+58h+arg_18]
                mov     [rsp+58h+var_30], r8
                lea     r8, [rsp+58h+arg_8]
                mov     [rsp+58h+var_38], rcx
                mov     rcx, r11
                call    sub_1404079D0
                mov     rdx, [rsp+58h+arg_20]
                mov     ecx, [rsp+58h+arg_18]
                mov     [rdx], ecx
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E4D78   endp

byte_1405E4E0F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FBE98↑o

; =============== S U B R O U T I N E =======================================


sub_1405E4E18   proc near               ; CODE XREF: sub_140311538+DE↑p
                                        ; sub_1405E283C+DE↑p ...

arg_0           = qword ptr  8
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     rbx, rcx
                cmp     [rcx+78h], edx
                jnz     short loc_1405E4E38

loc_1405E4E2C:                          ; CODE XREF: sub_1405E4E18+2A↓j
                                        ; sub_1405E4E18+4B↓j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1405E4E38:                          ; CODE XREF: sub_1405E4E18+12↑j
                mov     [rcx+78h], edi
                cmp     cs:dword_140D2D0E0, 0
                jnz     short loc_1405E4E2C
                test    r8b, r8b
                jnz     short loc_1405E4E65
                mov     rcx, [rcx+488h]
                test    rcx, rcx
                jnz     short loc_1405E4E82

loc_1405E4E55:                          ; CODE XREF: sub_1405E4E18+6F↓j
                mov     ecx, edi
                call    sub_140201F98
                mov     [rbx+488h], rax
                jmp     short loc_1405E4E2C
; ---------------------------------------------------------------------------

loc_1405E4E65:                          ; CODE XREF: sub_1405E4E18+2F↑j
                mov     rcx, [rsp+28h+arg_20]
                test    rcx, rcx
                jz      short loc_1405E4E79
                mov     rax, [rbx+488h]
                mov     [rcx], rax

loc_1405E4E79:                          ; CODE XREF: sub_1405E4E18+55↑j
                mov     [rbx+488h], r9
                jmp     short loc_1405E4E2C
; ---------------------------------------------------------------------------

loc_1405E4E82:                          ; CODE XREF: sub_1405E4E18+3B↑j
                call    PsDereferenceSiloContext
                jmp     short loc_1405E4E55
sub_1405E4E18   endp

; ---------------------------------------------------------------------------
algn_1405E4E89:                         ; DATA XREF: .pdata:00000001400FBEA4↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1A0h

sub_1405E4E90   proc near               ; CODE XREF: sub_14067EA0C+E3↓p
                                        ; DATA XREF: .rdata:00000001400454FC↑o ...

var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = byte ptr -260h
var_25F         = byte ptr -25Fh
var_258         = qword ptr -258h
var_250         = byte ptr -250h
var_24F         = byte ptr -24Fh
var_24E         = byte ptr -24Eh
var_24D         = byte ptr -24Dh
var_24C         = byte ptr -24Ch
var_24B         = byte ptr -24Bh
var_248         = dword ptr -248h
var_244         = dword ptr -244h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = dword ptr -210h
var_20C         = dword ptr -20Ch
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = xmmword ptr -1F8h
var_1E8         = xmmword ptr -1E8h
var_1D8         = xmmword ptr -1D8h
var_1C0         = byte ptr -1C0h
var_1A0         = byte ptr -1A0h
var_120         = byte ptr -120h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h
arg_30          = dword ptr  40h
arg_38          = qword ptr  48h
arg_40          = dword ptr  50h
arg_48          = qword ptr  58h
arg_50          = qword ptr  60h

; FUNCTION CHUNK AT 00000001407F3D7E SIZE 0000018C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-170h]
                sub     rsp, 270h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1A0h+var_40], rax
                mov     rax, [rbp+1A0h+arg_38]
                xorps   xmm0, xmm0
                mov     r14, [rbp+1A0h+arg_50]
                mov     rdi, r8
                mov     rsi, [rbp+1A0h+arg_28]
                mov     rbx, rdx
                mov     r13, [rbp+1A0h+arg_48]
                mov     r15, rcx
                mov     [rsp+2A0h+var_228], rax
                lea     rcx, [rbp+1A0h+var_1C0]
                xor     eax, eax
                mov     [rbp+1A0h+var_220], r8
                mov     [rsp+2A0h+var_238], rdx
                mov     r8d, 0A0h
                xor     edx, edx
                mov     [rsp+2A0h+var_258], rax
                mov     [rbp+1A0h+var_20C], eax
                mov     r12d, r9d
                mov     [rsp+2A0h+var_240], r14
                movups  [rbp+1A0h+var_1F8], xmm0
                movups  [rbp+1A0h+var_1E8], xmm0
                movups  [rbp+1A0h+var_1D8], xmm0
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+1A0h+var_120]
                mov     r8d, 0E0h
                call    memset
                xor     eax, eax
                lea     r9, [rsp+2A0h+var_250]
                mov     [rdi], rax
                lea     r8, [rsp+2A0h+var_24F]
                lea     rdx, [rsp+2A0h+var_25F]
                mov     [r14], ax
                mov     rcx, rbx
                mov     [r14+2], al
                mov     [rsp+2A0h+var_24B], al
                mov     [rsp+2A0h+var_244], eax
                mov     [rsp+2A0h+var_248], eax
                mov     [rsp+2A0h+var_25F], al
                mov     [rsp+2A0h+var_24F], al
                mov     [rsp+2A0h+var_250], al
                mov     [rsp+2A0h+var_260], al
                mov     [rsp+2A0h+var_24E], al
                mov     [rsp+2A0h+var_24D], al
                mov     [rsp+2A0h+var_24C], al
                mov     [rsp+2A0h+var_230], rax
                call    sub_140202824
                cmp     [rsp+2A0h+var_250], 1
                jz      loc_1405E52AC
                cmp     [rsp+2A0h+var_25F], 1
                jz      loc_1405E52AC

loc_1405E4FA0:                          ; CODE XREF: sub_1405E4E90+496↓j
                xor     ebx, ebx

loc_1405E4FA2:                          ; CODE XREF: sub_1405E4E90+4A8↓j
                mov     rcx, [rsp+2A0h+var_238]
                lea     rax, [rsp+2A0h+var_258]
                mov     [rsp+2A0h+var_268], rax
                lea     rdx, [rbp+1A0h+var_1F8]
                mov     byte ptr [rsp+2A0h+var_270], 1
                xorps   xmm0, xmm0
                mov     byte ptr [rsp+2A0h+var_278], bl
                mov     r9d, 1
                xor     r8d, r8d
                mov     dword ptr [rsp+2A0h+var_280], ebx
                mov     dword ptr [rbp+1A0h+var_1F8], 30h ; '0'
                mov     qword ptr [rbp+1A0h+var_1F8+8], rbx
                mov     dword ptr [rbp+1A0h+var_1E8+8], ebx
                mov     qword ptr [rbp+1A0h+var_1E8], rbx
                movdqu  [rbp+1A0h+var_1D8], xmm0
                call    sub_14061E3A0
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3E18
                mov     rcx, [rsp+2A0h+var_258]
                mov     ebx, [rbp+1A0h+arg_20]
                test    dword ptr [rcx+0C8h], 4000h
                jnz     loc_1405E5280

loc_1405E500F:                          ; CODE XREF: sub_1405E4E90+3F5↓j
                                        ; sub_1405E4E90+20EFE9↓j
                and     [rsp+2A0h+var_280], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, ebx
                call    sub_1405E4E18
                mov     rax, [rsp+2A0h+var_258]
                mov     [rax+78h], ebx
                mov     rax, [rsp+2A0h+var_258]
                btr     dword ptr [rax+0C8h], 15h
                mov     eax, [rsi]
                test    al, 1
                jnz     loc_1405E5290

loc_1405E5041:                          ; CODE XREF: sub_1405E4E90+411↓j
                                        ; sub_1405E4E90+20EFFB↓j
                mov     rcx, [rsp+2A0h+var_258]
                xor     ebx, ebx
                xor     r9d, r9d
                mov     [rsp+2A0h+var_280], rbx
                xor     r8d, r8d
                xor     edx, edx
                call    sub_1402028C0
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3EF1
                mov     r8d, [rsi+4]
                lea     rax, [rsp+2A0h+var_24D]
                mov     rcx, [rsp+2A0h+var_258]
                lea     r9, [rsp+2A0h+var_24E]
                mov     ebx, r12d
                mov     [rsp+2A0h+var_280], rax
                mov     rdx, r15
                and     ebx, 2
                call    ?get_DynamicTerminalClasses@CMSPAddress@@UEAAJPEAUtagVARIANT@@@Z ; CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3EEF
                mov     rdx, [rsp+2A0h+var_258]
                lea     r9, [rsp+2A0h+var_230]
                mov     eax, ebx
                mov     r8, r15
                neg     eax
                sbb     rcx, rcx
                and     rcx, [rsp+2A0h+var_238]
                call    sub_140202D3C
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3EEF
                mov     rcx, [rsp+2A0h+var_258]
                lea     r8, [rsp+2A0h+var_260]
                mov     rdx, r15
                call    sub_140202EC8
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3EEF
                mov     eax, cs:dword_140CF4CF8
                and     eax, 3
                cmp     al, 3
                jnz     short loc_1405E50F9
                mov     rcx, [rsp+2A0h+var_258]
                call    sub_1405E5550
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3EEF

loc_1405E50F9:                          ; CODE XREF: sub_1405E4E90+253↑j
                mov     r10, [rsp+2A0h+var_258]
                mov     edx, [rbp+1A0h+arg_30]
                test    dword ptr [r10+0C8h], 4000h
                setnz   cl
                test    dl, 1
                setnz   al
                test    al, cl
                jnz     loc_1407F3E90

loc_1405E5120:                          ; CODE XREF: sub_1405E4E90+20F013↓j
                mov     rax, [rsp+2A0h+var_228]
                test    rax, rax
                jnz     loc_1407F3EA8

loc_1405E512E:                          ; CODE XREF: sub_1405E4E90+20F02E↓j
                test    r13, r13
                jnz     loc_1407F3EC3

loc_1405E5137:                          ; CODE XREF: sub_1405E4E90+20F05A↓j
                test    ebx, ebx
                jz      loc_1405E5274
                xor     ebx, ebx
                cmp     [rsp+2A0h+var_230], rbx
                jnz     loc_1405E5276

loc_1405E514C:                          ; CODE XREF: sub_1405E4E90+3EB↓j
                cmp     [rsp+2A0h+var_260], bl
                jnz     loc_1405E522D
                xor     r9d, r9d
                lea     rdx, [rbp+1A0h+var_120]
                xor     r8d, r8d
                lea     rcx, [rbp+1A0h+var_1C0]
                call    SeCreateAccessState

loc_1405E516C:                          ; CODE XREF: sub_1405E4E90+3DF↓j
                mov     rcx, [rsp+2A0h+var_258]
                lea     rdx, [rbp+1A0h+var_1C0]
                mov     [rsp+2A0h+var_270], rbx
                xor     r9d, r9d
                mov     [rsp+2A0h+var_278], rbx
                xor     r8d, r8d
                mov     dword ptr [rsp+2A0h+var_280], ebx
                mov     [rsp+2A0h+var_24C], 1
                call    sub_14061EFE0
                mov     edi, eax
                test    eax, eax
                js      loc_1407F3E18
                mov     rcx, [rsp+2A0h+var_258]
                call    sub_1405CF780
                mov     rax, [rsp+2A0h+var_258]
                and     r12b, 1
                mov     rcx, [rbp+1A0h+var_220]
                mov     [rax+0CCh], r12b
                mov     rax, [rsp+2A0h+var_258]
                mov     [rcx], rax
                mov     al, [rsp+2A0h+var_260]
                mov     [r14], al
                mov     al, [rsp+2A0h+var_24E]
                mov     [r14+1], al
                mov     al, [rsp+2A0h+var_24D]
                mov     [r14+2], al

loc_1405E51DA:                          ; CODE XREF: sub_1405E4E90+4AF↓j
                                        ; sub_1405E4E90+20EF8D↓j
                test    edi, edi
                js      loc_1407F3EF1

loc_1405E51E2:                          ; CODE XREF: sub_1405E4E90+20F069↓j
                                        ; sub_1405E4E90+20F075↓j
                cmp     [rsp+2A0h+var_24C], bl
                jz      short loc_1405E5200
                lea     rcx, [rbp+1A0h+var_1C0]
                call    sub_14024C4F0
                cmp     [rsp+2A0h+var_260], bl
                jnz     short loc_1405E5200
                lea     rcx, [rbp+1A0h+var_1A0]
                call    SeReleaseSubjectContext

loc_1405E5200:                          ; CODE XREF: sub_1405E4E90+356↑j
                                        ; sub_1405E4E90+365↑j
                mov     eax, edi
                mov     rcx, [rbp+1A0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+2A0h+arg_18]
                add     rsp, 270h
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

loc_1405E522D:                          ; CODE XREF: sub_1405E4E90+2C0↑j
                mov     rax, gs:188h
                lea     r8, [rbp+1A0h+var_120]
                xor     r9d, r9d
                mov     [rbp+1A0h+var_208], r10
                lea     rdx, [rbp+1A0h+var_1C0]
                mov     [rbp+1A0h+var_218], rbx
                mov     [rbp+1A0h+var_210], ebx
                mov     rcx, [rax+0B8h]
                mov     [rsp+2A0h+var_280], rbx
                mov     rax, [rcx+440h]
                lea     rcx, [rbp+1A0h+var_218]
                mov     [rbp+1A0h+var_200], rax
                call    sub_14024C690
                jmp     loc_1405E516C
; ---------------------------------------------------------------------------

loc_1405E5274:                          ; CODE XREF: sub_1405E4E90+2A9↑j
                xor     ebx, ebx

loc_1405E5276:                          ; CODE XREF: sub_1405E4E90+2B6↑j
                mov     [rsp+2A0h+var_260], 1
                jmp     loc_1405E514C
; ---------------------------------------------------------------------------

loc_1405E5280:                          ; CODE XREF: sub_1405E4E90+179↑j
                mov     eax, [rcx+78h]
                cmp     eax, ebx
                jz      loc_1405E500F
                jmp     loc_1407F3E22
; ---------------------------------------------------------------------------

loc_1405E5290:                          ; CODE XREF: sub_1405E4E90+1AB↑j
                mov     rax, [rsp+2A0h+var_258]
                bts     dword ptr [rax+0C8h], 13h
                mov     eax, [rsi]
                test    al, 4
                jz      loc_1405E5041
                jmp     loc_1407F3E7E
; ---------------------------------------------------------------------------

loc_1405E52AC:                          ; CODE XREF: sub_1405E4E90+FF↑j
                                        ; sub_1405E4E90+10A↑j
                mov     eax, [rsi]
                mov     r14d, 0C000049Dh
                test    al, 2
                jnz     loc_1407F3D7E

loc_1405E52BC:                          ; CODE XREF: sub_1405E4E90+20EF59↓j
                                        ; sub_1405E4E90+20EF61↓j ...
                mov     eax, [r15+87Ch]
                xor     ebx, ebx
                cmp     dword ptr [rsi+8], 1
                mov     edi, ebx
                cmovnz  edi, r14d
                test    al, 1
                jnz     loc_1407F3E05

loc_1405E52D7:                          ; CODE XREF: sub_1405E4E90+20EF83↓j
                test    edi, edi
                jns     short loc_1405E5333
                cmp     [rsp+2A0h+var_24F], bl
                jnz     short loc_1405E532B

loc_1405E52E1:                          ; CODE XREF: sub_1405E4E90+4A1↓j
                test    edi, edi
                jns     short loc_1405E5333
                mov     rdx, [rsi+18h]
                mov     bl, [rsp+2A0h+var_25F]
                mov     rax, rdx
                neg     rax
                sbb     r9, r9
                lea     rcx, [rdx+70h]
                and     r9, rcx
                lea     rax, [rdx+60h]
                neg     rdx
                mov     rdx, [rsi+10h]
                sbb     r8, r8
                and     r8, rax
                mov     al, bl
                neg     al
                sbb     ecx, ecx
                neg     ecx
                inc     ecx
                call    sub_14072EF04
                test    bl, bl
                jnz     short loc_1405E533D
                mov     r14, [rsp+2A0h+var_240]
                jmp     loc_1405E4FA0
; ---------------------------------------------------------------------------

loc_1405E532B:                          ; CODE XREF: sub_1405E4E90+44F↑j
                cmp     [rsi+0Ch], ebx
                cmovnz  edi, ebx
                jmp     short loc_1405E52E1
; ---------------------------------------------------------------------------

loc_1405E5333:                          ; CODE XREF: sub_1405E4E90+449↑j
                                        ; sub_1405E4E90+453↑j
                mov     r14, [rsp+2A0h+var_240]
                jmp     loc_1405E4FA2
; ---------------------------------------------------------------------------

loc_1405E533D:                          ; CODE XREF: sub_1405E4E90+48F↑j
                xor     ebx, ebx
                jmp     loc_1405E51DA
; } // starts at 1405E4E90
sub_1405E4E90   endp

; ---------------------------------------------------------------------------
byte_1405E5344  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400454FC↑o
                                        ; .pdata:00000001400FBEB0↑o

; =============== S U B R O U T I N E =======================================


sub_1405E534C   proc near               ; CODE XREF: sub_1405E5550+55↓p
                                        ; DATA XREF: .rdata:0000000140045528↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407F3F0A SIZE 00000064 BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     qword ptr [r8], 0
                mov     edx, 38h ; '8'
                mov     r12, r8
                mov     r13, rcx
                mov     ebx, 74446553h
                mov     r8d, ebx
                lea     ebp, [rdx-37h]
                mov     ecx, ebp
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1407F3F0A
                mov     rax, gs:188h
                or      rsi, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], si
                mov     rcx, cs:off_140D2D070
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rax, cs:off_140D2D070
                xor     r8d, r8d
                mov     edx, ebp
                mov     rcx, [rax+8]
                lea     r15, [rax+10h]
                mov     [rsp+58h+arg_10], rcx
                mov     rcx, r15
                call    RtlFindClearBitsAndSet
                mov     r14d, eax
                cmp     eax, 0FFFFFFFFh
                jz      loc_1405E5485

loc_1405E53E6:                          ; CODE XREF: sub_1405E534C+151↓j
                                        ; sub_1405E534C+1CC↓j
                mov     rcx, [rsp+58h+arg_10]
                mov     rdx, rdi
                mov     [rdi+18h], rbp
                mov     eax, r14d
                mov     [rdi+28h], rax
                mov     rax, [r13+0]
                mov     [rdi+20h], rax
                mov     byte ptr [rdi+30h], 0
                mov     rax, [r13+0]
                test    rax, rax
                cmovnz  rbp, rax
                xor     r9d, r9d
                mov     r8, rbp
                call    RtlInsertEntryHashTable
                test    al, al
                jz      loc_1407F3F1B
                mov     rdx, [r13+0]
                xor     ebx, ebx
                mov     ecx, r14d
                call    sub_1402032F0
                mov     rcx, [rsp+58h+arg_8]
                mov     rax, [rdi+28h]
                mov     [r12], rdi
                mov     [rcx], rax

loc_1405E5441:                          ; CODE XREF: sub_1405E534C+20EBE1↓j
                                        ; sub_1405E534C+20EBF4↓j ...
                mov     rdi, cs:off_140D2D070
                lock xadd [rdi], rsi
                test    sil, 2
                jnz     loc_1407F3F56

loc_1405E5457:                          ; CODE XREF: sub_1405E534C+20EC0E↓j
                                        ; sub_1405E534C+20EC1D↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1405E546D:                          ; CODE XREF: sub_1405E534C+20EBC3↓j
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_18]
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

loc_1405E5485:                          ; CODE XREF: sub_1405E534C+94↑j
                call    sub_14020260C
                xor     r8d, r8d
                mov     edx, ebp
                mov     rcx, r15
                call    RtlFindClearBitsAndSet
                mov     r14d, eax
                cmp     eax, 0FFFFFFFFh
                jnz     loc_1405E53E6
                mov     rcx, r15
                call    RtlNumberOfSetBits
                mov     r8d, ebx
                mov     ecx, ebp
                lea     r13d, [rax+40h]
                mov     edx, r13d
                shr     rdx, 3
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_1407F3F14
                call    sub_1403CDC08
                mov     ebx, eax
                test    eax, eax
                js      loc_1407F3F2B
                mov     rcx, [r15+8]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     rcx, r15
                mov     [r15], r13d
                mov     [r15+8], r14
                call    RtlClearAllBits
                lea     r8d, [r13-40h]
                xor     edx, edx
                mov     rcx, r15
                call    RtlSetBits
                xor     r8d, r8d
                mov     edx, ebp
                mov     rcx, r15
                call    RtlFindClearBitsAndSet
                mov     r13, [rsp+58h+arg_0]
                mov     r14d, eax
                jmp     loc_1405E53E6
sub_1405E534C   endp

; ---------------------------------------------------------------------------
byte_1405E551D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140045528↑o
                                        ; .pdata:00000001400FBEBC↑o

; =============== S U B R O U T I N E =======================================


sub_1405E5524   proc near               ; CODE XREF: sub_1405E5550+67↓p
                                        ; sub_1406B6208+509↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rcx, [rcx+470h]
                test    rcx, rcx
                jz      short loc_1405E553D
                test    dl, dl
                jz      short loc_1405E5543
                call    sub_1402F8604

loc_1405E553D:                          ; CODE XREF: sub_1405E5524+E↑j
                                        ; sub_1405E5524+24↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E5543:                          ; CODE XREF: sub_1405E5524+12↑j
                call    sub_14021B674
                jmp     short loc_1405E553D
sub_1405E5524   endp

; ---------------------------------------------------------------------------
algn_1405E554A:                         ; DATA XREF: .pdata:00000001400FBEC8↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1405E5550   proc near               ; CODE XREF: sub_1405E4E90+25A↑p
                                        ; DATA XREF: .pdata:00000001400FBED4↑o

var_50          = byte ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = dword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

                mov     [rsp-18h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rdx, cs:qword_14003AFE0
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+var_10], rax
                xor     esi, esi
                mov     rbx, rcx
                mov     [rbp+arg_8], rsi
                mov     rax, rdx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                lock xadd cs:qword_140C12E38, rax
                add     rax, rdx
                lea     r8, [rbp+arg_8]
                mov     [rbp+var_48], eax
                lea     rdx, [rbp+var_50]
                shr     rax, 20h
                lea     rcx, [rbp+var_48]
                mov     [rbp+var_44], eax
                call    sub_1405E534C
                test    eax, eax
                js      short loc_1405E561C
                lea     edi, [rsi+1]
                mov     rcx, rbx
                mov     dl, dil
                call    sub_1405E5524
                mov     rdx, [rbp+arg_8]
                lea     rcx, [rbp+var_30]
                mov     [rbx+470h], rdx
                lea     rdx, aTsaProcunique ; "TSA://ProcUnique"
                call    RtlInitUnicodeString
                mov     rcx, [rbx+308h]
                lea     eax, [rsi+2]
                mov     dword ptr [rbp+var_20+8], eax
                lea     r8, [rbp+var_40]
                lea     rax, [rbp+var_50]
                mov     dword ptr [rbp+var_20], 2
                mov     [rbp+var_10], rax
                lea     rdx, [rbp+arg_0]
                lea     rax, [rbp+var_30]
                mov     dword ptr [rbp+var_20+4], 41h ; 'A'
                mov     [rbp+var_38], rax
                mov     [rbp+arg_0], 4
                mov     [rbp+var_40], edi
                mov     [rbp+var_3C], edi
                call    sub_140203548

loc_1405E561C:                          ; CODE XREF: sub_1405E5550+5C↑j
                mov     rbx, [rsp+70h+arg_10]
                add     rsp, 70h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405E5550   endp

byte_1405E562D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400FBED4↑o

; =============== S U B R O U T I N E =======================================


sub_1405E5634   proc near               ; CODE XREF: sub_1403C72E0+3CD↑p
                                        ; sub_1405E6360+167↓p ...

var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

                push    rbx
                sub     rsp, 50h
                mov     r10d, r9d
                mov     r11, r8
                mov     rbx, rdx
                test    rcx, rcx
                jz      short loc_1405E56A6
                mov     rax, [rcx+0E0h]
                test    rax, rax
                jz      short loc_1405E56A6
                mov     rcx, [rax+8]

loc_1405E5658:                          ; CODE XREF: sub_1405E5634+74↓j
                mov     rax, [rsp+58h+arg_38]
                mov     r8d, r10d
                mov     r9d, [rsp+58h+arg_20]
                mov     rdx, r11
                mov     [rsp+58h+var_18], rcx
                mov     rcx, rbx
                mov     [rsp+58h+var_20], rax
                mov     rax, [rsp+58h+arg_30]
                mov     [rsp+58h+var_28], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], 0
                mov     [rsp+58h+var_38], rax
                call    sub_1405E6CA4
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E56A6:                          ; CODE XREF: sub_1405E5634+12↑j
                                        ; sub_1405E5634+1E↑j
                xor     ecx, ecx
                jmp     short loc_1405E5658
sub_1405E5634   endp

; ---------------------------------------------------------------------------
algn_1405E56AA:                         ; DATA XREF: .pdata:00000001400FBEE0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405E56B0   proc near               ; CODE XREF: sub_1405E4BA8+E4↑p
                                        ; sub_1405E6DB8+18E↓p ...

var_28          = qword ptr -28h
var_18          = dword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], rsi
                mov     [rax+8], rcx
                push    r14
                sub     rsp, 40h
                and     dword ptr [rax+18h], 0
                mov     r14, r9
                and     dword ptr [rax+8], 0
                mov     rsi, r8
                mov     eax, [r8+8]
                mov     r10, rdx
                mov     rbx, [rsp+48h+arg_20]
                cmp     eax, 11h
                jz      loc_1405E577E
                cmp     eax, 5
                jz      loc_1405E577E
                mov     eax, [rsp+48h+arg_28]
                mov     r9, rbx

loc_1405E56F8:                          ; CODE XREF: sub_1405E56B0+D8↓j
                mov     rdx, [r8+10h]
                mov     rcx, r10
                mov     [rsp+48h+var_18], eax
                lea     r8, [rsp+48h+arg_10]
                lea     rax, [rsp+48h+var_18]
                mov     [rsp+48h+var_28], rax
                call    sub_14062CB38
                mov     edx, eax
                cmp     eax, 0C0000034h
                jz      short loc_1405E5777
                mov     r8d, 0C0000023h
                test    eax, eax
                jnz     short loc_1405E578D

loc_1405E572A:                          ; CODE XREF: sub_1405E56B0+E0↓j
                mov     eax, [rsi+18h]
                cmp     [rsp+48h+arg_10], eax
                jnz     loc_1405E57E8
                mov     eax, [rsi+8]
                mov     [r14], eax
                mov     eax, [rsi+8]
                cmp     eax, 5
                jz      short loc_1405E57BC
                cmp     eax, 11h
                mov     rax, [rsp+48h+arg_30]
                jz      short loc_1405E5799
                mov     ecx, [rsp+48h+var_18]
                mov     [rax], ecx
                test    rbx, rbx
                jz      short loc_1405E5794
                cmp     [rsp+48h+arg_28], ecx
                jb      short loc_1405E5794

loc_1405E5763:                          ; CODE XREF: sub_1405E56B0+CC↓j
                                        ; sub_1405E56B0+E2↓j ...
                mov     rbx, [rsp+48h+arg_8]
                mov     eax, edx
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E5777:                          ; CODE XREF: sub_1405E56B0+6E↑j
                mov     edx, 0C0000225h
                jmp     short loc_1405E5763
; ---------------------------------------------------------------------------

loc_1405E577E:                          ; CODE XREF: sub_1405E56B0+32↑j
                                        ; sub_1405E56B0+3B↑j
                lea     r9, [rsp+48h+arg_0]
                mov     eax, 4
                jmp     loc_1405E56F8
; ---------------------------------------------------------------------------

loc_1405E578D:                          ; CODE XREF: sub_1405E56B0+78↑j
                cmp     edx, r8d
                jz      short loc_1405E572A
                jmp     short loc_1405E5763
; ---------------------------------------------------------------------------

loc_1405E5794:                          ; CODE XREF: sub_1405E56B0+AB↑j
                                        ; sub_1405E56B0+B1↑j ...
                mov     edx, r8d
                jmp     short loc_1405E5763
; ---------------------------------------------------------------------------

loc_1405E5799:                          ; CODE XREF: sub_1405E56B0+A0↑j
                mov     dword ptr [rax], 1
                test    rbx, rbx
                jz      short loc_1405E5794
                cmp     [rsp+48h+arg_28], 1
                jb      short loc_1405E5794
                cmp     edx, r8d
                jz      short loc_1405E57E8
                mov     eax, [rsp+48h+arg_0]
                neg     eax
                sbb     cl, cl
                mov     [rbx], cl
                jmp     short loc_1405E5763
; ---------------------------------------------------------------------------

loc_1405E57BC:                          ; CODE XREF: sub_1405E56B0+93↑j
                mov     rax, [rsp+48h+arg_30]
                mov     dword ptr [rax], 2
                test    rbx, rbx
                jz      short loc_1405E5794
                cmp     [rsp+48h+arg_28], 2
                jb      short loc_1405E5794
                cmp     edx, r8d
                jz      short loc_1405E57E8
                movzx   eax, word ptr [rsp+48h+arg_0]
                mov     [rbx], ax
                jmp     loc_1405E5763
; ---------------------------------------------------------------------------

loc_1405E57E8:                          ; CODE XREF: sub_1405E56B0+81↑j
                                        ; sub_1405E56B0+FE↑j ...
                mov     edx, 0C00000E5h
                jmp     loc_1405E5763
sub_1405E56B0   endp

; ---------------------------------------------------------------------------
algn_1405E57F2:                         ; DATA XREF: .pdata:00000001400FBEEC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405E57F8   proc near               ; CODE XREF: sub_1405E7384+78↓p
                                        ; DATA XREF: .pdata:00000001400FBEF8↑o

var_18          = word ptr -18h
var_16          = word ptr -16h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+var_14], 0
                mov     rdi, rcx
                call    PsGetCurrentServerSilo
                mov     rcx, rax
                call    sub_140206CF0
                mov     rbx, [rax+308h]
                test    rbx, rbx
                jz      short loc_1405E5837
                mov     esi, [rbx]
                test    esi, esi
                jz      short loc_1405E5837
                movzx   ecx, word ptr [rdi]
                cmp     cx, [rbx+4]
                jnb     short loc_1405E584A

loc_1405E5837:                          ; CODE XREF: sub_1405E57F8+2E↑j
                                        ; sub_1405E57F8+34↑j ...
                xor     al, al

loc_1405E5839:                          ; CODE XREF: sub_1405E57F8+AB↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E584A:                          ; CODE XREF: sub_1405E57F8+3D↑j
                cmp     cx, [rbx+6]
                ja      short loc_1405E5837
                mov     rax, [rdi+8]
                mov     edx, 8
                add     rax, rdx
                sub     cx, dx
                mov     [rsp+38h+var_10], rax
                movzx   eax, word ptr [rdi+2]
                xor     edi, edi
                sub     ax, dx
                mov     [rsp+38h+var_18], cx
                mov     [rsp+38h+var_16], ax
                test    esi, esi
                jz      short loc_1405E5837

loc_1405E587B:                          ; CODE XREF: sub_1405E57F8+A5↓j
                mov     eax, edi
                lea     rdx, [rbx+8]
                shl     rax, 4
                lea     rcx, [rsp+38h+var_18]
                add     rdx, rax
                mov     r8b, 1
                call    RtlEqualUnicodeString
                test    al, al
                jnz     short loc_1405E58A1
                inc     edi
                cmp     edi, esi
                jb      short loc_1405E587B
                jmp     short loc_1405E5837
; ---------------------------------------------------------------------------

loc_1405E58A1:                          ; CODE XREF: sub_1405E57F8+9F↑j
                mov     al, 1
                jmp     short loc_1405E5839
sub_1405E57F8   endp

; ---------------------------------------------------------------------------
algn_1405E58A5:                         ; DATA XREF: .pdata:00000001400FBEF8↑o
                align 10h
; Exported entry 2086. RtlDuplicateUnicodeString

; =============== S U B R O U T I N E =======================================


