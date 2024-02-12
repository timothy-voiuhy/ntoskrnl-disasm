RtlCreateHeap   proc near               ; DATA XREF: .rdata:00000001400937C4↑o
                                        ; .pdata:000000014010A340↑o

var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = xmmword ptr -168h
var_158         = xmmword ptr -158h
var_148         = xmmword ptr -148h
var_138         = xmmword ptr -138h
var_128         = qword ptr -128h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_88          = byte ptr -88h
var_60          = qword ptr -60h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407E8E29 SIZE 0000001E BYTES
; FUNCTION CHUNK AT 0000000140845698 SIZE 000008D0 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+218h+var_48], rax
                mov     r13, r9
                mov     r12, r8
                mov     r14, rdx
                mov     esi, ecx
                mov     rax, [rsp+218h+arg_20]
                mov     [rsp+218h+var_1D0], rax
                mov     [rsp+218h+var_190], rdx
                mov     [rsp+218h+var_1A8], rax
                mov     rdi, [rsp+218h+arg_28]
                xor     ebx, ebx
                mov     [rsp+218h+var_1B0], rbx
                mov     eax, cs:NtGlobalFlag
                mov     dword ptr [rsp+218h+var_1C8], eax
                xorps   xmm0, xmm0
                movups  [rsp+218h+var_158], xmm0
                movups  [rsp+218h+var_148], xmm0
                movups  [rsp+218h+var_138], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+218h+var_B8], xmm1
                movups  [rsp+218h+var_A8], xmm1
                movups  [rsp+218h+var_98], xmm1
                mov     [rsp+218h+var_1C0], ebx
                mov     [rsp+218h+var_1B8], rbx
                xor     edx, edx
                lea     r8d, [rbx+40h]
                lea     rcx, [rsp+218h+var_88]
                call    memset
                mov     [rsp+218h+var_1D8], rbx
                mov     r15d, ebx
                bt      esi, 8
                jnb     loc_140845698
                test    r14, r14
                jz      loc_140767A17
                cmp     [rsp+218h+var_1D0], rbx
                jnz     loc_140767A17
                test    sil, 2
                jnz     loc_140767A17
                mov     edx, dword ptr [rsp+218h+var_1C8]
                mov     ecx, esi
                call    sub_14037BB18
                mov     r8d, eax
                mov     rdx, [rdi+48h]
                test    rdx, rdx
                jz      short loc_14076799B
                mov     r13, [rdi+38h]
                test    r13, r13
                jz      loc_140767A17
                mov     r12, [rdi+40h]
                test    r12, r12
                jz      loc_140767A17
                cmp     r13, r12
                ja      short loc_140767A17

loc_14076799B:                          ; CODE XREF: RtlCreateHeap+FA↑j
                lea     rcx, [rsp+218h+var_128]
                call    sub_140364138
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rsp+218h+var_168], xmm0
                lea     rax, [rsp+218h+var_168]
                mov     [rsp+218h+var_1F0], rax
                mov     dword ptr [rsp+218h+var_1F8], r8d
                mov     r9, r13
                mov     r8, r12
                mov     rcx, r14
                call    sub_14037B868
                mov     rdi, rax

loc_1407679D7:                          ; CODE XREF: RtlCreateHeap+19A↓j
                                        ; RtlCreateHeap+DE69F↓j
                mov     rcx, [rsp+218h+var_1D0]

loc_1407679DC:                          ; CODE XREF: RtlCreateHeap+DDED3↓j
                                        ; RtlCreateHeap+DE16B↓j
                test    r15, r15
                jnz     loc_140845F24

loc_1407679E5:                          ; CODE XREF: RtlCreateHeap+DE6A7↓j
                                        ; RtlCreateHeap+DE6B6↓j
                cmp     [rsp+218h+var_1D8], rbx
                jnz     loc_140845F3B

loc_1407679F0:                          ; CODE XREF: RtlCreateHeap+DE6BE↓j
                                        ; RtlCreateHeap+DE6E3↓j
                mov     rax, rdi
                mov     rcx, [rsp+218h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1E0h
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

loc_140767A17:                          ; CODE XREF: RtlCreateHeap+CA↑j
                                        ; RtlCreateHeap+D5↑j ...
                mov     rdi, rbx
                jmp     short loc_1407679D7
; } // starts at 140767880
RtlCreateHeap   endp

; ---------------------------------------------------------------------------
byte_140767A1C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400937C4↑o
                                        ; .pdata:000000014010A340↑o

; =============== S U B R O U T I N E =======================================


sub_140767A24   proc near               ; CODE XREF: sub_1406E2D40+2D6↑p
                                        ; sub_14087723C+D7↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h

; FUNCTION CHUNK AT 0000000140845F68 SIZE 0000007F BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 68h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_40], rax
                xorps   xmm0, xmm0
                mov     byte ptr [r9], 0
                and     dword ptr [r8], 0
                mov     r15, r9
                movups  [rsp+98h+var_70], xmm0
                mov     rbx, r8
                mov     r14, rdx
                movups  [rsp+98h+var_60], xmm0
                mov     rbp, rcx
                movups  [rsp+98h+var_50], xmm0
                call    sub_14066E56C
                mov     esi, 1
                or      [r14+30h], esi
                call    sub_14066E540
                lea     rdi, [r14+10h]
                cmp     [rdi], rdi
                jz      loc_140767BAE
                lea     rcx, [rsp+98h+var_70]
                call    sub_14063A890
                call    sub_14064A3A0
                and     [rsp+98h+var_78], 0

loc_140767A9B:                          ; CODE XREF: sub_140767A24+9B↓j
                                        ; sub_140767A24+9F↓j
                xor     r8d, r8d
                lea     rdx, [rsp+98h+var_78]
                mov     rcx, rdi
                call    sub_1406E3344
                test    rax, rax
                jz      short loc_140767AC5
                mov     rax, [rax+30h]
                mov     rcx, [rax+20h]
                cmp     [rcx+1060h], rbp
                jnz     short loc_140767A9B
                add     [rbx], esi
                jmp     short loc_140767A9B
; ---------------------------------------------------------------------------

loc_140767AC5:                          ; CODE XREF: sub_140767A24+8A↑j
                mov     rbx, [rbp+50h]
                test    rbx, rbx
                jnz     loc_140767B82
                xor     ecx, ecx

loc_140767AD4:                          ; CODE XREF: sub_140767A24+C9↓j
                call    sub_1405F9DD0
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140767B35
                cmp     [rax+1060h], rbp
                jz      short loc_140767AEF

loc_140767AEA:                          ; CODE XREF: sub_140767A24+D4↓j
                                        ; sub_140767A24+E2↓j ...
                mov     rcx, rdi
                jmp     short loc_140767AD4
; ---------------------------------------------------------------------------

loc_140767AEF:                          ; CODE XREF: sub_140767A24+C4↑j
                mov     ecx, [rdi+0A0h]
                test    cl, 2
                jnz     short loc_140767AEA
                mov     edx, [r14+70h]
                test    edx, edx
                jz      short loc_140767B17
                xor     ecx, ecx
                test    edx, edx
                jz      short loc_140767AEA

loc_140767B08:                          ; CODE XREF: sub_140767A24+EF↓j
                cmp     rdi, [r14+rcx*8+78h]
                jz      short loc_140767B17
                add     ecx, esi
                cmp     ecx, edx
                jb      short loc_140767B08
                jmp     short loc_140767AEA
; ---------------------------------------------------------------------------

loc_140767B17:                          ; CODE XREF: sub_140767A24+DC↑j
                                        ; sub_140767A24+E9↑j
                call    sub_14064A360
                mov     rcx, rdi
                call    sub_140767D3C
                mov     ebx, eax
                test    eax, eax
                js      loc_140845F68
                call    sub_14064A3A0
                jmp     short loc_140767AEA
; ---------------------------------------------------------------------------

loc_140767B35:                          ; CODE XREF: sub_140767A24+BB↑j
                mov     rdi, cs:qword_140C01170
                mov     rax, [rdi+40h]
                mov     ecx, [rax+90h]
                test    sil, cl
                jz      loc_140845F76

loc_140767B4F:                          ; CODE XREF: sub_140767A24+DE5B3↓j
                xor     ebx, ebx
                test    sil, sil
                jz      short loc_140767B5B

loc_140767B56:                          ; CODE XREF: sub_140767A24+193↓j
                                        ; sub_140767A24+DE58B↓j
                call    sub_14064A360

loc_140767B5B:                          ; CODE XREF: sub_140767A24+130↑j
                                        ; sub_140767A24+188↓j ...
                lea     rcx, [rsp+98h+var_70]
                call    sub_14063A63C

loc_140767B65:                          ; CODE XREF: sub_140767A24+18F↓j
                mov     eax, ebx
                mov     rcx, [rsp+98h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 68h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140767B82:                          ; CODE XREF: sub_140767A24+A8↑j
                lea     rdi, [rbx+660h]
                mov     rcx, rdi
                call    sub_14024C840
                test    al, al
                jz      short loc_140767BB5
                call    sub_14064A360
                mov     rcx, rbx
                call    sub_140767D3C
                mov     rcx, rdi
                mov     ebx, eax
                call    sub_14024C380
                jmp     short loc_140767B5B
; ---------------------------------------------------------------------------

loc_140767BAE:                          ; CODE XREF: sub_140767A24+5C↑j
                mov     [r15], sil
                xor     ebx, ebx
                jmp     short loc_140767B65
; ---------------------------------------------------------------------------

loc_140767BB5:                          ; CODE XREF: sub_140767A24+16F↑j
                xor     ebx, ebx
                jmp     short loc_140767B56
; } // starts at 140767A24
sub_140767A24   endp

; ---------------------------------------------------------------------------
algn_140767BB9:                         ; DATA XREF: .rdata:00000001400938EC↑o
                                        ; .pdata:000000014010A34C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140767BC0   proc near               ; CODE XREF: sub_1406E2D40+2BA↑p
                                        ; sub_140874390+106↓p ...

var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = byte ptr -38h
var_18          = qword ptr -18h
arg_0           = qword ptr  10h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                lea     rbp, [rsp-47h]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_18], rax
                or      dword ptr [rbp+57h+var_90+4], 0FFFFFFFFh
                xorps   xmm1, xmm1
                and     dword ptr [r8], 0
                xorps   xmm0, xmm0
                cmp     cs:dword_140C02130, 5
                mov     rbx, rdx
                movups  [rbp+57h+var_88], xmm0
                mov     dword ptr [rbp+57h+var_90], 0FFF0BDC0h
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_68], xmm1
                movups  [rbp+57h+var_58], xmm1
                movups  [rbp+57h+var_48], xmm1
                jbe     short loc_140767C56
                mov     edx, 1
                lea     rcx, dword_140C02130
                call    sub_140209F38
                test    al, al
                jz      short loc_140767C56
                lea     rax, [rbp+57h+var_38]
                xor     r9d, r9d
                mov     [rsp+0C0h+var_98], rax
                lea     rdx, byte_140022BD9
                xor     r8d, r8d
                mov     [rsp+0C0h+var_A0], 2
                lea     rcx, dword_140C02130
                call    sub_140209DB8

loc_140767C56:                          ; CODE XREF: sub_140767BC0+55↑j
                                        ; sub_140767BC0+6A↑j
                lea     rcx, [rbp+57h+var_68]
                call    sub_14063A890
                lea     rcx, [rbp+57h+var_88]
                call    sub_14087468C
                mov     edi, eax
                test    eax, eax
                js      short loc_140767CC2
                mov     qword ptr [rbp+57h+var_78], rbx
                mov     sil, 1
                mov     rbx, [rbp+57h+var_90]
                mov     byte ptr [rbp+57h+var_78+8], 1

loc_140767C7D:                          ; CODE XREF: sub_140767BC0+100↓j
                test    sil, sil
                jnz     short loc_140767CAC
                lea     r8, [rbp+57h+var_90]
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread
                add     rbx, rbx
                mov     [rbp+57h+var_90], rbx
                cmp     rbx, 0FFFFFFFFEE1E5D00h
                jle     short loc_140767CAF
                mov     rbx, 0FFFFFFFFEE1E5D00h
                mov     [rbp+57h+var_90], rbx
                jmp     short loc_140767CAF
; ---------------------------------------------------------------------------

loc_140767CAC:                          ; CODE XREF: sub_140767BC0+C0↑j
                xor     sil, sil

loc_140767CAF:                          ; CODE XREF: sub_140767BC0+DD↑j
                                        ; sub_140767BC0+EA↑j
                and     dword ptr [rbp+57h+var_88], 0
                lea     rcx, [rbp+57h+var_88]
                call    sub_14066A7F8
                mov     edi, eax
                test    eax, eax
                js      short loc_140767C7D

