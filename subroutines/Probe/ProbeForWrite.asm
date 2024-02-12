ProbeForWrite   proc near               ; CODE XREF: sub_140216560+137↑p
                                        ; sub_140218580+2B6↑p ...
                sub     rsp, 28h
                test    rdx, rdx
                jz      short loc_140611187
                dec     r8d
                test    rcx, r8
                jnz     short loc_14061118F
                dec     rdx
                add     rdx, rcx
                cmp     rcx, rdx
                ja      short loc_140611189
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                jnb     short loc_140611189
                and     rdx, 0FFFFFFFFFFFFF000h
                add     rdx, 1000h

loc_140611169:                          ; CODE XREF: ProbeForWrite+4F↓j
                movzx   eax, byte ptr [rcx]
                mov     [rcx], al
                and     rcx, 0FFFFFFFFFFFFF000h
                add     rcx, 1000h
                cmp     rcx, rdx
                jnz     short loc_140611169

loc_140611181:                          ; CODE XREF: ProbeForWrite:loc_140611187↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140611187:                          ; CODE XREF: ProbeForWrite+7↑j
                jmp     short loc_140611181
; ---------------------------------------------------------------------------

loc_140611189:                          ; CODE XREF: ProbeForWrite+1A↑j
                                        ; ProbeForWrite+29↑j
                call    ExRaiseAccessViolation
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061118F:                          ; CODE XREF: ProbeForWrite+F↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
ProbeForWrite   endp

algn_140611195:                         ; DATA XREF: .pdata:00000001400FD314↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406111A0   proc near               ; CODE XREF: sub_14060DA00+1F06↑p
                                        ; DATA XREF: .rdata:000000014004C4EC↑o ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_F8          = dword ptr -0F8h
var_F4          = byte ptr -0F4h
var_F3          = byte ptr -0F3h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = byte ptr -50h
var_4C          = dword ptr -4Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407FC03A SIZE 000001FB BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_30], rax
                movzx   r13d, r9b
                mov     rdi, [rsp+138h+arg_20]
                mov     [rsp+138h+var_98], rdi
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-50h], xmm0
                movups  xmmword ptr [r11-40h], xmm0
                xor     r12d, r12d
                mov     [r11-90h], r12
                cmp     r8d, 20h ; ' '
                jnz     loc_1407FC03A
                mov     ebx, r12d
                mov     [rsp+138h+var_F8], ebx

loc_140611209:                          ; DATA XREF: .rdata:000000014004C484↑o
;   __try { // __except at loc_14061121C
                movups  xmm0, xmmword ptr [rdx]
                movups  [rsp+138h+var_F0], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  [rsp+138h+var_E0], xmm1
                jmp     short loc_140611223
;   } // starts at 140611209
; ---------------------------------------------------------------------------

loc_14061121C:                          ; DATA XREF: .rdata:000000014004C484↑o
;   __except(1) // owned by 140611209
                mov     ebx, eax
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_140611223:                          ; CODE XREF: sub_1406111A0+7A↑j
                mov     rax, qword ptr [rsp+138h+var_F0]
                cmp     eax, 2Dh ; '-'
                jnz     loc_1407FC22B
                shr     rax, 20h
                cmp     eax, 6B756843h
                jnz     loc_1407FC22B
                mov     eax, dword ptr [rsp+138h+var_F0+8]
                cmp     eax, 1Ch
                ja      short loc_140611257
                mov     ecx, 10010100h
                bt      ecx, eax
                jb      loc_140611476

loc_140611257:                          ; CODE XREF: sub_1406111A0+A7↑j
                mov     rbx, cs:qword_140D2E710
                mov     [rsp+138h+var_C8], r12
                mov     rax, gs:188h
                mov     r15, [rax+0B8h]
                mov     rdi, gs:188h
                mov     rax, [r15+440h]
                mov     [rsp+138h+var_B8], rax
                test    rdi, rdi
                jz      loc_1407FC044
                mov     eax, [rdi+510h]
                test    al, 8
                jz      loc_1406114CE
                mov     r12, gs:188h
                dec     word ptr [r12+1E4h]
                xor     edx, edx
                lea     rcx, [rdi+500h]
                call    ExAcquirePushLockSharedEx
                mov     eax, [rdi+510h]
                test    al, 8
                jz      loc_1407FC05F
                mov     rsi, [rdi+4A8h]
                and     rsi, 0FFFFFFFFFFFFFFF8h
                test    dword ptr [rdi+510h], 100h
                jnz     loc_1407FC051
                xor     al, al

