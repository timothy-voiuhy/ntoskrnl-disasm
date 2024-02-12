RtlTestBit      proc near               ; CODE XREF: sub_1404E2340:loc_1404E24A8↓p
                                        ; DATA XREF: .pdata:00000001400D6B6C↑o
                mov     rax, [rcx+8]
                bt      [rax], edx
                setb    al
                retn
RtlTestBit      endp

; ---------------------------------------------------------------------------
                align 4
byte_140338D1C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6B6C↑o

; =============== S U B R O U T I N E =======================================


sub_140338D24   proc near               ; CODE XREF: sub_1402C8140+705↑p
                                        ; DATA XREF: .pdata:00000001400D6B78↑o

var_1B8         = byte ptr -1B8h
var_1A8         = dword ptr -1A8h
var_1A4         = dword ptr -1A4h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = dword ptr -180h
var_17C         = dword ptr -17Ch
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = dword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_D8          = byte ptr -0D8h
var_C8          = qword ptr -0C8h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

; FUNCTION CHUNK AT 000000014041AEE3 SIZE 00000039 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1D8h+var_38], rax
                mov     rdi, r9
                mov     [rsp+1D8h+var_130], r9
                mov     r14, r8
                mov     [rsp+1D8h+var_128], r8
                mov     rsi, rdx
                mov     [rsp+1D8h+var_190], rcx
                mov     [rsp+1D8h+var_110], rdx
                xor     edx, edx
                mov     r8d, 98h
                lea     rcx, [rsp+1D8h+var_D8]
                call    memset
                nop

loc_140338D8C:                          ; DATA XREF: .rdata:000000014007E594↑o
;   __try { // __except at loc_1403392B8
                mov     rcx, gs:188h
                mov     [rsp+1D8h+var_158], rcx
                xor     r13d, r13d
                cmp     [rsp+1D8h+var_190], r13
                jnz     short loc_140338E22
                mov     rcx, [rsi+0D0h]
                mov     [rsp+1D8h+var_1A0], rcx
                mov     rax, [rsi+160h]
                mov     [rsp+1D8h+var_190], rax
                add     rcx, 510h
                mov     [rsp+1D8h+var_188], rcx
                test    cl, 0Fh
                jnz     loc_140339358
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                cmovnb  rcx, rax
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+1Fh]
                mov     [rcx+1Fh], al
                mov     rax, [rsp+1D8h+var_158]
                mov     rbx, [rsp+1D8h+var_1A0]
                test    dword ptr [rax+74h], 100000h
                jz      loc_140339093
                mov     rcx, rbx
                call    sub_140525384
                mov     [rsp+1D8h+var_160], eax
                test    eax, eax
                js      loc_14033935D
                jmp     loc_140339093
; ---------------------------------------------------------------------------

loc_140338E22:                          ; CODE XREF: sub_140338D24+81↑j
                mov     r15d, 10001Bh
                mov     [rsp+1D8h+var_1A8], r15d
                mov     rdi, r13
                mov     [rsp+1D8h+var_198], r13
                test    byte ptr [rsp+1D8h+arg_30], 2
                jz      short loc_140338E7D
                test    cs:qword_140CFC458, 800000h
                jz      short loc_140338E7D
                mov     r15d, 10005Bh
                mov     [rsp+1D8h+var_1A8], r15d
                mov     rdi, 0FFFFF78000000708h
                mov     rax, 0FFFFF780000003D8h
                mov     rax, [rax]
                mov     rdi, [rdi]
                or      rdi, rax
                and     rdi, 0FFFFFFFFFFFFFFFCh
                mov     [rsp+1D8h+var_198], rdi

loc_140338E7D:                          ; CODE XREF: sub_140338D24+119↑j
                                        ; sub_140338D24+126↑j
                mov     r12d, 100040h
                test    dword ptr [rcx+74h], 100000h
                jz      short loc_140338E9B
                or      r15d, r12d
                mov     [rsp+1D8h+var_1A8], r15d
                bts     rdi, 0Bh
                jmp     short loc_140338EA0
; ---------------------------------------------------------------------------

loc_140338E9B:                          ; CODE XREF: sub_140338D24+166↑j
                btr     rdi, 0Bh

loc_140338EA0:                          ; CODE XREF: sub_140338D24+175↑j
                mov     [rsp+1D8h+var_198], rdi
                mov     rdx, [rsi+180h]
                mov     [rsp+1D8h+var_188], rdx
                mov     r14, rdx
                mov     [rsp+1D8h+var_178], rdx
                mov     [rsp+1D8h+var_1A4], r13d
                mov     eax, r15d
                and     eax, r12d
                mov     [rsp+1D8h+var_180], eax
                cmp     eax, r12d
                jnz     short loc_140338EF1
                mov     rcx, rdi
                call    sub_14058FBC4
                mov     edx, eax
                mov     [rsp+1D8h+var_1A4], edx
                sub     r14, rdx
                mov     [rsp+1D8h+var_178], r14
                and     r14, 0FFFFFFFFFFFFFFC0h
                mov     [rsp+1D8h+var_178], r14
                mov     rdx, [rsp+1D8h+var_188]

loc_140338EF1:                          ; CODE XREF: sub_140338D24+1A7↑j
                lea     rax, [r14-28h]
                and     rax, 0FFFFFFFFFFFFFFF0h
                mov     [rsp+1D8h+var_170], rax
                mov     [rsp+1D8h+var_140], rax
                lea     rcx, [rax-20h]
                mov     [rsp+1D8h+var_188], rcx
                add     rcx, 0FFFFFFFFFFFFFFE0h
                mov     [rsp+1D8h+var_138], rcx
                lea     r13, [rcx-20h]
                mov     [rsp+1D8h+var_148], r13
                lea     rbx, [r13-4D0h]
                mov     [rsp+1D8h+var_1A0], rbx
                sub     rdx, rbx
                mov     [rsp+1D8h+var_150], rdx
                lea     rax, [rdx-1]
                cmp     rax, 0FFEh
                ja      short loc_140338F9A
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                cmovnb  rbx, rax
                mov     al, [rbx]
                mov     [rbx], al
                mov     rcx, [rsp+1D8h+var_150]
                mov     al, [rbx+rcx-1]
                mov     [rbx+rcx-1], al
                mov     r13, [rsp+1D8h+var_148]
                mov     r15d, [rsp+1D8h+var_1A8]
                mov     rbx, [rsp+1D8h+var_1A0]
                mov     rax, [rsp+1D8h+var_140]
                mov     [rsp+1D8h+var_170], rax
                mov     r14, [rsp+1D8h+var_178]
                mov     rdi, [rsp+1D8h+var_198]
                jmp     short loc_140338FA8
; ---------------------------------------------------------------------------

loc_140338F9A:                          ; CODE XREF: sub_140338D24+224↑j
                mov     r8d, 10h
                mov     rcx, rbx
                call    ProbeForWrite

loc_140338FA8:                          ; CODE XREF: sub_140338D24+274↑j
                xorps   xmm0, xmm0
                xor     ecx, ecx
                mov     rax, [rsp+1D8h+var_138]
                movups  xmmword ptr [rax], xmm0
                mov     [rax+10h], rcx
                mov     dword ptr [rax], 1
                mov     dword ptr [rax+4], 2
                test    byte ptr [rsp+1D8h+arg_30], 1
                jz      short loc_140338FDA
                mov     dword ptr [rax+4], 3