loc_140767CC2:                          ; CODE XREF: sub_140767BC0+AC↑j
                lea     rcx, [rbp+57h+var_68]
                call    sub_14063A63C
                cmp     cs:dword_140C02130, 5
                jbe     short loc_140767D13
                mov     edx, 1
                lea     rcx, dword_140C02130
                call    sub_140209F38
                test    al, al
                jz      short loc_140767D13
                lea     rax, [rbp+57h+var_38]
                xor     r9d, r9d
                mov     [rsp+0C0h+var_98], rax
                lea     rdx, byte_140022BB7
                xor     r8d, r8d
                mov     [rsp+0C0h+var_A0], 2
                lea     rcx, dword_140C02130
                call    sub_140209DB8

loc_140767D13:                          ; CODE XREF: sub_140767BC0+112↑j
                                        ; sub_140767BC0+127↑j
                mov     eax, edi
                mov     rcx, [rbp+57h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0C0h+arg_0]
                add     rsp, 0B0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140767BC0
sub_140767BC0   endp

byte_140767D35  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010A358↑o

; =============== S U B R O U T I N E =======================================


sub_140767D3C   proc near               ; CODE XREF: sub_140767A24+FB↑p
                                        ; sub_140767A24+179↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140845FE8 SIZE 0000005B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rcx
                call    sub_14064A3A0
                lea     rdi, [rsi+48h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [rsi+40h]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     edx, [rax+90h]
                test    dl, 1
                jz      short loc_140767DC7

loc_140767D7E:                          ; CODE XREF: sub_140767D3C+DB↓j
                lock xadd [rdi], rbx
                test    bl, 2
                jnz     loc_14084602C

loc_140767D8C:                          ; CODE XREF: sub_140767D3C+DE2F3↓j
                                        ; sub_140767D3C+DE302↓j
                mov     rcx, rdi
                call    sub_140243660
                call    sub_14064A360
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1405F8E80
                mov     esi, eax
                test    eax, eax
                js      short loc_140767E1C

loc_140767DA9:                          ; CODE XREF: sub_140767D3C+E5↓j
                                        ; sub_140767D3C+DE2EB↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140767DC7:                          ; CODE XREF: sub_140767D3C+40↑j
                lea     rbp, [rsi+50h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                xor     r9d, r9d
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [r9+20h]
                call    sub_140601550
                mov     r14b, al
                mov     rcx, rbx
                lock xadd [rbp+0], rcx
                test    cl, 2
                jnz     loc_140845FE8

loc_140767DFB:                          ; CODE XREF: sub_140767D3C+DE2AF↓j
                                        ; sub_140767D3C+DE2BE↓j
                mov     rcx, rbp
                call    sub_140243660
                test    r14b, r14b
                jz      loc_140845FFF
                mov     rax, [rsi+40h]
                or      dword ptr [rax+90h], 1
                jmp     loc_140767D7E
; ---------------------------------------------------------------------------

loc_140767E1C:                          ; CODE XREF: sub_140767D3C+6B↑j
                mov     esi, 0C000009Ah
                jmp     short loc_140767DA9
sub_140767D3C   endp

; ---------------------------------------------------------------------------
byte_140767E23  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093938↑o
                                        ; .pdata:000000014010A364↑o

; =============== S U B R O U T I N E =======================================


sub_140767E2C   proc near               ; CODE XREF: sub_1402B0804+99↑p
                                        ; sub_1407335AC+97↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140846044 SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rdx
                mov     r14, r9
                mov     edx, 69706E50h
                mov     r15, r8
                mov     rdi, rcx
                call    sub_1402B0A60
                xor     edx, edx
                mov     rsi, rax
                mov     cl, [rax+4Ch]
                call    IoAllocateIrp
                mov     rbx, rax
                test    rax, rax
                jz      loc_14084604B
                mov     edx, 1
                mov     rcx, rax
                call    sub_1402B0910
                test    rdi, rdi
                jz      loc_140846044
                mov     rcx, [rdi+138h]
                mov     rax, [rcx+28h]

loc_140767E94:                          ; CODE XREF: sub_140767E2C+DE21A↓j
                test    rax, rax
                jz      short loc_140767E9D
                mov     [rax+48h], rbx

loc_140767E9D:                          ; CODE XREF: sub_140767E2C+6B↑j
                and     qword ptr [rbx+38h], 0
                mov     rdx, rbx
                movups  xmm0, xmmword ptr [rbp+0]
                mov     dword ptr [rbx+30h], 0C00000BBh
                mov     rcx, rsi
                mov     rax, gs:188h
                and     qword ptr [rbx+48h], 0
                and     qword ptr [rbx+50h], 0
                movups  xmm1, xmmword ptr [rbp+10h]
                mov     [rbx+98h], rax
                mov     rax, [rbx+0B8h]
                mov     byte ptr [rbx+40h], 0
                movups  xmmword ptr [rax-48h], xmm0
                movups  xmm0, xmmword ptr [rbp+20h]
                movups  xmmword ptr [rax-38h], xmm1
                movups  xmm1, xmmword ptr [rbp+30h]
                movups  xmmword ptr [rax-28h], xmm0
                movsd   xmm0, qword ptr [rbp+40h]
                movups  xmmword ptr [rax-18h], xmm1
                movsd   qword ptr [rax-8], xmm0
                mov     rax, [rbx+0B8h]
                mov     [rax-10h], r15
                mov     [rax-8], r14
                mov     byte ptr [rax-45h], 0E0h
                call    IofCallDriver
                mov     ebx, eax

loc_140767F18:                          ; CODE XREF: sub_140767E2C+DE224↓j
                mov     edx, 69706E50h
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140767E2C   endp

algn_140767F41:                         ; DATA XREF: .rdata:0000000140093964↑o
                                        ; .pdata:000000014010A370↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140767F48   proc near               ; CODE XREF: sub_140708C5C+1BE↑p
                                        ; DATA XREF: .rdata:0000000140093994↑o ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_18          = dword ptr  20h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140846056 SIZE 0000009E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], r9d
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xor     esi, esi
                mov     r14, r8
                mov     r12, rdx
                mov     [rax+20h], esi
                mov     r13, rcx
                mov     [rax-38h], rsi
                xor     edx, edx
                lea     rcx, a999a      ; "999A"
                lea     edi, [rsi+24h]
                mov     ebx, esi
                mov     r8d, edi
                call    wcstoul
                mov     r8d, edi
                lea     rcx, aZzzz      ; "ZZZZ"
                xor     edx, edx
                mov     ebp, eax
                call    wcstoul
                mov     r15d, eax
                mov     ecx, 0FFFFFFFDh
                lea     eax, [rbp-1]
                cmp     eax, ecx
                ja      loc_1407680E2
                lea     eax, [r15-1]
                cmp     eax, ecx
                ja      loc_1407680E2
                mov     edi, esi

loc_140767FC4:                          ; CODE XREF: sub_140767F48+15D↓j
                                        ; sub_140767F48+DE114↓j
                cmp     edi, 270Fh
                ja      loc_140846056
                mov     r9d, edi
                lea     r8, a04u        ; "%04u"
                mov     edx, 5
                mov     rcx, r14
                call    swprintf_s
                test    eax, eax
                js      loc_1407680E2

loc_140767FEF:                          ; CODE XREF: sub_140767F48+DE13A↓j
                movzx   eax, word ptr [r14]
                mov     esi, 1
                mov     rcx, r14
                xor     edx, edx

loc_140767FFD:                          ; CODE XREF: sub_140767F48+103↓j
                test    ax, ax
                jz      short loc_14076804D
                cmp     ax, 61h ; 'a'
                ja      loc_140846093
                jz      loc_1408460BF
                cmp     ax, 41h ; 'A'
                jz      loc_1408460BF
                cmp     ax, 45h ; 'E'
                jz      loc_1408460BF
                cmp     ax, 49h ; 'I'
                jz      loc_1408460BF
                cmp     ax, 4Fh ; 'O'
                jz      loc_1408460BF
                cmp     ax, 54h ; 'T'
                ja      loc_140846087

loc_140768044:                          ; CODE XREF: sub_140767F48+DE161↓j
                                        ; sub_140767F48:loc_1408460B9↓j
                add     rcx, 2
                movzx   eax, word ptr [rcx]
                jmp     short loc_140767FFD
; ---------------------------------------------------------------------------

loc_14076804D:                          ; CODE XREF: sub_140767F48+B8↑j
                lea     rax, [rsp+78h+arg_18]
                xor     r9d, r9d
                mov     [rsp+78h+var_40], rax
                mov     r8, r14
                lea     rax, [rsp+78h+var_38]
                mov     rcx, r13
                mov     [rsp+78h+var_48], rax
                mov     [rsp+78h+var_50], rdx
                mov     rdx, r12
                mov     [rsp+78h+var_58], esi
                call    sub_1405E5634
                cmp     eax, 0C000017Ch
                jz      short loc_1407680E2
                test    eax, eax
                js      short loc_1407680DB
                cmp     [rsp+78h+arg_18], esi
                jz      short loc_1407680AA
                mov     rcx, [rsp+78h+var_38]
                call    ZwClose
                and     [rsp+78h+var_38], rbx

loc_1407680A1:                          ; CODE XREF: sub_140767F48+DE184↓j
                                        ; sub_140767F48+DE195↓j
                add     edi, esi
                xor     esi, esi
                jmp     loc_140767FC4
; ---------------------------------------------------------------------------

loc_1407680AA:                          ; CODE XREF: sub_140767F48+148↑j
                                        ; sub_140767F48+DE1A7↓j
                mov     rax, [rsp+78h+arg_28]
                mov     rcx, [rsp+78h+var_38]
                mov     [rax], rcx

loc_1407680BA:                          ; CODE XREF: sub_140767F48+19F↓j
                                        ; sub_140767F48+DE1A1↓j
                lea     r11, [rsp+78h+var_28]
                mov     eax, ebx
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407680DB:                          ; CODE XREF: sub_140767F48+13F↑j
                mov     ebx, eax
                jmp     loc_1408460E7
; ---------------------------------------------------------------------------

loc_1407680E2:                          ; CODE XREF: sub_140767F48+68↑j
                                        ; sub_140767F48+74↑j ...
                mov     ebx, 0C00000E5h
                jmp     short loc_1407680BA
sub_140767F48   endp

; ---------------------------------------------------------------------------
algn_1407680E9:                         ; DATA XREF: .rdata:0000000140093994↑o
                                        ; .pdata:000000014010A37C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407680F0   proc near               ; CODE XREF: sub_1406C24F8+1B2↑p
                                        ; DATA XREF: .rdata:00000001400939C0↑o ...

var_88          = byte ptr -88h
var_87          = byte ptr -87h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = word ptr -70h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408460F4 SIZE 0000005C BYTES

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8d
                mov     [rax+10h], dl
                mov     [rax+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 68h
                mov     r8, [rcx+18h]
                xor     r12d, r12d
                mov     r15d, [rcx+38h]
                xor     r10d, r10d
                inc     r15d
                mov     [rsp+0A8h+var_88], r12b
                xorps   xmm0, xmm0
                mov     [rsp+0A8h+var_78], r8
                movups  xmmword ptr [rax-70h], xmm0
                mov     eax, 0FFFFFFFEh
                mov     [rsp+0A8h+var_84], r10d
                and     r15d, eax
                mov     [rsp+0A8h+var_87], 1
                xor     r13d, r13d
                xor     ebp, ebp
                xor     edi, edi
                mov     rsi, r8
                xor     r14d, r14d
                mov     [rsp+0A8h+var_80], r14d

loc_140768158:                          ; CODE XREF: sub_1407680F0+101↓j
                xor     eax, eax
                mov     [rsp+0A8h+var_7C], eax
                cmp     [rsi+10h], eax
                jbe     loc_1407681E9
                xor     r11d, r11d
                mov     [rsp+0A8h+var_58], r11

loc_14076816F:                          ; CODE XREF: sub_1407680F0+F7↓j
                mov     ebx, eax
                mov     r9d, r14d
                shl     rbx, 5
                mov     rax, [rbx+rsi+18h]
                sub     rax, qword ptr cs:xmmword_14000ACD0
                jnz     short loc_140768192
                mov     rax, [rbx+rsi+20h]
                sub     rax, qword ptr cs:xmmword_14000ACD0+8

loc_140768192:                          ; CODE XREF: sub_1407680F0+94↑j
                test    rax, rax
                jz      loc_140768495
                mov     rax, [rbx+rsi+18h]
                sub     rax, qword ptr cs:xmmword_14000ACC0
                jnz     short loc_1407681B5
                mov     rax, [rbx+rsi+20h]
                sub     rax, qword ptr cs:xmmword_14000ACC0+8

loc_1407681B5:                          ; CODE XREF: sub_1407680F0+B7↑j
                test    rax, rax
                jz      loc_140768495

loc_1407681BE:                          ; CODE XREF: sub_1407680F0+3AD↓j
                                        ; sub_1407680F0+DE020↓j
                mov     edx, [rbx+rsi+28h]
                test    dl, 20h
                jnz     loc_14076836E

loc_1407681CB:                          ; CODE XREF: sub_1407680F0+2B2↓j
                                        ; sub_1407680F0+2C5↓j
                mov     eax, [rsp+0A8h+var_7C]
                mov     r8, [rsp+0A8h+var_78]
                inc     eax
                mov     r10d, [rsp+0A8h+var_84]
                mov     r11, [rsp+0A8h+var_58]
                mov     [rsp+0A8h+var_7C], eax
                cmp     eax, [rsi+10h]
                jb      short loc_14076816F

loc_1407681E9:                          ; CODE XREF: sub_1407680F0+71↑j
                mov     edx, [rsi+4]
                add     rsi, rdx
                test    edx, edx
                jnz     loc_140768158
                cmp     [rsp+0A8h+var_87], dl
                jz      loc_140768339
                test    rbp, rbp
                jz      loc_140768339
                lea     rdx, [rsp+0A8h+var_70]
                mov     rcx, r13
                call    sub_14036E634
                test    eax, eax
                js      loc_140768331
                movzx   r13d, [rsp+0A8h+var_70]
                lea     r14, [rdi+7]
                and     r14, 0FFFFFFFFFFFFFFF8h
                mov     ecx, r14d
                sub     ecx, edi
                lea     ebx, ds:60h[r13*2]
                lea     eax, [rcx+rbx]
                add     r15d, eax
                cmp     [rsp+0A8h+var_88], 0
                jnz     loc_140846146
                sub     r12d, ecx
                cmp     ebx, r12d
                ja      loc_140846146
                mov     r12, [rsp+0A8h+arg_18]
                cmp     qword ptr [r12+18h], 0
                jnz     loc_140768327
                mov     rcx, rbp
                call    ObfReferenceObject
                mov     edi, [rsp+0A8h+var_80]
                mov     eax, r14d
                sub     eax, esi
                mov     [r12+18h], rbp
                mov     [r12+34h], edi
                xor     edx, edx
                mov     [rsi+4], eax
                mov     rcx, r14
                mov     esi, 58h ; 'X'
                mov     r8d, esi
                call    memset
                mov     rdx, [rsp+0A8h+var_68]
                lea     ecx, [rsi-56h]
                mov     [r14+10h], ecx
                lea     eax, [rcx+r13]
                mov     [r14], ebx
                mov     r8d, r13d
                mov     dword ptr [r14+28h], 28h ; '('
                lea     rbx, [r14+5Ah]
                mov     [r14+2Ch], edi
                mov     rcx, rbx
                movups  xmm0, cs:xmmword_14000ACD0
                mov     [r14+30h], esi
                movdqu  xmmword ptr [r14+18h], xmm0
                mov     [r14+58h], ax
                call    memmove
                mov     rdx, [rsp+0A8h+var_68]
                lea     eax, [rsi+7]
                mov     [r13+rbx+0], ax
                lea     rcx, [r13+4]
                mov     dword ptr [r14+48h], 4
                lea     eax, [r13+5Ch]
                mov     dword ptr [r14+4Ch], 1
                add     rcx, rbx
                movups  xmm0, cs:xmmword_14000ACC0
                mov     [r14+50h], eax
                mov     r8d, r13d
                movdqu  xmmword ptr [r14+38h], xmm0
                mov     [r13+rbx+2], r13w
                call    memmove

loc_140768327:                          ; CODE XREF: sub_1407680F0+175↑j
                                        ; sub_1407680F0+DE05B↓j
                lea     rcx, [rsp+0A8h+var_70]
                call    RtlFreeUnicodeString

loc_140768331:                          ; CODE XREF: sub_1407680F0+129↑j
                mov     rcx, rbp
                call    PsDereferenceSiloContext

loc_140768339:                          ; CODE XREF: sub_1407680F0+10B↑j
                                        ; sub_1407680F0+114↑j
                cmp     [rsp+0A8h+var_88], 0
                mov     rax, [rsp+0A8h+var_78]
                mov     [rax], r15d
                mov     eax, 4
                jnz     short loc_140768350
                mov     eax, r15d

loc_140768350:                          ; CODE XREF: sub_1407680F0+25B↑j
                mov     rcx, [rsp+0A8h+arg_0]
                mov     [rcx+38h], rax
                add     rsp, 68h
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
                align 2

loc_14076836E:                          ; CODE XREF: sub_1407680F0+D5↑j
                test    rdi, rdi
                jz      short loc_1407683BA

loc_140768373:                          ; CODE XREF: sub_1407680F0+2F6↓j
                mov     r14d, [rbx+rsi+2Ch]
                cmp     r9d, r14d
                mov     r13, [rbx+rsi+30h]
                cmovnb  r14d, r9d
                mov     [rsp+0A8h+var_80], r14d
                cmp     r13, r11
                jnz     short loc_1407683E8
                or      edx, 8
                mov     [rbx+rsi+30h], r10d
                mov     [rbx+rsi+28h], edx

loc_14076839A:                          ; CODE XREF: sub_1407680F0+307↓j
                                        ; sub_1407680F0+3A0↓j
                cmp     [rsp+0A8h+arg_8], 0Bh
                jnz     loc_1407681CB
                mov     rcx, r13
                call    PsDereferenceSiloContext
                mov     [rsp+0A8h+var_80], r14d
                jmp     loc_1407681CB
; ---------------------------------------------------------------------------

loc_1407683BA:                          ; CODE XREF: sub_1407680F0+281↑j
                mov     eax, [r8+4]
                mov     rcx, r8

loc_1407683C1:                          ; CODE XREF: sub_1407680F0+DE02B↓j
                test    eax, eax
                jnz     loc_140846115
                mov     edi, [rcx]
                mov     eax, 0FFFFFFFEh
                inc     edi
                mov     r12d, r8d
                and     rdi, rax
                add     rdi, rcx
                sub     r12d, edi
                add     r12d, [rsp+0A8h+arg_10]
                jmp     short loc_140768373
; ---------------------------------------------------------------------------

loc_1407683E8:                          ; CODE XREF: sub_1407680F0+29C↑j
                lea     rdx, [rsp+0A8h+var_70]
                mov     rcx, r13
                call    sub_14036E634
                test    eax, eax
                js      short loc_14076839A
                cmp     [rsp+0A8h+var_87], 0
                jz      loc_140846129
                test    rbp, rbp
                jnz     loc_140846120
                mov     rcx, r13
                call    ObfReferenceObject

loc_140768415:                          ; CODE XREF: sub_1407680F0+DE033↓j
                test    rbp, rbp
                mov     rax, r13
                cmovnz  rax, rbp
                mov     rbp, rax

loc_140768422:                          ; CODE XREF: sub_1407680F0+DE041↓j
                                        ; sub_1407680F0+DE051↓j
                movzx   ecx, [rsp+0A8h+var_70]
                lea     r14d, [rcx+4]
                add     r15d, r14d
                cmp     [rsp+0A8h+var_88], 0
                jnz     short loc_1407684A8
                cmp     r14d, r12d
                ja      short loc_1407684A8
                or      dword ptr [rbx+rsi+28h], 8
                mov     eax, edi
                mov     rdx, [rsp+0A8h+var_68]
                sub     eax, esi
                mov     [rbx+rsi+30h], eax
                mov     r8d, ecx
                mov     [rsp+0A8h+var_84], eax
                mov     ebx, ecx
                mov     eax, 2
                mov     [rsp+0A8h+var_58], r13
                add     eax, ecx
                lea     rcx, [rdi+2]
                mov     [rdi], ax
                call    memmove
                mov     eax, 5Fh ; '_'
                mov     [rbx+rdi+2], ax
                add     rdi, 4
                add     rdi, rbx
                sub     r12d, r14d

loc_140768481:                          ; CODE XREF: sub_1407680F0+3BD↓j
                lea     rcx, [rsp+0A8h+var_70]
                call    RtlFreeUnicodeString
                mov     r14d, [rsp+0A8h+var_80]
                jmp     loc_14076839A
; ---------------------------------------------------------------------------

loc_140768495:                          ; CODE XREF: sub_1407680F0+A5↑j
                                        ; sub_1407680F0+C8↑j
                mov     [rsp+0A8h+var_87], 0
                test    rbp, rbp
                jz      loc_1407681BE
                jmp     loc_1408460F4
; ---------------------------------------------------------------------------

loc_1407684A8:                          ; CODE XREF: sub_1407680F0+343↑j
                                        ; sub_1407680F0+348↑j
                mov     [rsp+0A8h+var_88], 1
                jmp     short loc_140768481
sub_1407680F0   endp

; ---------------------------------------------------------------------------
byte_1407684AF  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400939C0↑o
                                        ; .pdata:000000014010A388↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_1407684B8   proc near               ; CODE XREF: sub_1406C9390+21C↑p
                                        ; DATA XREF: .rdata:0000000140093A1C↑o ...

var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = dword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = byte ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_84          = qword ptr -84h
var_7C          = qword ptr -7Ch
var_74          = qword ptr -74h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_50          = qword ptr -50h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140846150 SIZE 00000082 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0Fh]
                sub     rsp, 0D8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+47h+var_50], rax
                mov     rsi, [rbp+47h+arg_28]
                mov     edi, edx
                xor     edx, edx
                mov     [rbp+47h+var_A8], rsi
                mov     r15, r8
                mov     rbx, rcx
                lea     rcx, [rbp+47h+var_A0]
                mov     r12d, r9d
                lea     r8d, [rdx+48h]
                call    memset
                mov     r8d, [rbp+47h+arg_20]
                lea     r9, [rbp+47h+var_A0]
                and     dword ptr [rsi], 0
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1406C9914
                mov     esi, eax
                test    eax, eax
                js      loc_140768640
                mov     rax, [rbp+47h+var_68]
                mov     rdx, [rbp+47h+var_74]
                mov     ebx, [rbp+47h+var_98]
                mov     r13d, dword ptr [rbp+47h+var_74+4]
                mov     r14, [rbp+47h+var_90]
                mov     r8, [rbp+47h+var_7C]
                mov     qword ptr [rbp+47h+var_B8], rax
                mov     eax, [rbp+47h+var_60]
                mov     [rbp+47h+var_C0], eax
                mov     rax, [rbp+47h+var_84]
                cmp     edx, 0Eh
                jz      loc_140768745