loc_1406112ED:                          ; CODE XREF: sub_1406111A0+1EAEB3↓j
                mov     [rsp+138h+var_F4], al
                mov     rcx, rsi
                call    ObfReferenceObject
                mov     eax, [rdi+4A8h]
                and     eax, 3
                mov     dword ptr [rsp+138h+var_C8], eax
                test    byte ptr [rdi+4A8h], 4
                jnz     loc_1407FC058
                xor     al, al

loc_140611315:                          ; CODE XREF: sub_1406111A0+1EAEBA↓j
                mov     [rsp+138h+var_F3], al
                xor     ecx, ecx

loc_14061131B:                          ; CODE XREF: sub_1406111A0+1EAEC3↓j
                mov     eax, 11h
                lock cmpxchg [rdi+500h], rcx
                jnz     loc_140611514

loc_14061132F:                          ; CODE XREF: sub_1406111A0+380↓j
                lea     rcx, [rdi+500h]
                call    sub_140243660
                mov     rcx, r12
                call    sub_14021E1F0
                xor     r12d, r12d

loc_140611346:                          ; CODE XREF: sub_1406111A0+331↓j
                mov     [rsp+138h+var_D0], rsi

loc_14061134B:                          ; CODE XREF: sub_1406111A0+1EAEAC↓j
                lea     r14, [r15+4B8h]
                mov     rcx, r14
                call    sub_14024C570
                mov     rdi, rax
                test    rax, rax
                jz      loc_1407FC068

loc_140611366:                          ; CODE XREF: sub_1406111A0+1EAF1D↓j
                mov     [rsp+138h+var_C0], rdi
                cmp     cs:dword_140D2D010, 0
                jnz     loc_1407FC0C2

loc_140611378:                          ; CODE XREF: sub_1406111A0+1EAF4C↓j
                                        ; sub_1406111A0+1EAF74↓j
                mov     [rsp+138h+var_68], 1
                mov     [rsp+138h+var_64], 1
                mov     [rsp+138h+var_60], rbx
                mov     [rsp+138h+var_58], r12d
                test    r13b, r13b
                jz      loc_1407FC119
                test    rsi, rsi
                jz      loc_1406114BE
                cmp     dword ptr [rsp+138h+var_C8], 2
                jl      loc_1407FC120
                test    rsi, rsi
                jz      loc_1406114BE
                mov     rcx, rsi

loc_1406113C7:                          ; CODE XREF: sub_1406111A0+321↓j
                mov     byte ptr [rsp+138h+var_118], r13b
                mov     r9d, 1
                mov     r8d, r9d
                lea     rdx, [rsp+138h+var_60]
                call    sub_1402163F0
                movzx   ebx, al

loc_1406113E5:                          ; CODE XREF: sub_1406111A0+1EAF7B↓j
                                        ; sub_1406111A0+1EAF82↓j
                test    r13b, r13b
                jz      short loc_140611417
                test    rsi, rsi
                jz      loc_1406114C6
                mov     rax, rsi

loc_1406113F6:                          ; CODE XREF: sub_1406111A0+329↓j
                mov     rax, [rax+98h]
                mov     r14, [rax]
                mov     rdx, r14
                mov     rcx, cs:qword_140C54340
                call    RtlEqualSid
                test    al, al
                jz      loc_14061160A

loc_140611417:                          ; CODE XREF: sub_1406111A0+248↑j
                                        ; sub_1406111A0+4AB↓j ...
                cmp     cs:dword_140D2D010, 0
                jnz     loc_1407FC127

loc_140611424:                          ; CODE XREF: sub_1406111A0+69E↓j
                                        ; sub_1406111A0+1EAFD1↓j ...
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                add     rcx, 4B8h
                mov     rdx, [rsp+138h+var_C0]
                call    sub_14024C4A0
                mov     [rsp+138h+var_C0], r12
                mov     rcx, [rsp+138h+var_D0]
                test    rcx, rcx
                jz      short loc_140611459
                call    PsDereferenceSiloContext

loc_140611459:                          ; CODE XREF: sub_1406111A0+2B2↑j
                mov     [rsp+138h+var_D0], r12
                test    bl, bl
                jz      loc_14061168D
                mov     eax, dword ptr [rsp+138h+var_F0+8]
                mov     ebx, [rsp+138h+var_F8]
                mov     rdi, [rsp+138h+var_98]