loc_140338FDA:                          ; CODE XREF: sub_140338D24+2AD↑j
                mov     ecx, [rsp+1D8h+var_180]
                cmp     ecx, r12d
                jnz     short loc_14033904D
                mov     edx, 0FFFFFB30h
                mov     [r13+0], edx
                mov     eax, [rsi+180h]
                sub     eax, ebx
                mov     [r13+4], eax
                mov     [r13+8], edx
                mov     dword ptr [r13+0Ch], 4D0h
                mov     eax, r14d
                sub     eax, r13d
                mov     [r13+10h], eax
                mov     eax, [rsi+180h]
                sub     eax, r14d
                mov     [r13+14h], eax
                cmp     ecx, r12d
                jnz     short loc_14033904D
                mov     r8d, [rsp+1D8h+var_1A4]
                xor     edx, edx
                mov     rcx, r14
                call    memset
                mov     eax, ds:0FFFFF780000003ECh
                test    al, 2
                jz      short loc_14033904D
                mov     rax, 8000000000000000h
                or      rdi, rax
                mov     [r14+8], rdi

loc_14033904D:                          ; CODE XREF: sub_140338D24+2BD↑j
                                        ; sub_140338D24+2FA↑j ...
                mov     [rbx+30h], r15d
                mov     r8, rbx
                mov     rdx, [rsp+1D8h+var_190]
                mov     rcx, rsi
                call    sub_140339B50
                mov     rax, [rbx+98h]
                mov     rdx, [rsp+1D8h+var_170]
                mov     [rdx+18h], rax
                mov     rcx, [rbx+0F8h]
                mov     [rdx], rcx
                call    sub_1402A9CE8
                mov     rdi, [rsp+1D8h+var_130]
                mov     r14, [rsp+1D8h+var_128]
                xor     r13d, r13d

loc_140339093:                          ; CODE XREF: sub_140338D24+DF↑j
                                        ; sub_140338D24+F9↑j
                xorps   xmm0, xmm0
                mov     rcx, [rsp+1D8h+var_188]
                movups  xmmword ptr [rcx], xmm0
                movups  xmmword ptr [rcx+10h], xmm0
                test    byte ptr [rsp+1D8h+arg_30], 4
                jz      short loc_1403390C3
                mov     rax, [rsp+1D8h+arg_20]
                mov     [rcx], rax
                mov     [rcx+8], rbx
                mov     [rsp+1D8h+arg_20], rcx

loc_1403390C3:                          ; CODE XREF: sub_140338D24+386↑j
                mov     [rbx], rdi
                mov     rax, [rsp+1D8h+arg_20]
                mov     [rbx+8], rax
                mov     rax, [rsp+1D8h+arg_28]
                mov     [rbx+10h], rax
                mov     [rbx+18h], r14
                mov     eax, [rsp+1D8h+arg_30]
                mov     [rbx+20h], rax
                mov     [rsi+180h], rbx
                mov     rax, cs:qword_140CFCAE0
                mov     [rsi+168h], rax
                mov     eax, 33h ; '3'
                mov     [rsi+170h], ax
                cmp     byte ptr [rsi+2Bh], 2
                jz      short loc_14033911C
                mov     rcx, rsi
                call    sub_14036CCC8

loc_14033911C:                          ; CODE XREF: sub_140338D24+3EE↑j
                mov     cl, 1
                call    sub_140212F34
                mov     [rsp+1D8h+var_F8], rax
                cmp     rax, cs:qword_140C4C670
                jb      loc_1403392B6
                sidt    fword ptr [rsp+1D8h+var_108]
                mov     r10, [rsp+1D8h+var_108+2]
                mov     r8, r10
                mov     [rsp+1D8h+var_168], r10
                mov     rax, r10
                mov     [rsp+1D8h+var_120], rax
                lea     rcx, [r10+350h]

loc_140339162:                          ; CODE XREF: sub_140338D24+452↓j
                cmp     rax, rcx
                jnb     short loc_140339178
                prefetchnta byte ptr [rax]
                add     rax, 40h ; '@'
                mov     [rsp+1D8h+var_120], rax
                jmp     short loc_140339162
; ---------------------------------------------------------------------------

loc_140339178:                          ; CODE XREF: sub_140338D24+441↑j
                mov     r9d, 350h
                mov     rdx, cs:qword_140C4C660
                mov     ecx, dword ptr cs:qword_140C4C668

loc_14033918B:                          ; CODE XREF: sub_140338D24+480↓j
                cmp     r9d, 8
                jb      short loc_1403391A6
                sub     rdx, [r8]
                ror     rdx, cl
                add     r8, 8
                mov     [rsp+1D8h+var_168], r8
                add     r9d, 0FFFFFFF8h
                jmp     short loc_14033918B
; ---------------------------------------------------------------------------

loc_1403391A6:                          ; CODE XREF: sub_140338D24+46B↑j
                                        ; sub_140338D24+49C↓j
                test    r9d, r9d
                jz      short loc_1403391C2
                movzx   eax, byte ptr [r8]
                sub     rdx, rax
                ror     rdx, cl
                inc     r8
                mov     [rsp+1D8h+var_168], r8
                dec     r9d
                jmp     short loc_1403391A6
; ---------------------------------------------------------------------------

loc_1403391C2:                          ; CODE XREF: sub_140338D24+485↑j
                cmp     cs:qword_140C4C678, rdx
                jz      short loc_14033920F
                cmp     cs:qword_140C4C630, r13
                jnz     short loc_140339218
                mov     [rsp+1D8h+var_17C], 90003C7h
                mov     eax, [rsp+1D8h+var_17C]
                xor     eax, 3C6h
                ror     eax, 58h
                mov     cs:qword_140C4C630, rax
                mov     cs:qword_140C4C638, r13
                mov     cs:qword_140C4C640, r13
                mov     cs:qword_140C4C648, 10Dh
                mov     cs:qword_140C4C650, r10

loc_14033920F:                          ; CODE XREF: sub_140338D24+4A5↑j
                cmp     cs:qword_140C4C630, r13
                jz      short loc_14033926A

loc_140339218:                          ; CODE XREF: sub_140338D24+4AE↑j
                lea     rax, sub_1405BFE80
                lea     rcx, dword_140C4C5F0
                cmp     cs:qword_140C4C608, rax
                jz      short loc_140339255
                mov     cs:dword_140C4C5F0, 113h
                mov     cs:qword_140C4C608, rax
                mov     cs:qword_140C4C610, rcx
                mov     cs:qword_140C4C628, r13
                mov     cs:qword_140C4C600, r13

loc_140339255:                          ; CODE XREF: sub_140338D24+509↑j
                mov     cs:qword_140C4C658, 0F40E0h
                xor     r8d, r8d
                xor     edx, edx
                call    KeInsertQueueDpc

loc_14033926A:                          ; CODE XREF: sub_140338D24+4F2↑j
                mov     cl, 1
                call    sub_140212F34
                mov     r11, rax
                mov     [rsp+1D8h+var_F0], rax
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                shr     rax, 4
                imul    rax, 27FCBBFh
                xor     edx, edx
                mov     rcx, 12A05F2000h
                div     rcx
                mov     rax, 430E234000h
                add     rax, rdx
                add     rax, r11
                mov     cs:qword_140C4C670, rax

loc_1403392B6:                          ; CODE XREF: sub_140338D24+40E↑j
                jmp     short loc_14033932A
;   } // starts at 140338D8C
; ---------------------------------------------------------------------------

loc_1403392B8:                          ; DATA XREF: .rdata:000000014007E594↑o
                                        ; .rdata:000000014007E5A4↑o
;   __except(loc_14041AEE3) // owned by 140338D8C
;   __except(loc_14041AEE3) // owned by 140339358
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1403392F2
                test    al, 1
                jz      short loc_1403392F2
                mov     rax, cr8
                sub     al, 2
                cmp     al, 0Dh
                ja      short loc_1403392F2
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                mov     eax, [rdx+14h]
                and     eax, 0FFFF0001h
                mov     [rdx+14h], eax
                jnz     short loc_1403392F2
                call    sub_1403F2EC4