loc_14076854E:                          ; CODE XREF: sub_1407684B8+2A6↓j
                cmp     edx, 3
                jz      loc_1407686B4

loc_140768557:                          ; CODE XREF: sub_1407684B8+215↓j
                cmp     edx, 4
                jz      loc_140768724

loc_140768560:                          ; CODE XREF: sub_1407684B8+285↓j
                cmp     edx, 2
                jz      loc_14076876E

loc_140768569:                          ; CODE XREF: sub_1407684B8+2CC↓j
                xor     eax, eax

loc_14076856B:                          ; CODE XREF: sub_1407684B8+2B1↓j
                neg     eax
                sbb     ecx, ecx
                and     ecx, 3Eh
                add     ecx, 2
                call    sub_1407090BC
                test    al, al
                jz      loc_140846150
                test    r14, r14
                jz      loc_1408461C8
                cmp     [rbp+47h+var_9C], 0
                jnz     loc_1408461C8
                test    r15, r15
                jz      loc_1408461C8
                mov     ecx, 8
                cmp     r12d, ecx
                jb      loc_1408461C8
                xor     edi, edi
                cmp     ebx, 6
                jg      loc_14076866C
                jz      loc_14084617F
                sub     ebx, 1
                jnz     loc_140768701
                lea     edi, [rcx-7]

loc_1407685C9:                          ; CODE XREF: sub_1407684B8+1F7↓j
                                        ; sub_1407684B8+267↓j ...
                test    esi, esi
                js      short loc_140768625
                and     [rsp+110h+var_C8], 0
                xor     r9d, r9d
                mov     eax, [rbp+47h+var_C0]
                mov     r8d, edi
                mov     rcx, cs:qword_140CF4378
                mov     rdx, r14
                mov     [rsp+110h+var_D0], eax
                mov     rax, qword ptr [rbp+47h+var_B8]
                mov     [rsp+110h+var_D8], rax
                lea     rax, [rbp+47h+var_84]
                mov     [rsp+110h+var_E0], r13d
                mov     [rsp+110h+var_E8], rax
                and     [rsp+110h+var_F0], 0
                call    sub_140737044
                mov     esi, eax
                cmp     eax, 0C0000022h
                jz      loc_140846193