loc_140611476:                          ; CODE XREF: sub_1406111A0+B1↑j
                cmp     eax, 6
                jnz     short loc_1406114D6
                mov     r8, rdi
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_140647040

loc_14061148C:                          ; CODE XREF: sub_1406111A0+36F↓j
                                        ; sub_1406111A0+439↓j ...
                mov     ebx, eax

loc_14061148E:                          ; CODE XREF: sub_1406111A0+7E↑j
                                        ; sub_1406111A0+3E7↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+138h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+138h+var_28]
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
                align 2

loc_1406114BE:                          ; CODE XREF: sub_1406111A0+20A↑j
                                        ; sub_1406111A0+21E↑j
                mov     rcx, rdi
                jmp     loc_1406113C7
; ---------------------------------------------------------------------------

loc_1406114C6:                          ; CODE XREF: sub_1406111A0+24D↑j
                mov     rax, rdi
                jmp     loc_1406113F6
; ---------------------------------------------------------------------------

loc_1406114CE:                          ; CODE XREF: sub_1406111A0+FC↑j
                mov     rsi, r12
                jmp     loc_140611346
; ---------------------------------------------------------------------------

loc_1406114D6:                          ; CODE XREF: sub_1406111A0+2D9↑j
                dec     eax             ; switch 28 cases
                cmp     eax, 1Bh
                ja      def_1406114F4   ; jumptable 00000001406114F4 default case, cases 3-7,10,11,13-15,18,19,21,22,25,26
                cdqe
                lea     rdx, cs:140000000h
                mov     ecx, ds:(jpt_1406114F4 - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1406114FA:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r9, rdi         ; jumptable 00000001406114F4 case 1
                movzx   r8d, r13b
                mov     edx, dword ptr [rsp+138h+var_E0+8]
                mov     rcx, qword ptr [rsp+138h+var_E0]
                call    sub_1405F63BC
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_140611514:                          ; CODE XREF: sub_1406111A0+189↑j
                lea     rcx, [rdi+500h]
                call    ExfReleasePushLockShared
                jmp     loc_14061132F
; ---------------------------------------------------------------------------

loc_140611525:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                cmp     dword ptr [rsp+138h+var_E0+8], 10h ; jumptable 00000001406114F4 case 20
                jnz     loc_1407FC200
                mov     qword ptr [rsp+138h+var_A8], r12

loc_140611538:                          ; DATA XREF: .rdata:000000014004C494↑o
;   __try { // __except at loc_140611585
                test    r13b, r13b
                jz      short loc_140611573
                mov     rcx, qword ptr [rsp+138h+var_E0]
                test    cl, 7
                jnz     short loc_140611568
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                jnb     short loc_14061156E

loc_140611556:                          ; CODE XREF: sub_1406111A0+3D1↓j
                movzx   eax, byte ptr [rcx]
                mov     [rcx], al
                movzx   eax, byte ptr [rcx+0Fh]
                mov     [rcx+0Fh], al
                mov     ebx, [rsp+138h+var_F8]
                jmp     short loc_140611573
; ---------------------------------------------------------------------------

loc_140611568:                          ; CODE XREF: sub_1406111A0+3A5↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_14061156E:                          ; CODE XREF: sub_1406111A0+3B4↑j
                mov     rcx, rax
                jmp     short loc_140611556
; ---------------------------------------------------------------------------

loc_140611573:                          ; CODE XREF: sub_1406111A0+39B↑j
                                        ; sub_1406111A0+3C6↑j
                mov     rcx, qword ptr [rsp+138h+var_E0]
                movups  xmm0, xmmword ptr [rcx]
                movups  [rsp+138h+var_A8], xmm0
                jmp     short loc_14061158C
;   } // starts at 140611538
; ---------------------------------------------------------------------------

loc_140611585:                          ; DATA XREF: .rdata:000000014004C494↑o
;   __except(1) // owned by 140611538
                mov     ebx, eax
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_14061158C:                          ; CODE XREF: sub_1406111A0+3E3↑j
                cmp     dword ptr [rsp+138h+var_A8], 1
                jnz     loc_1407FC17D
                mov     rax, cs:qword_140C502B0
                mov     qword ptr [rsp+138h+var_A8+8], rax

loc_1406115A9:                          ; DATA XREF: .rdata:000000014004C4A4↑o
;   __try { // __except at loc_1406115B6
                movups  xmm0, [rsp+138h+var_A8]
                movups  xmmword ptr [rcx], xmm0
                jmp     short loc_1406115BD
;   } // starts at 1406115A9
; ---------------------------------------------------------------------------

loc_1406115B6:                          ; DATA XREF: .rdata:000000014004C4A4↑o
;   __except(1) // owned by 1406115A9
                mov     ebx, eax
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_1406115BD:                          ; CODE XREF: sub_1406111A0+414↑j
                mov     dword ptr [rdi], 10h
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_1406115C8:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r8, rdi         ; jumptable 00000001406114F4 case 16
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_14037A4E0
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_1406115DE:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r8, rdi         ; jumptable 00000001406114F4 case 8
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_1405F6CF4
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_1406115F4:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r8, rdi         ; jumptable 00000001406114F4 case 28
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_14071B948
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_14061160A:                          ; CODE XREF: sub_1406111A0+271↑j
                mov     rdx, r14
                mov     r15, cs:SeExports
                mov     rcx, [r15+188h]
                call    RtlEqualSid
                test    al, al
                jnz     short loc_140611637
                mov     rdx, r14
                mov     rcx, [r15+180h]
                call    RtlEqualSid
                test    al, al
                jz      short loc_140611651

loc_140611637:                          ; CODE XREF: sub_1406111A0+482↑j
                lea     rdx, [rsp+138h+var_68]
                mov     ecx, 1
                call    sub_140701028
                test    al, al
                jz      loc_140611417

loc_140611651:                          ; CODE XREF: sub_1406111A0+495↑j
                mov     [rsp+138h+var_108], bl
                lea     rax, [rsp+138h+var_68]
                mov     [rsp+138h+var_110], rax
                mov     [rsp+138h+var_118], rdi
                mov     r9, rsi
                xor     r8d, r8d
                lea     rdx, qword_1400019C0
                lea     rcx, [rsp+138h+var_D0]
                call    sub_1406292C8
                mov     rdi, [rsp+138h+var_C0]
                mov     rsi, [rsp+138h+var_D0]
                jmp     loc_140611417
; ---------------------------------------------------------------------------

loc_14061168D:                          ; CODE XREF: sub_1406111A0+2C0↑j
                mov     ebx, 0C0000022h
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_140611697:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r8, rdi         ; jumptable 00000001406114F4 case 17
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_14037ECBC
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_1406116AD:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r8, rdi         ; jumptable 00000001406114F4 case 12
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_140777824
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_1406116C3:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                mov     r8, rdi         ; jumptable 00000001406114F4 case 23
                movzx   edx, r13b
                lea     rcx, [rsp+138h+var_F0]
                call    sub_1407328F8
                jmp     loc_14061148C
; ---------------------------------------------------------------------------

loc_1406116D9:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                cmp     dword ptr [rsp+138h+var_E0+8], 1Ch ; jumptable 00000001406114F4 case 2
                jnz     loc_1407FC200
                mov     rcx, gs:188h
                dec     word ptr [rcx+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C50138
                call    ExAcquirePushLockSharedEx
                movups  xmm0, cs:xmmword_140C4FF84
                movups  [rsp+138h+var_88], xmm0
                movsd   xmm1, cs:qword_140C4FF94
                movsd   [rsp+138h+var_78], xmm1
                mov     edx, cs:dword_140C4FF9C
                mov     [rsp+138h+var_70], edx
                mov     eax, 11h
                lock cmpxchg cs:qword_140C50138, r12
                jz      short loc_14061174B
                lea     rcx, qword_140C50138
                call    ExfReleasePushLockShared

loc_14061174B:                          ; CODE XREF: sub_1406111A0+59D↑j
                lea     rcx, qword_140C50138
                call    sub_140243660
                call    KeLeaveCriticalRegion
                nop

loc_14061175D:                          ; DATA XREF: .rdata:000000014004C4B4↑o
;   __try { // __except at loc_1406117BE
                test    r13b, r13b
                jz      short loc_140611794
                mov     rcx, qword ptr [rsp+138h+var_E0]
                test    cl, 3
                jnz     short loc_140611789
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                jnb     short loc_14061178F

loc_14061177B:                          ; CODE XREF: sub_1406111A0+5F2↓j
                movzx   eax, byte ptr [rcx]
                mov     [rcx], al
                movzx   eax, byte ptr [rcx+1Bh]
                mov     [rcx+1Bh], al
                jmp     short loc_140611794
; ---------------------------------------------------------------------------

loc_140611789:                          ; CODE XREF: sub_1406111A0+5CA↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061178F:                          ; CODE XREF: sub_1406111A0+5D9↑j
                mov     rcx, rax
                jmp     short loc_14061177B
; ---------------------------------------------------------------------------

loc_140611794:                          ; CODE XREF: sub_1406111A0+5C0↑j
                                        ; sub_1406111A0+5E7↑j
                mov     rcx, qword ptr [rsp+138h+var_E0]
                movups  xmm0, [rsp+138h+var_88]
                movups  xmmword ptr [rcx], xmm0
                movsd   xmm1, [rsp+138h+var_78]
                movsd   qword ptr [rcx+10h], xmm1
                mov     eax, [rsp+138h+var_70]
                mov     [rcx+18h], eax
                jmp     short loc_1406117C5
;   } // starts at 14061175D
; ---------------------------------------------------------------------------

loc_1406117BE:                          ; DATA XREF: .rdata:000000014004C4B4↑o
;   __except(1) // owned by 14061175D
                mov     ebx, eax
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_1406117C5:                          ; CODE XREF: sub_1406111A0+61C↑j
                mov     dword ptr [rdi], 1Ch
                mov     ebx, [rsp+138h+var_F8]
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_1406117D4:                          ; CODE XREF: sub_1406111A0+354↑j
                                        ; DATA XREF: sub_1406111A0:jpt_1406114F4↓o
                cmp     dword ptr [rsp+138h+var_E0+8], 4 ; jumptable 00000001406114F4 case 9
                jnz     loc_1407FC200

loc_1406117DF:                          ; DATA XREF: .rdata:000000014004C4C4↑o
;   __try { // __except at loc_140611829
                test    r13b, r13b
                jz      short loc_14061181A
                mov     rcx, qword ptr [rsp+138h+var_E0]
                test    cl, 3
                jnz     short loc_14061180F
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                jnb     short loc_140611815

loc_1406117FD:                          ; CODE XREF: sub_1406111A0+678↓j
                movzx   eax, byte ptr [rcx]
                mov     [rcx], al
                movzx   eax, byte ptr [rcx+3]
                mov     [rcx+3], al
                mov     ebx, [rsp+138h+var_F8]
                jmp     short loc_14061181A
; ---------------------------------------------------------------------------

loc_14061180F:                          ; CODE XREF: sub_1406111A0+64C↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140611815:                          ; CODE XREF: sub_1406111A0+65B↑j
                mov     rcx, rax
                jmp     short loc_1406117FD
; ---------------------------------------------------------------------------

loc_14061181A:                          ; CODE XREF: sub_1406111A0+642↑j
                                        ; sub_1406111A0+66D↑j
                mov     rcx, qword ptr [rsp+138h+var_E0]
                mov     eax, cs:dword_140CEC0D0
                mov     [rcx], eax
                jmp     short loc_140611830
;   } // starts at 1406117DF
; ---------------------------------------------------------------------------

loc_140611829:                          ; DATA XREF: .rdata:000000014004C4C4↑o
;   __except(1) // owned by 1406117DF
                mov     ebx, eax
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_140611830:                          ; CODE XREF: sub_1406111A0+687↑j
                mov     dword ptr [rdi], 4
                jmp     loc_14061148E
; ---------------------------------------------------------------------------

loc_14061183B:                          ; CODE XREF: sub_1406111A0+1EAF8A↓j
                                        ; sub_1406111A0+1EAFB2↓j
                test    rsi, rsi
                jz      loc_140611424
                jmp     loc_1407FC157
; ---------------------------------------------------------------------------
                align 4
jpt_1406114F4   dd offset loc_1406114FA - 140000000h
                                        ; DATA XREF: sub_1406111A0+34A↑r
                dd offset loc_1406116D9 - 140000000h ; jump table for switch statement
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset loc_1406115DE - 140000000h
                dd offset loc_1406117D4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset loc_1406116AD - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset loc_1406115C8 - 140000000h
                dd offset loc_140611697 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset loc_140611525 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset loc_1406116C3 - 140000000h
                dd offset loc_1407FC187 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset def_1406114F4 - 140000000h
                dd offset loc_1407FC20A - 140000000h
                dd offset loc_1406115F4 - 140000000h
; } // starts at 1406111A0
sub_1406111A0   endp

byte_1406118BC  db 14h dup(0CCh)        ; DATA XREF: .rdata:000000014004C4EC↑o
                                        ; .pdata:00000001400FD320↑o
; Exported entry 2540. SePrivilegeCheck

; =============== S U B R O U T I N E =======================================