loc_1403392F2:                          ; CODE XREF: sub_140338D24+59C↑j
                                        ; sub_140338D24+5A0↑j ...
                xor     eax, eax
                mov     cr8, rax
                mov     r8, [rsp+1D8h+var_110]
                mov     rax, [r8+168h]
                mov     [rsp+1D8h+var_C8], rax
                mov     [rsp+1D8h+var_1B8], 1
                mov     r9b, 1
                mov     rdx, [rsp+1D8h+var_190]
                lea     rcx, [rsp+1D8h+var_D8]
                call    sub_140339370
                nop

loc_14033932A:                          ; CODE XREF: sub_140338D24:loc_1403392B6↑j
                mov     rcx, [rsp+1D8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1D8h+var_28]
                mov     rbx, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140339358:                          ; CODE XREF: sub_140338D24+AA↑j
                                        ; DATA XREF: .rdata:000000014007E5A4↑o
;   __try { // __except at loc_1403392B8
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14033935D:                          ; CODE XREF: sub_140338D24+F3↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 140339358
byte_140339365  db 0CCh                 ; DATA XREF: .rdata:000000014007E5A4↑o
; } // starts at 140338D24
sub_140338D24   endp

algn_140339366:                         ; DATA XREF: .pdata:00000001400D6B78↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=180h

sub_140339370   proc near               ; CODE XREF: sub_140338D24+600↑p
                                        ; sub_1403FE830:loc_1403FE83D↓p ...

var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = byte ptr -180h
var_17F         = byte ptr -17Fh
var_17C         = dword ptr -17Ch
var_178         = dword ptr -178h
var_170         = qword ptr -170h
var_168         = dword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_EC          = byte ptr -0ECh
var_E0          = qword ptr -0E0h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_20          = byte ptr  30h

; FUNCTION CHUNK AT 000000014041AF22 SIZE 00000034 BYTES
; FUNCTION CHUNK AT 000000014047A2C4 SIZE 000001CF BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbp
                push    rbx
                push    rsi
                push    r12
                push    r14
                push    r15
                sub     rsp, 188h
                lea     rbp, [rsp+30h]
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+180h+var_38], rax
                mov     r12b, r9b
                mov     [rbp+180h+var_180], r9b
                mov     r14, r8
                mov     [rbp+180h+var_170], rdx
                mov     rbx, rcx
                mov     [rbp+180h+var_138], rcx
                mov     [rbp+180h+var_100], r8
                and     [rbp+180h+var_158], 0
                and     [rbp+180h+var_168], 0
                xor     edx, edx
                mov     r8d, 94h
                lea     rcx, [rbp+180h+var_EC]
                call    memset
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rbp+180h+var_50], xmm0
                mov     [rbp+180h+var_40], rax
                mov     [rbp+180h+var_17F], al
                mov     r9, gs:188h
                mov     [rbp+180h+var_148], r9
                mov     rcx, [r9+0B8h]
                mov     [rbp+180h+var_160], rcx
                inc     dword ptr gs:8030h
                cmp     [rbp+180h+arg_20], al
                jz      short loc_14033941B
                cmp     [rcx+8C0h], rax
                jnz     loc_14047A2C4

loc_14033941B:                          ; CODE XREF: sub_140339370+9C↑j
                                        ; sub_140339370+140FE0↓j
                mov     [rbp+180h+var_17C], 10001Fh
                xor     r15d, r15d
                test    r12b, r12b
                jnz     loc_14033955B

loc_14033942E:                          ; CODE XREF: sub_140339370+1F6↓j
                                        ; sub_140339370+20E↓j ...
                mov     r8, r15
                lea     rdx, [rbp+180h+var_168]
                mov     ecx, [rbp+180h+var_17C]
                call    sub_1402AA320
                mov     r8d, [rbp+180h+var_168]
                lea     rax, [r8+0Fh]
                cmp     rax, r8
                ja      short loc_140339454
                mov     rax, 0FFFFFFFFFFFFFF0h

loc_140339454:                          ; CODE XREF: sub_140339370+D8↑j
                and     rax, 0FFFFFFFFFFFFFFF0h
                call    __chkstk
                sub     rsp, rax
                lea     rsi, [rsp+1B0h+var_180]
                mov     [rbp+180h+var_108], rsi
                test    r12b, r12b
                jnz     loc_140339589

loc_140339472:                          ; CODE XREF: sub_140339370+223↓j
                mov     r9, r15
                lea     r8, [rbp+180h+var_158]
                mov     r15d, [rbp+180h+var_17C]
                mov     edx, r15d
                mov     rcx, rsi
                call    sub_1402AAD20
                mov     r8, rsi
                mov     rdx, [rbp+180h+var_170]
                mov     rcx, r14
                call    sub_140339B50
                cmp     dword ptr [rbx], 80000003h
                jz      loc_140339541

loc_1403394A3:                          ; CODE XREF: sub_140339370+1E0↓j
                                        ; sub_140339370+141044↓j
                mov     r8b, r12b
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140339980
                test    al, al
                jnz     short loc_1403394FE
                test    r12b, r12b
                jnz     loc_140339598
                cmp     [rbp+180h+arg_20], r12b
                jz      loc_14047A3B9
                mov     byte ptr [rsp+1B0h+var_188], r12b
                mov     byte ptr [rsp+1B0h+var_190], r12b
                mov     r9, rsi
                mov     r8, rbx
                mov     rdx, [rbp+180h+var_170]
                mov     rcx, r14
                call    sub_1403398CC
                test    al, al
                jnz     short loc_1403394FE
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402AAF70
                test    al, al
                jz      loc_14047A3B9

loc_1403394FE:                          ; CODE XREF: sub_140339370+143↑j
                                        ; sub_140339370+179↑j ...
                mov     byte ptr [rsp+1B0h+var_190], r12b
                mov     r9d, [rsi+30h]
                mov     r8, rsi
                mov     rdx, [rbp+180h+var_170]
                mov     rcx, r14
                call    sub_1403FD860
                cmp     [rbp+180h+var_17F], 0
                jnz     loc_14047A484

loc_140339520:                          ; CODE XREF: sub_140339370+336↓j
                                        ; sub_140339370+4E9↓j ...
                mov     rcx, [rbp+180h+var_38]
                xor     rcx, rbp
                call    __security_check_cookie
                lea     rsp, [rbp+158h]
                pop     r15
                pop     r14
                pop     r12
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140339541:                          ; CODE XREF: sub_140339370+12D↑j
                dec     qword ptr [rsi+0F8h]
                mov     eax, cs:dword_140CFC600
                test    al, 2
                jz      loc_1403394A3
                jmp     loc_14047A397
; ---------------------------------------------------------------------------

loc_14033955B:                          ; CODE XREF: sub_140339370+B8↑j
                test    cs:qword_140CFC458, 800000h
                jz      loc_14033942E
                mov     [rbp+180h+var_17C], 10005Fh
                mov     eax, ds:0FFFFF780000003ECh
                test    al, 2
                jz      loc_14033942E
                jmp     loc_14047A355
; ---------------------------------------------------------------------------

loc_140339589:                          ; CODE XREF: sub_140339370+FC↑j
                xor     edx, edx
                mov     rcx, rsi
                call    memset
                jmp     loc_140339472
; ---------------------------------------------------------------------------

loc_140339598:                          ; CODE XREF: sub_140339370+148↑j
                mov     r12, [rsi+98h]
                mov     [rbp+180h+var_140], r12
                mov     rax, [rbp+180h+var_160]
                mov     eax, [rax+87Ch]
                test    al, 1
                jnz     short loc_14033960D
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     qword ptr [rcx+580h], 0
                jz      short loc_1403395D7
                cmp     dword ptr [rbx], 80000002h
                jz      loc_14047A3FC

loc_1403395D7:                          ; CODE XREF: sub_140339370+259↑j
                                        ; sub_140339370+141097↓j
                movzx   eax, word ptr [rsi+38h]
                mov     ecx, 0FFF8h
                and     ax, cx
                cmp     ax, 20h ; ' '
                jnz     short loc_14033960D
                mov     eax, [rbx]
                cmp     eax, 80000003h
                jz      loc_14047A424
                cmp     eax, 80000004h
                jz      loc_14047A419