loc_140768618:                          ; CODE XREF: sub_1407684B8+DDD0B↓j
                test    esi, esi
                js      short loc_140768625
                cmp     edi, 1
                jz      loc_1407686D8

loc_140768625:                          ; CODE XREF: sub_1407684B8+113↑j
                                        ; sub_1407684B8+162↑j ...
                mov     rax, [rbp+47h+var_A8]
                mov     r9d, r12d
                mov     edx, [rbp+47h+var_5C]
                mov     r8, r15
                mov     ecx, esi
                mov     [rsp+110h+var_F0], rax
                call    sub_1405E2308
                mov     esi, eax

loc_140768640:                          ; CODE XREF: sub_1407684B8+62↑j
                lea     rcx, [rbp+47h+var_A0]
                call    sub_1406C9BD4
                mov     eax, esi
                mov     rcx, [rbp+47h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0D8h
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
                align 4

loc_14076866C:                          ; CODE XREF: sub_1407684B8+F9↑j
                sub     ebx, 10001h
                jz      loc_14076878C
                sub     ebx, 1
                jz      short loc_140768697
                sub     ebx, 1
                jz      loc_140768796
                sub     ebx, 1
                jz      loc_140846189
                cmp     ebx, 1
                jnz     short loc_1407686A5
                lea     ecx, [rbx+0Ah]

loc_140768697:                          ; CODE XREF: sub_1407684B8+1C3↑j
                                        ; sub_1407684B8+2D9↓j ...
                mov     rax, cs:qword_140CF4380
                neg     rax
                sbb     edi, edi
                and     edi, ecx

loc_1407686A5:                          ; CODE XREF: sub_1407684B8+1DA↑j
                                        ; sub_1407684B8+DDCA5↓j
                test    edi, edi
                mov     eax, 0C000000Dh
                cmovz   esi, eax
                jmp     loc_1407685C9
; ---------------------------------------------------------------------------

loc_1407686B4:                          ; CODE XREF: sub_1407684B8+99↑j
                mov     rcx, rax
                sub     rcx, cs:qword_14000C438
                jnz     short loc_1407686CA
                mov     rcx, r8
                sub     rcx, cs:qword_14000C440

loc_1407686CA:                          ; CODE XREF: sub_1407684B8+206↑j
                test    rcx, rcx
                jnz     loc_140768557
                jmp     loc_140768764
; ---------------------------------------------------------------------------

loc_1407686D8:                          ; CODE XREF: sub_1407684B8+167↑j
                xorps   xmm0, xmm0
                lea     rcx, [rbp+47h+var_B8]
                mov     rdx, r14
                movups  [rbp+47h+var_B8], xmm0
                call    RtlInitUnicodeStringEx
                test    eax, eax
                js      loc_140768625
                lea     rcx, [rbp+47h+var_B8]
                call    sub_14037C2A0
                jmp     loc_140768625
; ---------------------------------------------------------------------------

loc_140768701:                          ; CODE XREF: sub_1407684B8+108↑j
                sub     ebx, 1
                jz      loc_140846175
                sub     ebx, 1
                jz      loc_14084616B
                sub     ebx, 1
                jnz     loc_14084615A
                lea     edi, [rbx+3]
                jmp     loc_1407685C9
; ---------------------------------------------------------------------------

loc_140768724:                          ; CODE XREF: sub_1407684B8+A2↑j
                mov     rcx, rax
                sub     rcx, cs:qword_14000C450
                jnz     short loc_14076873A
                mov     rcx, r8
                sub     rcx, cs:qword_14000C458

loc_14076873A:                          ; CODE XREF: sub_1407684B8+276↑j
                test    rcx, rcx
                jnz     loc_140768560
                jmp     short loc_140768764
; ---------------------------------------------------------------------------

loc_140768745:                          ; CODE XREF: sub_1407684B8+90↑j
                mov     rcx, rax
                sub     rcx, cs:qword_14000C480
                jnz     short loc_14076875B
                mov     rcx, r8
                sub     rcx, cs:qword_14000C488

loc_14076875B:                          ; CODE XREF: sub_1407684B8+297↑j
                test    rcx, rcx
                jnz     loc_14076854E

loc_140768764:                          ; CODE XREF: sub_1407684B8+21B↑j
                                        ; sub_1407684B8+28B↑j ...
                mov     eax, 1
                jmp     loc_14076856B
; ---------------------------------------------------------------------------

loc_14076876E:                          ; CODE XREF: sub_1407684B8+AB↑j
                sub     rax, cs:qword_14000C468
                jnz     short loc_140768781
                mov     rax, r8
                sub     rax, cs:qword_14000C470

loc_140768781:                          ; CODE XREF: sub_1407684B8+2BD↑j
                test    rax, rax
                jnz     loc_140768569
                jmp     short loc_140768764
; ---------------------------------------------------------------------------

loc_14076878C:                          ; CODE XREF: sub_1407684B8+1BA↑j
                mov     ecx, 7
                jmp     loc_140768697
; ---------------------------------------------------------------------------

loc_140768796:                          ; CODE XREF: sub_1407684B8+1C8↑j
                mov     ecx, 9
                jmp     loc_140768697
; } // starts at 1407684B8
sub_1407684B8   endp

; ---------------------------------------------------------------------------
byte_1407687A0  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140093A1C↑o
                                        ; .pdata:000000014010A394↑o

; =============== S U B R O U T I N E =======================================


sub_1407687A8   proc near               ; CODE XREF: sub_14073BFEC+A1↑p
                                        ; sub_14089CA00+6↓p ...

var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = xmmword ptr -0D8h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = xmmword ptr -90h
var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408461D2 SIZE 000001A5 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 100h
                mov     r15b, dl
                mov     rsi, rcx
                xorps   xmm0, xmm0
                movups  [rsp+128h+var_D8], xmm0
                xor     r12d, r12d
                mov     [rsp+128h+var_B8], r12
                mov     [rsp+128h+var_AC], r12d
                mov     [rax-94h], r12d
                mov     [rsp+128h+var_E8], r12
                mov     [rsp+128h+var_C4], r12d
                mov     [rsp+128h+var_E0], r12
                mov     [rax+18h], r12b
                mov     r14d, r12d
                mov     rax, gs:188h
                mov     dl, [rax+232h]
                test    dl, dl
                jnz     loc_1408461D2

loc_14076880D:                          ; CODE XREF: sub_1407687A8+DDA2D↓j
                mov     rdx, rsi
                lea     rcx, qword_14000C4A8
                call    sub_140364E18
                mov     [rsp+128h+var_C0], r12
                mov     [rsp+128h+var_C8], r12d
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_1408462A9
                mov     byte ptr [rsp+128h+var_108], r12b
                mov     r9d, 20019h
                mov     r8, rsi
                xor     edx, edx
                lea     rcx, [rsp+128h+var_E8]
                call    sub_140768AB4
                mov     edi, eax
                test    eax, eax
                js      loc_1407689FB
                lea     rdx, [rsp+128h+var_C8]
                mov     rcx, [rsp+128h+var_E8]
                call    sub_140739B70
                mov     edi, eax
                xor     edx, edx
                mov     rcx, [rsp+128h+var_E8]
                call    ObCloseHandle
                test    edi, edi
                js      loc_1407689FB
                mov     [rsp+128h+var_B0], 30h ; '0'
                mov     [rsp+128h+var_A8], r12
                mov     [rsp+128h+var_98], 240h
                lea     rax, [rsp+128h+var_C8]
                mov     [rsp+128h+var_A0], rax
                xorps   xmm0, xmm0
                movdqu  [rsp+128h+var_90], xmm0
                lea     rax, [rsp+128h+var_E0]
                mov     [rsp+128h+var_F8], rax
                mov     [rsp+128h+var_100], r12
                mov     dword ptr [rsp+128h+var_108], 1
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, cs:IoDriverObjectType
                lea     rcx, [rsp+128h+var_B0]
                call    ObOpenObjectByName
                mov     edi, eax
                test    eax, eax
                js      loc_1407689FB
                mov     r8, cs:IoDriverObjectType
                mov     [rsp+128h+arg_18], r12
                mov     [rsp+128h+var_100], r12
                lea     rax, [rsp+128h+arg_18]
                mov     [rsp+128h+var_108], rax
                xor     r9d, r9d
                xor     edx, edx
                mov     rcx, [rsp+128h+var_E0]
                call    ObReferenceObjectByHandle
                mov     edi, eax
                xor     edx, edx
                mov     rcx, [rsp+128h+var_E0]
                call    ObCloseHandle
                test    edi, edi
                js      loc_1407689FB
                mov     rbx, [rsp+128h+arg_18]
                mov     rcx, [rbx+18h]
                call    RtlImageNtHeader
                movzx   r14d, word ptr [rax+44h]
                shl     r14d, 10h
                movzx   eax, word ptr [rax+46h]
                or      r14d, eax
                cmp     [rbx+68h], r12
                jz      loc_140846365
                cmp     [rbx+28h], r12
                jz      loc_140846365
                test    r15b, r15b
                jz      loc_1408462C2

loc_14076896C:                          ; CODE XREF: sub_1407687A8+DDB2A↓j
                lea     rdx, [rsp+128h+arg_10]
                mov     rcx, rbx
                call    sub_14037C8E4
                mov     edi, eax
                mov     ecx, 80000000h
                add     eax, ecx
                test    ecx, eax
                jnz     short loc_1407689FB
                cmp     edi, 0C0000010h
                jz      short loc_1407689FB
                cmp     [rsp+128h+arg_10], r12b
                jz      short loc_1407689F0
                mov     rcx, gs:188h
                mov     rax, cs:PsInitialSystemProcess
                cmp     [rcx+0B8h], rax
                jnz     loc_1408462D7
                mov     rax, [rbx+68h]
                mov     rbx, [rsp+128h+arg_18]
                mov     rcx, rbx
                call    sub_1404079D0
                lea     rcx, [rbx+38h]
                call    sub_140768A4C

loc_1407689D5:                          ; CODE XREF: sub_1407687A8+DDBB8↓j
                mov     rdx, rbx
                mov     rcx, rbx
                call    sub_14037C850
                mov     rcx, rbx
                call    ObMakeTemporaryObject
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_1407689F0:                          ; CODE XREF: sub_1407687A8+1F1↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     edi, r12d

loc_1407689FB:                          ; CODE XREF: sub_1407687A8+A9↑j
                                        ; sub_1407687A8+CE↑j ...
                mov     dword ptr [rsp+128h+var_108], r14d
                lea     r9, [rsp+128h+var_C8]
                mov     r8d, edi
                mov     rdx, rsi
                lea     rcx, qword_14000C498
                call    sub_14037C5B0
                mov     rcx, [rsp+128h+var_C0]
                test    rcx, rcx
                jz      short loc_140768A28
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140768A28:                          ; CODE XREF: sub_1407687A8+277↑j
                mov     eax, edi

loc_140768A2A:                          ; CODE XREF: sub_1407687A8+DDA74↓j
                                        ; sub_1407687A8+DDADF↓j ...
                mov     rbx, [rsp+128h+arg_0]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407687A8
sub_1407687A8   endp

byte_140768A43  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093AB4↑o
                                        ; .pdata:000000014010A3A0↑o

; =============== S U B R O U T I N E =======================================


sub_140768A4C   proc near               ; CODE XREF: sub_1407687A8+228↑p
                                        ; IoDeleteDriver+D↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_38          = word ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140846378 SIZE 00000088 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_10], rax
                mov     rdi, cs:qword_140C19798
                lea     rdx, qword_14000C4C8
                mov     rbx, rcx
                mov     rcx, rdi
                call    EtwEventEnabled
                xor     esi, esi
                test    al, al
                jnz     loc_140846378

