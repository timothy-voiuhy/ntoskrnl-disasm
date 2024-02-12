IoGetSilo       proc near               ; CODE XREF: sub_140653C50+DCC↓p
                                        ; sub_140653C50+E0C↓p ...
                mov     rax, [rcx+0D0h]
                test    rax, rax
                jnz     short loc_1402B9695

loc_1402B968C:                          ; CODE XREF: IoGetSilo+22↓j
                test    rax, rax
                jnz     short loc_1402B96A4

loc_1402B9691:                          ; CODE XREF: IoGetSilo+1C↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B9695:                          ; CODE XREF: IoGetSilo+A↑j
                cmp     rax, cs:off_140C04810
                jz      short loc_1402B9691
                mov     rax, [rax+40h]
                jmp     short loc_1402B968C
; ---------------------------------------------------------------------------

loc_1402B96A4:                          ; CODE XREF: IoGetSilo+F↑j
                mov     rax, [rax+8]
                retn
IoGetSilo       endp

; ---------------------------------------------------------------------------
                align 2
algn_1402B96AA:                         ; DATA XREF: .pdata:00000001400D0DAC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402B96B0   proc near               ; CODE XREF: PsGetEffectiveServerSilo:loc_1402B9621↑p
                                        ; PsGetCurrentServerSilo:loc_140310459↓p ...
                test    rcx, rcx
                jnz     short loc_1402B96B9
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B96B9:                          ; CODE XREF: sub_1402B96B0+3↑j
                cmp     qword ptr [rcx+4F8h], 0
                setnz   al
                retn
sub_1402B96B0   endp

; ---------------------------------------------------------------------------
                align 2
byte_1402B96C6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0DB8↑o

; =============== S U B R O U T I N E =======================================


sub_1402B96CC   proc near               ; CODE XREF: sub_140685664+26B↓p
                                        ; sub_140685664+30B↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rdi
                mov     rax, [rcx]
                mov     ebx, r8d
                mov     r10, rax
                movzx   r8d, dl
                shr     r10, 20h
                xor     r9d, r9d
                mov     r11d, r10d
                mov     [rsp+arg_0], rax
                shr     r11d, 1Fh
                mov     rdi, rcx
                cmp     r11d, r8d
                jz      short loc_1402B9720
                test    r11d, r11d
                jnz     short loc_1402B9732
                mov     eax, dword ptr [rsp+arg_0+4]

loc_1402B9707:                          ; CODE XREF: sub_1402B96CC+96↓j
                btr     eax, 1Fh
                shl     r8d, 1Fh
                or      r8d, eax
                mov     dword ptr [rsp+arg_0], ebx
                mov     dword ptr [rsp+arg_0+4], r8d
                mov     rax, [rsp+arg_0]

loc_1402B9720:                          ; CODE XREF: sub_1402B96CC+30↑j
                mov     rbx, [rsp+arg_8]
                mov     [rdi], rax
                mov     eax, r9d
                mov     rdi, [rsp+arg_10]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B9732:                          ; CODE XREF: sub_1402B96CC+35↑j
                mov     r9d, ebx
                or      edx, 0FFFFFFFFh
                sub     r9d, dword ptr [rsp+arg_0]
                cmp     r9d, edx
                jnb     short loc_1402B9756
                mov     ecx, r10d
                mov     eax, r9d
                btr     ecx, 1Fh
                not     eax
                cmp     eax, ecx
                jb      short loc_1402B9756
                lea     edx, [rcx+r9]

loc_1402B9756:                          ; CODE XREF: sub_1402B96CC+74↑j
                                        ; sub_1402B96CC+84↑j
                mov     eax, r10d
                xor     eax, edx
                btr     eax, 1Fh
                xor     eax, r10d
                jmp     short loc_1402B9707
sub_1402B96CC   endp

; ---------------------------------------------------------------------------
byte_1402B9764  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0DC4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402B976C   proc near               ; CODE XREF: sub_1406841A8+CD↓p
                                        ; sub_140706F34+121BFB↓p ...

var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 00000001404516B2 SIZE 00000093 BYTES

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
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                and     [rbp+var_48], 0
                lea     rsi, [rcx+680h]
                xor     r12d, r12d
                xor     r15d, r15d
                xorps   xmm0, xmm0
                mov     edi, edx
                and     edi, 0FFFFFFF7h
                mov     eax, edx
                and     eax, 4
                movups  [rbp+var_40], xmm0
                cmovz   edi, edx
                neg     eax
                movups  [rbp+var_30], xmm0
                sbb     r14b, r14b
                and     r14b, 80h
                movups  [rbp+var_20], xmm0
                test    dil, 1
                jnz     loc_1404516B2