loc_140339601:                          ; CODE XREF: sub_140339370+1410AF↓j
                                        ; sub_140339370+1410BA↓j
                mov     eax, 0FFFFFFF0h
                and     r12, rax
                mov     [rbp+180h+var_140], r12

loc_14033960D:                          ; CODE XREF: sub_140339370+23F↑j
                                        ; sub_140339370+277↑j
                cmp     [rbp+180h+arg_20], 0
                jz      loc_14047A43C
                mov     r8d, [rbx]
                mov     dword ptr [rbp+180h+var_160], r8d
                mov     rcx, rbx
                call    sub_1409B7008
                mov     [rbp+180h+var_17F], al
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                cmp     qword ptr [rdx+578h], 0
                jnz     loc_14047A42F
                cmp     cs:byte_140C40741, 0
                jnz     loc_14047A42F
                cmp     r8d, 80000033h
                jz      loc_14047A42F

loc_140339664:                          ; CODE XREF: sub_140339370+1410C7↓j
                mov     byte ptr [rsp+1B0h+var_188], 0
                mov     al, [rbp+180h+var_180]
                mov     byte ptr [rsp+1B0h+var_190], al
                mov     r9, rsi
                mov     r8, rbx
                mov     rdx, [rbp+180h+var_170]
                mov     rcx, r14
                call    sub_1403398CC
                test    al, al
                jnz     loc_14047A47B
                mov     r8d, dword ptr [rbp+180h+var_160]

loc_14033968E:                          ; CODE XREF: sub_140339370+1410C1↓j
                cmp     r8d, 80000033h
                jz      short loc_1403396AC
                xor     r8d, r8d
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1407315B0
                test    al, al
                jnz     loc_140339520

loc_1403396AC:                          ; CODE XREF: sub_140339370+325↑j
                cli
                btr     dword ptr [r14+178h], 8
                sti
                mov     [rbp+180h+var_F0], 0C0000005h
                and     [rbp+180h+var_178], 0
                mov     r8, 7FFFFFFF0000h

loc_1403396CF:                          ; CODE XREF: sub_140339370+548↓j
                nop

loc_1403396D0:                          ; DATA XREF: .rdata:000000014007E5E8↑o
;   __try { // __except at loc_14033985E
                mov     rdx, r12
                mov     [rbp+180h+var_150], rdx
                mov     eax, r15d
                mov     ecx, 100040h
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_1403396FB
                mov     rax, [rbp+180h+var_158]
                mov     ecx, [rax+14h]
                sub     rdx, rcx
                mov     [rbp+180h+var_150], rdx
                and     rdx, 0FFFFFFFFFFFFFFC0h
                mov     [rbp+180h+var_150], rdx

loc_1403396FB:                          ; CODE XREF: sub_140339370+373↑j
                lea     rax, [rdx-28h]
                and     rax, 0FFFFFFFFFFFFFFF0h
                mov     [rbp+180h+var_170], rax
                mov     [rbp+180h+var_130], rax
                add     rax, 0FFFFFFFFFFFFFF60h
                mov     [rbp+180h+var_120], rax
                lea     r9, [rax-20h]
                mov     [rbp+180h+var_118], r9
                lea     r15, [r9-4D0h]
                mov     [rbp+180h+var_128], r15
                mov     eax, 0FFFFFB30h
                mov     dword ptr [rbp+180h+var_50], eax
                mov     rcx, r12
                sub     rcx, r15
                mov     dword ptr [rbp+180h+var_50+4], ecx
                mov     dword ptr [rbp+180h+var_50+8], eax
                mov     dword ptr [rbp+180h+var_50+0Ch], 4D0h
                mov     eax, edx
                sub     eax, r9d
                mov     dword ptr [rbp+180h+var_40], eax
                mov     eax, r12d
                sub     eax, edx
                mov     dword ptr [rbp+180h+var_40+4], eax
                lea     rax, [rcx-1]
                cmp     rax, 0FFEh
                ja      short loc_140339792
                cmp     r15, r8
                cmovnb  r15, r8
                mov     al, [r15]
                mov     [r15], al
                mov     al, [r15+rcx-1]
                mov     [r15+rcx-1], al
                mov     rcx, [rbp+180h+var_130]
                mov     r15, [rbp+180h+var_128]
                jmp     short loc_1403397A7
; ---------------------------------------------------------------------------

loc_140339792:                          ; CODE XREF: sub_140339370+3FF↑j
                mov     r8d, 10h
                mov     rdx, rcx
                mov     rcx, r15
                call    ProbeForWrite
                mov     rcx, [rbp+180h+var_170]

loc_1403397A7:                          ; CODE XREF: sub_140339370+420↑j
                mov     [rcx+18h], r12
                mov     rax, [rsi+0F8h]
                mov     [rcx], rax
                mov     rdx, rbx
                mov     rcx, [rbp+180h+var_120]
                call    sub_14033A5F8
                and     [rsp+1B0h+var_188], 0
                mov     rax, [rbp+180h+var_158]
                mov     [rsp+1B0h+var_190], rax
                mov     r9d, [rbp+180h+var_17C]
                lea     r8, [rbp+180h+var_50]
                mov     rbx, [rbp+180h+var_118]
                mov     rdx, rbx
                mov     cl, 1
                call    sub_1402AA610
                movups  xmm0, [rbp+180h+var_50]
                movups  xmmword ptr [rbx], xmm0
                movsd   xmm0, [rbp+180h+var_40]
                movsd   qword ptr [rbx+10h], xmm0
                mov     r9, [rbp+180h+var_148]
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [r9+1E6h], ax
                mov     [rbp+180h+var_178], 1
                mov     rcx, [r14+168h]
                call    sub_1402A9CE8
                mov     [r14+180h], r15
                mov     eax, 33h ; '3'
                mov     [r14+170h], ax
                mov     rax, cs:qword_140CFCAD8
                mov     [r14+168h], rax
                mov     rcx, r14
                call    sub_14036CCC8
                mov     rcx, r9
                call    sub_140245770
                and     [rbp+180h+var_178], 0
                jmp     loc_140339520
;   } // starts at 1403396D0
; ---------------------------------------------------------------------------

loc_14033985E:                          ; DATA XREF: .rdata:000000014007E5E8↑o
;   __except(loc_14041AF22) // owned by 1403396D0
                cmp     [rbp+180h+var_178], 0
                jz      short loc_140339871
                mov     rcx, [rbp+180h+var_148]
                call    sub_140245770
                and     [rbp+180h+var_178], 0

loc_140339871:                          ; CODE XREF: sub_140339370+4F2↑j
                mov     rbx, [rbp+180h+var_138]
                cmp     [rbp+180h+var_F0], 0C00000FDh
                jnz     short loc_1403398BD
                mov     rax, [rbx+10h]
                mov     [rbp+180h+var_E0], rax
                lea     rdx, [rbp+180h+var_F0]
                mov     rcx, rbx
                call    sub_14033A5F8
                mov     r8, 7FFFFFFF0000h
                mov     rsi, [rbp+180h+var_108]
                mov     r12, [rbp+180h+var_140]
                mov     r14, [rbp+180h+var_100]
                mov     r15d, [rbp+180h+var_17C]
                jmp     loc_1403396CF
; ---------------------------------------------------------------------------

loc_1403398BD:                          ; CODE XREF: sub_140339370+50F↑j
                or      rsi, 0FFFFFFFFFFFFFFFFh
                jmp     loc_14047A440
; } // starts at 140339370
sub_140339370   endp

; ---------------------------------------------------------------------------
byte_1403398C6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007E600↑o
                                        ; .pdata:00000001400D6B84↑o

; =============== S U B R O U T I N E =======================================