loc_140768A8D:                          ; CODE XREF: sub_140768A4C+DD93E↓j
                                        ; sub_140768A4C+DD9AF↓j
                mov     rcx, [rsp+68h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140768A4C
sub_140768A4C   endp

byte_140768AAB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093B60↑o
                                        ; .pdata:000000014010A3AC↑o

; =============== S U B R O U T I N E =======================================


sub_140768AB4   proc near               ; CODE XREF: sub_1403C0180+47↑p
                                        ; sub_1403CC1D8+4B↑p ...

var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_18          = xmmword ptr -18h
arg_8           = byte ptr  10h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 0000000140846400 SIZE 00000027 BYTES

                mov     r11, rsp
                sub     rsp, 78h
                mov     [r11-28h], r8
                mov     eax, r9d
                xor     r9d, r9d
                mov     qword ptr [r11-38h], 30h ; '0'
                lea     r8, [r11-38h]
                xorps   xmm0, xmm0
                mov     qword ptr [r11-20h], 240h
                mov     [r11-30h], rdx
                mov     [r11+10h], r9d
                movdqu  [rsp+78h+var_18], xmm0
                cmp     [rsp+78h+arg_20], r9b
                jnz     loc_140846400
                mov     edx, eax
                call    ZwOpenKey

loc_140768AFF:                          ; CODE XREF: sub_140768AB4+DD96E↓j
                add     rsp, 78h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140768AB4   endp

algn_140768B05:                         ; DATA XREF: .rdata:0000000140093BA4↑o
                                        ; .pdata:000000014010A3B8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140768B10   proc near               ; DATA XREF: .rdata:0000000140093BD0↑o
                                        ; .pdata:000000014010A3C4↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140846428 SIZE 0000001E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 50h
                mov     rax, gs:188h
                mov     rsi, r8
                mov     ebp, edx
                mov     r14, rcx
                dec     word ptr [rax+1E4h]
                lea     rcx, qword_140C47FA8
                call    sub_14024C840
                mov     bl, al
                test    al, al
                jz      loc_140846428

loc_140768B57:                          ; CODE XREF: sub_140768B10+DD927↓j
                test    bl, bl
                jz      loc_14084643C
                mov     rax, gs:188h
                mov     edx, 4
                mov     r8, cs:qword_140C47C10
                and     [rsp+58h+var_30], 0
                mov     rcx, [rsp+58h+arg_30]
                mov     r9b, [rax+232h]
                lea     rax, [rsp+58h+var_18]
                and     [rsp+58h+var_18], 0
                mov     [rsp+58h+var_38], rax
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+58h+var_18]
                mov     edi, eax
                cmp     eax, 0C0000024h
                jz      loc_140768C3A
                test    eax, eax
                js      short loc_140768BF5
                or      rbx, 1

loc_140768BB8:                          ; CODE XREF: sub_140768B10+170↓j
                test    edi, edi
                js      short loc_140768BF5
                mov     rax, [rsp+58h+arg_38]
                mov     r8, rsi
                mov     [rsp+58h+var_20], rbx
                mov     edx, ebp
                mov     [rsp+58h+var_28], rax
                mov     rcx, r14
                mov     eax, [rsp+58h+arg_28]
                mov     dword ptr [rsp+58h+var_30], eax
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                call    sub_14066D8D0
                mov     edi, eax

loc_140768BF5:                          ; CODE XREF: sub_140768B10+A2↑j
                                        ; sub_140768B10+AA↑j
                test    rbx, rbx
                jz      short loc_140768C02
                mov     rcx, rbx
                call    sub_14066AE40

loc_140768C02:                          ; CODE XREF: sub_140768B10+E8↑j
                lea     rcx, qword_140C47FA8
                call    sub_14024C380
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_140768C1C:                          ; CODE XREF: sub_140768B10+DD931↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+58h+arg_18]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140768C3A:                          ; CODE XREF: sub_140768B10+9A↑j
                mov     rax, gs:188h
                mov     edx, 4
                and     [rsp+58h+var_30], 0
                mov     r8, cs:TmTransactionObjectType
                and     [rsp+58h+var_10], 0
                mov     r9b, [rax+232h]
                lea     rax, [rsp+58h+var_10]
                mov     rcx, [rsp+58h+arg_30]
                mov     [rsp+58h+var_38], rax
                call    ObReferenceObjectByHandle
                mov     rbx, [rsp+58h+var_10]
                mov     edi, eax
                jmp     loc_140768BB8
sub_140768B10   endp

; ---------------------------------------------------------------------------
byte_140768C85  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140093BD0↑o
                                        ; .pdata:000000014010A3C4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140768C8C   proc near               ; CODE XREF: sub_140735D48+7A5↑p
                                        ; sub_140735D48+7DA↑p ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = dword ptr  48h
arg_18          = dword ptr  58h
arg_20          = byte ptr  60h
arg_28          = qword ptr  68h

; FUNCTION CHUNK AT 0000000140846446 SIZE 00000117 BYTES

                mov     [rsp-38h+arg_0], rbx
                mov     [rsp-38h+arg_18], r9d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     r15, [rbp+arg_28]
                xor     edi, edi
                neg     [rbp+arg_20]
                mov     rbx, r8
                mov     rsi, rdx
                mov     [rbp+arg_8], edi
                sbb     r14d, r14d
                mov     [rbp+var_20], edi
                mov     [rbp+var_18], rdi
                mov     r13, rcx
                mov     [r15], dil
                test    rdx, rdx
                jz      loc_140846446

loc_140768CD3:                          ; CODE XREF: sub_140768C8C+DD7FC↓j
                mov     edx, 200h
                mov     ecx, 1
                mov     r8d, 75737050h
                mov     [rbp+arg_8], edx
                call    ExAllocatePoolWithTag
                mov     r12, rax
                test    rax, rax
                jz      loc_14084648D
                mov     rdx, [r13+30h]
                lea     rax, [rbp+arg_8]
                mov     rcx, cs:qword_140CF4378
                lea     r9d, [r14+3]
                mov     dword ptr [rsp+60h+var_28], edi
                mov     r8, rsi
                mov     [rsp+60h+var_30], rax
                lea     rax, [rbp+var_20]
                mov     [rsp+60h+var_38], r12
                mov     [rsp+60h+var_40], rax
                call    sub_14062BA8C
                mov     edi, eax
                cmp     eax, 0C0000023h
                jz      loc_140768E41

loc_140768D36:                          ; CODE XREF: sub_140768C8C+214↓j
                xor     r8d, r8d
                test    edi, edi
                js      loc_140768E2C
                cmp     [rbp+var_20], 7
                jnz     loc_140846516
                or      r13, 0FFFFFFFFFFFFFFFFh
                test    rbx, rbx
                jz      loc_1408464B0
                mov     eax, [rbp+arg_8]
                cmp     [rbp+arg_18], eax
                jnz     loc_1408464B0
                mov     r14, rbx
                mov     rsi, r12
                cmp     [rbx], r8w
                jz      short loc_140768DDB

loc_140768D70:                          ; CODE XREF: sub_140768C8C+14D↓j
                cmp     [rsi], r8w
                jz      short loc_140768DDB
                mov     rcx, r13

loc_140768D79:                          ; CODE XREF: sub_140768C8C+F5↓j
                inc     rcx
                cmp     [r14+rcx*2], r8w
                jnz     short loc_140768D79
                inc     ecx
                mov     rax, r13

loc_140768D88:                          ; CODE XREF: sub_140768C8C+104↓j
                inc     rax
                cmp     [rsi+rax*2], r8w
                jnz     short loc_140768D88
                inc     eax
                cmp     ecx, eax
                jnz     loc_140846497
                mov     [rbp+arg_28], rcx
                mov     rdx, rcx
                mov     rcx, r14
                mov     [rbp+var_10], rax
                mov     r9d, eax
                mov     byte ptr [rsp+60h+var_40], 1
                mov     r8, rsi
                call    RtlCompareUnicodeStrings
                xor     r8d, r8d
                test    eax, eax
                jnz     loc_140846497
                mov     rax, [rbp+arg_28]
                lea     r14, [r14+rax*2]
                mov     rax, [rbp+var_10]
                lea     rsi, [rsi+rax*2]
                cmp     [r14], r8w
                jnz     short loc_140768D70

loc_140768DDB:                          ; CODE XREF: sub_140768C8C+E2↑j
                                        ; sub_140768C8C+E8↑j ...
                mov     al, [r15]
                test    al, al
                jnz     loc_1408464B4
                cmp     [r14], r8w
                jnz     loc_1408464A0
                cmp     [rsi], r8w
                jnz     loc_1408464A0

loc_140768DFA:                          ; CODE XREF: sub_140768C8C+1A6↓j
                                        ; sub_140768C8C+1AE↓j ...
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_140768E04:                          ; CODE XREF: sub_140768C8C+DD7F0↓j
                                        ; sub_140768C8C+DD806↓j
                mov     rcx, [rbp+var_18]
                test    rcx, rcx
                jnz     loc_140846552

loc_140768E11:                          ; CODE XREF: sub_140768C8C+DD8CC↓j
                mov     rbx, [rsp+60h+arg_0]
                mov     eax, edi
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

loc_140768E2C:                          ; CODE XREF: sub_140768C8C+AF↑j
                cmp     edi, 0C0000225h
                jnz     short loc_140768DFA
                mov     edi, r8d
                test    rbx, rbx
                jz      short loc_140768DFA
                jmp     loc_140846520
; ---------------------------------------------------------------------------

loc_140768E41:                          ; CODE XREF: sub_140768C8C+A4↑j
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag
                mov     edx, [rbp+arg_8]
                mov     ecx, 1
                mov     r8d, 75737050h
                call    ExAllocatePoolWithTag
                mov     r12, rax
                xor     eax, eax
                test    r12, r12
                jz      loc_14084648D
                mov     rdx, [r13+30h]
                lea     r9d, [r14+3]
                mov     rcx, cs:qword_140CF4378
                mov     r8, rsi
                mov     dword ptr [rsp+60h+var_28], eax
                lea     rax, [rbp+arg_8]
                mov     [rsp+60h+var_30], rax
                lea     rax, [rbp+var_20]
                mov     [rsp+60h+var_38], r12
                mov     [rsp+60h+var_40], rax
                call    sub_14062BA8C
                mov     edi, eax
                jmp     loc_140768D36
sub_140768C8C   endp

; ---------------------------------------------------------------------------
algn_140768EA5:                         ; DATA XREF: .rdata:0000000140093C20↑o
                                        ; .pdata:000000014010A3D0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140768EB0   proc near               ; DATA XREF: .pdata:000000014010A3DC↑o
                                        ; sub_140A5531C+18↓o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, r8
                mov     rsi, rcx
                lea     rdx, [r8+10h]
                mov     r8b, 1
                lea     rcx, [rdi+10h]
                call    RtlCompareUnicodeString
                test    eax, eax
                jns     short loc_140768EEF

loc_140768EDC:                          ; CODE XREF: sub_140768EB0+55↓j
                xor     eax, eax

loc_140768EDE:                          ; CODE XREF: sub_140768EB0+46↓j
                                        ; sub_140768EB0+5E↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140768EEF:                          ; CODE XREF: sub_140768EB0+2A↑j
                jle     short loc_140768EF8

loc_140768EF1:                          ; CODE XREF: sub_140768EB0+57↓j
                mov     eax, 1
                jmp     short loc_140768EDE
; ---------------------------------------------------------------------------

loc_140768EF8:                          ; CODE XREF: sub_140768EB0:loc_140768EEF↑j
                cmp     qword ptr [rsi+60h], 0
                jnz     short loc_140768F09
                mov     eax, [rdi+20h]
                cmp     eax, [rbx+20h]
                jb      short loc_140768EDC
                ja      short loc_140768EF1

loc_140768F09:                          ; CODE XREF: sub_140768EB0+4D↑j
                mov     eax, 2
                jmp     short loc_140768EDE
sub_140768EB0   endp

; ---------------------------------------------------------------------------
byte_140768F10  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010A3DC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=2F0h

sub_140768F18   proc near               ; CODE XREF: sub_1405DF3FC+B0F↑p
                                        ; DATA XREF: .rdata:0000000140093C58↑o ...

var_3D0         = qword ptr -3D0h
var_3C8         = qword ptr -3C8h
var_3C0         = qword ptr -3C0h
var_3B8         = qword ptr -3B8h
var_3B0         = dword ptr -3B0h
var_3A8         = qword ptr -3A8h
var_3A0         = dword ptr -3A0h
var_390         = byte ptr -390h
var_38C         = dword ptr -38Ch
var_388         = dword ptr -388h
var_384         = dword ptr -384h
var_380         = dword ptr -380h
var_37C         = dword ptr -37Ch
var_378         = dword ptr -378h
var_374         = dword ptr -374h
var_370         = dword ptr -370h
var_360         = byte ptr -360h
var_1D0         = byte ptr -1D0h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014084655E SIZE 00000024 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-2C0h]
                sub     rsp, 3C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+2F0h+var_40], rax
                xor     r13d, r13d
                lea     rax, [rsp+3F0h+var_378]
                mov     [rsp+3F0h+var_3C8], rax
                lea     r9, [rsp+3F0h+var_384]
                lea     rax, [rsp+3F0h+var_374]
                mov     [rsp+3F0h+var_380], r13d
                mov     [rsp+3F0h+var_3D0], rax
                mov     r12, r8
                mov     r15, rdx
                mov     [rsp+3F0h+var_37C], r13d
                mov     r14, rcx
                mov     [rsp+3F0h+var_388], r13d
                mov     dil, r13b
                mov     [rsp+3F0h+var_390], r13b
                mov     [rsp+3F0h+var_384], r13d
                mov     [rsp+3F0h+var_374], r13d
                mov     [rsp+3F0h+var_378], r13d
                call    sub_1405E170C
                test    eax, eax
                js      loc_140769088
                mov     bl, byte ptr [rsp+3F0h+var_384]
                lea     rax, [rsp+3F0h+var_38C]
                mov     dword ptr [rsp+3F0h+var_3B8], r13d
                lea     r9d, [r13+10h]
                mov     [rsp+3F0h+var_3C0], rax
                mov     r8, r12
                lea     rax, [rsp+3F0h+var_388]
                mov     [rsp+3F0h+var_38C], 4
                mov     [rsp+3F0h+var_3C8], rax
                mov     rdx, r15
                lea     rax, [rsp+3F0h+var_37C]
                mov     rcx, r14
                mov     [rsp+3F0h+var_3D0], rax
                call    sub_14062BA8C
                mov     ecx, [rsp+3F0h+var_388]
                test    eax, eax
                cmovs   ecx, r13d
                mov     sil, cl
                mov     [rsp+3F0h+var_388], ecx
                mov     al, cl
                and     sil, 4
                and     al, 80h
                and     bl, 8
                jz      loc_140769159