loc_1402B97DD:                          ; CODE XREF: sub_1402B976C+197F4D↓j
                mov     rax, gs:188h
                cmp     [rax+0B8h], rcx
                jnz     loc_1404516BE

loc_1402B97F3:                          ; CODE XREF: sub_1402B976C+197F64↓j
                mov     rcx, rsi
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     [rbx+4], r15d
                lea     rdx, qword_140C4ECC0
                and     [rbp+var_58], r15
                lea     rcx, [rbp+var_58]
                mov     [rbp+var_50], rdx
                mov     r13b, al
                call    sub_14024B3F0
                mov     eax, [rsi+0B8h]
                mov     ecx, edi
                mov     [rbp+var_60], eax
                mov     r8b, al
                and     ecx, 8
                jnz     loc_1404516D5

loc_1402B983C:                          ; CODE XREF: sub_1402B976C+197F71↓j
                xor     r9d, r9d
                test    ecx, ecx
                setnz   r9b
                test    dil, 2
                jz      short loc_1402B9859
                and     r8b, 0BFh
                mov     r9d, 1
                mov     byte ptr [rbp+var_60], r8b

loc_1402B9859:                          ; CODE XREF: sub_1402B976C+DD↑j
                mov     bl, 80h
                mov     al, r14b
                or      al, bl
                mov     dl, r8b
                movzx   ecx, al
                and     dl, bl
                movzx   eax, r14b
                mov     r11b, 40h ; '@'
                cmovz   ecx, eax
                movzx   edx, cl
                mov     cl, r8b
                mov     al, dl
                or      al, r11b
                and     cl, r11b
                movzx   r10d, al
                cmovz   r10d, edx
                test    bl, r10b
                jnz     loc_1404516E2

loc_1402B9891:                          ; CODE XREF: sub_1402B976C+197F79↓j
                                        ; sub_1402B976C+197F8E↓j ...
                test    dil, 4
                jnz     loc_140451710

loc_1402B989B:                          ; CODE XREF: sub_1402B976C+197FB1↓j
                test    dil, 1
                jnz     loc_140451722

loc_1402B98A5:                          ; CODE XREF: sub_1402B976C+197FC3↓j
                test    r9d, r9d
                jz      short loc_1402B98B5
                movzx   eax, word ptr [rbp+var_60]
                mov     [rsi+0B8h], ax

loc_1402B98B5:                          ; CODE XREF: sub_1402B976C+13C↑j
                lea     rcx, [rbp+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     dl, r13b
                mov     rcx, rsi
                call    sub_140234180
                test    r12d, r12d
                jnz     loc_140451734

loc_1402B98D2:                          ; CODE XREF: sub_1402B976C+197FD4↓j
                mov     eax, r15d
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+80h+var_s0]
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
; } // starts at 1402B976C
sub_1402B976C   endp

byte_1402B9903  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400669CC↑o
                                        ; .pdata:00000001400D0DD0↑o

; =============== S U B R O U T I N E =======================================


sub_1402B990C   proc near               ; CODE XREF: sub_1406847AC+38A↓p
                                        ; DATA XREF: .rdata:0000000140066AA8↑o ...

var_48          = byte ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140451746 SIZE 0000004D BYTES

                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbp, rcx
                mov     rcx, cr8
                mov     [rsp+68h+arg_10], rcx
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                lea     r15d, [r13-1]
                test    eax, eax
                jnz     loc_140451746

loc_1402B994B:                          ; CODE XREF: sub_1402B990C+197E3D↓j
                                        ; sub_1402B990C+197E46↓j ...
                mov     rdi, gs:20h
                mov     rcx, rbp
                mov     [rsp+68h+arg_8], rdi
                call    sub_1402AF4F0
                mov     eax, [rbp+4]
                lea     rsi, [rbp+8]
                mov     r14, [rsi]
                mov     [rsp+68h+arg_0], eax
                mov     [rbp+4], r15d