sub_1403398CC   proc near               ; CODE XREF: sub_140339370+172↑p
                                        ; sub_140339370+30D↑p ...

var_18          = byte ptr -18h
var_10          = byte ptr -10h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

                sub     rsp, 38h
                cmp     cs:dword_140C50BC4, 0
                mov     al, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], al
                mov     al, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], al
                jnz     short loc_1403398F4
                call    sub_140339904

loc_1403398EE:                          ; CODE XREF: sub_1403398CC+2D↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403398F4:                          ; CODE XREF: sub_1403398CC+1B↑j
                call    sub_1409BCA20
                jmp     short loc_1403398EE
sub_1403398CC   endp

; ---------------------------------------------------------------------------
byte_1403398FB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6B90↑o

; =============== S U B R O U T I N E =======================================


sub_140339904   proc near               ; CODE XREF: sub_1403398CC+1D↑p
                                        ; DATA XREF: .rdata:000000014007E634↑o ...

var_18          = byte ptr -18h
var_10          = byte ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014047A494 SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                cmp     dword ptr [r8], 80000003h
                mov     rdi, r9
                mov     rbx, r8
                mov     rsi, rdx
                mov     rbp, rcx
                jz      short loc_140339952

loc_14033992D:                          ; CODE XREF: sub_140339904+53↓j
                                        ; sub_140339904+74↓j
                cmp     cs:byte_140C0F430, 0
                jz      loc_14047A494

loc_14033993A:                          ; CODE XREF: sub_140339904+140B97↓j
                                        ; sub_140339904+140BA4↓j ...
                xor     al, al

loc_14033993C:                          ; CODE XREF: sub_140339904+6C↓j
                                        ; sub_140339904+140BF3↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140339952:                          ; CODE XREF: sub_140339904+27↑j
                cmp     dword ptr [r8+18h], 0
                jbe     short loc_14033992D
                mov     r8, [r8+20h]
                lea     r10, [r8-3]
                cmp     r10, 2
                ja      short loc_140339972

loc_140339967:                          ; CODE XREF: sub_140339904+72↓j
                inc     qword ptr [r9+0F8h]
                mov     al, 1
                jmp     short loc_14033993C
; ---------------------------------------------------------------------------

loc_140339972:                          ; CODE XREF: sub_140339904+61↑j
                cmp     r8, 1
                jz      short loc_140339967
                jmp     short loc_14033992D
sub_140339904   endp

; ---------------------------------------------------------------------------
algn_14033997A:                         ; DATA XREF: .rdata:000000014007E634↑o
                                        ; .pdata:00000001400D6B9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140339980   proc near               ; CODE XREF: sub_140339370+13C↑p
                                        ; DATA XREF: .rdata:000000014007E664↑o ...

var_88          = qword ptr -88h
var_78          = byte ptr -78h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
var_17          = byte ptr -17h
var_8           = byte ptr -8

; FUNCTION CHUNK AT 000000014047A4FC SIZE 000000C4 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 0A0h
                mov     rdi, rdx
                mov     bpl, r8b
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rax-78h]
                lea     r8d, [rdx+68h]
                call    memset
                mov     ecx, [rbx]
                xor     r14d, r14d
                sub     ecx, 10000001h
                jz      loc_140339A9E
                sub     ecx, 1
                jz      loc_14047A588
                sub     ecx, 1
                jz      loc_140339B05
                sub     ecx, 1
                jnz     loc_140339AD2

loc_1403399E0:                          ; CODE XREF: sub_140339980+140B93↓j
                movzx   eax, word ptr [rdi+38h]
                cmp     ax, 10h
                jnz     loc_140339AE8
                lea     rcx, loc_140406D67
                lea     rdx, loc_140406D57

loc_1403399FC:                          ; CODE XREF: sub_140339980+180↓j
                cmp     [rdi+0F8h], rcx
                jz      loc_14047A537

loc_140339A09:                          ; CODE XREF: sub_140339980+16C↓j
                                        ; sub_140339980+140BEB↓j
                cmp     dword ptr [rbx+18h], 2
                mov     esi, 10000000h
                mov     dword ptr [rbx], 0C0000005h
                jb      short loc_140339A24
                test    byte ptr [rbx+20h], 8
                jnz     loc_14047A575

loc_140339A24:                          ; CODE XREF: sub_140339980+98↑j
                                        ; sub_140339980+129↓j ...
                lea     rax, [rsp+0A8h+var_78]
                mov     r9d, esi
                mov     r8b, bpl
                mov     [rsp+0A8h+var_88], rax
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140339F84
                test    eax, eax
                js      loc_14047A598
                mov     rbp, [rsp+0A8h+var_20]
                test    rbp, rbp
                jnz     loc_140339B15

loc_140339A58:                          ; CODE XREF: sub_140339980+1A3↓j
                                        ; sub_140339980+140C1B↓j
                mov     dil, r14b
                test    eax, eax
                js      short loc_140339A68
                test    rbp, rbp
                jnz     loc_140339B28

loc_140339A68:                          ; CODE XREF: sub_140339980+DD↑j
                                        ; sub_140339980+1B3↓j
                cmp     esi, 80000000h
                jz      short loc_140339AAE
                cmp     esi, 8000000h
                jz      loc_14047A5A0

loc_140339A7C:                          ; CODE XREF: sub_140339980+134↓j
                                        ; sub_140339980+13E↓j ...
                mov     al, dil