loc_140769003:                          ; CODE XREF: sub_140768F18+24A↓j
                test    al, al
                mov     [rsp+3F0h+var_3A0], r13d
                mov     ecx, 1
                lea     rax, [rsp+3F0h+var_38C]
                mov     [rsp+3F0h+var_3A8], rax
                setz    bl
                mov     [rsp+3F0h+var_3B0], ecx
                lea     rax, [rsp+3F0h+var_390]
                mov     [rsp+3F0h+var_3B8], rax
                mov     r8d, ecx
                lea     rax, [rsp+3F0h+var_380]
                mov     [rsp+3F0h+var_38C], ecx
                mov     [rsp+3F0h+var_3C0], rax
                mov     r9, r12
                lea     rax, qword_14000C4D8
                mov     rdx, r15
                mov     [rsp+3F0h+var_3C8], rax
                mov     rcx, r14
                mov     [rsp+3F0h+var_3D0], r13
                mov     dil, bl
                call    sub_1406CC6BC
                test    eax, eax
                jz      loc_14084655E

loc_140769065:                          ; CODE XREF: sub_140768F18+DD64B↓j
                                        ; sub_140768F18+DD656↓j ...
                test    sil, sil
                jnz     short loc_140769088
                test    dil, dil
                jz      short loc_140769088
                mov     dil, r13b
                mov     r12d, 800h
                mov     r8, r15
                mov     ebx, 0C8h
                jmp     loc_140769130
; ---------------------------------------------------------------------------

loc_140769085:                          ; CODE XREF: sub_140768F18+1BA↓j
                                        ; sub_140768F18+20E↓j
                mov     dil, sil

loc_140769088:                          ; CODE XREF: sub_140768F18+82↑j
                                        ; sub_140768F18+150↑j ...
                mov     al, dil
                mov     rcx, [rbp+2F0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+3F0h+arg_18]
                add     rsp, 3C0h
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

loc_1407690B6:                          ; CODE XREF: sub_140768F18+236↓j
                lea     r9, [rbp+2F0h+var_370]
                mov     [rbp+2F0h+var_370], ebx
                lea     r8, [rbp+2F0h+var_360]
                mov     rcx, r14
                lea     rdx, [rbp+2F0h+var_1D0]
                call    sub_140711594
                test    eax, eax
                js      short loc_140769085
                mov     dword ptr [rsp+3F0h+var_3B8], r13d
                lea     rax, [rsp+3F0h+var_38C]
                mov     [rsp+3F0h+var_3C0], rax
                lea     rdx, [rbp+2F0h+var_360]
                lea     rax, [rsp+3F0h+var_388]
                mov     [rsp+3F0h+var_38C], 4
                mov     [rsp+3F0h+var_3C8], rax
                mov     r9d, 10h
                lea     rax, [rsp+3F0h+var_37C]
                xor     r8d, r8d
                mov     rcx, r14
                mov     [rsp+3F0h+var_3D0], rax
                call    sub_14062BA8C
                mov     esi, [rsp+3F0h+var_388]
                test    eax, eax
                cmovs   esi, r13d
                mov     [rsp+3F0h+var_388], esi
                and     sil, 4
                jnz     loc_140769085
                lea     r8, [rbp+2F0h+var_360]

loc_140769130:                          ; CODE XREF: sub_140768F18+168↑j
                mov     dword ptr [rsp+3F0h+var_3C8], r12d
                lea     rcx, [rbp+2F0h+var_1D0]
                xor     r9d, r9d
                mov     [rsp+3F0h+var_3D0], r13
                mov     rdx, rbx
                call    sub_140203D40
                test    eax, eax
                jns     loc_1407690B6
                jmp     loc_140769088
; ---------------------------------------------------------------------------

loc_140769159:                          ; CODE XREF: sub_140768F18+E5↑j
                test    cl, 2
                jz      loc_140769088
                jmp     loc_140769003
; } // starts at 140768F18
sub_140768F18   endp

; ---------------------------------------------------------------------------
algn_140769167:                         ; DATA XREF: .rdata:0000000140093C58↑o
                                        ; .pdata:000000014010A3E8↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140769170   proc near               ; CODE XREF: sub_140735D48+1E8↑p
                                        ; sub_140735D48+1F7↑p
                                        ; DATA XREF: ...

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_48          = word ptr -48h
var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_s0          = byte ptr  0
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_18          = qword ptr  38h

                mov     [rsp-18h+arg_0], rbx
                mov     [rsp-18h+arg_8], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+arg_18], 0
                mov     ebx, edx
                and     [rbp+var_50], 0
                xor     edx, edx
                and     qword ptr [r9], 0
                mov     rdi, rcx
                lea     rcx, [rbp+var_48]
                mov     rsi, r9
                lea     r8d, [rdx+48h]
                call    memset
                mov     eax, cs:dword_140D2E6B0
                lea     rdx, [rbp+var_48]
                mov     [rbp+var_38], eax
                mov     r14d, 0C00000BBh
                lea     rax, [rbp+arg_18]
                mov     [rbp+var_48], 0C1Bh
                xor     r9d, r9d
                mov     [rsp+80h+var_60], rax
                mov     r8d, r14d
                mov     [rbp+var_40], ebx
                mov     rcx, rdi
                call    sub_1406703BC
                mov     rbx, [rbp+arg_18]
                mov     edi, eax
                test    rbx, rbx
                cmovz   edi, r14d
                test    edi, edi
                jns     short loc_14076920C

loc_1407691F1:                          ; CODE XREF: sub_140769170+AD↓j
                                        ; sub_140769170+B6↓j ...
                lea     r11, [rsp+80h+var_s0]
                mov     eax, edi
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14076920C:                          ; CODE XREF: sub_140769170+7F↑j
                lea     rdx, [rbp+var_50]
                mov     [rsi], rbx
                mov     rcx, rbx
                call    sub_140769240
                test    eax, eax
                js      short loc_1407691F1
                mov     rcx, [rbp+var_50]
                test    rcx, rcx
                jz      short loc_1407691F1
                mov     [rsi], rcx
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_1407691F1
sub_140769170   endp

; ---------------------------------------------------------------------------
algn_140769237:                         ; DATA XREF: .pdata:000000014010A3F4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140769240   proc near               ; CODE XREF: sub_140769170+A6↑p
                                        ; DATA XREF: .rdata:0000000140093CA0↑o ...

var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140846582 SIZE 00000036 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0D0h
                xor     r12d, r12d
                xorps   xmm0, xmm0
                mov     [rdx], r12
                mov     rdi, rcx
                xor     edx, edx
                mov     [rbp+57h+var_A0], r12
                lea     rcx, [rbp+57h+var_90]
                mov     [rbp+57h+arg_10], r12d
                movups  [rbp+57h+var_90], xmm0
                mov     [rbp+57h+var_80], r12
                mov     r14d, r12d
                movups  [rbp+57h+var_60], xmm0
                mov     [rbp+57h+var_98], r12
                mov     r13d, r12d
                movups  [rbp+57h+var_50], xmm0
                mov     esi, r12d
                mov     [rbp+57h+arg_18], r12
                movups  [rbp+57h+var_40], xmm0
                movups  [rbp+57h+var_B0], xmm0
                call    RtlInitUnicodeString
                mov     rdx, rdi
                lea     rcx, [rbp+57h+var_B0]
                call    RtlInitUnicodeStringEx
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407692D5
                mov     r8b, 1
                lea     rdx, [rbp+57h+var_B0]
                lea     rcx, word_140D2E9B0
                call    RtlPrefixUnicodeString
                test    al, al
                jnz     short loc_14076931A
                mov     ebx, r12d

loc_1407692D5:                          ; CODE XREF: sub_140769240+79↑j
                                        ; sub_140769240+3A3↓j ...
                lea     rcx, [rbp+57h+var_90]
                call    RtlFreeUnicodeString
                test    r14, r14
                jnz     loc_1407695F8

loc_1407692E7:                          ; CODE XREF: sub_140769240+3C2↓j
                mov     rcx, [rbp+57h+arg_18]
                test    rcx, rcx
                jnz     loc_140769607

loc_1407692F4:                          ; CODE XREF: sub_140769240+3CC↓j
                test    ebx, ebx
                js      loc_14084659F

loc_1407692FC:                          ; CODE XREF: sub_140769240+DD362↓j
                                        ; sub_140769240+DD373↓j
                mov     eax, ebx
                mov     rbx, [rsp+100h+arg_0]
                add     rsp, 0D0h
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

loc_14076931A:                          ; CODE XREF: sub_140769240+90↑j
                movzx   edx, word ptr [rbp+57h+var_B0]
                mov     ecx, 1
                add     rdx, 2
                mov     r8d, 20207050h
                call    ExAllocatePoolWithTag
                mov     [rbp+57h+var_68], rax
                mov     rbx, rax
                test    rax, rax
                jz      loc_140846582
                movzx   r8d, word ptr [rbp+57h+var_B0]
                mov     rdx, rdi
                mov     rcx, rax
                call    memmove
                movzx   eax, word ptr [rbp+57h+var_B0]
                mov     edi, 2Ch ; ','
                shr     rax, 1
                mov     edx, edi
                mov     rcx, rbx
                mov     [rbx+rax*2], r12w
                call    wcschr
                mov     r15, rax
                test    rax, rax
                jz      loc_1407695D2
                add     r15, 2
                mov     [rax], r12w
                mov     rcx, r15
                mov     edx, edi
                call    wcschr
                mov     rdi, rax
                test    rax, rax
                jnz     loc_140769611

loc_140769397:                          ; CODE XREF: sub_140769240+3D9↓j
                mov     r8d, 0Ah
                lea     rdx, [rbp+57h+var_A0]
                mov     rcx, r15
                call    _wcstoi64
                mov     [rbp+57h+var_78], rax
                mov     rax, [rbp+57h+var_A0]
                cmp     [rax], r12w
                jnz     loc_1407695D2
                mov     rdx, rbx
                lea     rcx, [rbp+57h+var_B0]
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_B0]
                mov     dword ptr [rbp+57h+var_60], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+57h+var_50], rax
                lea     r8, [rbp+57h+var_60]
                mov     qword ptr [rbp+57h+var_60+8], r12
                mov     edx, 20019h
                mov     dword ptr [rbp+57h+var_50+8], 240h
                lea     rcx, [rbp+57h+arg_18]
                movdqu  [rbp+57h+var_40], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1407695D5
                mov     rcx, [rbp+57h+arg_18]
                lea     rax, [rbp+57h+arg_10]
                xor     r9d, r9d
                mov     [rsp+100h+var_E0], rax
                xor     r8d, r8d
                xor     edx, edx
                call    ZwQueryKey
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jnz     loc_1407695D5
                mov     edx, [rbp+57h+arg_10]
                mov     ecx, 1
                mov     r8d, 20207050h
                call    ExAllocatePoolWithTag
                mov     r13, rax
                test    rax, rax
                jz      loc_14084658C
                mov     r9d, [rbp+57h+arg_10]
                lea     rax, [rbp+57h+arg_10]
                mov     rcx, [rbp+57h+arg_18]
                mov     r8, r13
                xor     edx, edx
                mov     [rsp+100h+var_E0], rax
                call    ZwQueryKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1407695D5
                movzx   eax, word ptr [r13+0Ch]
                lea     r8, [rbp+57h+var_90]
                mov     rdx, [rbp+57h+arg_18]
                lea     rcx, [rbp+57h+var_B0]
                mov     word ptr [rbp+57h+var_B0], ax
                movzx   eax, word ptr [r13+0Ch]
                mov     word ptr [rbp+57h+var_B0+2], ax
                lea     rax, [r13+10h]
                mov     qword ptr [rbp+57h+var_B0+8], rax
                call    sub_14073B244
                mov     ebx, eax
                test    eax, eax
                js      loc_1407695D5
                lea     rax, aSystemroot_0 ; "\\SystemRoot\\"
                mov     dword ptr [rbp+57h+var_B0], 1A0018h
                mov     r8b, 1
                mov     qword ptr [rbp+57h+var_B0+8], rax
                lea     rdx, [rbp+57h+var_90]
                lea     rcx, [rbp+57h+var_B0]
                call    RtlPrefixUnicodeString
                test    al, al
                jz      loc_1407695D5
                mov     rax, qword ptr [rbp+57h+var_90+8]
                lea     r8, [rbp+57h+var_98]
                movzx   r12d, word ptr [rbp+57h+var_90]
                add     rax, 18h
                mov     edx, dword ptr [rbp+57h+var_78]
                sub     r12w, 18h
                mov     rcx, [rbp+57h+arg_18]
                mov     [rbp+57h+var_70], rax
                call    sub_140769624
                xor     r8d, r8d
                mov     ebx, eax
                test    eax, eax
                js      loc_140846596
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     rcx, rdx