loc_1402B9973:                          ; CODE XREF: sub_1402B990C+D5↓j
                                        ; sub_1402B990C+1BB↓j
                cmp     r14, rsi
                jnz     short loc_1402B99C0
                mov     [rsi+8], rsi
                mov     [rsi], rsi
                lock and dword ptr [rbp+0], 0FFFFFF7Fh
                mov     rdx, [rsp+68h+arg_10]
                xor     r9d, r9d
                mov     [rsp+68h+var_48], dl
                mov     r8d, r15d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14023E110
                mov     eax, [rsp+68h+arg_0]
                mov     rbx, [rsp+68h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402B99C0:                          ; CODE XREF: sub_1402B990C+6A↑j
                mov     rbx, r14
                mov     r14, [r14]
                mov     al, [rbx+10h]
                cmp     al, r15b
                jnz     short loc_1402B99E3
                movzx   r8d, word ptr [rbx+12h]

loc_1402B99D3:                          ; CODE XREF: sub_1402B990C+197E82↓j
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14023CD30
                jmp     short loc_1402B9973
; ---------------------------------------------------------------------------

loc_1402B99E3:                          ; CODE XREF: sub_1402B990C+C0↑j
                cmp     al, r13b
                jnz     loc_140451788
                mov     byte ptr [rbx+11h], 5
                mov     rdi, [rbx+18h]
                and     qword ptr [rbx], 0
                lea     r12, [rdi+8]
                mov     rcx, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1402B9A17
                test    r15b, al
                jnz     loc_1402B9ACC

loc_1402B9A17:                          ; CODE XREF: sub_1402B990C+100↑j
                                        ; sub_1402B990C+1C3↓j ...
                mov     r13, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     r15, [r13+8]
                jnz     loc_1402B9B05

loc_1402B9A34:                          ; CODE XREF: sub_1402B990C+20F↓j
                mov     rcx, rdi
                call    sub_1402AF4F0
                cmp     [r12], r12
                jz      short loc_1402B9A60
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                jnb     short loc_1402B9A60
                mov     rax, [r15+0E8h]
                cmp     rax, rdi
                jnz     short loc_1402B9A9F
                cmp     byte ptr [r15+283h], 0Fh
                jnz     short loc_1402B9A9F

loc_1402B9A60:                          ; CODE XREF: sub_1402B990C+134↑j
                                        ; sub_1402B990C+13C↑j ...
                mov     ecx, [rdi+4]
                lea     eax, [rcx+1]
                mov     [rdi+4], eax
                lea     rax, [rdi+18h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_1402B9B20
                mov     [rbx], rax
                mov     [rbx+8], rdx
                mov     [rdx], rbx
                mov     [rax+8], rbx
                test    ecx, ecx
                jnz     short loc_1402B9AB1
                cmp     [r12], r12
                jz      short loc_1402B9AB1
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_1402C2EC0
                jmp     short loc_1402B9AB1
; ---------------------------------------------------------------------------

loc_1402B9A9F:                          ; CODE XREF: sub_1402B990C+148↑j
                                        ; sub_1402B990C+152↑j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_1402AF540
                test    al, al
                jz      short loc_1402B9A60

loc_1402B9AB1:                          ; CODE XREF: sub_1402B990C+17E↑j
                                        ; sub_1402B990C+184↑j ...
                lock and dword ptr [rdi], 0FFFFFF7Fh
                mov     rdi, [rsp+68h+arg_8]
                mov     r15d, 1
                lea     r13d, [r15+1]
                jmp     loc_1402B9973
; ---------------------------------------------------------------------------

loc_1402B9ACC:                          ; CODE XREF: sub_1402B990C+105↑j
                cmp     cl, 0Fh
                ja      loc_1402B9A17
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                add     ecx, r15d
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_1402B9A17
; ---------------------------------------------------------------------------

loc_1402B9B05:                          ; CODE XREF: sub_1402B990C+122↑j
                mov     rcx, r15
                call    sub_1405131B4
                mov     r8b, al
                mov     rcx, r15
                mov     rdx, rbx
                call    sub_1405A7A60
                jmp     loc_1402B9A34
; ---------------------------------------------------------------------------

loc_1402B9B20:                          ; CODE XREF: sub_1402B990C+168↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1402B990C   endp

; ---------------------------------------------------------------------------
algn_1402B9B27:                         ; DATA XREF: .rdata:0000000140066AA8↑o
                                        ; .pdata:00000001400D0DDC↑o
                align 10h
; Exported entry 316. ExRundownCompleted

; =============== S U B R O U T I N E =======================================