loc_140339A7F:                          ; CODE XREF: sub_140339980+166↓j
                                        ; sub_140339980+140BB2↓j
                lea     r11, [rsp+0A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140339A9E:                          ; CODE XREF: sub_140339980+3F↑j
                mov     esi, 80000000h

loc_140339AA3:                          ; CODE XREF: sub_140339980+140B81↓j
                mov     dword ptr [rbx], 0C0000005h
                jmp     loc_140339A24
; ---------------------------------------------------------------------------

loc_140339AAE:                          ; CODE XREF: sub_140339980+EE↑j
                cmp     dword ptr [rbx], 0C0000005h
                jnz     short loc_140339A7C
                cmp     [rsp+0A8h+var_17], r14b
                jnz     short loc_140339A7C
                or      qword ptr [rbx+28h], 0FFFFFFFFFFFFFFFFh
                mov     dword ptr [rbx+18h], 2
                mov     [rbx+20h], r14
                jmp     short loc_140339A7C
; ---------------------------------------------------------------------------

loc_140339AD2:                          ; CODE XREF: sub_140339980+5A↑j
                sub     ecx, 2
                jz      loc_14047A506
                cmp     ecx, 1
                jz      loc_14047A4FC

loc_140339AE4:                          ; CODE XREF: sub_140339980+140BF8↓j
                xor     al, al
                jmp     short loc_140339A7F
; ---------------------------------------------------------------------------

loc_140339AE8:                          ; CODE XREF: sub_140339980+68↑j
                cmp     ax, 33h ; '3'
                jnz     loc_140339A09
                mov     rcx, cs:qword_140CFCA08
                mov     rdx, cs:qword_140CFC9A8
                jmp     loc_1403399FC
; ---------------------------------------------------------------------------

loc_140339B05:                          ; CODE XREF: sub_140339980+51↑j
                mov     esi, 20000000h
                mov     dword ptr [rbx], 0C0000094h
                jmp     loc_140339A24
; ---------------------------------------------------------------------------

loc_140339B15:                          ; CODE XREF: sub_140339980+D2↑j
                mov     rax, [rbp+10h]
                lea     rcx, [rsp+0A8h+var_78]
                call    sub_1404079D0
                jmp     loc_140339A58
; ---------------------------------------------------------------------------

loc_140339B28:                          ; CODE XREF: sub_140339980+E2↑j
                mov     dil, [rsp+0A8h+var_18]
                test    dil, dil
                jz      loc_140339A68
                jmp     loc_140339A7C
sub_140339980   endp

; ---------------------------------------------------------------------------
byte_140339B3E  db 12h dup(0CCh)        ; DATA XREF: .rdata:000000014007E664↑o
                                        ; .pdata:00000001400D6BA8↑o

; =============== S U B R O U T I N E =======================================


sub_140339B50   proc near               ; CODE XREF: sub_140338D24+338↑p
                                        ; sub_140339370+122↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047A5C0 SIZE 00000089 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 20h
                mov     rbx, r8
                mov     rbp, rdx
                mov     rdi, rcx
                mov     r14, cr8
                mov     r12d, 1
                cmp     r14b, r12b
                jb      loc_140339E39

loc_140339B84:                          ; CODE XREF: sub_140339B50+2F1↓j
                mov     esi, [r8+30h]
                mov     ecx, 100001h
                mov     eax, esi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_140339BD3
                mov     rax, [rdi+168h]
                mov     [r8+0F8h], rax
                movzx   eax, word ptr [rdi+170h]
                mov     [r8+38h], ax
                movzx   eax, word ptr [rdi+188h]
                mov     [r8+42h], ax
                mov     rax, [rdi+180h]
                mov     [r8+98h], rax
                mov     eax, [rdi+178h]
                mov     [r8+44h], eax

loc_140339BD3:                          ; CODE XREF: sub_140339B50+43↑j
                mov     ecx, 100004h
                mov     eax, esi
                and     eax, ecx
                cmp     eax, ecx
                jnz     short loc_140339BF0
                mov     dword ptr [r8+3Ah], 2B002Bh
                mov     dword ptr [r8+3Eh], 2B0053h

loc_140339BF0:                          ; CODE XREF: sub_140339B50+8E↑j
                mov     ecx, 100002h
                mov     eax, esi
                and     eax, ecx
                cmp     eax, ecx
                jnz     loc_140339CBB
                mov     rax, [rdi+30h]
                mov     [r8+78h], rax
                mov     rax, [rdi+38h]
                mov     [r8+80h], rax
                mov     rax, [rdi+40h]
                mov     [r8+88h], rax
                mov     rax, [rdi+48h]
                mov     [r8+0B8h], rax
                mov     rax, [rdi+50h]
                mov     [r8+0C0h], rax
                mov     rax, [rdi+58h]
                mov     [r8+0C8h], rax
                mov     rax, [rdi+60h]
                mov     [r8+0D0h], rax
                mov     rax, [rdi+158h]
                mov     [r8+0A0h], rax
                mov     rax, [rdx+100h]
                mov     [r8+90h], rax
                mov     rax, [rdx+108h]
                mov     [r8+0B0h], rax
                mov     rax, [rdx+110h]
                mov     [r8+0A8h], rax
                mov     rax, [rdx+118h]
                mov     [r8+0D8h], rax
                mov     rax, [rdx+120h]
                mov     [r8+0E0h], rax
                mov     rax, [rdx+128h]
                mov     [r8+0E8h], rax
                mov     rax, [rdx+130h]
                mov     [r8+0F0h], rax

loc_140339CBB:                          ; CODE XREF: sub_140339B50+AB↑j
                mov     ecx, 100040h
                mov     eax, esi
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_140339EAD

loc_140339CCC:                          ; CODE XREF: sub_140339B50+3CD↓j
                mov     ecx, 100008h
                mov     eax, esi
                and     eax, ecx
                cmp     eax, ecx
                jnz     loc_140339DD7
                test    [rdi+170h], r12b
                jnz     loc_140339E5E

loc_140339CEA:                          ; CODE XREF: sub_140339B50+315↓j
                movups  xmm0, xmmword ptr [rdi+70h]
                movdqu  xmmword ptr [rbx+1A0h], xmm0
                movups  xmm1, xmmword ptr [rdi+80h]
                movdqu  xmmword ptr [rbx+1B0h], xmm1
                movups  xmm0, xmmword ptr [rdi+90h]
                movdqu  xmmword ptr [rbx+1C0h], xmm0
                movups  xmm1, xmmword ptr [rdi+0A0h]
                movdqu  xmmword ptr [rbx+1D0h], xmm1
                movups  xmm0, xmmword ptr [rdi+0B0h]
                movdqu  xmmword ptr [rbx+1E0h], xmm0
                movups  xmm1, xmmword ptr [rdi+0C0h]
                movdqu  xmmword ptr [rbx+1F0h], xmm1
                movups  xmm0, xmmword ptr [rbp+30h]
                movdqu  xmmword ptr [rbx+200h], xmm0
                movups  xmm1, xmmword ptr [rbp+40h]
                movdqu  xmmword ptr [rbx+210h], xmm1
                movups  xmm0, xmmword ptr [rbp+50h]
                movdqu  xmmword ptr [rbx+220h], xmm0
                movups  xmm1, xmmword ptr [rbp+60h]
                movdqu  xmmword ptr [rbx+230h], xmm1
                movups  xmm0, xmmword ptr [rbp+70h]
                movdqu  xmmword ptr [rbx+240h], xmm0
                movups  xmm1, xmmword ptr [rbp+80h]
                movdqu  xmmword ptr [rbx+250h], xmm1
                movups  xmm0, xmmword ptr [rbp+90h]
                movdqu  xmmword ptr [rbx+260h], xmm0
                movups  xmm1, xmmword ptr [rbp+0A0h]
                movdqu  xmmword ptr [rbx+270h], xmm1
                movups  xmm0, xmmword ptr [rbp+0B0h]
                movdqu  xmmword ptr [rbx+280h], xmm0
                movups  xmm1, xmmword ptr [rbp+0C0h]
                movdqu  xmmword ptr [rbx+290h], xmm1
                mov     eax, [rdi+2Ch]
                mov     [rbx+34h], eax
                mov     eax, [rdi+2Ch]
                mov     [rbx+118h], eax

loc_140339DD7:                          ; CODE XREF: sub_140339B50+187↑j
                mov     eax, 100010h
                and     esi, eax
                cmp     esi, eax
                jnz     short loc_140339E1A
                mov     eax, [rdi+100h]
                test    rax, 355h
                jnz     short loc_140339E6A
                and     qword ptr [rbx+48h], 0
                and     qword ptr [rbx+50h], 0
                and     qword ptr [rbx+58h], 0
                and     qword ptr [rbx+60h], 0
                and     qword ptr [rbx+68h], 0
                xor     eax, eax

loc_140339E0B:                          ; CODE XREF: sub_140339B50+358↓j
                mov     rdx, rdi
                mov     [rbx+70h], rax
                mov     rcx, rbx
                call    sub_140339F30

loc_140339E1A:                          ; CODE XREF: sub_140339B50+290↑j
                cmp     r14b, r12b
                jb      short loc_140339E46

loc_140339E1F:                          ; CODE XREF: sub_140339B50+30C↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140339E39:                          ; CODE XREF: sub_140339B50+2E↑j
                mov     rax, cr8
                mov     cr8, r12
                jmp     loc_140339B84
; ---------------------------------------------------------------------------

loc_140339E46:                          ; CODE XREF: sub_140339B50+2CD↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047A5F0

loc_140339E54:                          ; CODE XREF: sub_140339B50+140AA3↓j
                                        ; sub_140339B50+140AB1↓j ...
                movzx   eax, r14b
                mov     cr8, rax
                jmp     short loc_140339E1F
; ---------------------------------------------------------------------------

loc_140339E5E:                          ; CODE XREF: sub_140339B50+194↑j
                fxsave  dword ptr [rbx+100h]
                jmp     loc_140339CEA
; ---------------------------------------------------------------------------

loc_140339E6A:                          ; CODE XREF: sub_140339B50+29E↑j
                mov     rax, [rdi+0D8h]
                mov     [rbx+48h], rax
                mov     rax, [rdi+0E0h]
                mov     [rbx+50h], rax
                mov     rax, [rdi+0E8h]
                mov     [rbx+58h], rax
                mov     rax, [rdi+0F0h]
                mov     [rbx+60h], rax
                mov     rax, [rdi+0F8h]
                mov     [rbx+68h], rax
                mov     rax, [rdi+100h]
                jmp     loc_140339E0B
; ---------------------------------------------------------------------------

loc_140339EAD:                          ; CODE XREF: sub_140339B50+176↑j
                test    [rdi+170h], r12b
                jz      short loc_140339F0E
                mov     rax, gs:188h
                movsxd  r9, dword ptr [r8+4E0h]
                mov     rcx, [rax+198h]
                test    rcx, rcx
                jnz     short loc_140339F22
                xor     r8d, r8d

loc_140339ED5:                          ; CODE XREF: sub_140339B50+140A7F↓j
                lea     rcx, [r9+2D0h]
                add     rcx, rbx
                test    r8, r8
                jnz     loc_14047A5D4
                mov     rdx, 0FFFFF78000000708h
                mov     rax, 0FFFFF780000003D8h
                mov     rdx, [rdx]
                mov     rax, [rax]
                or      rdx, rax
                and     rdx, 0FFFFFFFFFFFFFFFCh
                call    sub_14033A4DC

loc_140339F0E:                          ; CODE XREF: sub_140339B50+364↑j
                                        ; sub_140339B50+140A9B↓j
                mov     eax, [rdi+2Ch]
                mov     [rbx+34h], eax
                mov     eax, [rdi+2Ch]
                mov     [rbx+118h], eax
                jmp     loc_140339CCC
; ---------------------------------------------------------------------------

loc_140339F22:                          ; CODE XREF: sub_140339B50+380↑j
                mov     rax, [rcx]
                jmp     loc_14047A5C6
sub_140339B50   endp

; ---------------------------------------------------------------------------
algn_140339F2A:                         ; DATA XREF: .rdata:000000014007E690↑o
                                        ; .pdata:00000001400D6BB4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140339F30   proc near               ; CODE XREF: sub_140339B50+2C5↑p
                                        ; sub_14066640C+2F2↓p ...

; FUNCTION CHUNK AT 000000014047A64A SIZE 0000005C BYTES

                test    byte ptr [rdx+170h], 1
                mov     r8, rcx
                jz      short loc_140339F62
                mov     eax, [rdx+100h]
                bt      rax, 8
                jb      loc_14047A64A

loc_140339F4D:                          ; CODE XREF: sub_140339F30+46↓j
                xorps   xmm0, xmm0
                movups  xmmword ptr [r8+4B0h], xmm0
                movups  xmmword ptr [r8+4C0h], xmm0

locret_140339F60:                       ; CODE XREF: sub_140339F30+14073D↓j
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140339F62:                          ; CODE XREF: sub_140339F30+A↑j
                mov     rax, gs:20h
                mov     ecx, [rax+148h]
                bt      rcx, 8
                jnb     short loc_140339F4D
                jmp     loc_14047A64A
sub_140339F30   endp

; ---------------------------------------------------------------------------
byte_140339F7D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6BC0↑o

; =============== S U B R O U T I N E =======================================


sub_140339F84   proc near               ; CODE XREF: sub_140339980+BA↑p
                                        ; DATA XREF: .rdata:000000014007E6D0↑o ...

var_38          = word ptr -38h
var_34          = dword ptr -34h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014047A6A8 SIZE 0000007F BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15d, r9d
                mov     sil, r8b
                mov     rdi, rdx
                mov     r14, rcx
                xor     r12d, r12d
                mov     [rax+10h], r12b
                mov     [rax+20h], r12b
                mov     [rax-34h], r12d
                mov     [rax+18h], r12b
                mov     [rax-38h], r12w
                xor     edx, edx
                lea     r8d, [r12+68h]
                mov     rbx, [rsp+58h+arg_20]
                mov     rcx, rbx
                call    memset
                mov     [rbx+3Ch], r15d
                mov     rcx, [rdi+0F8h]
                mov     [rbx], rcx
                mov     [rbx+10h], rcx
                lea     rax, [rcx+10h]
                mov     [rbx+8], rax
                cmp     sil, 1
                jz      loc_14033A0A9

loc_140339FF6:                          ; CODE XREF: sub_140339F84+138↓j
                mov     [rbx+20h], r14
                mov     [rbx+18h], rdi
                mov     [rbx+51h], sil
                mov     [rbx+61h], r12b
                cmp     word ptr [rdi+38h], 23h ; '#'
                jz      loc_14033A0C3

loc_14033A011:                          ; CODE XREF: sub_140339F84+BA↓j
                                        ; sub_140339F84+143↓j
                lea     rdx, [rsp+58h+arg_10]
                mov     rcx, rbx
                call    sub_14033A10C
                test    eax, eax
                js      short loc_14033A07D
                lea     r8, [rsp+58h+arg_18]
                mov     dl, [rsp+58h+arg_10]
                mov     rcx, rbx
                call    sub_14033A134
                mov     edx, eax
                test    eax, eax
                js      short loc_14033A07D
                cmp     [rsp+58h+arg_18], r12b
                jnz     short loc_14033A011
                cmp     [rsp+58h+arg_10], 0Fh
                jz      short loc_14033A090

loc_14033A047:                          ; CODE XREF: sub_140339F84+121↓j
                mov     rax, [rbx+10h]
                dec     rax
                mov     [rbx+28h], rax
                mov     al, [rsp+58h+arg_10]
                mov     [rbx+38h], al
                bt      r15d, 1Bh
                jb      loc_14047A6A8
                mov     rcx, rbx
                call    sub_14033A1D8
                mov     edx, eax
                test    eax, eax
                js      short loc_14033A07D

loc_14033A072:                          ; CODE XREF: sub_140339F84+140728↓j
                mov     rdi, [rbx+58h]
                test    rdi, rdi
                jnz     short loc_14033A0CC
                xor     eax, eax

loc_14033A07D:                          ; CODE XREF: sub_140339F84+9C↑j
                                        ; sub_140339F84+B3↑j ...
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14033A090:                          ; CODE XREF: sub_140339F84+C1↑j
                mov     byte ptr [rbx+39h], 1
                lea     rdx, [rsp+58h+arg_10]
                mov     rcx, rbx
                call    sub_14033A10C
                mov     edx, eax
                test    eax, eax
                jns     short loc_14033A047
                jmp     short loc_14033A07D
; ---------------------------------------------------------------------------

loc_14033A0A9:                          ; CODE XREF: sub_140339F84+6C↑j
                                        ; DATA XREF: .rdata:000000014007E6BC↑o
;   __try { // __except at loc_14033A0C1
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                cmovnb  rcx, rax
                mov     al, [rcx]
                jmp     loc_140339FF6
;   } // starts at 14033A0A9
; ---------------------------------------------------------------------------

loc_14033A0C1:                          ; DATA XREF: .rdata:000000014007E6BC↑o
;   __except(1) // owned by 14033A0A9
                jmp     short loc_14033A07D
; ---------------------------------------------------------------------------

loc_14033A0C3:                          ; CODE XREF: sub_140339F84+87↑j
                mov     byte ptr [rbx+3Ah], 1
                jmp     loc_14033A011
; ---------------------------------------------------------------------------

loc_14033A0CC:                          ; CODE XREF: sub_140339F84+F5↑j
                mov     eax, [rdi+0Ch]
                test    al, 4
                jz      short loc_14033A0E1
                mov     rcx, rbx
                call    sub_1403CF19C
                mov     edx, eax
                test    eax, eax
                js      short loc_14033A07D

loc_14033A0E1:                          ; CODE XREF: sub_140339F84+14D↑j
                mov     eax, [rdi+0Ch]
                test    al, 1
                jnz     loc_14047A6B1
                mov     rax, [rbx+58h]
                mov     ecx, [rax+0Ch]
                test    cl, 2
                jnz     loc_14047A6D5

loc_14033A0FC:                          ; CODE XREF: sub_140339F84+14079E↓j
                mov     eax, edx
                jmp     loc_14033A07D
; } // starts at 140339F84
sub_140339F84   endp