loc_140769509:                          ; CODE XREF: sub_140769240+2D1↓j
                inc     rcx
                cmp     [r15+rcx*2], r8w
                jnz     short loc_140769509
                mov     r14, [rbp+57h+var_98]
                mov     rax, rdx

loc_14076951A:                          ; CODE XREF: sub_140769240+2E2↓j
                inc     rax
                cmp     [r14+rax*2], r8w
                jnz     short loc_14076951A
                lea     rbx, [rax+5]
                movzx   eax, r12w
                add     rbx, rcx
                xor     r12d, r12d
                lea     rbx, [rax+rbx*2]
                test    rdi, rdi
                jz      short loc_14076954D

loc_14076953B:                          ; CODE XREF: sub_140769240+303↓j
                inc     rdx
                cmp     [rdi+rdx*2], r12w
                jnz     short loc_14076953B
                lea     rbx, [rbx+rdx*2]
                add     rbx, 6

loc_14076954D:                          ; CODE XREF: sub_140769240+2F9↑j
                mov     r8d, 20207050h
                mov     rdx, rbx
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_14084658C
                mov     rax, [rbp+57h+var_70]
                lea     r9, [rbp+57h+var_80]
                mov     [rsp+100h+var_C0], r14
                lea     r8, [rbp+57h+var_A0]
                mov     [rsp+100h+var_C8], r15
                mov     rdx, rbx
                mov     [rsp+100h+var_D0], rax
                mov     rcx, rsi
                lea     rax, aSSS       ; "@%s,#%s;%s"
                mov     [rsp+100h+var_D8], rax
                mov     [rsp+100h+var_E0], r12
                call    sub_140206584
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407695D5
                test    rdi, rdi
                jz      short loc_1407695CB
                mov     rdx, [rbp+57h+var_80]
                lea     r8, aS_1        ; ";(%s)"
                mov     rcx, [rbp+57h+var_A0]
                mov     r9, rdi
                call    sub_14021C308
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407695D5

loc_1407695CB:                          ; CODE XREF: sub_140769240+36C↑j
                mov     rax, [rbp+57h+arg_8]
                mov     [rax], rsi

loc_1407695D2:                          ; CODE XREF: sub_140769240+133↑j
                                        ; sub_140769240+175↑j
                mov     ebx, r12d

loc_1407695D5:                          ; CODE XREF: sub_140769240+1BF↑j
                                        ; sub_140769240+1E6↑j ...
                mov     rcx, [rbp+57h+var_68]
                xor     edx, edx
                call    ExFreePoolWithTag
                test    r13, r13
                jz      loc_1407692D5
                xor     edx, edx
                mov     rcx, r13
                call    ExFreePoolWithTag
                jmp     loc_1407692D5
; ---------------------------------------------------------------------------

loc_1407695F8:                          ; CODE XREF: sub_140769240+A1↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     loc_1407692E7
; ---------------------------------------------------------------------------

loc_140769607:                          ; CODE XREF: sub_140769240+AE↑j
                call    ZwClose
                jmp     loc_1407692F4
; ---------------------------------------------------------------------------

loc_140769611:                          ; CODE XREF: sub_140769240+151↑j
                mov     [rax], r12w
                add     rdi, 2
                jmp     loc_140769397
sub_140769240   endp

; ---------------------------------------------------------------------------
byte_14076961E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140093CA0↑o
                                        ; .pdata:000000014010A400↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140769624   proc near               ; CODE XREF: sub_140769240+2B0↑p
                                        ; DATA XREF: .rdata:0000000140093CCC↑o ...

var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 00000001408465B8 SIZE 00000054 BYTES

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                xorps   xmm0, xmm0
                mov     esi, edx
                mov     rbx, rcx
                xorps   xmm1, xmm1
                xor     r12d, r12d
                lea     rcx, [rbp+var_20]
                xor     edx, edx
                mov     [rbp+arg_18], r12
                movups  [rbp+var_10], xmm0
                mov     r15, r8
                movups  [rbp+var_20], xmm1
                movups  [rbp+var_30], xmm0
                call    RtlInitUnicodeString
                xor     edx, edx
                lea     rcx, [rbp+var_30]
                call    RtlInitUnicodeString
                lea     rdx, [rbp+var_20]
                mov     rcx, rbx
                mov     edi, r12d
                call    sub_140739B70
                mov     ebx, eax
                test    eax, eax
                js      loc_140769750
                lea     rcx, [rbp+var_20]
                call    sub_140739AA8
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408465B8
                mov     rcx, [rdi+18h]
                lea     rax, [rbp+arg_18]
                mov     r9d, esi
                mov     [rsp+60h+var_40], rax
                xor     r8d, r8d
                lea     edx, [r12+0Bh]
                call    RtlFindMessage
                mov     ebx, eax
                test    eax, eax
                js      loc_140769750
                mov     rdx, [rbp+arg_18]
                movzx   eax, word ptr [rdx+2]
                add     rdx, 4
                test    al, 1
                jz      loc_1408465C2
                lea     rcx, [rbp+var_30]
                call    RtlCreateUnicodeString
                test    al, al
                jz      loc_14076978B

loc_1407696EE:                          ; CODE XREF: sub_140769624+DCFE3↓j
                movzx   eax, word ptr [rbp+var_30]
                mov     rsi, qword ptr [rbp+var_30+8]
                cmp     eax, 4
                jb      short loc_140769715
                cmp     word ptr [rax+rsi-4], 0Dh
                jnz     short loc_140769715
                mov     edx, 0FFFCh
                mov     [rax+rsi-4], r12w
                add     ax, dx
                mov     word ptr [rbp+var_30], ax

loc_140769715:                          ; CODE XREF: sub_140769624+D5↑j
                                        ; sub_140769624+DD↑j
                movzx   ebx, ax
                mov     ecx, 1
                mov     r8d, 20207050h
                lea     rdx, [rbx+2]
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      short loc_14076978B
                mov     r8d, ebx
                mov     rdx, rsi
                mov     rcx, rax
                call    memmove
                shr     rbx, 1
                mov     [r15], r14
                mov     [r14+rbx*2], r12w
                mov     ebx, r12d

loc_140769750:                          ; CODE XREF: sub_140769624+63↑j
                                        ; sub_140769624+9F↑j ...
                lea     rcx, [rbp+var_20]
                call    RtlFreeUnicodeString
                lea     rcx, [rbp+var_30]
                call    RtlFreeUnicodeString
                test    rdi, rdi
                jz      short loc_14076976F
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_14076976F:                          ; CODE XREF: sub_140769624+141↑j
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076978B:                          ; CODE XREF: sub_140769624+C4↑j
                                        ; sub_140769624+10E↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_140769750
sub_140769624   endp

; ---------------------------------------------------------------------------
algn_140769792:                         ; DATA XREF: .rdata:0000000140093CCC↑o
                                        ; .pdata:000000014010A40C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140769798   proc near               ; CODE XREF: sub_1402FAD64+DB↑p
                                        ; sub_140692964+1822A4↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014084660C SIZE 00000068 BYTES

                test    rdx, rdx
                jz      short locret_14076980A
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                xor     eax, eax
                mov     esi, 0FFFFFFFFh
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                mov     eax, [rcx+58h]
                mov     rdi, rdx
                mov     rbx, rcx
                movups  [rsp+48h+var_28], xmm0
                cmp     rax, rsi
                jnz     loc_14084660C

loc_1407697D2:                          ; CODE XREF: sub_140769798+DCEBB↓j
                lea     rcx, [rdi+48h]
                call    sub_140769828
                mov     rcx, [rdi+10h]
                test    rcx, rcx
                jnz     short loc_14076980C

loc_1407697E4:                          ; CODE XREF: sub_140769798+86↓j
                mov     rbx, [rdi+68h]

loc_1407697E8:                          ; CODE XREF: sub_140769798+DCED7↓j
                test    rbx, rbx
                jnz     loc_140846658
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi

locret_14076980A:                       ; CODE XREF: sub_140769798+3↑j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14076980C:                          ; CODE XREF: sub_140769798+4A↑j
                                        ; sub_140769798+84↓j
                mov     rbx, [rcx]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     rcx, rbx
                test    rbx, rbx
                jnz     short loc_14076980C
                jmp     short loc_1407697E4
sub_140769798   endp

; ---------------------------------------------------------------------------
byte_140769820  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140093D1C↑o
                                        ; .pdata:000000014010A418↑o

; =============== S U B R O U T I N E =======================================


sub_140769828   proc near               ; CODE XREF: sub_140769798+3E↑p
                                        ; sub_140692964+181FB2↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+10h]
                test    rcx, rcx
                jz      short loc_140769849
                mov     edx, 4C617652h
                call    ExFreePoolWithTag
                and     qword ptr [rbx+10h], 0

loc_140769849:                          ; CODE XREF: sub_140769828+10↑j
                mov     rcx, [rbx+18h]
                test    rcx, rcx
                jnz     short loc_140769859

loc_140769852:                          ; CODE XREF: sub_140769828+3B↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140769859:                          ; CODE XREF: sub_140769828+28↑j
                call    sub_14078C554
                and     qword ptr [rbx+18h], 0
                jmp     short loc_140769852
sub_140769828   endp

; ---------------------------------------------------------------------------
byte_140769865  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010A424↑o

; =============== S U B R O U T I N E =======================================


sub_14076986C   proc near               ; CODE XREF: sub_14060AC40+421↑p
                                        ; sub_14077F270+4B↓p
                                        ; DATA XREF: ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140846674 SIZE 00000042 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                and     qword ptr [rax+8], 0
                mov     r14d, r9d
                and     qword ptr [rax-38h], 0
                mov     r15, r8
                mov     rdi, gs:188h
                mov     r12, rdx
                mov     r13, [rsp+68h+arg_20]
                mov     rsi, rcx

loc_1407698AF:                          ; CODE XREF: sub_14076986C+DCE32↓j
                dec     word ptr [rdi+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C45920
                call    ExAcquireResourceSharedLite
                mov     rbx, [rsi+110h]
                test    rbx, rbx
                jz      short loc_1407698E7
                mov     eax, 1
                lock xadd [rbx-18h], rax
                test    rax, rax
                jg      short loc_1407698E7
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1407698E7:                          ; CODE XREF: sub_14076986C+62↑j
                                        ; sub_14076986C+72↑j
                lea     rcx, unk_140C45920
                call    ExReleaseResourceLite
                mov     rcx, rdi
                call    sub_14021E1F0
                lea     r9, [rsp+68h+arg_0]
                mov     [rsp+68h+var_40], r13
                mov     r8, r15
                mov     [rsp+68h+arg_0], rbx
                mov     rdx, r12
                mov     [rsp+68h+var_48], r14d
                xor     ecx, ecx
                call    SeSetSecurityDescriptorInfo
                mov     ebp, eax
                test    eax, eax
                js      loc_1408466A3
                mov     rcx, [rsp+68h+arg_0]
                lea     rdx, [rsp+68h+var_38]
                mov     r8d, 1
                call    ObLogSecurityDescriptor
                mov     rcx, [rsp+68h+arg_0]
                xor     edx, edx
                mov     ebp, eax
                call    ExFreePoolWithTag
                test    ebp, ebp
                js      loc_1408466AC
                dec     word ptr [rdi+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C45920
                call    ExAcquireResourceExclusiveLite
                lea     rcx, unk_140C45920
                cmp     [rsi+110h], rbx
                jnz     loc_140846674
                mov     rax, [rsp+68h+var_38]
                mov     [rsi+110h], rax
                mov     rax, [rsi+138h]
                btr     dword ptr [rax+20h], 0Bh
                call    ExReleaseResourceLite
                mov     rcx, rdi
                call    sub_14021E1F0
                mov     edx, 2

loc_1407699A4:                          ; CODE XREF: sub_14076986C+DCE45↓j
                mov     rcx, rbx
                call    ObDereferenceSecurityDescriptor

loc_1407699AC:                          ; CODE XREF: sub_14076986C+DCE3A↓j
                lea     r11, [rsp+68h+var_28]
                mov     eax, ebp
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14076986C   endp

byte_1407699CD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140093D4C↑o
                                        ; .pdata:000000014010A430↑o

; =============== S U B R O U T I N E =======================================


sub_1407699D4   proc near               ; CODE XREF: sub_140735D48+5F1↑p
                                        ; sub_14073C170+199↑p ...

var_28          = xmmword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r15d, r15d
                mov     [r11-38h], rcx
                xorps   xmm0, xmm0
                mov     [r11+8], r15d
                mov     eax, r15d
                mov     [r8], r15d
                movups  [rsp+58h+var_28], xmm0
                mov     ebp, r15d
                mov     [r11-30h], rdx
                mov     esi, r15d
                lea     rdi, [r11-38h]
                mov     r14, r8

loc_140769A16:                          ; CODE XREF: sub_1407699D4+A2↓j
                mov     rbx, [rdi]
                test    rbx, rbx
                jz      short loc_140769A69

loc_140769A1E:                          ; CODE XREF: sub_1407699D4+93↓j
                cmp     [rbx], r15w
                jz      short loc_140769A69
                mov     rdx, rbx
                lea     rcx, [rsp+58h+var_28]
                call    RtlInitUnicodeStringEx
                test    eax, eax
                js      short loc_140769A7B
                lea     r9, [rsp+58h+arg_0]
                xor     r8d, r8d
                mov     dl, 1
                lea     rcx, [rsp+58h+var_28]
                call    RtlHashUnicodeString
                test    eax, eax
                js      short loc_140769A7B
                add     ebp, [rsp+58h+arg_0]
                or      rcx, 0FFFFFFFFFFFFFFFFh

loc_140769A55:                          ; CODE XREF: sub_1407699D4+89↓j
                inc     rcx
                cmp     [rbx+rcx*2], r15w
                jnz     short loc_140769A55
                lea     rbx, [rbx+rcx*2]
                add     rbx, 2
                jnz     short loc_140769A1E

loc_140769A69:                          ; CODE XREF: sub_1407699D4+48↑j
                                        ; sub_1407699D4+4E↑j
                test    eax, eax
                js      short loc_140769A7B
                inc     esi
                add     rdi, 8
                cmp     esi, 2
                jb      short loc_140769A16
                mov     [r14], ebp

loc_140769A7B:                          ; CODE XREF: sub_1407699D4+5F↑j
                                        ; sub_1407699D4+77↑j ...
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
sub_1407699D4   endp

algn_140769A95:                         ; DATA XREF: .pdata:000000014010A43C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140769AA0   proc near               ; DATA XREF: .rdata:0000000140093D7C↑o
                                        ; .pdata:000000014010A448↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408466B6 SIZE 0000005A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, ds:0FFFFF78000000008h
                xor     r14b, r14b
                mov     rsi, rdx
                mov     rdi, rcx
                mov     rbx, rdx
                xor     bpl, bpl
                mov     r13d, 1
                lea     r15, [rax+989680h]

loc_140769AE3:                          ; CODE XREF: sub_140769AA0+CB↓j
                                        ; sub_140769AA0+154↓j
                cmp     rbx, rsi
                jb      loc_140769B70
                cmp     qword ptr [rbx+20h], 0
                jz      short loc_140769B70
                mov     rax, [rdi+0E0h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                test    eax, eax
                js      loc_140769BBC
                test    r14b, r14b
                jnz     loc_140769BF9

loc_140769B16:                          ; CODE XREF: sub_140769AA0+A4↓j
                                        ; sub_140769AA0+194↓j ...
                mov     rax, [rdi+0F0h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                test    al, al
                jz      loc_140769BDC

loc_140769B30:                          ; CODE XREF: sub_140769AA0+DCC3E↓j
                mov     rax, [rdi+0F8h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                test    al, al
                jz      short loc_140769B16
                mov     rax, [rbx+28h]
                cmp     qword ptr [rax+10h], 0
                jz      loc_1408466E3
                mov     rax, [rdi+100h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0

loc_140769B67:                          ; CODE XREF: sub_140769AA0+DCC4E↓j
                add     rbx, 50h ; 'P'
                jmp     loc_140769AE3
; ---------------------------------------------------------------------------

loc_140769B70:                          ; CODE XREF: sub_140769AA0+46↑j
                                        ; sub_140769AA0+51↑j
                lea     rbx, [rsi+20h]
                jmp     short loc_140769BA5
; ---------------------------------------------------------------------------

loc_140769B76:                          ; CODE XREF: sub_140769AA0+10B↓j
                mov     rcx, [rbx+8]
                mov     r8, [rdx+48h]
                mov     rax, [rdi+80h]
                mov     rdx, [rbx-20h]
                mov     rcx, [rcx+28h]
                call    sub_1404079D0
                mov     rax, [rbx+8]
                mov     rcx, [rbx]
                lea     rbx, [rbx+50h]
                mov     rax, [rax+28h]
                mov     [rcx+50h], rax

loc_140769BA5:                          ; CODE XREF: sub_140769AA0+D4↑j
                mov     rdx, [rbx]
                test    rdx, rdx
                jnz     short loc_140769B76
                xor     edi, edi

loc_140769BAF:                          ; CODE XREF: sub_140769AA0+1DA↓j
                cmp     qword ptr [rsi+20h], 0
                jnz     loc_140769C4C

loc_140769BBA:                          ; CODE XREF: sub_140769AA0+1C4↓j
                mov     eax, edi

loc_140769BBC:                          ; CODE XREF: sub_140769AA0+67↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140769BDC:                          ; CODE XREF: sub_140769AA0+8A↑j
                                        ; sub_140769AA0+16A↓j ...
                test    byte ptr [rbx+40h], 20h
                movzx   ebp, bpl
                cmovnz  ebp, r13d
                cmp     rbx, rsi
                jz      short loc_140769C69
                mov     r14b, r13b
                sub     rbx, 50h ; 'P'
                jmp     loc_140769AE3
; ---------------------------------------------------------------------------

loc_140769BF9:                          ; CODE XREF: sub_140769AA0+70↑j
                mov     rax, [rbx+28h]
                xor     r14b, r14b
                and     qword ptr [rbx+78h], 0
                cmp     qword ptr [rax+10h], 0
                jz      short loc_140769BDC
                mov     rax, [rdi+108h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                movzx   eax, word ptr [rbx+40h]
                test    al, 40h
                jnz     loc_1408466B6
                mov     rax, [rbx]
                lea     rcx, [rax-1]
                cmp     rcx, rax
                ja      loc_140769B16
                mov     rax, [rbx+28h]
                cmp     rcx, [rax]
                jb      loc_140769B16
                jmp     loc_1408466C7
; ---------------------------------------------------------------------------

loc_140769C4C:                          ; CODE XREF: sub_140769AA0+114↑j
                lea     rbx, [rsi+40h]

loc_140769C50:                          ; CODE XREF: sub_140769AA0+1C2↓j
                test    byte ptr [rbx], 10h
                jnz     loc_1408466F3

loc_140769C59:                          ; CODE XREF: sub_140769AA0+DCC6B↓j
                add     rbx, 50h ; 'P'
                cmp     qword ptr [rbx-20h], 0
                jnz     short loc_140769C50
                jmp     loc_140769BBA
; ---------------------------------------------------------------------------

loc_140769C69:                          ; CODE XREF: sub_140769AA0+14B↑j
                neg     bpl
                sbb     edi, edi
                and     edi, 907h
                add     edi, 0C0000001h
                jmp     loc_140769BAF
sub_140769AA0   endp

; ---------------------------------------------------------------------------
byte_140769C7F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140093D7C↑o
                                        ; .pdata:000000014010A448↑o

; =============== S U B R O U T I N E =======================================


sub_140769C88   proc near               ; CODE XREF: sub_1407255B8+20A↑p
                                        ; sub_14073F2A8+2B2↑p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_28          = byte ptr -28h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 0000000140846710 SIZE 0000000B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                mov     [rax+18h], r8d
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r13, rdx
                xor     r15d, r15d
                mov     rbx, r9
                mov     r14d, r8d
                mov     rbp, rcx
                mov     r12d, 0FFh
                lea     edx, [r15+5Ch]
                call    wcschr
                xor     ecx, ecx
                mov     rdi, rax
                test    rax, rax
                jz      loc_140769D94
                mov     rsi, rax
                sub     rsi, rbp
                sar     rsi, 1
                test    rbx, rbx
                jz      short loc_140769D3A
                lea     edx, [rcx+5Ch]
                lea     rcx, [rax+2]
                call    wcschr
                xor     ecx, ecx
                mov     r14, rax
                test    rax, rax
                jnz     loc_140769DAF

loc_140769CFC:                          ; CODE XREF: sub_140769C88+145↓j
                cmp     word ptr [rdi+2], 2Ah ; '*'
                jz      loc_140846710
                xor     edx, edx
                lea     rcx, [rdi+2]
                lea     r8d, [rdx+10h]
                call    sub_1403D40D4
                xor     ecx, ecx
                test    eax, eax
                jnz     loc_140769DD2
                mov     byte ptr [rbx], 1
                mov     eax, ecx

loc_140769D25:                          ; CODE XREF: sub_140769C88+15B↓j
                                        ; sub_140769C88+DCA8E↓j
                mov     [rbx+2], ax
                test    r14, r14
                jnz     loc_140769DE8

loc_140769D32:                          ; CODE XREF: sub_140769C88+169↓j
                mov     r14d, [rsp+68h+arg_10]

loc_140769D3A:                          ; CODE XREF: sub_140769C88+58↑j
                                        ; sub_140769C88+11D↓j ...
                test    r13, r13
                jz      short loc_140769D69
                mov     [rsp+68h+var_38], 900h
                mov     r8, rbp
                mov     [rsp+68h+var_40], rcx
                mov     [rsp+68h+var_48], rcx
                mov     rcx, r13
                mov     r9d, esi
                mov     edx, r14d
                call    sub_140330E78
                mov     r15d, eax
                test    eax, eax
                js      short loc_140769D72

loc_140769D69:                          ; CODE XREF: sub_140769C88+B5↑j
                test    rbx, rbx
                jz      short loc_140769D72
                mov     [rbx+1], r12b

loc_140769D72:                          ; CODE XREF: sub_140769C88+DF↑j
                                        ; sub_140769C88+E4↑j
                lea     r11, [rsp+68h+var_28]
                mov     eax, r15d
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140769D94:                          ; CODE XREF: sub_140769C88+46↑j
                or      rsi, 0FFFFFFFFFFFFFFFFh

loc_140769D98:                          ; CODE XREF: sub_140769C88+118↓j
                inc     rsi
                cmp     [rbp+rsi*2+0], cx
                jnz     short loc_140769D98
                test    rbx, rbx
                jz      short loc_140769D3A
                mov     [rbx], cl
                mov     [rbx+2], cx
                jmp     short loc_140769D3A
; ---------------------------------------------------------------------------

loc_140769DAF:                          ; CODE XREF: sub_140769C88+6E↑j
                xor     edx, edx
                mov     [rax], cx
                lea     rcx, [rax+2]
                lea     r8d, [rdx+10h]
                call    sub_1403D40D4
                cmp     eax, r12d
                cmova   eax, r12d
                xor     ecx, ecx
                mov     r12d, eax
                jmp     loc_140769CFC
; ---------------------------------------------------------------------------

loc_140769DD2:                          ; CODE XREF: sub_140769C88+92↑j
                dec     eax
                mov     byte ptr [rbx], 2
                mov     ecx, 0FFFFh
                cmp     eax, ecx
                cmova   eax, ecx
                xor     ecx, ecx
                jmp     loc_140769D25
; ---------------------------------------------------------------------------

loc_140769DE8:                          ; CODE XREF: sub_140769C88+A4↑j
                mov     eax, 5Ch ; '\'
                mov     [r14], ax
                jmp     loc_140769D32
sub_140769C88   endp

; ---------------------------------------------------------------------------
algn_140769DF6:                         ; DATA XREF: .rdata:0000000140093DF8↑o
                                        ; .pdata:000000014010A454↑o
                align 20h
; Exported entry 2037. RtlCopyLuid

; =============== S U B R O U T I N E =======================================