; ---------------------------------------------------------------------------
byte_14033A103  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007E6D0↑o
                                        ; .pdata:00000001400D6BCC↑o

; =============== S U B R O U T I N E =======================================


sub_14033A10C   proc near               ; CODE XREF: sub_140339F84+95↑p
                                        ; sub_140339F84+118↑p ...
; __unwind { // __C_specific_handler
                mov     rax, [rcx+10h]
                cmp     rax, [rcx+8]
                jz      short loc_14033A124

loc_14033A116:                          ; DATA XREF: .rdata:000000014007E6E8↑o
;   __try { // __except at locret_14033A122
                mov     al, [rax]
                mov     [rdx], al
                inc     qword ptr [rcx+10h]
                xor     eax, eax
                jmp     short $+2
;   } // starts at 14033A116
; ---------------------------------------------------------------------------

locret_14033A122:                       ; CODE XREF: sub_14033A10C+14↑j
                                        ; DATA XREF: .rdata:000000014007E6E8↑o
;   __except(1) // owned by 14033A116
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033A124:                          ; CODE XREF: sub_14033A10C+8↑j
                mov     eax, 0C0000001h
                retn
sub_14033A10C   endp

; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033A10C
byte_14033A12B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6BD8↑o

; =============== S U B R O U T I N E =======================================


sub_14033A134   proc near               ; CODE XREF: sub_140339F84+AA↑p
                                        ; DATA XREF: .pdata:00000001400D6BE4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                xor     r9d, r9d
                mov     rdi, r8
                mov     r10, rcx
                mov     bl, r9b
                mov     r11d, r9d
                cmp     [rcx+3Ah], r9b
                jnz     short loc_14033A15B
                mov     al, dl
                and     al, 0F0h
                cmp     al, 40h ; '@'
                jz      short loc_14033A188

loc_14033A15B:                          ; CODE XREF: sub_14033A134+1D↑j
                lea     r11, qword_140011D40
                mov     eax, r9d
                mov     rcx, r11

loc_14033A168:                          ; CODE XREF: sub_14033A134+41↓j
                cmp     [rcx], dl
                jz      short loc_14033A1B5
                inc     eax
                add     rcx, 0Ch
                cmp     eax, 0Bh
                jb      short loc_14033A168

loc_14033A177:                          ; CODE XREF: sub_14033A134+7F↓j
                                        ; sub_14033A134+94↓j
                mov     [rdi], bl

loc_14033A179:                          ; CODE XREF: sub_14033A134+9C↓j
                mov     rbx, [rsp+arg_0]
                mov     eax, r9d
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033A188:                          ; CODE XREF: sub_14033A134+25↑j
                mov     r8d, 800h
                mov     [rcx+40h], dl

loc_14033A191:                          ; CODE XREF: sub_14033A134+92↓j
                mov     eax, [r10+30h]
                test    r8d, eax
                jnz     short loc_14033A1CA
                mov     ecx, [r10+34h]
                test    r11d, ecx
                jnz     short loc_14033A1CA
                or      eax, r8d
                mov     bl, 1
                or      ecx, r11d
                mov     [r10+30h], eax
                mov     [r10+34h], ecx
                jmp     short loc_14033A177
; ---------------------------------------------------------------------------

loc_14033A1B5:                          ; CODE XREF: sub_14033A134+36↑j
                lea     rcx, [rax+rax*2]
                mov     r8d, [r11+rcx*4+4]
                mov     r11d, [r11+rcx*4+8]
                test    r8d, r8d
                jnz     short loc_14033A191
                jmp     short loc_14033A177
; ---------------------------------------------------------------------------

loc_14033A1CA:                          ; CODE XREF: sub_14033A134+64↑j
                                        ; sub_14033A134+6D↑j
                mov     r9d, 0C000001Dh
                jmp     short loc_14033A179
sub_14033A134   endp

; ---------------------------------------------------------------------------
algn_14033A1D2:                         ; DATA XREF: .pdata:00000001400D6BE4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033A1D8   proc near               ; CODE XREF: sub_140339F84+E3↑p
                                        ; DATA XREF: .rdata:000000014007E720↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047A728 SIZE 0000005E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     al, [rcx+39h]
                lea     rsi, qword_140002458
                test    al, al
                lea     rbx, qword_140002350
                mov     rdi, rcx
                lea     rcx, qword_1400026B8
                cmovnz  rsi, rcx
                lea     rcx, qword_140002460
                cmovnz  rbx, rcx

loc_14033A213:                          ; CODE XREF: sub_14033A1D8+51↓j
                cmp     rbx, rsi
                jz      loc_14033A2A7
                mov     cl, [rbx]
                mov     dl, [rdi+38h]
                cmp     dl, cl
                jnb     short loc_14033A22B

loc_14033A225:                          ; CODE XREF: sub_14033A1D8+5C↓j
                                        ; sub_14033A1D8+A1↓j ...
                add     rbx, 18h
                jmp     short loc_14033A213
; ---------------------------------------------------------------------------

loc_14033A22B:                          ; CODE XREF: sub_14033A1D8+4B↑j
                mov     al, [rbx+1]
                dec     al
                add     al, cl
                cmp     dl, al
                ja      short loc_14033A225
                mov     ecx, [rbx+4]
                test    ecx, ecx
                jnz     loc_14047A728

loc_14033A241:                          ; CODE XREF: sub_14033A1D8+140559↓j
                mov     cl, [rbx+8]
                cmp     cl, 0FFh
                jz      loc_14047A736

loc_14033A24D:                          ; CODE XREF: sub_14033A1D8+140562↓j
                                        ; sub_14033A1D8+140572↓j
                cmp     byte ptr [rdi+50h], 0
                jnz     short loc_14033A26A
                lea     rdx, [rdi+41h]
                mov     rcx, rdi
                call    sub_14033A10C
                test    eax, eax
                js      short loc_14033A2A9
                mov     byte ptr [rdi+50h], 1
                mov     cl, [rbx+8]

loc_14033A26A:                          ; CODE XREF: sub_14033A1D8+79↑j
                cmp     cl, 0FFh
                jz      short loc_14033A27B
                mov     al, [rdi+41h]
                shr     al, 3
                and     al, 7
                cmp     cl, al
                jnz     short loc_14033A225

loc_14033A27B:                          ; CODE XREF: sub_14033A1D8+95↑j
                mov     cl, [rbx+0Ah]
                cmp     cl, 0FFh
                jnz     loc_14047A74F

loc_14033A287:                          ; CODE XREF: sub_14033A1D8+140584↓j
                mov     cl, [rbx+9]
                cmp     cl, 0FFh
                jnz     loc_14047A761

loc_14033A293:                          ; CODE XREF: sub_14033A1D8+14056C↓j
                                        ; sub_14033A1D8+14059B↓j ...
                mov     ecx, [rbx+0Ch]
                and     ecx, 0F4000000h
                jz      short loc_14033A2A3
                test    [rdi+3Ch], ecx
                jz      short loc_14033A225

loc_14033A2A3:                          ; CODE XREF: sub_14033A1D8+C4↑j
                mov     [rdi+58h], rbx

loc_14033A2A7:                          ; CODE XREF: sub_14033A1D8+3E↑j
                xor     eax, eax

loc_14033A2A9:                          ; CODE XREF: sub_14033A1D8+89↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033A1D8   endp

algn_14033A2BA:                         ; DATA XREF: .rdata:000000014007E720↑o
                                        ; .pdata:00000001400D6BF0↑o
                align 20h
; Exported entry 1308. KeSaveExtendedProcessorState

; =============== S U B R O U T I N E =======================================


