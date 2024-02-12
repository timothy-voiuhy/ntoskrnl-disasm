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


                public KeSaveExtendedProcessorState
KeSaveExtendedProcessorState proc near  ; CODE XREF: sub_1403EBD44+30↓p
                                        ; DATA XREF: .rdata:000000014007E73C↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014047A786 SIZE 0000001C BYTES

                sub     rsp, 38h
                mov     r8, cs:qword_140CFC458
                and     r8d, 800000h
                jz      short loc_14033A2FD
                mov     rax, 0FFFFF780000003D8h
                mov     rax, [rax]
                not     rax
                test    rcx, rax

loc_14033A2E7:                          ; CODE XREF: KeSaveExtendedProcessorState+44↓j
                setnz   al
                test    al, al
                jnz     loc_14047A786
                call    sub_14033A30C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033A2FD:                          ; CODE XREF: KeSaveExtendedProcessorState+12↑j
                test    rcx, 0FFFFFFFFFFFFFFFCh
                jmp     short loc_14033A2E7
KeSaveExtendedProcessorState endp

; ---------------------------------------------------------------------------
byte_14033A306  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007E73C↑o
                                        ; .pdata:00000001400D6BFC↑o

; =============== S U B R O U T I N E =======================================


sub_14033A30C   proc near               ; CODE XREF: KeSaveExtendedProcessorState+32↑p
                                        ; sub_1409950D0+D1↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047A7A2 SIZE 000000FA BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, rdx
                mov     rdx, rcx
                mov     rbp, cr8
                mov     r14, gs:188h
                cmp     bpl, 2
                ja      loc_14047A7A2
                mov     r8, cs:qword_140CFC458
                mov     r15, 0FFFFF780000003D8h
                and     r8d, 800000h
                jz      loc_14047A7F6
                cmp     bpl, 2
                jz      loc_14033A458

loc_14033A36A:                          ; CODE XREF: sub_14033A30C+157↓j
                mov     rax, [r15]
                not     rax
                test    rdx, rax

loc_14033A373:                          ; CODE XREF: sub_14033A30C+1404F1↓j
                jnz     loc_14047A7DA
                test    bpl, bpl
                jnz     loc_14033A46E
                test    byte ptr [r14+0C0h], 1
                jnz     loc_14033A46E
                xor     r12b, r12b

loc_14033A393:                          ; CODE XREF: sub_14033A30C+166↓j
                mov     r15, [r15]
                mov     rax, [r14+198h]
                or      r15, rdx
                and     r15, 0FFFFFFFFFFFFFFFCh
                test    rax, rax
                jnz     loc_14047A802

loc_14033A3AD:                          ; CODE XREF: sub_14033A30C+1404FD↓j
                test    r15, r15
                jz      loc_14047A82C
                cmp     bpl, 2
                jnb     loc_14033A477

loc_14033A3C0:                          ; CODE XREF: sub_14033A30C+140541↓j
                                        ; sub_14033A30C+140563↓j
                mov     rax, 0FFFFF780000003E8h

loc_14033A3CA:                          ; CODE XREF: sub_14033A30C+14055D↓j
                mov     r8d, [rax]
                lea     rcx, [rdi+18h]
                call    sub_14033A564
                test    eax, eax
                js      short loc_14033A43D

loc_14033A3DA:                          ; CODE XREF: sub_14033A30C+1AF↓j
                                        ; sub_14033A30C+14052E↓j
                mov     [rdi+8], r14
                mov     [rdi+10h], r12b
                mov     [rdi+18h], r15
                cmp     bpl, 1
                jnb     short loc_14033A3F4
                dec     word ptr [r14+1E6h]

loc_14033A3F4:                          ; CODE XREF: sub_14033A30C+DE↑j
                mov     rax, [r14+198h]
                mov     [rdi], rax
                test    r15, r15
                jz      short loc_14033A426
                test    cs:qword_140CFC458, 800000h
                jz      short loc_14033A426
                cmp     bpl, 2
                jz      loc_14033A4C0

loc_14033A41A:                          ; CODE XREF: sub_14033A30C+1BF↓j
                mov     rcx, [rdi+28h]
                mov     rdx, r15
                call    sub_14033A510

loc_14033A426:                          ; CODE XREF: sub_14033A30C+F5↑j
                                        ; sub_14033A30C+102↑j ...
                mov     [r14+198h], rdi
                cmp     bpl, 1
                jnb     short loc_14033A43B
                mov     rcx, r14
                call    sub_140245770

loc_14033A43B:                          ; CODE XREF: sub_14033A30C+125↑j
                xor     eax, eax

loc_14033A43D:                          ; CODE XREF: sub_14033A30C+CC↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033A458:                          ; CODE XREF: sub_14033A30C+58↑j
                mov     eax, ds:0FFFFF780000003ECh
                test    al, 2
                jz      loc_14033A36A
                jmp     loc_14047A7BE
; ---------------------------------------------------------------------------

loc_14033A46E:                          ; CODE XREF: sub_14033A30C+70↑j
                                        ; sub_14033A30C+7E↑j ...
                lea     r12d, [rbp+1]
                jmp     loc_14033A393
; ---------------------------------------------------------------------------

loc_14033A477:                          ; CODE XREF: sub_14033A30C+AE↑j
                test    rax, rax
                jnz     loc_14047A83F

loc_14033A480:                          ; CODE XREF: sub_14033A30C+140537↓j
                mov     rbx, gs:20h
                xor     edx, edx
                mov     rcx, [rbx+85D0h]
                lea     r8d, [rdx+40h]
                add     rcx, 200h
                call    memset
                mov     eax, cs:dword_140CFB064
                and     qword ptr [rdi+30h], 0
                mov     [rdi+20h], eax
                mov     rax, [rbx+85D0h]
                mov     [rdi+28h], rax
                jmp     loc_14033A3DA
; ---------------------------------------------------------------------------

loc_14033A4C0:                          ; CODE XREF: sub_14033A30C+108↑j
                mov     eax, ds:0FFFFF780000003ECh
                test    al, 2
                jz      loc_14033A41A
                jmp     loc_14047A874
sub_14033A30C   endp

; ---------------------------------------------------------------------------
byte_14033A4D6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007E768↑o
                                        ; .pdata:00000001400D6C08↑o

; =============== S U B R O U T I N E =======================================


sub_14033A4DC   proc near               ; CODE XREF: sub_140339B50+3B9↑p
                                        ; sub_14033A30C+140585↓p ...

; FUNCTION CHUNK AT 000000014047A89C SIZE 00000015 BYTES

                sub     rsp, 28h
                mov     eax, ds:0FFFFF780000003ECh
                mov     r8, rdx
                test    al, 2
                jnz     loc_14047A89C
                call    sub_14033A510

loc_14033A4F9:                          ; CODE XREF: sub_14033A4DC+1403D0↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033A4DC   endp

byte_14033A4FF  db 11h dup(0CCh)        ; DATA XREF: .rdata:000000014007E784↑o
                                        ; .pdata:00000001400D6C14↑o

; =============== S U B R O U T I N E =======================================


sub_14033A510   proc near               ; CODE XREF: sub_14033A30C+115↑p
                                        ; sub_14033A4DC+18↑p ...
                sub     rsp, 28h
                mov     eax, ds:0FFFFF780000003ECh
                mov     r9, rcx
                test    al, 2
                jnz     short loc_14033A54C
                mov     al, dl
                and     al, 6
                cmp     al, 4
                mov     rax, rdx
                jnz     short loc_14033A553
                mov     r8d, [rcx+18h]
                mov     ecx, [rcx+1Ch]
                shr     rdx, 20h
                xsave   byte ptr [r9]
                mov     [r9+18h], r8d
                mov     [r9+1Ch], ecx

loc_14033A546:                          ; CODE XREF: sub_14033A510+41↓j
                                        ; sub_14033A510+4A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033A54C:                          ; CODE XREF: sub_14033A510+12↑j
                call    sub_140407EC0
                jmp     short loc_14033A546
; ---------------------------------------------------------------------------

loc_14033A553:                          ; CODE XREF: sub_14033A510+1D↑j
                shr     rdx, 20h
                xsave   byte ptr [rcx]
                jmp     short loc_14033A546
sub_14033A510   endp

; ---------------------------------------------------------------------------
byte_14033A55C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6C20↑o

; =============== S U B R O U T I N E =======================================


sub_14033A564   proc near               ; CODE XREF: sub_14033A30C+C5↑p
                                        ; sub_1409E617C+73↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, 240h
                mov     rdi, rcx
                cmp     r8d, ebx
                mov     ecx, 200h
                cmovnb  ebx, r8d
                mov     r8d, 76615358h
                lea     edx, [rbx+3Fh]
                call    ExAllocatePoolWithTag
                mov     [rdi+18h], rax
                test    rax, rax
                jz      short loc_14033A5C8
                lea     rcx, [rax+3Fh]
                mov     [rdi+8], ebx
                and     rcx, 0FFFFFFFFFFFFFFC0h
                xor     edx, edx
                mov     [rdi+10h], rcx
                add     rcx, 200h
                lea     r8d, [rdx+40h]
                call    memset
                xor     eax, eax

loc_14033A5BC:                          ; CODE XREF: sub_14033A564+69↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033A5C8:                          ; CODE XREF: sub_14033A564+33↑j
                mov     eax, 0C0000017h
                jmp     short loc_14033A5BC
sub_14033A564   endp

; ---------------------------------------------------------------------------
algn_14033A5CF:                         ; DATA XREF: .pdata:00000001400D6C2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033A5E0   proc near               ; DATA XREF: .rdata:0000000140009238↑o
                                        ; .pdata:00000001400D6C38↑o

; FUNCTION CHUNK AT 000000014047A8B2 SIZE 0000001B BYTES

                mov     rax, [rcx+198h]
                test    rax, rax
                jnz     loc_14047A8B2
                retn
sub_14033A5E0   endp

; ---------------------------------------------------------------------------
                align 2
algn_14033A5F2:                         ; DATA XREF: .pdata:00000001400D6C38↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033A5F8   proc near               ; CODE XREF: sub_140339370+44C↑p
                                        ; sub_140339370+526↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     r8d, 98h
                xor     edx, edx
                mov     rdi, rcx
                call    memset
                movups  xmm0, xmmword ptr [rbx]
                lea     rdx, [rbx+20h]
                lea     rcx, [rdi+20h]
                movups  xmmword ptr [rdi], xmm0
                movsd   xmm1, qword ptr [rbx+10h]
                movsd   qword ptr [rdi+10h], xmm1
                mov     eax, [rbx+18h]
                mov     [rdi+18h], eax
                mov     r8d, [rbx+18h]
                shl     r8, 3
                call    memmove
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033A5F8   endp

algn_14033A64C:                         ; DATA XREF: .pdata:00000001400D6C44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033A660   proc near               ; CODE XREF: sub_14026A8F0+979↑p
                                        ; sub_1402882E0+245↑p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047A8CE SIZE 0000003C BYTES

                push    rbp
                xor     ebp, ebp
                lea     rax, [rcx+18h]
                mov     r9d, 1
                mov     r10, rcx
                cmp     [rcx+0Ch], r9d
                ja      short loc_14033A67A

loc_14033A677:                          ; CODE XREF: sub_14033A660+BE↓j
                                        ; sub_14033A660+CA↓j
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033A67A:                          ; CODE XREF: sub_14033A660+15↑j
                                        ; DATA XREF: .rdata:000000014007E7AC↑o ...
                mov     [rsp+8+arg_8], rbx
                mov     [rsp+8+arg_10], rsi
                mov     [rsp+8+arg_18], rdi
                nop     dword ptr [rax+00000000h]

loc_14033A690:                          ; CODE XREF: sub_14033A660+AB↓j
                mov     rbx, [rax]
                mov     edi, 1000h
                mov     ecx, r9d
                mov     r11, [r10+rcx*8+18h]
                lea     rsi, [r10+rcx*8]
                mov     r8, r11
                shr     r8, 0Ah
                and     r8d, 3
                movzx   edx, r8b
                shl     dl, 3
                lea     ecx, [rdx+r8]
                shl     rdi, cl
                mov     rcx, rbx
                shr     rcx, 0Ah
                and     ecx, 3
                cmp     r8, rcx
                jnz     short loc_14033A6FA
                mov     r8, rbx
                mov     rdx, r11
                and     r8d, 3FFh
                and     rdx, 0FFFFFFFFFFFFF000h
                lea     rcx, [r8+1]
                imul    rcx, rdi
                sub     rdx, rcx
                mov     rcx, rbx
                and     rcx, 0FFFFFFFFFFFFF000h
                cmp     rdx, rcx
                jz      short loc_14033A72F

loc_14033A6FA:                          ; CODE XREF: sub_14033A660+6A↑j
                                        ; sub_14033A660+D6↓j
                add     rax, 8
                mov     [rax], r11

loc_14033A701:                          ; CODE XREF: sub_14033A660+10C↓j
                                        ; sub_14033A660+1402A5↓j
                mov     ecx, [r10+0Ch]
                inc     r9d
                cmp     r9d, ecx
                jb      short loc_14033A690
                mov     rdi, [rsp+8+arg_18]
                mov     rsi, [rsp+8+arg_10]
                mov     rbx, [rsp+8+arg_8]
                test    ebp, ebp
                jz      loc_14033A677

loc_14033A724:                          ; DATA XREF: .pdata:00000001400D6C5C↑o
                                        ; .pdata:00000001400D6C68↑o
                sub     ecx, ebp
                mov     [r10+0Ch], ecx
                jmp     loc_14033A677
; ---------------------------------------------------------------------------

loc_14033A72F:                          ; CODE XREF: sub_14033A660+98↑j
                                        ; DATA XREF: .pdata:00000001400D6C68↑o ...
                cmp     r8, 3FFh
                jz      short loc_14033A6FA
                mov     rcx, r11
                and     ecx, 3FFh
                inc     rcx
                add     rcx, r8
                cmp     rcx, 3FFh
                ja      loc_14047A8CE
                lea     rcx, [rbx+1]
                add     rcx, r11
                xor     rcx, rbx
                and     ecx, 3FFh
                xor     rcx, rbx
                mov     [rax], rcx
                inc     ebp
                jmp     short loc_14033A701
sub_14033A660   endp

; ---------------------------------------------------------------------------
algn_14033A76E:                         ; DATA XREF: .pdata:00000001400D6C74↑o
                align 20h
; Exported entry 1877. PsGetWin32KFilterSet

; =============== S U B R O U T I N E =======================================


                public PsGetWin32KFilterSet
PsGetWin32KFilterSet proc near          ; CODE XREF: NtQueryInformationProcess+26C4↓p
                                        ; DATA XREF: .pdata:00000001400D6C80↑o
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     eax, [rcx+968h]
                retn
PsGetWin32KFilterSet endp

; ---------------------------------------------------------------------------
                align 8
algn_14033A798:                         ; DATA XREF: .pdata:00000001400D6C80↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14033A7A0   proc near               ; CODE XREF: sub_1403B4010:loc_1403B4091↓p
                                        ; DATA XREF: .rdata:000000014007E820↑o ...

var_38          = dword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  48h
arg_8           = byte ptr  50h
arg_10          = qword ptr  58h
arg_18          = qword ptr  60h

; FUNCTION CHUNK AT 000000014047A90A SIZE 000003FF BYTES

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
                mov     r15d, 1
                mov     rdi, rcx
                lea     r12d, [r15+1]

loc_14033A7C1:                          ; CODE XREF: sub_14033A7A0+E9↓j
                lea     rsi, [rdi-168h]
                mov     rbx, 0FFFFF6FB7DBEDF68h
                mov     rdi, [rdi]
                mov     [rbp+arg_0], rdi
                lock xor dword ptr [rsi+348h], 6
                and     [rbp+arg_10], 0
                xor     eax, eax
                mov     [rbp+var_18], rax
                xorps   xmm0, xmm0
                mov     eax, [rsi+464h]
                mov     [rbp+arg_8], 0
                movups  [rbp+var_28], xmm0
                test    al, al
                js      loc_14047A90A

loc_14033A805:                          ; CODE XREF: sub_14033A7A0+1404B0↓j
                lock and dword ptr [rsi+464h], 0FFFFFFBFh
                mov     al, [rsi+73Bh]
                and     al, 60h
                cmp     al, 40h ; '@'
                jz      loc_14047AC55

loc_14033A81D:                          ; CODE XREF: sub_14033A7A0+1404BE↓j
                mov     rbx, cr8
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047AC63

loc_14033A833:                          ; CODE XREF: sub_14033A7A0+1404C6↓j
                                        ; sub_14033A7A0+1404CF↓j ...
                mov     rcx, rsi
                call    sub_1402AF4F0
                lea     rax, [rsi+158h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_14033A8A1
                mov     rdx, [rax+8]
                cmp     [rcx+8], rax
                jnz     short loc_14033A8A5
                cmp     [rdx], rax
                jnz     short loc_14033A8A5
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                mov     [rax+8], rax
                mov     [rax], rax

loc_14033A867:                          ; CODE XREF: sub_14033A7A0+103↓j
                lock xor dword ptr [rsi+348h], 4
                lock and dword ptr [rsi], 0FFFFFF7Fh
                test    rcx, rcx
                jz      loc_14047ACA5
                mov     dl, bl
                call    sub_1402C3500

loc_14033A886:                          ; CODE XREF: sub_14033A7A0+140564↓j
                test    rdi, rdi
                jnz     loc_14033A7C1
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

loc_14033A8A1:                          ; CODE XREF: sub_14033A7A0+A8↑j
                xor     ecx, ecx
                jmp     short loc_14033A867
; ---------------------------------------------------------------------------

loc_14033A8A5:                          ; CODE XREF: sub_14033A7A0+B2↑j
                                        ; sub_14033A7A0+B7↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033A7A0   endp

; ---------------------------------------------------------------------------
algn_14033A8AC:                         ; DATA XREF: .rdata:000000014007E820↑o
                                        ; .pdata:00000001400D6C8C↑o
                align 20h
; Exported entry 493. FsRtlLookupLastBaseMcbEntry

; =============== S U B R O U T I N E =======================================


                public FsRtlLookupLastBaseMcbEntry
FsRtlLookupLastBaseMcbEntry proc near   ; CODE XREF: FsRtlLookupLastLargeMcbEntry+30↓p
                                        ; DATA XREF: .rdata:000000014007E840↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    rsi
                mov     r10d, [rcx+4]
                mov     r9, rcx
                test    r10d, r10d
                jz      short loc_14033A930

loc_14033A8CE:                          ; DATA XREF: .rdata:000000014007E840↑o
                                        ; .rdata:000000014007E854↑o ...
                mov     [rsp+8+arg_0], rbx
                lea     r11d, [r10-1]
                mov     [rsp+8+arg_8], rdi
                mov     rdi, [rcx+10h]
                mov     ecx, 0FFFFFFFFh
                mov     eax, [rdi+r11*8+4]
                lea     rbx, [rdi+r11*8]
                cmp     eax, ecx
                jz      short loc_14033A901
                test    r11d, r11d
                jnz     short loc_14033A927
                xor     ecx, ecx

loc_14033A8F9:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+6E↓j
                sub     eax, ecx
                mov     ecx, [rbx]
                dec     ecx
                add     ecx, eax

loc_14033A901:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+30↑j
                mov     rdi, [rsp+8+arg_8]
                mov     rbx, [rsp+8+arg_0]
                mov     eax, ecx
                mov     [r8], rax
                mov     ecx, [r9+4]
                mov     rax, [r9+10h]
                dec     ecx
                mov     eax, [rax+rcx*8]
                dec     eax
                mov     [rdx], rax
                mov     al, 1

loc_14033A924:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+72↓j
                                        ; DATA XREF: .pdata:00000001400D6CA4↑o ...
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033A927:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+35↑j
                                        ; DATA XREF: .pdata:00000001400D6CB0↑o ...
                lea     ecx, [r10-2]
                mov     ecx, [rdi+rcx*8]
                jmp     short loc_14033A8F9
; ---------------------------------------------------------------------------

loc_14033A930:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+C↑j
                                        ; DATA XREF: .pdata:00000001400D6CBC↑o ...
                xor     al, al
                jmp     short loc_14033A924
FsRtlLookupLastBaseMcbEntry endp

; ---------------------------------------------------------------------------
algn_14033A934:                         ; DATA XREF: .pdata:00000001400D6CC8↑o
                align 20h
; Exported entry 1231. KePulseEvent

; =============== S U B R O U T I N E =======================================


                public KePulseEvent
KePulseEvent    proc near               ; CODE XREF: sub_1402144B0+F9↑p
                                        ; sub_140238E40+18E↑p ...

var_68          = byte ptr -68h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047AD0A SIZE 00000315 BYTES

                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_8], edx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     bl, [rcx]
                mov     rsi, rcx
                and     bl, 7Fh
                mov     rcx, cr8
                mov     [rsp+88h+var_58], rcx
                mov     ebp, 2
                mov     cr8, rbp
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047AD0A

loc_14033A981:                          ; CODE XREF: KePulseEvent+1403CC↓j
                                        ; KePulseEvent+1403D5↓j ...
                mov     rdi, gs:20h
                mov     rcx, rsi
                mov     [rsp+88h+arg_18], rdi
                call    sub_1402AF4F0
                mov     eax, [rsi+4]
                mov     [rsp+88h+arg_0], eax
                test    eax, eax
                jnz     short loc_14033A9CA
                mov     dword ptr [rsi+4], 1
                lea     r14, [rsi+8]
                mov     r15, [r14]
                test    bl, bl
                jnz     loc_14047AEE0

loc_14033A9BE:                          ; CODE XREF: KePulseEvent+102↓j
                                        ; KePulseEvent+1406C8↓j
                cmp     r15, r14
                jnz     short loc_14033AA1E
                mov     [r14+8], r14
                mov     [r14], r14

loc_14033A9CA:                          ; CODE XREF: KePulseEvent+66↑j
                                        ; KePulseEvent+140457↓j ...
                and     dword ptr [rsi+4], 0
                lock and dword ptr [rsi], 0FFFFFF7Fh
                neg     [rsp+88h+arg_10]
                mov     r8d, 1
                mov     rcx, [rsp+88h+var_58]
                mov     r9d, [rsp+88h+arg_8]
                sbb     edx, edx
                mov     [rsp+88h+var_68], cl
                and     edx, 3
                mov     rcx, [rsp+88h+arg_18]
                call    sub_14023E110
                mov     eax, [rsp+88h+arg_0]
                add     rsp, 48h
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

loc_14033AA1E:                          ; CODE XREF: KePulseEvent+81↑j
                mov     rbx, r15
                mov     r15, [r15]
                mov     al, [rbx+10h]
                cmp     al, 1
                jnz     loc_14047AEEE
                movzx   r8d, word ptr [rbx+12h]

loc_14033AA34:                          ; CODE XREF: KePulseEvent+1406D3↓j
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14023CD30
                jmp     loc_14033A9BE
KePulseEvent    endp

; ---------------------------------------------------------------------------
algn_14033AA47:                         ; DATA XREF: .rdata:000000014007E8F4↑o
                                        ; .pdata:00000001400D6CD4↑o
                align 10h
; Exported entry 236. ExInitializeAutoExpandPushLock

; =============== S U B R O U T I N E =======================================


                public ExInitializeAutoExpandPushLock
ExInitializeAutoExpandPushLock proc near
                                        ; CODE XREF: sub_14067D5B0+8A↓p
                                        ; sub_1407CD904+48↓p ...
                xor     eax, eax
                mov     [rcx+8], rax
                mov     [rcx], rax
                test    dl, 1
                jz      short loc_14033AA60
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14033AA60:                          ; CODE XREF: ExInitializeAutoExpandPushLock+C↑j
                mov     dword ptr [rcx+8], 4
                retn
ExInitializeAutoExpandPushLock endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14033AA69:                         ; DATA XREF: .pdata:00000001400D6CE0↑o
                align 10h
; Exported entry 894. IoIsActivityTracingEnabled

; =============== S U B R O U T I N E =======================================


                public IoIsActivityTracingEnabled
IoIsActivityTracingEnabled proc near    ; DATA XREF: .pdata:00000001400D6CEC↑o

; FUNCTION CHUNK AT 000000014047B020 SIZE 00000011 BYTES

                mov     eax, cs:dword_140CF49EC
                test    al, 4
                jnz     loc_14047B020

loc_14033AA7E:                          ; CODE XREF: IoIsActivityTracingEnabled+1405B8↓j
                xor     al, al
                retn
IoIsActivityTracingEnabled endp

; ---------------------------------------------------------------------------
                align 2
algn_14033AA82:                         ; DATA XREF: .pdata:00000001400D6CEC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033AA88   proc near               ; CODE XREF: sub_140653C50+5A4↓p
                                        ; sub_140653C50+814↓p ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_18          = byte ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = byte ptr  58h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                and     dword ptr [rax+20h], 0
                xor     ebx, ebx
                cmp     [rsp+78h+arg_20], 1
                mov     r12d, r9d
                mov     rdi, r8
                mov     r15, rdx
                mov     r14, rcx
                jz      short loc_14033AADD
                mov     eax, [rcx+34h]
                test    eax, 40001h
                jnz     short loc_14033AAD8
                cmp     cs:dword_140C11FFC, ebx
                jz      short loc_14033AADD
                bt      eax, 14h
                jnb     short loc_14033AADD

loc_14033AAD8:                          ; CODE XREF: sub_14033AA88+40↑j
                mov     ebx, 2

loc_14033AADD:                          ; CODE XREF: sub_14033AA88+36↑j
                                        ; sub_14033AA88+48↑j ...
                mov     r13, [rsp+78h+arg_48]
                dec     word ptr [r13+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C45920
                call    ExAcquireResourceSharedLite
                lea     rcx, [rdi+20h]
                call    SeLockSubjectContext
                mov     rax, cs:IoFileObjectType
                lea     rcx, [rsp+78h+arg_18]
                mov     rsi, [rsp+78h+arg_30]
                lea     rdx, [rdi+20h]
                mov     [rsp+78h+var_30], rcx
                add     rax, 4Ch ; 'L'
                mov     rcx, [r14+110h]
                mov     r9d, ebx
                mov     [rsp+78h+var_38], rsi
                or      r9d, r12d
                mov     [rsp+78h+var_40], 1
                mov     r8b, 1
                mov     [rsp+78h+var_48], rax
                lea     rax, [rsp+78h+arg_28]
                mov     [rsp+78h+var_50], rax
                and     dword ptr [rsp+78h+var_58], 0
                call    SeAccessCheck
                mov     rdx, [rsp+78h+arg_28]
                mov     bpl, al
                test    rdx, rdx
                jz      short loc_14033AB85
                mov     rcx, rdi
                call    SeAppendPrivileges
                mov     rcx, [rsp+78h+arg_28]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14033AB85:                          ; CODE XREF: sub_14033AA88+E4↑j
                test    ebx, ebx
                jz      short loc_14033AB92
                test    r12d, ebx
                jnz     short loc_14033AB92
                not     ebx
                and     [rsi], ebx

loc_14033AB92:                          ; CODE XREF: sub_14033AA88+FF↑j
                                        ; sub_14033AA88+104↑j
                cmp     [rsp+78h+arg_50], 0
                jz      short loc_14033ABB1
                test    bpl, bpl
                jz      short loc_14033ABB1
                mov     eax, [rsi]
                or      [rdi+14h], eax
                mov     eax, [rsi]
                bts     eax, 19h
                not     eax
                and     [rdi+10h], eax

loc_14033ABB1:                          ; CODE XREF: sub_14033AA88+112↑j
                                        ; sub_14033AA88+117↑j
                test    r15, r15
                jz      short loc_14033ABF2
                mov     r9, [r14+110h]
                lea     rax, [rdi+0Ah]
                mov     r8, [rsp+78h+arg_38]
                mov     rdx, r15
                mov     rcx, [rsp+78h+arg_40]
                mov     [rsp+78h+var_38], rax
                mov     [rsp+78h+var_40], 1
                mov     byte ptr [rsp+78h+var_48], bpl
                mov     byte ptr [rsp+78h+var_50], 0
                mov     [rsp+78h+var_58], rdi
                call    SeOpenObjectAuditAlarm

loc_14033ABF2:                          ; CODE XREF: sub_14033AA88+12C↑j
                lea     rcx, [rdi+20h]
                call    SeUnlockSubjectContext
                lea     rcx, unk_140C45920
                call    ExReleaseResourceLite
                mov     rcx, r13
                call    sub_14021E1F0
                lea     r11, [rsp+78h+var_28]
                mov     al, bpl
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
sub_14033AA88   endp

algn_14033AC31:                         ; DATA XREF: .pdata:00000001400D6CF8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033AC38   proc near               ; CODE XREF: sub_1402177E0+3C0↑p
                                        ; sub_140306388+162↑p ...
                mov     rax, [rcx]
                mov     r10, rcx
                movsxd  r11, edx

loc_14033AC41:                          ; CODE XREF: sub_14033AC38+2F↓j
                mov     r9, rax
                mov     rcx, rax
                shr     r9, 1
                and     rcx, 0FFFFFFFFFFFFFFF9h
                and     r9d, 3
                mov     r8, rax
                add     r9, r11
                lea     rdx, [r9+r9]
                or      rdx, rcx
                lock cmpxchg [r10], rdx
                cmp     r8, rax
                jnz     short loc_14033AC41
                mov     eax, r9d
                retn
sub_14033AC38   endp

; ---------------------------------------------------------------------------
                align 2
byte_14033AC6E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6D04↑o

; =============== S U B R O U T I N E =======================================


sub_14033AC74   proc near               ; CODE XREF: sub_1402620A0+1E6↑p
                                        ; DATA XREF: .rdata:000000014007EACC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B032 SIZE 00000049 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     r10, [rdx]
                xor     ebx, ebx
                mov     r11, [rcx+20h]
                add     r10, 80000h
                mov     r14, r9
                mov     rdi, r8
                mov     rsi, rdx
                cmp     r11, 200000h
                jle     loc_14033AD79
                test    dword ptr [rcx+98h], 200h
                jz      loc_14033AD79
                cmp     r11, 2000000h
                jle     short loc_14033AD37
                mov     r8b, 1
                mov     rdx, r10
                call    sub_140271050
                mov     r10, rax

loc_14033ACD6:                          ; CODE XREF: sub_14033AC74+F8↓j
                                        ; sub_14033AC74+109↓j
                mov     rax, [r10]
                mov     r8d, 2FDh
                sub     rax, 10h
                cmp     [rsi+4], ebx
                jnz     loc_14047B070
                cmp     [rax], r8w
                jnz     short loc_14033AD1B
                cmp     [rax+24h], ebx
                jnz     loc_14047B070

loc_14033ACFB:                          ; CODE XREF: sub_14033AC74+A5↓j
                mov     edx, [rsi]
                cmp     edx, [rax+20h]
                jnb     short loc_14033AD1B
                mov     ecx, [rax+8]
                cmp     edx, ecx
                jnb     short loc_14033AD75
                cmp     [rdi], ecx
                jnb     short loc_14033AD71

loc_14033AD0D:                          ; CODE XREF: sub_14033AC74+FF↓j
                mov     rax, [rax+10h]
                sub     rax, 10h
                cmp     [rax], r8w
                jz      short loc_14033ACFB

loc_14033AD1B:                          ; CODE XREF: sub_14033AC74+7C↑j
                                        ; sub_14033AC74+8C↑j ...
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     [r14], rax
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033AD37:                          ; CODE XREF: sub_14033AC74+52↑j
                cmp     r10, r11
                jge     short loc_14033AD79
                cmp     [rcx+24h], ebx
                jnz     loc_14047B032
                mov     eax, r11d
                cmp     r11d, 100000h
                jbe     loc_14047B03C
                shr     rax, 12h
                shl     rax, 3

loc_14033AD5D:                          ; CODE XREF: sub_14033AC74+1403C3↓j
                                        ; sub_14033AC74+1403CD↓j
                sar     r10, 13h
                shl     r10, 4
                add     r10, [rcx+58h]
                add     r10, rax
                jmp     loc_14033ACD6
; ---------------------------------------------------------------------------

loc_14033AD71:                          ; CODE XREF: sub_14033AC74+97↑j
                mov     [rdi], ecx
                jmp     short loc_14033AD0D
; ---------------------------------------------------------------------------

loc_14033AD75:                          ; CODE XREF: sub_14033AC74+93↑j
                                        ; sub_14033AC74+1403E6↓j
                mov     bl, 1
                jmp     short loc_14033AD1B
; ---------------------------------------------------------------------------

loc_14033AD79:                          ; CODE XREF: sub_14033AC74+35↑j
                                        ; sub_14033AC74+45↑j ...
                lea     r10, [rcx+10h]
                jmp     loc_14033ACD6
sub_14033AC74   endp

; ---------------------------------------------------------------------------
algn_14033AD82:                         ; DATA XREF: .rdata:000000014007EACC↑o
                                        ; .pdata:00000001400D6D10↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033AD88   proc near               ; CODE XREF: sub_1402604A0+3E1↑p
                                        ; sub_140260E80+761↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047B07C SIZE 0000001F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     esi, edx
                mov     rdi, rcx
                test    edx, edx
                js      short loc_14033ADB3
                xor     al, al

loc_14033ADA2:                          ; CODE XREF: sub_14033AD88+63↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033ADB3:                          ; CODE XREF: sub_14033AD88+16↑j
                cmp     dword ptr [rcx+4], 1
                jb      loc_14047B07C
                call    sub_1402F8A50
                mov     rcx, rdi
                mov     rdx, [rax+8]
                mov     ebx, [rdx+34h]
                mov     rdx, rax
                and     ebx, 10h
                call    sub_1402F8A04
                mov     r8d, esi
                mov     edx, ebx
                mov     ecx, 1
                call    sub_14033AE38
                test    eax, eax
                setnz   al
                jmp     short loc_14033ADA2
sub_14033AD88   endp

; ---------------------------------------------------------------------------
byte_14033ADED  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007EAF0↑o
                                        ; .pdata:00000001400D6D1C↑o

; =============== S U B R O U T I N E =======================================


sub_14033ADF4   proc near               ; CODE XREF: sub_140224260+342↑p
                                        ; sub_140231440+602↑p ...
                sub     rsp, 28h
                cmp     ecx, 0C0000017h
                jz      short loc_14033AE2A
                cmp     ecx, 0C000009Ah
                jz      short loc_14033AE2A
                cmp     ecx, 0C00000A1h
                jz      short loc_14033AE2A
                cmp     rdx, 1000h
                ja      short loc_14033AE21

loc_14033AE19:                          ; CODE XREF: sub_14033ADF4+34↓j
                xor     eax, eax

loc_14033AE1B:                          ; CODE XREF: sub_14033ADF4+3B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033AE21:                          ; CODE XREF: sub_14033ADF4+23↑j
                call    FsRtlIsTotalDeviceFailure
                test    al, al
                jnz     short loc_14033AE19

loc_14033AE2A:                          ; CODE XREF: sub_14033ADF4+A↑j
                                        ; sub_14033ADF4+12↑j ...
                mov     eax, 1
                jmp     short loc_14033AE1B
sub_14033ADF4   endp

; ---------------------------------------------------------------------------
algn_14033AE31:                         ; DATA XREF: .pdata:00000001400D6D28↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033AE38   proc near               ; CODE XREF: sub_1402CB390+EF↑p
                                        ; sub_14033AD88+59↑p ...

; FUNCTION CHUNK AT 000000014047B09C SIZE 00000022 BYTES

                sub     rsp, 28h
                cmp     r8d, 0C0000054h
                jnz     short loc_14033AE97

loc_14033AE45:                          ; CODE XREF: sub_14033AE38+61↓j
                                        ; sub_14033AE38+65↓j
                cmp     r8d, 0C0000098h
                jz      short loc_14033AE9F
                cmp     r8d, 0C0000102h
                jz      short loc_14033AE9F
                cmp     r8d, 0C000026Eh
                jz      short loc_14033AE9F
                cmp     r8d, 0C000000Eh
                jz      short loc_14033AE9F
                cmp     r8d, 0C000009Dh
                jz      loc_14047B09C
                cmp     r8d, 0C00000A2h
                jz      loc_14047B0B1

loc_14033AE83:                          ; CODE XREF: sub_14033AE38+14026E↓j
                                        ; sub_14033AE38+140281↓j
                mov     ecx, r8d
                call    FsRtlIsTotalDeviceFailure
                test    al, al
                jz      short loc_14033AE9F
                xor     eax, eax

loc_14033AE91:                          ; CODE XREF: sub_14033AE38+6C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033AE97:                          ; CODE XREF: sub_14033AE38+B↑j
                test    ecx, ecx
                jz      short loc_14033AE45
                test    edx, edx
                jz      short loc_14033AE45

loc_14033AE9F:                          ; CODE XREF: sub_14033AE38+14↑j
                                        ; sub_14033AE38+1D↑j ...
                mov     eax, 1
                jmp     short loc_14033AE91
sub_14033AE38   endp

; ---------------------------------------------------------------------------
algn_14033AEA6:                         ; DATA XREF: .rdata:000000014007EB0C↑o
                                        ; .pdata:00000001400D6D34↑o
                align 10h
; Exported entry 486. FsRtlIsTotalDeviceFailure

; =============== S U B R O U T I N E =======================================


                public FsRtlIsTotalDeviceFailure
FsRtlIsTotalDeviceFailure proc near     ; CODE XREF: sub_14033ADF4:loc_14033AE21↑p
                                        ; sub_14033AE38+4E↑p ...
                test    ecx, ecx
                jns     short loc_14033AED0
                cmp     ecx, 0C000003Fh
                jz      short loc_14033AED0
                cmp     ecx, 0C000009Ch
                jz      short loc_14033AED0
                cmp     ecx, 0C0000470h
                jz      short loc_14033AED0
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14033AED0:                          ; CODE XREF: FsRtlIsTotalDeviceFailure+2↑j
                                        ; FsRtlIsTotalDeviceFailure+A↑j ...
                xor     al, al
                retn
FsRtlIsTotalDeviceFailure endp

; ---------------------------------------------------------------------------
                align 4
algn_14033AED4:                         ; DATA XREF: .pdata:00000001400D6D40↑o
                align 20h
; Exported entry 1884. PsIsCurrentThreadPrefetching

; =============== S U B R O U T I N E =======================================


                public PsIsCurrentThreadPrefetching
PsIsCurrentThreadPrefetching proc near  ; CODE XREF: sub_14068F878:loc_14068F98F↓p
                                        ; sub_1406932DC+181A1A↓p
                                        ; DATA XREF: ...
                mov     rax, gs:188h
                mov     al, [rax+518h]
                shr     al, 6
                and     al, 1
                retn
PsIsCurrentThreadPrefetching endp

; ---------------------------------------------------------------------------
                align 2
byte_14033AEF6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6D4C↑o

; =============== S U B R O U T I N E =======================================


sub_14033AEFC   proc near               ; CODE XREF: MmMarkPhysicalMemoryAsBad+C1↓p
                                        ; MmMarkPhysicalMemoryAsBad+11A↓p ...
                sub     rsp, 28h
                dec     word ptr [rdx+1E6h]
                add     rcx, 0C0h
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033AEFC   endp

byte_14033AF1B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400D6D58↑o
; Exported entry 470. FsRtlInsertPerStreamContext

; =============== S U B R O U T I N E =======================================


                public FsRtlInsertPerStreamContext
FsRtlInsertPerStreamContext proc near   ; DATA XREF: .rdata:000000014007EB30↑o
                                        ; .pdata:00000001400D6D64↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047B0BE SIZE 0000002F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14047B0E3
                test    byte ptr [rcx+6], 2
                jz      loc_14047B0E3
                mov     al, [rcx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_14047B0BE
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                add     rcx, 48h ; 'H'
                call    ExAcquirePushLockExclusiveEx

loc_14033AF80:                          ; CODE XREF: FsRtlInsertPerStreamContext+140198↓j
                lea     rax, [rbx+38h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_14047B0CD
                mov     [rdi+8], rax
                mov     [rdi], rcx
                mov     [rcx+8], rdi
                mov     [rax], rdi
                mov     al, [rbx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_14047B0D4
                xor     edx, edx
                lea     rcx, [rbx+48h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14033AFC5:                          ; CODE XREF: FsRtlInsertPerStreamContext+1401AE↓j
                xor     eax, eax

loc_14033AFC7:                          ; CODE XREF: FsRtlInsertPerStreamContext+1401B8↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInsertPerStreamContext endp

algn_14033AFD8:                         ; DATA XREF: .rdata:000000014007EB30↑o
                                        ; .pdata:00000001400D6D64↑o
                align 20h
; Exported entry 884. IoInitializeIrp

; =============== S U B R O U T I N E =======================================


                public IoInitializeIrp
IoInitializeIrp proc near               ; CODE XREF: IoInitializeIrpEx+1A↓p
                                        ; sub_1405001C0+C2↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047B0EE SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140C2A6E0
                mov     rbx, rcx
                movsx   rdi, r8b
                movzx   esi, dx
                test    al, 10h
                jnz     loc_14047B0EE

loc_14033B007:                          ; CODE XREF: IoInitializeIrp+140119↓j
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    memset
                mov     [rbx+2], si
                mov     eax, 6
                mov     rsi, [rsp+28h+arg_8]
                mov     [rbx], ax
                lea     eax, [rdi+1]
                mov     [rbx+43h], al
                mov     [rbx+42h], dil
                mov     rax, gs:188h
                mov     cl, [rax+24Ah]
                lea     rax, [rbx+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, ds:1Ah[rdi*8]
                add     rax, rdi
                mov     [rbx+46h], cl
                lea     rax, [rbx+rax*8]
                mov     [rbx+0B8h], rax
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoInitializeIrp endp

algn_14033B06E:                         ; DATA XREF: .rdata:000000014007EB54↑o
                                        ; .pdata:00000001400D6D70↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033B080   proc near               ; DATA XREF: .pdata:00000001400D6D7C↑o
                                        ; sub_14026A8F0+95F↑o ...
                mov     rax, [rcx]
                mov     rcx, [rdx]
                cmp     rax, rcx
                jb      short loc_14033B097
                xor     edx, edx
                cmp     rax, rcx
                setnbe  dl
                mov     eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033B097:                          ; CODE XREF: sub_14033B080+9↑j
                or      eax, 0FFFFFFFFh
                retn
sub_14033B080   endp

; ---------------------------------------------------------------------------
                align 4
byte_14033B09C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6D7C↑o

; =============== S U B R O U T I N E =======================================


sub_14033B0A4   proc near               ; CODE XREF: sub_14028A280+2C0↑p
                                        ; sub_14030EB80+44D↑p ...
                sub     rsp, 28h
                mov     r9, cs:qword_140C4DE10
                xor     r11d, r11d
                test    byte ptr [rcx+4], 2
                mov     r10d, edx
                mov     r8, rcx
                jnz     short loc_14033B0E2
                cmp     dword ptr [rcx], 1
                jnz     short loc_14033B0E2
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                or      rax, 0FFFFFFFFFFFFFFFFh
                cmp     [rdx+8F0h], r11
                cmovnz  r9, rax

loc_14033B0E2:                          ; CODE XREF: sub_14033B0A4+18↑j
                                        ; sub_14033B0A4+1D↑j
                mov     ecx, [rcx+8]
                cmp     [r8+0Ch], ecx
                jnb     short loc_14033B0FF
                cmp     [r8+5], r11b
                jnz     short loc_14033B0FF
                cmp     [r8+10h], r9
                ja      short loc_14033B0FF

loc_14033B0F7:                          ; CODE XREF: sub_14033B0A4+75↓j
                xor     eax, eax

loc_14033B0F9:                          ; CODE XREF: sub_14033B0A4+66↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033B0FF:                          ; CODE XREF: sub_14033B0A4+45↑j
                                        ; sub_14033B0A4+4B↑j ...
                test    r10b, 2
                jz      short loc_14033B10C

loc_14033B105:                          ; CODE XREF: sub_14033B0A4+84↓j
                mov     eax, 1
                jmp     short loc_14033B0F9
; ---------------------------------------------------------------------------

loc_14033B10C:                          ; CODE XREF: sub_14033B0A4+5F↑j
                cmp     r9, 400h
                jnb     short loc_14033B12A

loc_14033B115:                          ; CODE XREF: sub_14033B0A4+8C↓j
                test    r10b, 1
                jz      short loc_14033B0F7
                mov     byte ptr [r8+5], 1

loc_14033B120:                          ; CODE XREF: sub_14033B0A4+8A↓j
                mov     rcx, r8
                call    sub_14028EDB0
                jmp     short loc_14033B105
; ---------------------------------------------------------------------------

loc_14033B12A:                          ; CODE XREF: sub_14033B0A4+6F↑j
                cmp     [r8+5], r11b
                jz      short loc_14033B120
                jmp     short loc_14033B115
sub_14033B0A4   endp

; ---------------------------------------------------------------------------
algn_14033B132:                         ; DATA XREF: .pdata:00000001400D6D88↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033B138   proc near               ; CODE XREF: sub_1402108D4+101↑p
                                        ; sub_140212738+77↑p ...

var_38          = xmmword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                lea     r11, [rcx+rdx]
                mov     rsi, r8
                mov     r10, rcx
                mov     r9, 52BC33FEDBE4CBB5h
                mov     r15d, 0D6D018F5h
                mov     r14d, 0A2AA033Bh
                cmp     rdx, 20h ; ' '
                jb      loc_14033B24E
                movdqa  xmm0, cs:xmmword_140011DD0
                lea     rbp, [r11-20h]
                movups  [rsp+38h+var_38], xmm0
                mov     r8, [rax-30h]
                movups  xmmword ptr [rax-28h], xmm0
                mov     rdx, [rax-20h]
                mov     rdi, [rax-28h]
                mov     rbx, qword ptr [rsp+38h+var_38]

loc_14033B19E:                          ; CODE XREF: sub_14033B138+B7↓j
                imul    rcx, [r10+10h], 62992FC1h
                mov     rax, [r10]
                imul    rax, r15
                add     rbx, rax
                mov     rax, [r10+8]
                imul    rax, r14
                ror     rbx, 1Dh
                add     r8, rax
                add     rbx, rdi
                mov     rax, [r10+18h]
                add     rdi, rcx
                imul    rcx, rax, 30BC5B29h
                ror     r8, 1Dh
                add     r10, 20h ; ' '
                add     r8, rdx
                ror     rdi, 1Dh
                add     rdx, rcx
                add     rdi, rbx
                ror     rdx, 1Dh
                add     rdx, r8
                cmp     r10, rbp
                jbe     short loc_14033B19E
                lea     rax, [rdx+rbx]
                imul    rax, r15
                add     rax, r8
                ror     rax, 25h
                imul    rax, r14
                xor     rax, rdi
                lea     rcx, [rax+r8]
                imul    rcx, r14
                add     rcx, rbx
                ror     rcx, 25h
                imul    rcx, r15
                xor     rcx, rdx
                lea     rdx, [rcx+r8]
                imul    rdx, r14
                add     rdx, rax
                add     rax, rbx
                ror     rdx, 25h
                imul    rax, r15
                imul    rdx, r15
                add     rax, rcx
                ror     rax, 25h
                imul    rax, r14
                xor     rdx, rax
                xor     rdx, r8
                xor     rdx, rbx
                add     r9, rdx

loc_14033B24E:                          ; CODE XREF: sub_14033B138+3C↑j
                mov     rax, r11
                sub     rax, r10
                cmp     rax, 10h
                jge     loc_14033B325

loc_14033B25E:                          ; CODE XREF: sub_14033B138+244↓j
                mov     rax, r11
                sub     rax, r10
                cmp     rax, 8
                jge     short loc_14033B2C4

loc_14033B26A:                          ; CODE XREF: sub_14033B138+1A8↓j
                mov     rax, r11
                sub     rax, r10
                cmp     rax, 4
                jge     loc_14033B381

loc_14033B27A:                          ; CODE XREF: sub_14033B138+268↓j
                mov     rax, r11
                sub     rax, r10
                cmp     rax, 2
                jge     short loc_14033B300

loc_14033B286:                          ; CODE XREF: sub_14033B138+1E8↓j
                sub     r11, r10
                cmp     r11, 1
                jge     short loc_14033B2E2

loc_14033B28F:                          ; CODE XREF: sub_14033B138+1C6↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rcx, r9
                mov     rbp, [rsp+38h+arg_8]
                ror     rcx, 1Ch
                xor     rcx, r9
                imul    rcx, r15
                mov     rax, rcx
                ror     rax, 1Dh
                xor     rax, rcx
                mov     [rsi], rax
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033B2C4:                          ; CODE XREF: sub_14033B138+130↑j
                imul    rax, [r10], 30BC5B29h
                add     r10, 8
                add     r9, rax
                mov     rax, r9
                ror     rax, 37h
                imul    rax, r14
                xor     r9, rax
                jmp     short loc_14033B26A
; ---------------------------------------------------------------------------

loc_14033B2E2:                          ; CODE XREF: sub_14033B138+155↑j
                movzx   eax, byte ptr [r10]
                imul    rcx, rax, 30BC5B29h
                add     r9, rcx
                mov     rax, r9
                ror     rax, 25h
                imul    rax, r14
                xor     r9, rax
                jmp     short loc_14033B28F
; ---------------------------------------------------------------------------

loc_14033B300:                          ; CODE XREF: sub_14033B138+14C↑j
                movzx   eax, word ptr [r10]
                add     r10, 2
                imul    rcx, rax, 30BC5B29h
                add     r9, rcx
                mov     rax, r9
                ror     rax, 30h
                imul    rax, r14
                xor     r9, rax
                jmp     loc_14033B286
; ---------------------------------------------------------------------------

loc_14033B325:                          ; CODE XREF: sub_14033B138+120↑j
                imul    rcx, [r10], 62992FC1h
                mov     rax, [r10+8]
                add     r10, 10h
                add     rcx, r9
                ror     rcx, 1Dh
                imul    r8, rcx, 30BC5B29h
                imul    rcx, rax, 62992FC1h
                add     rcx, r9
                ror     rcx, 1Dh
                imul    rdx, rcx, 30BC5B29h
                mov     rcx, r8
                imul    rcx, r15
                imul    rax, rdx, 30BC5B29h
                ror     rcx, 15h
                add     rcx, rdx
                xor     rcx, r8
                ror     rax, 15h
                add     rcx, rax
                xor     rcx, rdx
                add     r9, rcx
                jmp     loc_14033B25E
; ---------------------------------------------------------------------------

loc_14033B381:                          ; CODE XREF: sub_14033B138+13C↑j
                mov     eax, [r10]
                add     r10, 4
                imul    rcx, rax, 30BC5B29h
                add     r9, rcx
                mov     rax, r9
                ror     rax, 1Ah
                imul    rax, r14
                xor     r9, rax
                jmp     loc_14033B27A
sub_14033B138   endp

; ---------------------------------------------------------------------------
byte_14033B3A5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6D94↑o

; =============== S U B R O U T I N E =======================================


sub_14033B3AC   proc near               ; CODE XREF: sub_1402144B0+78↑p
                                        ; DATA XREF: .rdata:000000014007EBF0↑o ...

; FUNCTION CHUNK AT 000000014047B0FE SIZE 00000031 BYTES

                push    rdi
                sub     rsp, 20h
                cmp     cs:qword_140C4ED60, 0
                jz      loc_14033B478
                mov     eax, cs:dword_140C29F60
                mov     edi, 1
                mov     ecx, cs:dword_140C29F60
                test    eax, eax
                jz      loc_14033B47F
                cmp     ecx, edi
                jbe     loc_14047B0FE
                cmp     eax, ecx
                jb      loc_14033B47F
                mov     rdx, cs:qword_140C29F68
                lea     r9d, [rcx-1]
                mov     eax, r9d
                shr     rax, 5
                mov     r10d, [rdx]
                lea     r8, [rdx+rax*4]
                cmp     rdx, r8
                jz      loc_14047B117
                test    r10d, r10d
                jmp     short loc_14033B413
; ---------------------------------------------------------------------------

loc_14033B410:                          ; CODE XREF: sub_14033B3AC+70↓j
                cmp     dword ptr [rdx], 0

loc_14033B413:                          ; CODE XREF: sub_14033B3AC+62↑j
                jnz     short loc_14033B47F
                add     rdx, 4
                cmp     rdx, r8
                jnz     short loc_14033B410
                or      r8d, 0FFFFFFFFh
                not     r9d
                mov     cl, r9b
                shr     r8d, cl
                test    [rdx], r8d

loc_14033B42E:                          ; CODE XREF: sub_14033B3AC+13FD7E↓j
                setz    al

loc_14033B431:                          ; CODE XREF: sub_14033B3AC+13FD66↓j
                test    al, al
                jz      short loc_14033B47F
                xor     ecx, ecx
                lea     rdx, unk_140C2A070

loc_14033B43E:                          ; CODE XREF: sub_14033B3AC+CA↓j
                xor     r9d, r9d
                mov     r10, rdx

loc_14033B444:                          ; CODE XREF: sub_14033B3AC+BF↓j
                xor     r11d, r11d
                mov     r8, r10

loc_14033B44A:                          ; CODE XREF: sub_14033B3AC+B2↓j
                mov     eax, [r8]
                cmp     eax, [r8+4]
                jnz     short loc_14033B47F
                add     r11d, edi
                add     r8, 8
                cmp     r11d, 2
                jb      short loc_14033B44A
                add     r9d, edi
                add     r10, 10h
                cmp     r9d, 2
                jb      short loc_14033B444
                add     ecx, edi
                add     rdx, 20h ; ' '
                cmp     ecx, 2
                jb      short loc_14033B43E

loc_14033B478:                          ; CODE XREF: sub_14033B3AC+E↑j
                                        ; sub_14033B3AC+E1↓j ...
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033B47F:                          ; CODE XREF: sub_14033B3AC+27↑j
                                        ; sub_14033B3AC+37↑j ...
                xor     eax, eax
                lock cmpxchg cs:word_140C2A0D0, di
                test    ax, ax
                jnz     short loc_14033B478
                and     cs:qword_140C2A0C8, 0
                lea     rax, sub_1407B5DB0
                and     cs:qword_140C2A0B0, 0
                lea     rcx, qword_140C2A0B0
                mov     edx, edi
                mov     cs:qword_140C2A0C0, rax
                call    ExQueueWorkItem
                jmp     short loc_14033B478
sub_14033B3AC   endp

; ---------------------------------------------------------------------------
byte_14033B4BD  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014007EBF0↑o
                                        ; .pdata:00000001400D6DA0↑o
; Exported entry 796. IoCsqInsertIrp

; =============== S U B R O U T I N E =======================================


                public IoCsqInsertIrp
IoCsqInsertIrp  proc near               ; DATA XREF: .pdata:00000001400D6DAC↑o
                sub     rsp, 28h
                xor     r9d, r9d
                call    IoCsqInsertIrpEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCsqInsertIrp  endp

algn_14033B4E2:                         ; DATA XREF: .pdata:00000001400D6DAC↑o
                align 10h
; Exported entry 797. IoCsqInsertIrpEx

; =============== S U B R O U T I N E =======================================


                public IoCsqInsertIrpEx
IoCsqInsertIrpEx proc near              ; CODE XREF: IoCsqInsertIrp+7↑p
                                        ; DATA XREF: .rdata:000000014007EC18↑o ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B130 SIZE 00000055 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                xor     ebp, ebp
                mov     [rsp+38h+arg_0], 0
                mov     r14, r9
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbx, rcx
                test    r8, r8
                jnz     loc_14033B5A1
                mov     [rdx+90h], rcx

loc_14033B525:                          ; CODE XREF: IoCsqInsertIrpEx+C7↓j
                mov     rax, [rcx+20h]
                lea     rdx, [rsp+38h+arg_0]
                and     [rcx+38h], rbp
                call    sub_1404079D0
                cmp     dword ptr [rbx], 3
                mov     rdx, rdi
                mov     rax, [rbx+8]
                mov     rcx, rbx
                jnz     short loc_14033B59A
                mov     r8, r14
                call    sub_1404079D0
                mov     ebp, eax
                test    eax, eax
                js      short loc_14033B574

loc_14033B554:                          ; CODE XREF: IoCsqInsertIrpEx+AF↓j
                mov     rax, [rdi+0B8h]
                or      byte ptr [rax+3], 1
                lea     rax, sub_1403A5300
                xchg    rax, [rdi+68h]
                cmp     byte ptr [rdi+44h], 0
                jnz     loc_14047B130

loc_14033B574:                          ; CODE XREF: IoCsqInsertIrpEx+62↑j
                mov     rcx, rbx

loc_14033B577:                          ; CODE XREF: IoCsqInsertIrpEx+13FC4C↓j
                mov     dl, [rsp+38h+arg_0]
                mov     rax, [rbx+28h]
                call    sub_1404079D0

loc_14033B584:                          ; CODE XREF: IoCsqInsertIrpEx+13FC90↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, ebp
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033B59A:                          ; CODE XREF: IoCsqInsertIrpEx+54↑j
                call    sub_1404079D0
                jmp     short loc_14033B554
; ---------------------------------------------------------------------------

loc_14033B5A1:                          ; CODE XREF: IoCsqInsertIrpEx+28↑j
                mov     [rdx+90h], rsi
                mov     [r8+8], rdi
                mov     [r8+10h], rbx
                mov     dword ptr [r8], 1
                jmp     loc_14033B525
IoCsqInsertIrpEx endp

; ---------------------------------------------------------------------------
byte_14033B5BC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007EC18↑o
                                        ; .pdata:00000001400D6DB8↑o

; =============== S U B R O U T I N E =======================================


sub_14033B5C4   proc near               ; CODE XREF: sub_140252B20+534↑p
                                        ; DATA XREF: .rdata:000000014007EC3C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B186 SIZE 00000042 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [r11+8], 0
                mov     rbx, rcx
                cmp     cs:dword_140C11FCC, 0
                jz      short loc_14033B64D
                mov     rdi, [rcx+8168h]
                test    rdi, rdi
                jz      short loc_14033B64D
                mov     rsi, [rcx+8170h]
                test    rsi, rsi
                jz      short loc_14033B64D
                mov     rax, [rdi+0E0h]
                test    rax, rax
                jz      short loc_14033B64D
                cmp     byte ptr [rcx+80F0h], 0
                jz      short loc_14033B64D
                lea     rcx, [r11+8]
                call    sub_1404079D0
                mov     eax, [rdi+144h]
                cmp     [rsi+48h], eax
                jb      short loc_14033B667
                cmp     byte ptr [rbx+80F8h], 0
                jz      short loc_14033B65E
                mov     rax, [rsp+28h+arg_0]
                cmp     [rbx+8100h], rax
                jnz     loc_14047B186

loc_14033B641:                          ; CODE XREF: sub_14033B5C4+A1↓j
                                        ; sub_14033B5C4+AA↓j ...
                mov     rax, [rsp+28h+arg_0]
                mov     [rbx+8100h], rax

loc_14033B64D:                          ; CODE XREF: sub_14033B5C4+1F↑j
                                        ; sub_14033B5C4+2B↑j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033B65E:                          ; CODE XREF: sub_14033B5C4+69↑j
                mov     byte ptr [rbx+80F8h], 1
                jmp     short loc_14033B641
; ---------------------------------------------------------------------------

loc_14033B667:                          ; CODE XREF: sub_14033B5C4+60↑j
                mov     byte ptr [rbx+80F8h], 0
                jmp     short loc_14033B641
sub_14033B5C4   endp

; ---------------------------------------------------------------------------
algn_14033B670:                         ; DATA XREF: .rdata:000000014007EC3C↑o
                                        ; .pdata:00000001400D6DC4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033B680   proc near               ; CODE XREF: sub_14031FEB0+CB↑p
                                        ; sub_14031FEB0+FE↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014047B1C8 SIZE 0000002A BYTES

                sub     rsp, 28h
                cmp     cs:byte_140CFC409, 0
                jz      loc_14047B1C8
                mov     rax, cr3
                mov     cr3, rax
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 0
                jz      short loc_14033B6B6

loc_14033B6B0:                          ; CODE XREF: sub_14033B680+3B↓j
                                        ; sub_14033B680+13FB62↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033B6B6:                          ; CODE XREF: sub_14033B680+2E↑j
                call    sub_1403FECC0
                jmp     short loc_14033B6B0
sub_14033B680   endp

; ---------------------------------------------------------------------------
byte_14033B6BD  db 13h dup(0CCh)        ; DATA XREF: .rdata:000000014007ECB4↑o
                                        ; .pdata:00000001400D6DD0↑o
; Exported entry 1159. KeFlushIoBuffers

; =============== S U B R O U T I N E =======================================


                public KeFlushIoBuffers
KeFlushIoBuffers proc near              ; CODE XREF: sub_1404B792C+1E↓p
                                        ; sub_1404C47C0+35↓p ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B1F2 SIZE 000000D8 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_38], rax
                mov     eax, cs:dword_140C112A8
                xorps   xmm0, xmm0
                mov     bpl, r8b
                mov     r14b, dl
                mov     rdi, rcx
                movups  [rsp+88h+var_58], xmm0
                movups  [rsp+88h+var_48], xmm0
                test    eax, eax
                jz      loc_14047B1F2

loc_14033B719:                          ; CODE XREF: KeFlushIoBuffers+13FB32↓j
                                        ; KeFlushIoBuffers+13FBD7↓j ...
                mov     rcx, [rsp+88h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+88h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033B6D0
KeFlushIoBuffers endp

byte_14033B740  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007ECE8↑o
                                        ; .pdata:00000001400D6DDC↑o

; =============== S U B R O U T I N E =======================================


sub_14033B748   proc near               ; CODE XREF: LdrResSearchResource+1EF↓p
                                        ; sub_14078AA0C+138↓p ...

var_3D8         = qword ptr -3D8h
var_3D0         = qword ptr -3D0h
var_3C8         = qword ptr -3C8h
var_3C0         = dword ptr -3C0h
var_3B8         = qword ptr -3B8h
var_3B0         = qword ptr -3B0h
var_3A8         = qword ptr -3A8h
var_3A0         = dword ptr -3A0h
var_398         = qword ptr -398h
var_388         = byte ptr -388h
var_384         = word ptr -384h
var_380         = dword ptr -380h
var_37C         = byte ptr -37Ch
var_378         = qword ptr -378h
var_370         = qword ptr -370h
var_368         = qword ptr -368h
var_360         = dword ptr -360h
var_35C         = dword ptr -35Ch
var_358         = qword ptr -358h
var_350         = qword ptr -350h
var_348         = qword ptr -348h
var_340         = qword ptr -340h
var_338         = qword ptr -338h
var_330         = qword ptr -330h
var_328         = qword ptr -328h
var_320         = qword ptr -320h
var_318         = qword ptr -318h
var_310         = qword ptr -310h
var_308         = word ptr -308h
var_304         = word ptr -304h
var_300         = dword ptr -300h
var_F8          = word ptr -0F8h
var_48          = qword ptr -48h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 000000014047B2CA SIZE 000001C2 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 3C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+3F8h+var_48], rax
                mov     r13, r9
                mov     ebx, r8d
                mov     [rsp+3F8h+var_358], rdx
                mov     [rsp+3F8h+var_368], rcx
                mov     rax, [rsp+3F8h+arg_28]
                mov     [rsp+3F8h+var_348], rax
                mov     rax, [rsp+3F8h+arg_30]
                mov     [rsp+3F8h+var_320], rax
                mov     rax, [rsp+3F8h+arg_38]
                mov     [rsp+3F8h+var_310], rax
                mov     rax, [rsp+3F8h+arg_40]
                mov     [rsp+3F8h+var_318], rax
                xor     esi, esi
                mov     [r11-330h], rsi
                mov     [r11-328h], rsi
                mov     [r11-340h], rsi
                mov     [r11-338h], rsi
                xor     edx, edx
                mov     r8d, 208h
                lea     rcx, [r11-308h]
                call    memset
                mov     dl, sil
                mov     eax, ebx
                and     eax, 40h
                mov     [rsp+3F8h+var_360], eax
                mov     [rsp+3F8h+var_350], rsi
                mov     [rsp+3F8h+var_388], sil
                movzx   r12d, si
                mov     r14d, ebx
                and     r14d, 80h
                mov     edi, [rsp+3F8h+arg_20]
                cmp     edi, 3
                jnz     loc_14047B2CA
                movzx   r12d, word ptr [r13+10h]

loc_14033B836:                          ; DATA XREF: .rdata:000000014007EE54↑o
;   __try { // __except at loc_14033B86B
                mov     rcx, [r13+0]
                test    rcx, 0FFFFFFFFFFFF0000h
                jnz     short loc_14033B84E

loc_14033B843:                          ; CODE XREF: sub_14033B748+114↓j
                mov     dl, sil
                mov     r15d, 1
                jmp     short loc_14033B865
; ---------------------------------------------------------------------------

loc_14033B84E:                          ; CODE XREF: sub_14033B748+F9↑j
                lea     rdx, aMui_1     ; "MUI"
                call    _wcsicmp
                test    eax, eax
                jnz     short loc_14033B843
                lea     r15d, [rax+1]
                mov     dl, r15b

loc_14033B865:                          ; CODE XREF: sub_14033B748+104↑j
                mov     [rsp+3F8h+var_37C], dl
                jmp     short loc_14033B872
;   } // starts at 14033B836
; ---------------------------------------------------------------------------

loc_14033B86B:                          ; DATA XREF: .rdata:000000014007EE54↑o
;   __except(1) // owned by 14033B836
                mov     edi, eax
                jmp     loc_14033BA7C
; ---------------------------------------------------------------------------

loc_14033B872:                          ; CODE XREF: sub_14033B748+121↑j
                                        ; sub_14033B748+13FB88↓j
                mov     esi, r14d
                test    bl, 10h
                jz      loc_14033BB16

loc_14033B87E:                          ; CODE XREF: sub_14033B748+3D4↓j
                                        ; sub_14033B748+3DD↓j ...
                xor     r8d, r8d

loc_14033B881:                          ; CODE XREF: sub_14033B748+58C↓j
                mov     eax, esi
                mov     ecx, 60000h
                and     eax, ecx
                cmp     eax, ecx
                jz      loc_14047B2E0
                mov     edx, esi
                not     edx
                mov     [rsp+3F8h+var_308], r15w
                mov     [rsp+3F8h+var_304], r8w
                mov     eax, ebx
                not     eax
                test    al, 10h
                setnz   cl
                bt      edx, 13h
                setb    al
                and     cl, al
                bt      edx, 11h
                setb    al
                test    al, cl
                jnz     short loc_14033B8CA
                cmp     edi, 3
                jnz     short loc_14033B8DC

loc_14033B8CA:                          ; CODE XREF: sub_14033B748+17B↑j
                test    bl, 10h
                jz      loc_14033BADE
                test    bl, 20h
                jz      loc_14033BADE

loc_14033B8DC:                          ; CODE XREF: sub_14033B748+180↑j
                                        ; sub_14033B748+3C3↓j ...
                mov     eax, esi
                not     eax
                bt      eax, 12h
                setnb   cl
                test    bl, 10h
                setz    al
                and     cl, al
                bt      esi, 13h
                setnb   al
                test    al, cl
                jz      loc_14033BB73

loc_14033B8FE:                          ; CODE XREF: sub_14033B748+45D↓j
                mov     edi, r8d
                mov     r12d, r8d

loc_14033B904:                          ; CODE XREF: sub_14033B748+391↓j
                movzx   eax, [rsp+3F8h+var_308]
                cmp     r12d, eax
                jnb     loc_14033BA7C
                mov     [rsp+3F8h+var_370], r8
                mov     [rsp+3F8h+var_378], r8
                mov     ecx, r12d
                movzx   eax, [rsp+rcx*8+3F8h+var_304]
                mov     [rsp+3F8h+var_384], ax
                mov     ecx, [rsp+rcx*8+3F8h+var_300]
                mov     [rsp+3F8h+var_380], ecx
                mov     r14d, r8d

loc_14033B943:                          ; CODE XREF: sub_14033B748+389↓j
                cmp     r14d, 2
                jnb     loc_14033BAD6
                mov     eax, r14d
                test    r14d, r14d
                jz      loc_14033BAA2
                cmp     eax, 1
                jnz     loc_14047B301
                mov     dil, r8b
                mov     [rsp+3F8h+var_388], r8b

loc_14033B96A:                          ; CODE XREF: sub_14033B748+4D0↓j
                                        ; sub_14033B748+565↓j
                mov     eax, ebx
                not     eax
                test    al, 2
                jz      short loc_14033B985
                cmp     [rsp+3F8h+arg_20], 2
                jle     short loc_14033B985
                movzx   eax, [rsp+3F8h+var_384]
                mov     [r13+10h], rax

loc_14033B985:                          ; CODE XREF: sub_14033B748+228↑j
                                        ; sub_14033B748+232↑j
                mov     [rsp+3F8h+var_350], r8
                lea     r11, [rsp+3F8h+var_384]
                test    dil, dil
                cmovnz  r11, r8
                mov     r10d, ebx
                jnz     loc_14033BCB2
                test    bl, 20h
                jnz     short loc_14033B9AB
                or      r10d, 4

loc_14033B9AB:                          ; CODE XREF: sub_14033B748+25D↑j
                                        ; sub_14033B748+56E↓j
                lea     rax, [rsp+3F8h+var_350]
                mov     rcx, [rsp+3F8h+var_320]
                test    rcx, rcx
                cmovnz  rax, rcx
                mov     rdx, [rsp+3F8h+var_340]
                test    dil, dil
                cmovnz  rdx, [rsp+3F8h+var_338]
                mov     r9, [rsp+3F8h+var_330]
                cmovnz  r9, [rsp+3F8h+var_328]
                mov     r8, [rsp+3F8h+var_358]
                cmovnz  r8, [rsp+3F8h+var_378]
                mov     rcx, [rsp+3F8h+var_368]
                cmovnz  rcx, [rsp+3F8h+var_370]
                mov     [rsp+3F8h+var_398], r11
                mov     [rsp+3F8h+var_3A0], r10d
                mov     [rsp+3F8h+var_3A8], rax
                mov     rax, [rsp+3F8h+var_348]
                mov     [rsp+3F8h+var_3B0], rax
                lea     rax, [rsp+3F8h+var_308]
                mov     [rsp+3F8h+var_3B8], rax
                mov     eax, [rsp+3F8h+arg_20]
                mov     [rsp+3F8h+var_3C0], eax
                mov     [rsp+3F8h+var_3C8], r13
                and     [rsp+3F8h+var_3D0], 0
                mov     [rsp+3F8h+var_3D8], rdx
                xor     edx, edx
                call    sub_1406EFA34
                mov     edi, eax
                xor     r8d, r8d
                cmp     [rsp+3F8h+var_360], r8d
                jnz     loc_14047B354

loc_14033BA67:                          ; CODE XREF: sub_14033B748+13FC0E↓j
                                        ; sub_14033B748+13FC1F↓j ...
                test    edi, edi
                js      short loc_14033BACA
                mov     r14, [rsp+3F8h+var_318]
                test    r14, r14
                jnz     loc_14047B3D4

loc_14033BA7C:                          ; CODE XREF: sub_14033B748+125↑j
                                        ; sub_14033B748+1C7↑j ...
                mov     eax, edi

loc_14033BA7E:                          ; CODE XREF: sub_14033B748+463↓j
                                        ; sub_14033B748+13FBA6↓j
                mov     rcx, [rsp+3F8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 3C0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033BAA2:                          ; CODE XREF: sub_14033B748+20B↑j
                cmp     ecx, 9
                jz      loc_14047B2F9
                test    esi, 0A0000h
                setz    cl
                test    bl, 10h
                setz    al
                test    al, cl
                jz      short loc_14033BACA
                cmp     [rsp+3F8h+var_384], r8w
                jnz     loc_14033BC00

loc_14033BACA:                          ; CODE XREF: sub_14033B748+321↑j
                                        ; sub_14033B748+374↑j ...
                mov     ecx, [rsp+3F8h+var_380]

loc_14033BACE:                          ; CODE XREF: sub_14033B748+13FBB4↓j
                add     r14d, r15d
                jmp     loc_14033B943
; ---------------------------------------------------------------------------

loc_14033BAD6:                          ; CODE XREF: sub_14033B748+1FF↑j
                                        ; sub_14033B748+528↓j
                add     r12d, r15d
                jmp     loc_14033B904
; ---------------------------------------------------------------------------

loc_14033BADE:                          ; CODE XREF: sub_14033B748+185↑j
                                        ; sub_14033B748+18E↑j
                mov     ecx, ebx
                mov     eax, esi
                or      eax, 4
                and     cl, 4
                cmovz   eax, esi
                mov     esi, eax
                lea     rax, [rsp+3F8h+var_308]
                mov     [rsp+3F8h+var_3D8], rax
                mov     r9d, esi
                movzx   r8d, r12w
                call    sub_1406F0A3C
                xor     r8d, r8d
                test    eax, eax
                jns     loc_14033B8DC
                jmp     loc_14047B2EA
; ---------------------------------------------------------------------------

loc_14033BB16:                          ; CODE XREF: sub_14033B748+130↑j
                mov     esi, r14d
                cmp     edi, r15d
                jl      loc_14033B87E
                cmp     edi, 3
                jg      loc_14033B87E
                jnz     loc_14047B2D5
                movzx   ecx, word ptr [r13+10h]

loc_14033BB36:                          ; CODE XREF: sub_14033B748+13FB93↓j
                bt      ebx, 18h
                jb      short loc_14033BB68
                mov     rax, [r13+0]
                sub     rax, 10h
                test    rax, 0FFFFFFFFFFFFFFF7h
                jnz     short loc_14033BBB0

loc_14033BB4C:                          ; CODE XREF: sub_14033B748+46A↓j
                mov     eax, ebx
                not     eax
                test    al, 8
                jz      short loc_14033BBB4
                mov     eax, 0F3FFh
                test    ax, cx
                jnz     short loc_14033BBB4
                mov     eax, 0C00h
                cmp     cx, ax
                jz      short loc_14033BBB4

loc_14033BB68:                          ; CODE XREF: sub_14033B748+3F2↑j
                or      ebx, 10h
                mov     esi, r14d
                jmp     loc_14033B87E
; ---------------------------------------------------------------------------

loc_14033BB73:                          ; CODE XREF: sub_14033B748+1B0↑j
                lea     rax, [rsp+3F8h+var_340]
                mov     [rsp+3F8h+var_3D8], rax
                lea     r9, [rsp+3F8h+var_330]
                mov     r8d, ebx
                mov     rdx, [rsp+3F8h+var_358]
                mov     rcx, [rsp+3F8h+var_368]
                call    sub_1406F06A4
                xor     r8d, r8d
                test    eax, eax
                jns     loc_14033B8FE
                jmp     loc_14033BA7E
; ---------------------------------------------------------------------------

loc_14033BBB0:                          ; CODE XREF: sub_14033B748+402↑j
                test    dl, dl
                jnz     short loc_14033BB4C

loc_14033BBB4:                          ; CODE XREF: sub_14033B748+40A↑j
                                        ; sub_14033B748+414↑j ...
                mov     byte ptr [rsp+3F8h+var_3D8], r15b
                mov     r9d, ebx
                xor     r8d, r8d
                mov     rdx, [rsp+3F8h+var_358]
                mov     rsi, [rsp+3F8h+var_368]
                mov     rcx, rsi
                call    sub_14078AA0C
                mov     edi, eax
                xor     r8d, r8d
                test    eax, eax
                js      loc_14033BCBB
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_14033C840
                mov     esi, eax
                or      esi, r14d
                mov     edi, [rsp+3F8h+arg_20]
                jmp     loc_14033B87E
; ---------------------------------------------------------------------------

loc_14033BC00:                          ; CODE XREF: sub_14033B748+37C↑j
                cmp     cs:byte_140C44D3A, 0
                jz      loc_14033BACA
                mov     dil, r15b
                mov     [rsp+3F8h+var_388], r15b

loc_14033BC15:                          ; CODE XREF: sub_14033B748+13FBBE↓j
                test    dil, dil
                jz      loc_14033B96A
                mov     eax, esi
                bts     eax, 0Ch
                mov     dword ptr [rsp+3F8h+var_3D8], eax
                lea     r9, [rsp+3F8h+var_378]
                lea     r8, [rsp+3F8h+var_370]
                movzx   edx, [rsp+3F8h+var_384]
                mov     rcx, [rsp+3F8h+var_368]
                call    sub_14033CCF4
                mov     edi, eax
                xor     r8d, r8d
                test    eax, eax
                js      loc_14047B30B
                mov     rdx, [rsp+3F8h+var_378]
                test    rdx, rdx
                jz      loc_14047B327

loc_14033BC68:                          ; CODE XREF: sub_14033B748+13FC07↓j
                bt      ebx, 0Ch
                jnb     short loc_14033BC76
                test    edi, edi
                js      loc_14033BAD6

loc_14033BC76:                          ; CODE XREF: sub_14033B748+524↑j
                lea     rax, [rsp+3F8h+var_338]
                mov     [rsp+3F8h+var_3D8], rax
                lea     r9, [rsp+3F8h+var_328]
                mov     r8d, ebx
                mov     rcx, [rsp+3F8h+var_370]
                call    sub_1406F06A4
                mov     edi, eax
                xor     r8d, r8d
                test    eax, eax
                js      loc_14033BACA
                mov     dil, [rsp+3F8h+var_388]
                jmp     loc_14033B96A
; ---------------------------------------------------------------------------

loc_14033BCB2:                          ; CODE XREF: sub_14033B748+254↑j
                or      r10d, 20h
                jmp     loc_14033B9AB
; ---------------------------------------------------------------------------

loc_14033BCBB:                          ; CODE XREF: sub_14033B748+496↑j
                cmp     eax, 0C000008Ah
                jnz     loc_14033BA7C
                mov     esi, r14d
                bts     esi, 13h
                mov     edi, [rsp+3F8h+arg_20]
                jmp     loc_14033B881
; } // starts at 14033B748
sub_14033B748   endp

; ---------------------------------------------------------------------------
algn_14033BCD9:                         ; DATA XREF: .rdata:000000014007EE7C↑o
                                        ; .pdata:00000001400D6DE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033BCE0   proc near               ; CODE XREF: sub_140226A50+2B6↑p
                                        ; DATA XREF: .pdata:00000001400D6DF4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 20h
                and     [rsp+38h+arg_10], 0
                mov     ebp, 0FFFFFFFFh
                and     [rsp+38h+arg_8], 0
                mov     edi, ebp
                xor     ebx, ebx
                mov     esi, ecx

loc_14033BD03:                          ; CODE XREF: sub_14033BCE0+55↓j
                lea     r8, [rsp+38h+arg_8]
                mov     rcx, rbx
                lea     rdx, [rsp+38h+arg_10]
                call    sub_14033BD50
                test    eax, eax
                jz      short loc_14033BD37
                mov     r8, [rsp+38h+arg_8]
                mov     ecx, esi
                mov     rdx, [rsp+38h+arg_10]
                call    sub_14033BE20
                mov     rdi, rax
                cmp     rax, rbp
                jnz     short loc_14033BD37
                inc     rbx
                jmp     short loc_14033BD03
; ---------------------------------------------------------------------------

loc_14033BD37:                          ; CODE XREF: sub_14033BCE0+37↑j
                                        ; sub_14033BCE0+50↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, rdi
                add     rsp, 20h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033BCE0   endp

algn_14033BD48:                         ; DATA XREF: .pdata:00000001400D6DF4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033BD50   proc near               ; CODE XREF: sub_14033BCE0+30↑p
                                        ; DATA XREF: .pdata:00000001400D6E00↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r8
                mov     rdi, rdx
                test    rcx, rcx
                jz      loc_14033BDF8
                sub     rcx, 1
                jz      short loc_14033BDDD
                cmp     rcx, 1
                jnz     short loc_14033BDD9
                lea     rsi, cs:140000000h
                mov     rcx, rsi
                call    RtlImageNtHeader
                lea     r8, sub_140A16100
                mov     rdx, rsi
                sub     r8d, esi
                mov     rcx, rax
                call    sub_14033C730
                mov     ecx, [rax+0Ch]
                add     rcx, rsi
                mov     [rdi], rcx
                mov     ecx, [rax+8]
                mov     eax, [rax+10h]
                cmp     ecx, eax
                cmovbe  ecx, eax
                mov     eax, ecx
                add     rax, 0FFFh
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rbx], rax

loc_14033BDC3:                          ; CODE XREF: sub_14033BD50+A6↓j
                                        ; sub_14033BD50+C5↓j
                mov     eax, 1

loc_14033BDC8:                          ; CODE XREF: sub_14033BD50+8B↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033BDD9:                          ; CODE XREF: sub_14033BD50+28↑j
                xor     eax, eax
                jmp     short loc_14033BDC8
; ---------------------------------------------------------------------------

loc_14033BDDD:                          ; CODE XREF: sub_14033BD50+22↑j
                mov     rax, gs:20h
                add     rax, 8E80h
                mov     qword ptr [r8], 1000h
                mov     [rdx], rax
                jmp     short loc_14033BDC3
; ---------------------------------------------------------------------------

loc_14033BDF8:                          ; CODE XREF: sub_14033BD50+18↑j
                mov     rax, gs:18h
                mov     qword ptr [r8], 5000h
                mov     rcx, [rax]
                add     rcx, 0FFFFFFFFFFFFD050h
                mov     [rdx], rcx
                jmp     short loc_14033BDC3
sub_14033BD50   endp

; ---------------------------------------------------------------------------
algn_14033BE17:                         ; DATA XREF: .pdata:00000001400D6E00↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033BE20   proc near               ; CODE XREF: sub_14033BCE0+45↑p
                                        ; DATA XREF: .rdata:000000014007EFA8↑o ...

var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047B48C SIZE 000000E8 BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_0], ecx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, rdx
                mov     rcx, 0FFFFF68000000000h
                mov     r15, rdx
                shr     rsi, 9
                mov     rdx, 7FFFFFFFF8h
                and     rsi, rdx
                mov     rax, rcx
                lea     r13, [r8-1]
                add     rsi, rax
                add     r13, r15
                shr     r13, 9
                and     r13, rdx
                mov     rax, rcx
                add     r13, rax
                mov     ebp, 0FFFFFFFFh
                xor     r14d, r14d

loc_14033BE7B:                          ; CODE XREF: sub_14033BE20+D4↓j
                cmp     rsi, r13
                ja      short loc_14033BEF6
                mov     r9, cs:qword_14001D278
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14033C140
                mov     [rsp+68h+arg_8], rax
                mov     rdi, rax
                test    al, 1
                jz      loc_14047B549
                lea     rcx, [r14+r15]
                call    sub_14033C094
                lea     rcx, [rsp+68h+arg_8]
                mov     [rsp+68h+arg_10], rax
                mov     rbx, rdi
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047B48C

loc_14033BECA:                          ; CODE XREF: sub_14033BE20+13F676↓j
                                        ; sub_14033BE20+13F6C3↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                cmp     [rsp+68h+arg_10], rbx
                jnz     loc_14047B527
                add     rsi, 8
                add     r14, 1000h
                jmp     short loc_14033BE7B
; ---------------------------------------------------------------------------

loc_14033BEF6:                          ; CODE XREF: sub_14033BE20+5E↑j
                                        ; sub_14033BE20+13F74F↓j
                mov     rbx, [rsp+68h+arg_18]
                mov     rax, rbp
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
                db 0CCh
sub_14033BE20   endp

algn_14033BF12:                         ; DATA XREF: .rdata:000000014007EFA8↑o
                                        ; .pdata:00000001400D6E0C↑o
                align 20h
; Exported entry 1439. MmGetPhysicalAddress

; =============== S U B R O U T I N E =======================================


                public MmGetPhysicalAddress
MmGetPhysicalAddress proc near          ; CODE XREF: sub_1403812D0+6D↓p
                                        ; sub_1403834C0+31D↓p ...

arg_10          = qword ptr  18h

                mov     rax, rsp
                sub     rsp, 28h
                and     dword ptr [rax+10h], 0
                lea     r8, [rax+10h]
                and     qword ptr [rax+18h], 0
                lea     rdx, [rax+18h]
                call    sub_14033BF54
                neg     eax
                sbb     rax, rax
                and     rax, [rsp+28h+arg_10]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGetPhysicalAddress endp

byte_14033BF4D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6E18↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14033BF54   proc near               ; CODE XREF: MmGetPhysicalAddress+18↑p
                                        ; sub_140592FA4+C9↓p ...

var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h

; FUNCTION CHUNK AT 000000014047B574 SIZE 000000B5 BYTES

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                and     dword ptr [r8], 0
                xorps   xmm0, xmm0
                mov     r12, rdx
                mov     r15, r8
                lea     rdx, [rbp+var_20]
                mov     rdi, rcx
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                call    sub_14029B570
                mov     rcx, rdi
                call    sub_140260090
                movsxd  rsi, eax
                test    eax, eax
                jz      short loc_14033BFF7
                mov     rcx, rdi
                call    sub_14033C094
                mov     rcx, qword ptr [rbp+rsi*8+var_20]
                mov     rbx, rax
                call    sub_1402805F0
                test    rax, 800h

loc_14033BFB8:                          ; CODE XREF: sub_14033BF54+11B↓j
                jz      short loc_14033BFC1
                mov     dword ptr [r15], 1

loc_14033BFC1:                          ; CODE XREF: sub_14033BF54:loc_14033BFB8↑j
                shl     rbx, 0Ch
                and     edi, 0FFFh
                mov     [rbp+arg_10], rbx
                mov     eax, 1
                add     dword ptr [rbp+arg_10], edi
                mov     rcx, [rbp+arg_10]
                mov     [r12], rcx

loc_14033BFDF:                          ; CODE XREF: sub_14033BF54+132↓j
                mov     rbx, [rsp+40h+arg_0]
                mov     rsi, [rsp+40h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033BFF7:                          ; CODE XREF: sub_14033BF54+47↑j
                mov     ebx, 4

loc_14033BFFC:                          ; CODE XREF: sub_14033BF54+BD↓j
                mov     rcx, [rbp+rbx*8+var_28]
                dec     rbx
                call    sub_1402805F0
                test    al, 1
                jz      short loc_14033C084
                cmp     rbx, 1
                jnz     short loc_14033BFFC
                mov     rsi, qword ptr [rbp+var_20]
                mov     rcx, rsi
                call    sub_1402805F0
                mov     rcx, rdi
                mov     [rbp+arg_10], rax
                mov     rbx, rax
                call    sub_140245330
                mov     r14d, eax
                cmp     eax, 0Ch
                jz      short loc_14033C074

loc_14033C036:                          ; CODE XREF: sub_14033BF54+12E↓j
                test    bl, 1
                jz      short loc_14033C084
                cmp     r14d, 5
                jz      loc_14047B574

loc_14033C045:                          ; CODE XREF: sub_14033BF54+13F637↓j
                lea     rcx, [rbp+arg_10]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047B590

loc_14033C056:                          ; CODE XREF: sub_14033BF54+13F646↓j
                                        ; sub_14033BF54+13F663↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                test    [rbp+arg_10], 800h
                jmp     loc_14033BFB8
; ---------------------------------------------------------------------------

loc_14033C074:                          ; CODE XREF: sub_14033BF54+E0↑j
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403A4244
                jmp     short loc_14033C036
; ---------------------------------------------------------------------------

loc_14033C084:                          ; CODE XREF: sub_14033BF54+B7↑j
                                        ; sub_14033BF54+E5↑j
                xor     eax, eax
                jmp     loc_14033BFDF
sub_14033BF54   endp

; ---------------------------------------------------------------------------
byte_14033C08B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007EFE0↑o
                                        ; .pdata:00000001400D6E24↑o

; =============== S U B R O U T I N E =======================================


sub_14033C094   proc near               ; CODE XREF: sub_14033BE20+88↑p
                                        ; sub_14033BF54+4C↑p ...

var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     rdx, [rax-28h]
                movups  xmmword ptr [rax-28h], xmm0
                mov     rbx, rcx
                movups  xmmword ptr [rax-18h], xmm0
                call    sub_14029B570
                mov     edi, 4
                mov     esi, edi

loc_14033C0C2:                          ; CODE XREF: sub_14033C094+49↓j
                mov     rcx, [rsp+rsi*8+48h+var_30]
                dec     rsi
                dec     edi
                call    sub_1402805F0
                mov     [rsp+48h+arg_8], rax
                test    rsi, rsi
                jz      short loc_14033C0DF
                test    al, al
                jns     short loc_14033C0C2

loc_14033C0DF:                          ; CODE XREF: sub_14033C094+45↑j
                lea     rcx, [rsp+48h+arg_8]
                call    sub_1402805F0
                mov     rcx, rax
                mov     rax, 0FFFFFFFFFh
                shr     rcx, 0Ch
                and     rcx, rax
                test    edi, edi
                jz      short loc_14033C126
                mov     edx, 1
                shr     rbx, 0Ch

loc_14033C10A:                          ; CODE XREF: sub_14033C094+90↓j
                mov     rax, rbx
                shr     rbx, 9
                and     eax, 1FFh
                imul    rax, rdx
                shl     rdx, 9
                add     rcx, rax
                sub     edi, 1
                jnz     short loc_14033C10A

loc_14033C126:                          ; CODE XREF: sub_14033C094+6B↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rax, rcx
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033C094   endp

algn_14033C13A:                         ; DATA XREF: .pdata:00000001400D6E30↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14033C140   proc near               ; CODE XREF: sub_14033BE20+6F↑p
                                        ; sub_14079FF14+5B↓p ...

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  40h
arg_8           = byte ptr  48h
arg_10          = dword ptr  50h

; FUNCTION CHUNK AT 000000014047B62A SIZE 00000165 BYTES

                mov     [rsp-38h+arg_0], rbx
                mov     [rsp-38h+arg_10], r8d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     rax, gs:188h
                xorps   xmm0, xmm0
                mov     rdi, r9
                mov     ebx, 1
                movups  [rbp+var_20], xmm0
                mov     r9, [rax+0B8h]
                movsxd  rax, edx
                mov     [rbp+var_28], rax
                mov     r8, rax
                movups  [rbp+var_10], xmm0
                mov     r13, [r9+788h]
                cmp     rax, 4
                jge     short loc_14033C1C7
                sub     edx, eax
                add     edx, 4

loc_14033C19B:                          ; CODE XREF: sub_14033C140+85↓j
                mov     qword ptr [rbp+rax*8+var_20], rcx
                mov     r9, 7FFFFFFFF8h
                shr     rcx, 9
                and     rcx, r9
                mov     r9, 0FFFFF68000000000h
                add     rcx, r9
                add     rax, rbx
                cmp     rax, 4
                jl      short loc_14033C19B

loc_14033C1C7:                          ; CODE XREF: sub_14033C140+54↑j
                and     [rbp+var_30], 0
                mov     r14b, 11h
                mov     [rbp+arg_8], r14b
                mov     rsi, r13
                movsxd  r15, edx

loc_14033C1D9:                          ; CODE XREF: sub_14033C140+152↓j
                sub     r15, rbx
                mov     r12, qword ptr [rbp+r15*8+var_20]
                cmp     r15, 3
                jz      loc_14033C297
                cmp     r14b, 11h
                jz      short loc_14033C202
                mov     r8d, 80000000h
                mov     dl, r14b
                mov     rcx, r13
                call    sub_1402432B0

loc_14033C202:                          ; CODE XREF: sub_14033C140+AF↑j
                mov     rbx, [rbp+var_30]
                lea     rcx, [rbp+var_30]
                mov     rsi, rbx
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047B62A

loc_14033C21A:                          ; CODE XREF: sub_14033C140+13F4F4↓j
                                        ; sub_14033C140+13F515↓j ...
                shr     rbx, 0Ch
                lea     rdx, [rbp+arg_8]
                mov     rcx, 0FFFFFFFFFh
                mov     r8d, 80000000h
                and     rcx, rbx
                call    sub_1402D6810
                mov     r14b, [rbp+arg_8]
                mov     r13, rax
                mov     r8, [rbp+var_28]
                mov     rax, r12
                shr     rax, 3
                mov     ebx, 1
                and     eax, 1FFh
                lea     rsi, ds:0[rax*8]
                add     rsi, r13

loc_14033C261:                          ; CODE XREF: sub_14033C140+167↓j
                cmp     [rbp+arg_10], 0
                jnz     short loc_14033C2DD

loc_14033C267:                          ; CODE XREF: sub_14033C140+1A0↓j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     [rbp+var_30], rax
                test    r15, r15
                jz      short loc_14033C284
                test    bl, al
                jz      short loc_14033C284
                test    al, al
                js      loc_14047B771

loc_14033C284:                          ; CODE XREF: sub_14033C140+136↑j
                                        ; sub_14033C140+13A↑j ...
                mov     r8, [rbp+var_28]
                cmp     r15, r8
                jz      short loc_14033C2A9
                mov     ebx, 1
                jmp     loc_14033C1D9
; ---------------------------------------------------------------------------

loc_14033C297:                          ; CODE XREF: sub_14033C140+A5↑j
                mov     rax, r12
                shr     rax, 3
                and     eax, 1FFh
                lea     rsi, [rsi+rax*8]
                jmp     short loc_14033C261
; ---------------------------------------------------------------------------

loc_14033C2A9:                          ; CODE XREF: sub_14033C140+14B↑j
                cmp     r14b, 11h
                jz      short loc_14033C2C0
                mov     r8d, 80000000h
                mov     dl, r14b
                mov     rcx, r13
                call    sub_1402432B0

loc_14033C2C0:                          ; CODE XREF: sub_14033C140+16D↑j
                mov     rax, [rbp+var_30]
                mov     rbx, [rsp+60h+arg_0]
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

loc_14033C2DD:                          ; CODE XREF: sub_14033C140+125↑j
                cmp     r15, r8
                jnz     short loc_14033C267
                test    bl, dil
                jz      loc_14047B73A
                test    r15, r15
                jnz     short loc_14033C2F5
                bts     rdi, 8

loc_14033C2F5:                          ; CODE XREF: sub_14033C140+1AE↑j
                mov     rcx, rsi
                mov     rbx, rdi
                xor     r12d, r12d
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14047B6C5

loc_14033C30B:                          ; CODE XREF: sub_14033C140+13F59D↓j
                                        ; sub_14033C140+13F5A6↓j ...
                mov     [rsi], rbx
                test    r12d, r12d
                jz      loc_14033C284
                mov     rdx, rbx
                jmp     loc_14047B763
sub_14033C140   endp

; ---------------------------------------------------------------------------
byte_14033C31F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007F020↑o
                                        ; .pdata:00000001400D6E3C↑o

; =============== S U B R O U T I N E =======================================


sub_14033C328   proc near               ; CODE XREF: sub_14033CC18+C1↓p
                                        ; sub_14033B748+13FC5E↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 000000014047B790 SIZE 0000001F BYTES

                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     edi, r9d
                mov     rsi, r8
                mov     rax, rdx
                test    rcx, rcx
                jz      short loc_14033C3A5
                test    rax, rax
                jz      short loc_14033C3A5
                cmp     [rsp+28h+arg_20], 0
                jnz     short loc_14033C368
                xor     r9d, r9d
                lea     r8, [rsp+28h+arg_0]
                call    sub_1406F0E28
                test    eax, eax
                js      short loc_14033C399
                mov     rax, [rsp+28h+arg_0]

loc_14033C368:                          ; CODE XREF: sub_14033C328+28↑j
                cmp     [rsp+28h+arg_20], 0
                lea     r8, [rax+4]
                mov     edx, [rax]
                jnz     loc_14047B790
                jmp     short loc_14033C38C
; ---------------------------------------------------------------------------

loc_14033C37B:                          ; CODE XREF: sub_14033C328+66↓j
                dec     edx
                cmp     edi, [r8]
                jb      short loc_14033C388
                cmp     edi, [r8+4]
                jbe     short loc_14033C397

loc_14033C388:                          ; CODE XREF: sub_14033C328+58↑j
                add     r8, 0Ch

loc_14033C38C:                          ; CODE XREF: sub_14033C328+51↑j
                                        ; sub_14033C328+13F477↓j
                test    edx, edx
                jnz     short loc_14033C37B
                mov     eax, 0C0000109h
                jmp     short loc_14033C399
; ---------------------------------------------------------------------------

loc_14033C397:                          ; CODE XREF: sub_14033C328+5E↑j
                xor     eax, eax

loc_14033C399:                          ; CODE XREF: sub_14033C328+39↑j
                                        ; sub_14033C328+6D↑j ...
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033C3A5:                          ; CODE XREF: sub_14033C328+1C↑j
                                        ; sub_14033C328+21↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14033C399
sub_14033C328   endp

; ---------------------------------------------------------------------------
byte_14033C3AC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F040↑o
                                        ; .pdata:00000001400D6E48↑o

; =============== S U B R O U T I N E =======================================


sub_14033C3B4   proc near               ; CODE XREF: sub_1406F0D4C+9F↓p
                                        ; DATA XREF: .pdata:00000001400D6E54↑o

var_38          = qword ptr -38h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041AF5C SIZE 00000027 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 50h
                mov     r14, r9
                mov     r15, r8
                mov     rsi, rcx
                and     qword ptr [rax-18h], 0
                and     qword ptr [rax-20h], 0
                call    sub_14033D104
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, unk_140C1DCC0
                call    KeWaitForSingleObject
                nop

loc_14033C400:                          ; DATA XREF: .rdata:000000014007F070↑o
;   __try { // __finally(loc_14041AF5C)
                and     qword ptr [r14], 0
                mov     ebx, cs:dword_140C1DCFC
                mov     [rsp+58h+var_28], ebx
                lea     ecx, [rbx-1]

loc_14033C411:                          ; CODE XREF: sub_14033C3B4+A2↓j
                mov     [rsp+58h+var_24], ecx
                test    ecx, ecx
                js      loc_14033C4A2
                movsxd  rdx, ecx
                shl     rdx, 6
                mov     r8, cs:qword_140C1DCA0
                cmp     [rdx+r8+8], rsi
                jnz     short loc_14033C454
                cmp     [rsp+58h+var_18], 0
                jnz     short loc_14033C458
                mov     rax, [rdx+r8+20h]
                mov     [rsp+58h+var_18], rax
                mov     rax, [rdx+r8+30h]
                mov     [rsp+58h+var_20], rax
                mov     ebx, ecx
                mov     [rsp+58h+var_28], ecx

loc_14033C454:                          ; CODE XREF: sub_14033C3B4+7C↑j
                dec     ecx
                jmp     short loc_14033C411
; ---------------------------------------------------------------------------

loc_14033C458:                          ; CODE XREF: sub_14033C3B4+84↑j
                mov     edi, ebx
                mov     [rsp+58h+var_24], ebx

loc_14033C45E:                          ; CODE XREF: sub_14033C3B4+110↓j
                test    edi, edi
                js      short loc_14033C497
                movsxd  rcx, edi
                shl     rcx, 6
                mov     rax, cs:qword_140C1DCA0
                cmp     [rcx+rax+8], rsi
                jnz     short loc_14033C4BE
                lea     r9, [rsp+58h+var_20]
                lea     r8, [rsp+58h+var_18]
                mov     rdx, r15
                mov     ecx, edi
                call    sub_14033C548
                test    al, al
                jz      short loc_14033C4BE
                mov     ebx, edi
                mov     [rsp+58h+var_28], ebx
                test    edi, edi

loc_14033C497:                          ; CODE XREF: sub_14033C3B4+AC↑j
                cmovs   ebx, cs:dword_140C1DCFC
                mov     [rsp+58h+var_28], ebx

loc_14033C4A2:                          ; CODE XREF: sub_14033C3B4+63↑j
                mov     eax, cs:dword_140C1DCFC
                cmp     ebx, eax
                jz      short loc_14033C4C6
                cmp     [rsp+58h+var_20], 0
                jz      short loc_14033C4CE

loc_14033C4B4:                          ; CODE XREF: sub_14033C3B4+12B↓j
                                        ; sub_14033C3B4+14B↓j ...
                mov     rax, [rsp+58h+var_20]
                mov     [r14], rax
                jmp     short loc_14033C50B
; ---------------------------------------------------------------------------

loc_14033C4BE:                          ; CODE XREF: sub_14033C3B4+C1↑j
                                        ; sub_14033C3B4+D9↑j
                dec     edi
                mov     [rsp+58h+var_24], edi
                jmp     short loc_14033C45E
; ---------------------------------------------------------------------------

loc_14033C4C6:                          ; CODE XREF: sub_14033C3B4+F6↑j
                and     [rsp+58h+var_18], 0
                jmp     short loc_14033C50B
; ---------------------------------------------------------------------------

loc_14033C4CE:                          ; CODE XREF: sub_14033C3B4+FE↑j
                mov     rcx, [rsp+58h+var_18]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                call    RtlImageNtHeader
                test    rax, rax
                jz      short loc_14033C4B4
                movzx   ecx, word ptr [rax+18h]
                mov     edx, 10Bh
                cmp     cx, dx
                jz      short loc_14033C501
                mov     edx, 20Bh
                cmp     cx, dx
                jz      short loc_14033C501
                and     [rsp+58h+var_20], 0
                jmp     short loc_14033C4B4
; ---------------------------------------------------------------------------

loc_14033C501:                          ; CODE XREF: sub_14033C3B4+139↑j
                                        ; sub_14033C3B4+143↑j
                mov     eax, [rax+50h]
                mov     [rsp+58h+var_20], rax
                jmp     short loc_14033C4B4
;   } // starts at 14033C400
; ---------------------------------------------------------------------------

loc_14033C50B:                          ; CODE XREF: sub_14033C3B4+108↑j
                                        ; sub_14033C3B4+118↑j
                                        ; DATA XREF: ...
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+1]
                lea     rcx, unk_140C1DCC0
                call    KeReleaseMutant
                mov     rax, [rsp+58h+var_18]
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_10]
                mov     r14, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033C3B4
sub_14033C3B4   endp

algn_14033C542:                         ; DATA XREF: .pdata:00000001400D6E54↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14033C548   proc near               ; CODE XREF: sub_14033C3B4+D2↑p
                                        ; DATA XREF: .rdata:000000014007F0A8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B7B0 SIZE 00000042 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, r9
                mov     rsi, r8
                mov     rdi, rdx
                test    rdx, rdx
                jz      short loc_14033C5D8
                test    r8, r8
                jz      short loc_14033C5D8
                cmp     ecx, cs:dword_140C1DCFC
                jnb     short loc_14033C5D8
                lfence
                mov     rax, cs:qword_140C1DCA0
                mov     ecx, ecx
                shl     rcx, 6
                mov     rbx, [rcx+rax+20h]
                mov     rdx, [rcx+rax+30h]
                lea     rax, [rbx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      short loc_14033C5D8
                test    rdx, rdx
                jz      loc_14047B7B0

loc_14033C5A5:                          ; CODE XREF: sub_14033C548+13F2A5↓j
                mov     rax, rbx
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rdi, rax
                jb      short loc_14033C5D8
                add     rax, rdx
                cmp     rdi, rax
                jnb     short loc_14033C5D8
                mov     [rsi], rbx
                mov     al, 1
                mov     [r14], rdx

loc_14033C5C1:                          ; CODE XREF: sub_14033C548+92↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033C5D8:                          ; CODE XREF: sub_14033C548+21↑j
                                        ; sub_14033C548+26↑j ...
                xor     al, al
                jmp     short loc_14033C5C1
sub_14033C548   endp

; ---------------------------------------------------------------------------
byte_14033C5DC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F0A8↑o
                                        ; .pdata:00000001400D6E60↑o

; =============== S U B R O U T I N E =======================================


sub_14033C5E4   proc near               ; CODE XREF: RtlFindMessage+93↓p
                                        ; DATA XREF: .pdata:00000001400D6E6C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                lea     r11d, [rdx-1]
                mov     rbx, r9
                mov     edx, [rcx]
                lea     rax, [rcx+4]
                add     r11, rcx
                mov     r10, rcx

loc_14033C5FC:                          ; CODE XREF: sub_14033C5E4+30↓j
                test    edx, edx
                jz      short loc_14033C640
                mov     r9d, [rax]
                dec     edx
                cmp     r8d, r9d
                jb      short loc_14033C610
                cmp     r8d, [rax+4]
                jbe     short loc_14033C616

loc_14033C610:                          ; CODE XREF: sub_14033C5E4+24↑j
                add     rax, 0Ch
                jmp     short loc_14033C5FC
; ---------------------------------------------------------------------------

loc_14033C616:                          ; CODE XREF: sub_14033C5E4+2A↑j
                mov     ecx, [rax+8]
                add     rcx, r10
                sub     r8d, r9d
                jz      short loc_14033C634

loc_14033C621:                          ; CODE XREF: sub_14033C5E4+4E↓j
                movzx   eax, word ptr [rcx]
                dec     r8d
                add     rcx, rax
                cmp     rcx, r11
                ja      short loc_14033C640
                test    r8d, r8d
                jnz     short loc_14033C621

loc_14033C634:                          ; CODE XREF: sub_14033C5E4+3B↑j
                mov     [rbx], rcx
                xor     eax, eax

loc_14033C639:                          ; CODE XREF: sub_14033C5E4+61↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14033C640:                          ; CODE XREF: sub_14033C5E4+1A↑j
                                        ; sub_14033C5E4+49↑j
                mov     eax, 0C0000109h
                jmp     short loc_14033C639
sub_14033C5E4   endp

; ---------------------------------------------------------------------------
algn_14033C647:                         ; DATA XREF: .pdata:00000001400D6E6C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033C650   proc near               ; CODE XREF: sub_1406F0D4C+71↓p
                                        ; sub_1406F0E28+5B↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rcx
                xor     ebx, ebx
                and     rcx, 0FFFFFFFFFFFFFFFCh
                mov     edi, ebx
                mov     r14, rdx
                call    RtlImageNtHeader
                test    rax, rax
                jz      short loc_14033C6CE
                test    sil, 1
                jz      short loc_14033C6AC
                mov     rcx, rsi
                call    sub_14033C7A0
                test    rax, rax
                jnz     short loc_14033C6C9

loc_14033C690:                          ; CODE XREF: sub_14033C650+77↓j
                                        ; sub_14033C650+7C↓j ...
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     [r14], rdi
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033C6AC:                          ; CODE XREF: sub_14033C650+31↑j
                movzx   ecx, word ptr [rax+18h]
                mov     edx, 10Bh
                cmp     cx, dx
                jz      short loc_14033C6C4
                mov     edx, 20Bh
                cmp     cx, dx
                jnz     short loc_14033C6CE

loc_14033C6C4:                          ; CODE XREF: sub_14033C650+68↑j
                mov     edi, [rax+50h]
                jmp     short loc_14033C690
; ---------------------------------------------------------------------------

loc_14033C6C9:                          ; CODE XREF: sub_14033C650+3E↑j
                mov     edi, [rax+40h]
                jmp     short loc_14033C690
; ---------------------------------------------------------------------------

loc_14033C6CE:                          ; CODE XREF: sub_14033C650+2B↑j
                                        ; sub_14033C650+72↑j
                mov     ebx, 0C000007Bh
                jmp     short loc_14033C690
sub_14033C650   endp

; ---------------------------------------------------------------------------
byte_14033C6D5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6E78↑o

; =============== S U B R O U T I N E =======================================


sub_14033C6DC   proc near               ; CODE XREF: sub_1402071E0+49↑p
                                        ; sub_140207160+21A179↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, r8d
                mov     rbx, rdx
                call    sub_14033C730
                test    rax, rax
                jz      short loc_14033C726
                mov     ecx, [rax+14h]
                mov     eax, [rax+0Ch]
                sub     rcx, rax
                lea     rax, [rbx+rcx]
                add     rax, rdi
                mov     rcx, 7FFFFFFEFFFFh
                cmp     rbx, rcx
                jb      short loc_14033C721

loc_14033C715:                          ; CODE XREF: sub_14033C6DC+48↓j
                                        ; sub_14033C6DC+4C↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033C721:                          ; CODE XREF: sub_14033C6DC+37↑j
                cmp     rax, rcx
                jb      short loc_14033C715

loc_14033C726:                          ; CODE XREF: sub_14033C6DC+18↑j
                xor     eax, eax
                jmp     short loc_14033C715
sub_14033C6DC   endp

; ---------------------------------------------------------------------------
algn_14033C72A:                         ; DATA XREF: .pdata:00000001400D6E84↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033C730   proc near               ; CODE XREF: sub_14033BD50+49↑p
                                        ; sub_14033C6DC+10↑p ...
                movzx   eax, word ptr [rcx+14h]
                lea     r9, [rcx+18h]
                add     r9, rax
                mov     rdx, 7FFFFFFEFFFFh
                movzx   eax, word ptr [rcx+6]
                mov     r10d, eax
                cmp     rcx, rdx
                jbe     short loc_14033C77E

loc_14033C751:                          ; CODE XREF: sub_14033C730+63↓j
                xor     edx, edx
                test    r10d, r10d
                jz      short loc_14033C775

loc_14033C758:                          ; CODE XREF: sub_14033C730+43↓j
                mov     ecx, [r9+0Ch]
                cmp     r8d, ecx
                jb      short loc_14033C76A
                add     ecx, [r9+10h]
                cmp     r8d, ecx
                jb      short loc_14033C779

loc_14033C76A:                          ; CODE XREF: sub_14033C730+2F↑j
                add     r9, 28h ; '('
                inc     edx
                cmp     edx, r10d
                jb      short loc_14033C758

loc_14033C775:                          ; CODE XREF: sub_14033C730+26↑j
                                        ; sub_14033C730+51↓j ...
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033C779:                          ; CODE XREF: sub_14033C730+38↑j
                mov     rax, r9
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033C77E:                          ; CODE XREF: sub_14033C730+1F↑j
                cmp     r9, rdx
                ja      short loc_14033C775
                lea     rcx, [rax+rax*4]
                lea     rax, [r9+rcx*8]
                cmp     rax, r9
                jb      short loc_14033C775
                cmp     rax, rdx
                jb      short loc_14033C751
                jmp     short loc_14033C775
sub_14033C730   endp

; ---------------------------------------------------------------------------
algn_14033C797:                         ; DATA XREF: .pdata:00000001400D6E90↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033C7A0   proc near               ; CODE XREF: sub_14033C650+36↑p
                                        ; sub_14033CCF4+F1↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, gs:188h
                xor     ebx, ebx
                mov     rsi, rcx
                test    rdi, rdi
                jz      short loc_14033C833
                dec     word ptr [rdi+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                mov     rcx, qword ptr cs:PsLoadedModuleList
                test    rcx, rcx
                jz      short loc_14033C833

loc_14033C7E3:                          ; CODE XREF: sub_14033C7A0+64↓j
                mov     rdx, [rcx+30h]
                cmp     rsi, rdx
                jb      short loc_14033C7F7
                mov     eax, [rcx+40h]
                add     rax, rdx
                cmp     rsi, rax
                jb      short loc_14033C82E

loc_14033C7F7:                          ; CODE XREF: sub_14033C7A0+4A↑j
                mov     rcx, [rcx]
                lea     rax, PsLoadedModuleList
                cmp     rcx, rax
                jnz     short loc_14033C7E3

loc_14033C806:                          ; CODE XREF: sub_14033C7A0+91↓j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rdi
                call    sub_14021E1F0
                mov     rax, rbx

loc_14033C81D:                          ; CODE XREF: sub_14033C7A0+95↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033C82E:                          ; CODE XREF: sub_14033C7A0+55↑j
                mov     rbx, rcx
                jmp     short loc_14033C806
; ---------------------------------------------------------------------------

loc_14033C833:                          ; CODE XREF: sub_14033C7A0+20↑j
                                        ; sub_14033C7A0+41↑j
                xor     eax, eax
                jmp     short loc_14033C81D
sub_14033C7A0   endp

; ---------------------------------------------------------------------------
algn_14033C837:                         ; DATA XREF: .pdata:00000001400D6E9C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033C840   proc near               ; CODE XREF: sub_14033B748+4A2↑p
                                        ; sub_1406F1074+1FF↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], r9d
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_18], 0
                mov     r9b, 1
                mov     r8b, r9b
                mov     rdi, rdx
                call    sub_14033CAD4
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14033C8B1
                mov     rdx, [rdi]
                lea     r9, [rsp+28h+arg_18]
                mov     rcx, rax
                call    sub_14033C8C0
                test    eax, eax
                js      short loc_14033C8A4
                test    dword ptr [rbx+14h], 100h
                mov     ecx, [rsp+28h+arg_18]
                jnz     short loc_14033C8AB

loc_14033C88B:                          ; CODE XREF: sub_14033C840+6F↓j
                mov     eax, [rbx+10h]
                test    al, 10h
                jz      short loc_14033C896
                bts     ecx, 15h

loc_14033C896:                          ; CODE XREF: sub_14033C840+50↑j
                                        ; sub_14033C840+69↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, ecx
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033C8A4:                          ; CODE XREF: sub_14033C840+3C↑j
                mov     ecx, 60000h
                jmp     short loc_14033C896
; ---------------------------------------------------------------------------

loc_14033C8AB:                          ; CODE XREF: sub_14033C840+49↑j
                bts     ecx, 14h
                jmp     short loc_14033C88B
; ---------------------------------------------------------------------------

loc_14033C8B1:                          ; CODE XREF: sub_14033C840+28↑j
                mov     ecx, 80000h
                jmp     short loc_14033C896
sub_14033C840   endp

; ---------------------------------------------------------------------------
algn_14033C8B8:                         ; DATA XREF: .pdata:00000001400D6EA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033C8C0   proc near               ; CODE XREF: sub_14033C840+35↑p
                                        ; DATA XREF: .rdata:000000014007F18C↑o ...

var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047B7F2 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                mov     [rsp+arg_8], rdx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rsi, r9
                mov     r8, rdx
                mov     rdi, rcx
                xor     ebx, ebx
                test    rcx, rcx
                jz      loc_14047B7F2
                test    r9, r9
                jz      loc_14047B7F2

loc_14033C8F9:                          ; DATA XREF: .rdata:000000014007F178↑o
;   __try { // __except at loc_14033CAAD
                lea     r15d, [rbx+1]
                cmp     rdx, 10000h
                jnb     short loc_14033C984
                mov     ecx, [rcx+60h]
                shr     ecx, 2
                mov     [rsp+88h+var_58], ecx
                mov     edx, [rdi+5Ch]
                add     rdx, rdi
                mov     [rsp+88h+var_40], rdx

loc_14033C91B:                          ; CODE XREF: sub_14033C8C0:loc_14033C980↓j
                sub     ecx, r15d
                mov     [rsp+88h+var_58], ecx
                js      short loc_14033C936
                mov     eax, r8d
                sub     eax, [rdx]
                add     rdx, 4
                mov     [rsp+88h+var_40], rdx
                test    eax, eax
                jnz     short loc_14033C980

loc_14033C936:                          ; CODE XREF: sub_14033C8C0+62↑j
                test    ecx, ecx
                js      loc_14033CAA1

loc_14033C93E:                          ; CODE XREF: sub_14033C8C0+1E6↓j
                mov     ecx, [rdi+70h]
                shr     ecx, 2
                mov     [rsp+88h+var_50], ecx
                mov     edx, [rdi+6Ch]
                add     rdx, rdi
                mov     [rsp+88h+var_38], rdx

loc_14033C953:                          ; CODE XREF: sub_14033C8C0:loc_14033C982↓j
                sub     ecx, r15d
                mov     [rsp+88h+var_50], ecx
                js      short loc_14033C96E
                mov     eax, r8d
                sub     eax, [rdx]
                add     rdx, 4
                mov     [rsp+88h+var_38], rdx
                test    eax, eax
                jnz     short loc_14033C982

loc_14033C96E:                          ; CODE XREF: sub_14033C8C0+9A↑j
                test    ecx, ecx
                jns     loc_14033CAAB
                bts     dword ptr [r9], 11h
                jmp     loc_14033CAAB
; ---------------------------------------------------------------------------

loc_14033C980:                          ; CODE XREF: sub_14033C8C0+74↑j
                jmp     short loc_14033C91B
; ---------------------------------------------------------------------------

loc_14033C982:                          ; CODE XREF: sub_14033C8C0+AC↑j
                jmp     short loc_14033C953
; ---------------------------------------------------------------------------

loc_14033C984:                          ; CODE XREF: sub_14033C8C0+44↑j
                mov     r12d, [rcx+58h]
                shr     r12d, 1
                mov     [rsp+88h+var_68], r12d
                mov     r14d, [rcx+54h]
                add     r14, rdi
                mov     [rsp+88h+arg_0], r14
                cmp     r14d, 10000h
                jbe     short loc_14033CA07

loc_14033C9A8:                          ; CODE XREF: sub_14033C8C0+13D↓j
                mov     r13, r14
                test    r12d, r12d
                jle     short loc_14033CA07
                cmp     [r14], bx
                jz      short loc_14033CA15
                mov     rdx, r14
                mov     rcx, r8
                call    _wcsicmp
                test    eax, eax
                jz      short loc_14033C9FF
                or      rcx, 0FFFFFFFFFFFFFFFFh

loc_14033C9C9:                          ; CODE XREF: sub_14033C8C0+112↓j
                inc     rcx
                cmp     [r13+rcx*2+0], bx
                jnz     short loc_14033C9C9
                add     ecx, r15d
                movsxd  rax, ecx
                lea     r14, ds:0[rax*2]
                add     r14, r13
                mov     [rsp+88h+arg_0], r14
                sub     r12d, ecx
                mov     [rsp+88h+var_68], r12d
                mov     r8, [rsp+88h+arg_8]
                jmp     short loc_14033C9A8
; ---------------------------------------------------------------------------

loc_14033C9FF:                          ; CODE XREF: sub_14033C8C0+103↑j
                mov     r8, [rsp+88h+arg_8]

loc_14033CA07:                          ; CODE XREF: sub_14033C8C0+E6↑j
                                        ; sub_14033C8C0+EE↑j
                cmp     [r14], bx
                jz      short loc_14033CA15
                test    r12d, r12d
                mov     al, r15b
                jg      short loc_14033CA17

loc_14033CA15:                          ; CODE XREF: sub_14033C8C0+F4↑j
                                        ; sub_14033C8C0+14B↑j
                mov     al, bl

loc_14033CA17:                          ; CODE XREF: sub_14033C8C0+153↑j
                test    al, al
                jnz     short loc_14033CA1F
                bts     dword ptr [rsi], 12h

loc_14033CA1F:                          ; CODE XREF: sub_14033C8C0+159↑j
                mov     r14d, [rdi+68h]
                shr     r14d, 1
                mov     [rsp+88h+var_60], r14d
                mov     eax, [rdi+64h]
                add     rdi, rax
                mov     [rsp+88h+var_48], rdi
                cmp     edi, 10000h
                jbe     short loc_14033CA89

loc_14033CA3E:                          ; CODE XREF: sub_14033C8C0+1C7↓j
                mov     r12, rdi
                test    r14d, r14d
                jle     short loc_14033CA89
                cmp     [rdi], bx
                jz      short loc_14033CA93
                mov     rdx, rdi
                mov     rcx, r8
                call    _wcsicmp
                test    eax, eax
                jz      short loc_14033CA89
                or      rcx, 0FFFFFFFFFFFFFFFFh

loc_14033CA5E:                          ; CODE XREF: sub_14033C8C0+1A6↓j
                inc     rcx
                cmp     [r12+rcx*2], bx
                jnz     short loc_14033CA5E
                add     ecx, r15d
                movsxd  rax, ecx
                lea     rdi, [r12+rax*2]
                mov     [rsp+88h+var_48], rdi
                sub     r14d, ecx
                mov     [rsp+88h+var_60], r14d
                mov     r8, [rsp+88h+arg_8]
                jmp     short loc_14033CA3E
; ---------------------------------------------------------------------------

loc_14033CA89:                          ; CODE XREF: sub_14033C8C0+17C↑j
                                        ; sub_14033C8C0+184↑j ...
                cmp     [rdi], bx
                jz      short loc_14033CA93
                test    r14d, r14d
                jg      short loc_14033CA96

loc_14033CA93:                          ; CODE XREF: sub_14033C8C0+189↑j
                                        ; sub_14033C8C0+1CC↑j
                mov     r15b, bl

loc_14033CA96:                          ; CODE XREF: sub_14033C8C0+1D1↑j
                test    r15b, r15b
                jnz     short loc_14033CAAB
                bts     dword ptr [rsi], 11h
                jmp     short loc_14033CAAB
; ---------------------------------------------------------------------------

loc_14033CAA1:                          ; CODE XREF: sub_14033C8C0+78↑j
                bts     dword ptr [r9], 12h
                jmp     loc_14033C93E
; ---------------------------------------------------------------------------

loc_14033CAAB:                          ; CODE XREF: sub_14033C8C0+B0↑j
                                        ; sub_14033C8C0+BB↑j ...
                jmp     short loc_14033CAAF
;   } // starts at 14033C8F9
; ---------------------------------------------------------------------------

loc_14033CAAD:                          ; DATA XREF: .rdata:000000014007F178↑o
;   __except(1) // owned by 14033C8F9
                mov     ebx, eax

loc_14033CAAF:                          ; CODE XREF: sub_14033C8C0:loc_14033CAAB↑j
                mov     eax, ebx

loc_14033CAB1:                          ; CODE XREF: sub_14033C8C0+13EF37↓j
                lea     r11, [rsp+88h+var_28]
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
                db 0CCh
; } // starts at 14033C8C0
sub_14033C8C0   endp

byte_14033CACC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F18C↑o
                                        ; .pdata:00000001400D6EB4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14033CAD4   proc near               ; CODE XREF: sub_14033C840+1D↑p
                                        ; sub_14038193C+39↓p ...

var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

; FUNCTION CHUNK AT 000000014047B7FC SIZE 00000011 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], rsi
                mov     [rsp-18h+arg_18], rdi
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                xor     r15d, r15d
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+var_38], r15
                mov     r14b, r8b
                mov     [rbp+var_40], r15
                mov     rdi, rcx
                test    r9b, r9b
                jz      short loc_14033CB6A
                xor     edx, edx
                lea     r9d, [r15+8]
                xor     r8d, r8d
                call    sub_14033CF64
                mov     [rbp+var_40], rax
                mov     rbx, rax
                cmp     rax, rsi
                jz      loc_14047B7FC
                test    rax, rax
                jz      short loc_14033CB6A

loc_14033CB3D:                          ; CODE XREF: sub_14033CAD4+FD↓j
                                        ; sub_14033CAD4+131↓j
                mov     rax, rbx

loc_14033CB40:                          ; CODE XREF: sub_14033CAD4+13ED2A↓j
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033CB6A:                          ; CODE XREF: sub_14033CAD4+44↑j
                                        ; sub_14033CAD4+67↑j
                lea     rax, aMui_1     ; "MUI"
                mov     [rbp+var_20], 1
                mov     [rbp+var_28], rax
                lea     rdx, [rbp+var_28]
                lea     rax, [rbp+var_38]
                mov     [rbp+var_18], r15
                mov     r9d, 2000030h
                mov     [rsp+80h+var_60], rax
                mov     r8d, 3
                mov     rcx, rdi
                call    sub_1406F1074
                test    eax, eax
                js      short loc_14033CC0A
                mov     rdx, [rbp+var_38]
                lea     r9, [rbp+var_30]
                lea     r8, [rbp+var_40]
                mov     rcx, rdi
                call    sub_1406F0E28
                test    eax, eax
                js      short loc_14033CC0A
                mov     rbx, [rbp+var_40]
                cmp     dword ptr [rbx], 0FECDFECDh
                jnz     loc_14047B803

loc_14033CBCE:                          ; CODE XREF: sub_14033CAD4+139↓j
                test    r14b, r14b
                jz      loc_14033CB3D
                mov     [rsp+80h+var_48], r15
                test    rbx, rbx
                mov     [rsp+80h+var_50], eax
                mov     rcx, rdi
                cmovnz  rsi, rbx
                mov     [rsp+80h+var_58], 2
                mov     r9, rsi
                mov     word ptr [rsp+80h+var_60], r15w
                xor     r8d, r8d
                xor     edx, edx
                call    sub_14037F0FC
                jmp     loc_14033CB3D
; ---------------------------------------------------------------------------

loc_14033CC0A:                          ; CODE XREF: sub_14033CAD4+D0↑j
                                        ; sub_14033CAD4+E8↑j ...
                mov     rbx, r15
                jmp     short loc_14033CBCE
; } // starts at 14033CAD4
sub_14033CAD4   endp

; ---------------------------------------------------------------------------
byte_14033CC0F  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007F1C0↑o
                                        ; .pdata:00000001400D6EC0↑o

; =============== S U B R O U T I N E =======================================


sub_14033CC18   proc near               ; CODE XREF: sub_1406F1074+314↓p
                                        ; sub_1406F1074+501↓p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014047B80E SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                and     [rsp+48h+var_18], 0
                lea     eax, [r8-3]
                mov     esi, r9d
                mov     rdi, rdx
                cmp     eax, 1
                ja      loc_14047B80E
                bt      r9d, 18h
                jb      short loc_14033CC8A
                movzx   ebx, word ptr [rdx+10h]

loc_14033CC4B:                          ; CODE XREF: sub_14033CC18+77↓j
                and     [rsp+48h+var_10], 0
                lea     r9, [rsp+48h+var_10]
                lea     r8, [rsp+48h+var_18]
                mov     dword ptr [rsp+48h+var_28], esi
                movzx   edx, bx
                call    sub_14033CCF4
                test    eax, eax
                jns     short loc_14033CC91
                cmp     eax, 0C000003Ah
                jz      short loc_14033CCE7
                cmp     eax, 0C0000034h
                jz      short loc_14033CCE7

loc_14033CC79:                          ; CODE XREF: sub_14033CC18+A7↓j
                                        ; sub_14033CC18+AB↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033CC8A:                          ; CODE XREF: sub_14033CC18+2D↑j
                mov     ebx, 0F2EEh
                jmp     short loc_14033CC4B
; ---------------------------------------------------------------------------

loc_14033CC91:                          ; CODE XREF: sub_14033CC18+51↑j
                mov     rcx, [rsp+48h+var_18]
                mov     r9d, 2000030h
                movzx   eax, bx
                mov     r8d, 3
                mov     rbx, [rsp+48h+arg_20]
                mov     rdx, rdi
                mov     [rsp+48h+var_28], rbx
                mov     [rdi+10h], rax
                call    sub_1406F1074
                test    sil, 40h
                jz      short loc_14033CC79
                test    eax, eax
                js      short loc_14033CC79
                mov     r9d, [rdi+18h]
                xor     r8d, r8d
                mov     rdx, [rbx]
                mov     rcx, [rsp+48h+var_18]
                mov     byte ptr [rsp+48h+var_28], 0
                call    sub_14033C328
                test    eax, eax
                jns     short loc_14033CC79
                jmp     loc_14047B818
; ---------------------------------------------------------------------------

loc_14033CCE7:                          ; CODE XREF: sub_14033CC18+58↑j
                                        ; sub_14033CC18+5F↑j
                mov     eax, 0C00B0001h
                jmp     short loc_14033CC79
sub_14033CC18   endp

; ---------------------------------------------------------------------------
byte_14033CCEE  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007F21C↑o
                                        ; .pdata:00000001400D6ECC↑o

; =============== S U B R O U T I N E =======================================


sub_14033CCF4   proc near               ; CODE XREF: sub_14033B748+4FD↑p
                                        ; sub_14033CC18+4A↑p ...

var_368         = qword ptr -368h
var_360         = dword ptr -360h
var_358         = dword ptr -358h
var_350         = qword ptr -350h
var_348         = qword ptr -348h
var_340         = qword ptr -340h
var_338         = qword ptr -338h
var_330         = dword ptr -330h
var_328         = xmmword ptr -328h
var_310         = qword ptr -310h
var_308         = byte ptr -308h
var_258         = byte ptr -258h
var_48          = qword ptr -48h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014047B822 SIZE 00000030 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 350h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+388h+var_48], rax
                mov     r15, r9
                mov     r14, r8
                movzx   r13d, dx
                mov     r12, rcx
                xor     ebx, ebx
                mov     [rsp+388h+var_348], rbx
                mov     [rsp+388h+var_338], rbx
                xorps   xmm0, xmm0
                movups  [rsp+388h+var_328], xmm0
                xor     edx, edx
                mov     r8d, 0AAh
                lea     rcx, [rsp+388h+var_308]
                call    memset
                mov     [rsp+388h+var_340], rbx
                test    r12, r12
                jz      loc_14047B848
                test    r13w, r13w
                jz      loc_14047B848
                test    r14, r14
                jz      loc_14047B848
                lea     r9d, [rbx+4]
                lea     r8, [rsp+388h+var_340]
                movzx   edx, r13w
                mov     rcx, r12
                call    sub_14033CF64
                mov     rsi, rax
                or      rax, 0FFFFFFFFFFFFFFFFh
                cmp     rsi, rax
                jz      short loc_14033CDD8
                test    rsi, rsi
                jz      short loc_14033CDE2

loc_14033CD96:                          ; DATA XREF: .rdata:000000014007F24C↑o
;   __try { // __except at loc_14033CDAC
                mov     [r14], rsi
                test    r15, r15
                jz      short loc_14033CDA6
                mov     rax, [rsp+388h+var_340]
                mov     [r15], rax

loc_14033CDA6:                          ; CODE XREF: sub_14033CCF4+A8↑j
                mov     [rsp+388h+var_330], ebx
                jmp     short loc_14033CDB2
;   } // starts at 14033CD96
; ---------------------------------------------------------------------------

loc_14033CDAC:                          ; DATA XREF: .rdata:000000014007F24C↑o
;   __except(1) // owned by 14033CD96
                mov     ebx, eax
                mov     [rsp+388h+var_330], eax

loc_14033CDB2:                          ; CODE XREF: sub_14033CCF4+B6↑j
                mov     eax, ebx

loc_14033CDB4:                          ; CODE XREF: sub_14033CCF4+EC↓j
                                        ; sub_14033CCF4+22F↓j ...
                mov     rcx, [rsp+388h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 350h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033CDD8:                          ; CODE XREF: sub_14033CCF4+9B↑j
                mov     [r14], rbx
                mov     eax, 0C00B0006h
                jmp     short loc_14033CDB4
; ---------------------------------------------------------------------------

loc_14033CDE2:                          ; CODE XREF: sub_14033CCF4+A0↑j
                mov     rcx, r12
                call    sub_14033C7A0
                mov     [rsp+388h+var_310], rax
                test    rax, rax
                jz      loc_14033CF52
                lea     rcx, [rsp+388h+var_258]
                mov     qword ptr [rsp+388h+var_328+8], rcx
                mov     dword ptr [rsp+388h+var_328], 2080000h
                mov     edi, [rsp+388h+arg_20]
                and     edi, 1000000h
                jnz     short loc_14033CE42
                lea     r9d, [rdi+2]
                lea     r8d, [rdi+55h]
                lea     rdx, [rsp+388h+var_308]
                movzx   ecx, r13w
                call    sub_14033D1DC
                test    eax, eax
                jz      loc_14033CF3B
                mov     rax, [rsp+388h+var_310]

loc_14033CE42:                          ; CODE XREF: sub_14033CCF4+126↑j
                lea     rcx, aMui       ; ".mui"
                lea     r8, aMun        ; ".mun"
                test    edi, edi
                cmovz   r8, rcx
                setnz   dl
                lea     rcx, [rsp+388h+var_328]
                mov     [rsp+388h+var_368], rcx
                lea     r9, [rsp+388h+var_308]
                mov     rcx, rax
                call    sub_1403808E8
                mov     edi, eax
                test    eax, eax
                js      short loc_14033CECF
                lea     rax, [rsp+388h+var_340]
                mov     [rsp+388h+var_368], rax
                lea     r9, [rsp+388h+var_348]
                lea     r8, [rsp+388h+var_338]
                lea     rdx, [rsp+388h+var_328]
                mov     rcx, r12
                call    sub_14038036C
                mov     edi, eax
                test    eax, eax
                js      short loc_14033CECF
                mov     rsi, [rsp+388h+var_348]
                or      rsi, 1
                mov     eax, [rsp+388h+arg_20]
                mov     dword ptr [rsp+388h+var_368], eax
                lea     r9, [rsp+388h+var_308]
                mov     rdx, rsi
                mov     rcx, r12
                call    sub_14038193C
                test    al, al
                jz      loc_14047B822

loc_14033CECF:                          ; CODE XREF: sub_14033CCF4+183↑j
                                        ; sub_14033CCF4+1AA↑j ...
                test    rsi, rsi
                mov     rax, 0FFFFFFFFFFFFFFFFh
                cmovz   rsi, rax
                mov     [rsp+388h+var_348], rsi
                mov     rsi, [rsp+388h+var_340]
                mov     [rsp+388h+var_350], rsi
                mov     [rsp+388h+var_358], edi
                mov     [rsp+388h+var_360], 1
                mov     word ptr [rsp+388h+var_368], r13w
                xor     r9d, r9d
                lea     r8, [rsp+388h+var_338]
                lea     rdx, [rsp+388h+var_348]
                mov     rcx, r12
                call    sub_14037F0FC
                mov     rax, [rsp+388h+var_348]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14033CF28
                mov     [r14], rbx

loc_14033CF21:                          ; CODE XREF: sub_14033CCF4+245↓j
                mov     eax, edi
                jmp     loc_14033CDB4
; ---------------------------------------------------------------------------

loc_14033CF28:                          ; CODE XREF: sub_14033CCF4+228↑j
                                        ; DATA XREF: .rdata:000000014007F25C↑o
;   __try { // __except at loc_14033CF35
                mov     [r14], rax
                test    r15, r15
                jz      short loc_14033CF33
                mov     [r15], rsi

loc_14033CF33:                          ; CODE XREF: sub_14033CCF4+23A↑j
                jmp     short loc_14033CF37
;   } // starts at 14033CF28
; ---------------------------------------------------------------------------

loc_14033CF35:                          ; DATA XREF: .rdata:000000014007F25C↑o
;   __except(1) // owned by 14033CF28
                xor     ebx, ebx

loc_14033CF37:                          ; CODE XREF: sub_14033CCF4:loc_14033CF33↑j
                mov     edi, ebx
                jmp     short loc_14033CF21
; ---------------------------------------------------------------------------

loc_14033CF3B:                          ; CODE XREF: sub_14033CCF4+143↑j
                mov     r9d, r13d
                lea     r8, aLdrNoLocaleNam ; "LDR: No Locale name for LangId %d \n"
                mov     edx, 1
                lea     ecx, [rdx+54h]
                call    DbgPrintEx

loc_14033CF52:                          ; CODE XREF: sub_14033CCF4+FE↑j
                mov     edi, 0C00B0001h
                jmp     loc_14033CECF
; } // starts at 14033CCF4
sub_14033CCF4   endp

; ---------------------------------------------------------------------------
byte_14033CF5C  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F274↑o
                                        ; .pdata:00000001400D6ED8↑o

; =============== S U B R O U T I N E =======================================


sub_14033CF64   proc near               ; CODE XREF: sub_14033CAD4+4F↑p
                                        ; sub_14033CCF4+8C↑p ...

var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014041AF89 SIZE 00000027 BYTES
; FUNCTION CHUNK AT 000000014047B852 SIZE 0000000E BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     esi, r9d
                mov     rdi, r8
                movzx   r14d, dx
                mov     r12, rcx
                xor     r13d, r13d
                mov     ebx, r13d
                mov     [rax+20h], r13b
                test    r9b, 0Ch
                jz      loc_14033D0F9
                test    r9d, 0FFFFFFF3h
                jnz     loc_14033D0F9
                test    sil, 4
                jz      short loc_14033CFB9
                test    dx, dx
                jz      loc_14033D0F9

loc_14033CFB9:                          ; CODE XREF: sub_14033CF64+4A↑j
                and     rcx, 0FFFFFFFFFFFFFFFCh
                call    RtlImageNtHeader
                mov     r15, rax
                test    rax, rax
                jz      loc_14033D0F9
                test    rdi, rdi
                jz      short loc_14033CFD6
                mov     [rdi], r13

loc_14033CFD6:                          ; CODE XREF: sub_14033CF64+6D↑j
                call    sub_14033D104
                mov     [rsp+68h+var_48], r13
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, unk_140C1DCC0
                call    KeWaitForSingleObject
                nop

loc_14033CFF5:                          ; DATA XREF: .rdata:000000014007F2A4↑o
;   __try { // __finally(loc_14041AF89)
                mov     eax, cs:dword_140C1DCFC
                lea     r8d, [rax-1]

loc_14033CFFF:                          ; CODE XREF: sub_14033CF64+108↓j
                mov     [rsp+68h+var_38], r8d
                test    r8d, r8d
                js      loc_14033D0B9
                movsxd  rcx, r8d
                shl     rcx, 6
                mov     rdx, cs:qword_140C1DCA0
                cmp     [rcx+rdx+8], r12
                jnz     short loc_14033D069
                mov     eax, [r15+58h]
                cmp     [rcx+rdx+18h], eax
                jnz     loc_14033D0B1
                test    sil, 8
                jnz     short loc_14033D062
                test    sil, 4
                jz      short loc_14033D069
                test    r14w, r14w
                jz      short loc_14033D0AF
                cmp     [rcx+rdx], r14w
                jnz     short loc_14033D0AF
                mov     rbx, [rcx+rdx+20h]
                mov     [rsp+68h+var_30], rbx
                test    rdi, rdi
                jz      short loc_14033D0B9
                mov     rax, [rcx+rdx+30h]
                mov     [rdi], rax
                jmp     short loc_14033D0B9
; ---------------------------------------------------------------------------

loc_14033D062:                          ; CODE XREF: sub_14033CF64+D0↑j
                cmp     [rcx+rdx+10h], r13
                jnz     short loc_14033D06E

loc_14033D069:                          ; CODE XREF: sub_14033CF64+BC↑j
                                        ; sub_14033CF64+D6↑j ...
                dec     r8d
                jmp     short loc_14033CFFF
; ---------------------------------------------------------------------------

loc_14033D06E:                          ; CODE XREF: sub_14033CF64+103↑j
                lfence
                movsxd  rcx, [rsp+68h+var_38]
                shl     rcx, 6
                mov     rax, cs:qword_140C1DCA0
                mov     rbx, [rcx+rax+10h]
                mov     [rsp+68h+var_30], rbx
                lea     rax, [rbx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      short loc_14033D0B9
                cmp     dword ptr [rbx], 0FECDFECDh
                jz      short loc_14033D0B9
                mov     [rsp+68h+arg_18], 1
                mov     rbx, r13
                mov     [rsp+68h+var_30], rbx
                jmp     short loc_14033D0B9
; ---------------------------------------------------------------------------

loc_14033D0AF:                          ; CODE XREF: sub_14033CF64+DC↑j
                                        ; sub_14033CF64+E3↑j
                jmp     short loc_14033D069
; ---------------------------------------------------------------------------

loc_14033D0B1:                          ; CODE XREF: sub_14033CF64+C6↑j
                mov     [rsp+68h+arg_18], 1
;   } // starts at 14033CFF5

loc_14033D0B9:                          ; CODE XREF: sub_14033CF64+A3↑j
                                        ; sub_14033CF64+F2↑j ...
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+1]
                lea     rcx, unk_140C1DCC0
                call    KeReleaseMutant
                cmp     [rsp+68h+arg_18], r13b
                jnz     loc_14047B852

loc_14033D0DD:                          ; CODE XREF: sub_14033CF64+13E8F7↓j
                mov     rax, rbx

loc_14033D0E0:                          ; CODE XREF: sub_14033CF64+197↓j
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033D0F9:                          ; CODE XREF: sub_14033CF64+33↑j
                                        ; sub_14033CF64+40↑j ...
                xor     eax, eax
                jmp     short loc_14033D0E0
; } // starts at 14033CF64
sub_14033CF64   endp

; ---------------------------------------------------------------------------
byte_14033D0FD  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007F2B8↑o
                                        ; .pdata:00000001400D6EE4↑o

; =============== S U B R O U T I N E =======================================


sub_14033D104   proc near               ; CODE XREF: sub_14033C3B4+2C↑p
                                        ; sub_14033CF64:loc_14033CFD6↑p ...

arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047B860 SIZE 00000012 BYTES

                mov     [rsp+arg_8], rdx
                push    rbx
                sub     rsp, 20h
                mov     [rsp+28h+arg_8], 0FFFFFFFFFFF0BDC0h
                mov     ebx, 1

loc_14033D11C:                          ; CODE XREF: sub_14033D104+37↓j
                xor     eax, eax
                lock cmpxchg cs:dword_140C1DC98, ebx
                jz      short loc_14033D144
                cmp     cs:dword_140C1DC98, ebx
                jz      loc_14047B860

loc_14033D134:                          ; CODE XREF: sub_14033D104+13E769↓j
                cmp     cs:dword_140C1DC98, 2
                jnz     short loc_14033D11C

loc_14033D13D:                          ; CODE XREF: sub_14033D104+5E↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033D144:                          ; CODE XREF: sub_14033D104+22↑j
                xor     r9d, r9d
                lea     rcx, unk_140C1DCC0
                mov     r8b, bl
                xor     edx, edx
                call    sub_140311B2C
                mov     cs:dword_140C1DC98, 2
                jmp     short loc_14033D13D
sub_14033D104   endp

; ---------------------------------------------------------------------------
byte_14033D164  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F2E0↑o
                                        ; .pdata:00000001400D6EF0↑o

; =============== S U B R O U T I N E =======================================


sub_14033D16C   proc near               ; CODE XREF: sub_1406F1074+684↓p
                                        ; sub_1406F0A3C+1346D2↓p
                                        ; DATA XREF: ...

var_178         = byte ptr -178h
var_C8          = byte ptr -0C8h
var_18          = qword ptr -18h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B872 SIZE 00000036 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rdi
                sub     rsp, 190h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+198h+var_18], rax
                xor     ebx, ebx
                mov     rdi, rdx
                test    rdx, rdx
                jz      short loc_14033D1AF
                lea     r9d, [rbx+2]
                lea     r8d, [rbx+55h]
                lea     rdx, [rsp+198h+var_178]
                call    sub_14033D1DC
                test    eax, eax
                jnz     loc_14047B872

loc_14033D1AF:                          ; CODE XREF: sub_14033D16C+27↑j
                mov     eax, 0C000000Dh

loc_14033D1B4:                          ; CODE XREF: sub_14033D16C+13E737↓j
                mov     rcx, [rsp+198h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+198h+arg_10]
                add     rsp, 190h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033D16C
sub_14033D16C   endp

byte_14033D1D6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007F30C↑o
                                        ; .pdata:00000001400D6EFC↑o

; =============== S U B R O U T I N E =======================================


sub_14033D1DC   proc near               ; CODE XREF: sub_14033CCF4+13C↑p
                                        ; sub_14033D16C+36↑p ...

var_18          = qword ptr -18h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047B8A8 SIZE 0000000E BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                mov     [rax+8], cx
                push    rdi
                sub     rsp, 30h
                xor     ebp, ebp
                movsxd  rsi, r8d
                mov     ebx, r9d
                mov     rdi, rdx
                test    r8d, r8d
                js      short loc_14033D246
                test    rdx, rdx
                jz      loc_14047B8A8

loc_14033D20D:                          ; CODE XREF: sub_14033D1DC+13E6D5↓j
                test    ebx, 0FFFFFFFDh
                jnz     short loc_14033D246
                lea     rax, sub_140362F70
                mov     r9d, 10h
                mov     r8d, 1B4h
                mov     [rsp+38h+var_18], rax
                lea     rdx, off_140003460 ; "ar"
                lea     rcx, [rsp+38h+arg_0]
                call    bsearch
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_14033D25E

loc_14033D246:                          ; CODE XREF: sub_14033D1DC+26↑j
                                        ; sub_14033D1DC+37↑j ...
                xor     eax, eax

loc_14033D248:                          ; CODE XREF: sub_14033D1DC+BC↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033D25E:                          ; CODE XREF: sub_14033D1DC+68↑j
                test    bl, 2
                jnz     short loc_14033D26C
                call    sub_1403A7950
                test    eax, eax
                jnz     short loc_14033D246

loc_14033D26C:                          ; CODE XREF: sub_14033D1DC+85↑j
                mov     r8, [rcx]
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_14033D273:                          ; CODE XREF: sub_14033D1DC+9F↓j
                inc     rbx
                cmp     [r8+rbx*2], bp
                jnz     short loc_14033D273
                test    rdi, rdi
                jz      short loc_14033D295
                mov     rdx, rsi
                lea     r9, [rbx+1]
                mov     rcx, rdi
                call    sub_14038008C
                test    eax, eax
                js      short loc_14033D246

loc_14033D295:                          ; CODE XREF: sub_14033D1DC+A4↑j
                lea     eax, [rbx+1]
                jmp     short loc_14033D248
sub_14033D1DC   endp

; ---------------------------------------------------------------------------
algn_14033D29A:                         ; DATA XREF: .rdata:000000014007F334↑o
                                        ; .pdata:00000001400D6F08↑o
                align 20h
; Exported entry 484. FsRtlIsPagingFile

; =============== S U B R O U T I N E =======================================


                public FsRtlIsPagingFile
FsRtlIsPagingFile proc near             ; DATA XREF: .pdata:00000001400D6F14↑o
                mov     rax, [rcx+18h]
                xor     ecx, ecx
                test    rax, rax
                jz      short loc_14033D2B2
                mov     al, [rax+6]
                test    al, 8
                jnz     short loc_14033D2B6

loc_14033D2B2:                          ; CODE XREF: FsRtlIsPagingFile+9↑j
                                        ; FsRtlIsPagingFile+1B↓j
                mov     eax, ecx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033D2B6:                          ; CODE XREF: FsRtlIsPagingFile+10↑j
                mov     ecx, 1
                jmp     short loc_14033D2B2
FsRtlIsPagingFile endp

; ---------------------------------------------------------------------------
byte_14033D2BD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400D6F14↑o
; Exported entry 1307. KeRundownQueue

; =============== S U B R O U T I N E =======================================


                public KeRundownQueue
KeRundownQueue  proc near               ; DATA XREF: .pdata:00000001400D6F20↑o
                sub     rsp, 28h
                mov     dl, 1
                call    sub_14033D458
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeRundownQueue  endp

algn_14033D2E1:                         ; DATA XREF: .pdata:00000001400D6F20↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14033D2E8   proc near               ; CODE XREF: sub_1406F2D90+6↓p
                                        ; sub_1406F2DB0+13↓p
                                        ; DATA XREF: ...

var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047BCBA SIZE 00000067 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+var_10], rax
                xorps   xmm1, xmm1
                mov     sil, dl
                mov     rdi, rcx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm1
                test    dl, dl
                jz      short loc_14033D383
                add     rcx, 40h ; '@'
                lea     rdx, [rbp+var_20]
                call    KeAcquireInStackQueuedSpinLock
                xor     dl, dl
                mov     byte ptr [rdi+48h], 1

loc_14033D330:                          ; CODE XREF: sub_14033D2E8+9D↓j
                mov     rcx, rdi
                call    sub_14033D458
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_14033D387

loc_14033D340:                          ; CODE XREF: sub_14033D2E8+120↓j
                                        ; sub_14033D2E8+15C↓j
                test    sil, sil
                jz      short loc_14033D364
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rbp+var_10]
                test    eax, eax
                jnz     loc_14047BCBA

loc_14033D360:                          ; CODE XREF: sub_14033D2E8+13E9D4↓j
                                        ; sub_14033D2E8+13E9E0↓j ...
                mov     cr8, rdi

loc_14033D364:                          ; CODE XREF: sub_14033D2E8+5B↑j
                test    rbx, rbx
                jnz     loc_14033D42D

loc_14033D36D:                          ; CODE XREF: sub_14033D2E8+155↓j
                mov     rbx, [rsp+50h+arg_0]
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033D383:                          ; CODE XREF: sub_14033D2E8+33↑j
                mov     dl, 1
                jmp     short loc_14033D330
; ---------------------------------------------------------------------------

loc_14033D387:                          ; CODE XREF: sub_14033D2E8+56↑j
                mov     rax, [rax]
                cmp     [rax+8], rbx
                jnz     loc_14033D449
                mov     qword ptr [rbp+var_30], rax
                lea     rcx, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], rbx
                mov     [rax+8], rcx
                lea     rax, [rbp+var_30]
                mov     [rbx], rax
                lea     rax, [rbp+var_30]
                mov     rbx, qword ptr [rbp+var_30]
                cmp     rbx, rax
                jz      short loc_14033D3D1

loc_14033D3B8:                          ; CODE XREF: sub_14033D2E8+E3↓j
                mov     rcx, rbx
                mov     rbx, [rbx]
                cmp     byte ptr [rcx+10h], 2
                jz      short loc_14033D40D

loc_14033D3C4:                          ; CODE XREF: sub_14033D2E8+143↓j
                lea     rax, [rbp+var_30]
                cmp     rbx, rax
                jnz     short loc_14033D3B8
                mov     rbx, qword ptr [rbp+var_30]

loc_14033D3D1:                          ; CODE XREF: sub_14033D2E8+CE↑j
                lea     rax, [rbp+var_30]
                cmp     rbx, rax
                jz      short loc_14033D442
                mov     rax, qword ptr [rbp+var_30+8]
                lea     rcx, [rbp+var_30]
                cmp     [rbx+8], rcx
                jnz     short loc_14033D449
                lea     rcx, [rbp+var_30]
                cmp     [rax], rcx
                jnz     short loc_14033D449
                mov     [rax], rbx
                mov     [rbx+8], rax
                lea     rax, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], rax
                lea     rax, [rbp+var_30]
                mov     qword ptr [rbp+var_30], rax
                jmp     loc_14033D340
; ---------------------------------------------------------------------------

loc_14033D40D:                          ; CODE XREF: sub_14033D2E8+DA↑j
                mov     rax, [rcx+8]
                cmp     [rbx+8], rcx
                jnz     short loc_14033D449
                cmp     [rax], rcx
                jnz     short loc_14033D449
                mov     [rax], rbx
                mov     rdx, rdi
                mov     [rbx+8], rax
                call    sub_14033D9B0
                jmp     short loc_14033D3C4
; ---------------------------------------------------------------------------

loc_14033D42D:                          ; CODE XREF: sub_14033D2E8+7F↑j
                mov     rax, [rbx+8]
                mov     rcx, rbx
                and     qword ptr [rax], 0
                call    sub_1406F2DD4
                jmp     loc_14033D36D
; ---------------------------------------------------------------------------

loc_14033D442:                          ; CODE XREF: sub_14033D2E8+F0↑j
                xor     ebx, ebx
                jmp     loc_14033D340
; ---------------------------------------------------------------------------

loc_14033D449:                          ; CODE XREF: sub_14033D2E8+A6↑j
                                        ; sub_14033D2E8+FE↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D2E8   endp

; ---------------------------------------------------------------------------
byte_14033D450  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F8E0↑o
                                        ; .pdata:00000001400D6F2C↑o

; =============== S U B R O U T I N E =======================================


sub_14033D458   proc near               ; CODE XREF: KeRundownQueue+6↑p
                                        ; sub_14033D2E8+4B↑p ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047BD22 SIZE 00000042 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     bpl, dl
                mov     rbx, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047BD22

loc_14033D48D:                          ; CODE XREF: sub_14033D458+13E8CC↓j
                                        ; sub_14033D458+13E8D6↓j ...
                mov     rcx, rbx
                call    sub_1402AF4F0
                lea     rax, [rbx+18h]
                mov     rdi, [rax]
                cmp     rdi, rax
                jnz     short loc_14033D507
                xor     edi, edi

loc_14033D4A3:                          ; CODE XREF: sub_14033D458+D0↓j
                lea     r8, [rbx+28h]
                mov     [rsp+38h+var_18], bpl
                lea     rdx, [rbx+30h]
                mov     r9d, 1
                mov     rcx, rbx
                call    sub_14033D53C
                lock and dword ptr [rbx], 0FFFFFF7Fh
                test    bpl, bpl
                jz      short loc_14033D4D2
                mov     rcx, rbx
                call    sub_14033D974

loc_14033D4D2:                          ; CODE XREF: sub_14033D458+70↑j
                mov     rcx, gs:20h
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+38h+var_18], sil
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, rdi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033D507:                          ; CODE XREF: sub_14033D458+47↑j
                and     dword ptr [rbx+4], 0
                mov     rcx, [rax+8]
                cmp     [rdi+8], rax
                jnz     short loc_14033D52D
                cmp     [rcx], rax
                jnz     short loc_14033D52D
                mov     [rcx], rdi
                mov     [rdi+8], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                jmp     loc_14033D4A3
; ---------------------------------------------------------------------------

loc_14033D52D:                          ; CODE XREF: sub_14033D458+BB↑j
                                        ; sub_14033D458+C0↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D458   endp

; ---------------------------------------------------------------------------
byte_14033D534  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014007F908↑o
                                        ; .pdata:00000001400D6F38↑o

; =============== S U B R O U T I N E =======================================


sub_14033D53C   proc near               ; CODE XREF: sub_14033D458+61↑p
                                        ; sub_14052465C+7D↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 000000014047BD64 SIZE 00000085 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                lock bts dword ptr [rcx], 8
                xor     r13d, r13d
                mov     r14d, r9d
                mov     rsi, r8
                mov     r15, rdx
                mov     rbp, rcx
                cmp     [rsp+48h+arg_20], r13b
                jz      short loc_14033D594

loc_14033D573:                          ; CODE XREF: sub_14033D53C+1D0↓j
                mov     rax, [r15]
                cmp     rax, r15
                jnz     loc_14033D6AA
                test    r14d, r14d
                jz      short loc_14033D594
                mov     rax, r14

loc_14033D587:                          ; CODE XREF: sub_14033D53C+56↓j
                mov     [rsi], r13d
                lea     rsi, [rsi+4]
                sub     rax, 1
                jnz     short loc_14033D587

loc_14033D594:                          ; CODE XREF: sub_14033D53C+35↑j
                                        ; sub_14033D53C+46↑j
                mov     r12, gs:20h
                lea     rsi, [rbp+8]
                mov     r14, [rsi]

loc_14033D5A4:                          ; CODE XREF: sub_14033D53C+1F5↓j
                                        ; sub_14033D53C+13E8A8↓j
                cmp     r14, rsi
                jnz     short loc_14033D5CE
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     [rsi+8], rsi
                mov     [rsi], rsi
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033D5CE:                          ; CODE XREF: sub_14033D53C+6B↑j
                mov     rbx, r14
                mov     edx, 2
                mov     r14, [r14]
                mov     al, [rbx+10h]
                cmp     al, 1
                jz      loc_14047BDC8
                cmp     al, dl
                jnz     loc_14047BDCF
                mov     byte ptr [rbx+11h], 5
                mov     rdi, [rbx+18h]
                mov     [rbx], r13
                lea     r15, [rdi+8]
                mov     rcx, cr8
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14033D615
                test    al, 1
                jnz     loc_14033D736

loc_14033D615:                          ; CODE XREF: sub_14033D53C+CF↑j
                                        ; sub_14033D53C+1FD↓j ...
                mov     r13, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     rbp, [r13+8]
                jnz     loc_14033D76E

loc_14033D632:                          ; CODE XREF: sub_14033D53C+248↓j
                mov     rcx, rdi
                call    sub_1402AF4F0
                cmp     [r15], r15
                jz      short loc_14033D664
                mov     eax, [rdi+28h]
                cmp     eax, [rdi+2Ch]
                jnb     short loc_14033D664
                mov     rax, [rbp+0E8h]
                cmp     rax, rdi
                jnz     loc_14033D711
                cmp     byte ptr [rbp+283h], 0Fh
                jnz     loc_14033D711

loc_14033D664:                          ; CODE XREF: sub_14033D53C+101↑j
                                        ; sub_14033D53C+109↑j ...
                mov     ecx, [rdi+4]
                lea     eax, [rcx+1]
                mov     [rdi+4], eax
                lea     rax, [rdi+18h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_14033D789
                mov     [rbx], rax
                mov     [rbx+8], rdx
                mov     [rdx], rbx
                mov     [rax+8], rbx
                test    ecx, ecx
                jnz     loc_14033D727
                cmp     [r15], r15
                jz      loc_14033D727
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_1402C2EC0
                jmp     short loc_14033D727
; ---------------------------------------------------------------------------

loc_14033D6AA:                          ; CODE XREF: sub_14033D53C+3D↑j
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14033D789
                cmp     [rcx], rax
                jnz     loc_14033D789
                mov     [rcx], rdx
                lea     rdi, [rax-208h]
                mov     [rdx+8], rcx
                mov     rbx, gs:20h
                mov     [rsp+48h+arg_0], r13d

loc_14033D6E0:                          ; CODE XREF: sub_14033D53C+13E887↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14047BD64

loc_14033D6F0:                          ; CODE XREF: sub_14033D53C+13E82C↓j
                                        ; sub_14033D53C+13E83B↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_14047BD8B
                mov     rcx, rdi
                mov     [rdi+0E8h], r13
                call    sub_1403261B0
                jmp     loc_14033D573
; ---------------------------------------------------------------------------

loc_14033D711:                          ; CODE XREF: sub_14033D53C+115↑j
                                        ; sub_14033D53C+122↑j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_1402AF540
                test    al, al
                jz      loc_14033D664

loc_14033D727:                          ; CODE XREF: sub_14033D53C+152↑j
                                        ; sub_14033D53C+15B↑j ...
                lock and dword ptr [rdi], 0FFFFFF7Fh
                xor     r13d, r13d
                jmp     loc_14033D5A4
; ---------------------------------------------------------------------------

loc_14033D736:                          ; CODE XREF: sub_14033D53C+D3↑j
                cmp     cl, 0Fh
                ja      loc_14033D615
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_14033D615
; ---------------------------------------------------------------------------

loc_14033D76E:                          ; CODE XREF: sub_14033D53C+F0↑j
                mov     rcx, rbp
                call    sub_1405131B4
                mov     r8b, al
                mov     rcx, rbp
                mov     rdx, rbx
                call    sub_1405A7A60
                jmp     loc_14033D632
; ---------------------------------------------------------------------------

loc_14033D789:                          ; CODE XREF: sub_14033D53C+13C↑j
                                        ; sub_14033D53C+179↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D53C   endp

; ---------------------------------------------------------------------------
algn_14033D790:                         ; DATA XREF: .rdata:000000014007F938↑o
                                        ; .pdata:00000001400D6F44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033D7A0   proc near               ; DATA XREF: .pdata:00000001400D6F50↑o
                                        ; sub_140A74914+65↓o
                sub     rsp, 28h
                call    sub_14033D7B8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033D7A0   endp

byte_14033D7AF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6F50↑o

; =============== S U B R O U T I N E =======================================


sub_14033D7B8   proc near               ; CODE XREF: sub_14033D7A0+4↑p
                                        ; DATA XREF: .rdata:000000014007F964↑o ...

var_98          = byte ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047BDEA SIZE 000002BD BYTES

                mov     [rsp+arg_8], edx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     rsi, gs:188h
                xor     r15d, r15d
                mov     edi, r15d
                mov     byte ptr [rsp+0B8h+arg_8], r15b
                mov     ebp, r15d
                mov     [rsp+0B8h+var_70], rsi
                mov     r13b, r15b
                mov     [rsp+0B8h+var_80], r15
                mov     rbx, rcx
                mov     r14, cr8
                mov     [rsp+0B8h+arg_18], r14
                lea     eax, [r15+2]
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047BDEA

loc_14033D818:                          ; CODE XREF: sub_14033D7B8+13E634↓j
                                        ; sub_14033D7B8+13E63E↓j ...
                mov     r12, gs:20h
                mov     rcx, rbx
                mov     [rsp+0B8h+var_88], r12
                call    sub_1402AF4F0
                mov     eax, [rbx+4]
                or      byte ptr [rbx+30h], 1
                mov     dword ptr [rbx+4], 1
                test    eax, eax
                jle     short loc_14033D884
                mov     r15d, 0FFFFFF7Fh
                lock and [rbx], r15d

loc_14033D84A:                          ; CODE XREF: sub_14033D7B8+19D↓j
                xor     edx, edx
                mov     [rsp+0B8h+var_98], r14b
                mov     rcx, r12
                lea     r9d, [rdx+1]
                mov     r8d, r9d
                call    sub_14023E110
                test    r13b, r13b
                jnz     loc_14047C06B

loc_14033D869:                          ; CODE XREF: sub_14033D7B8+13E8C1↓j
                                        ; sub_14033D7B8+13E8DC↓j
                cmp     rbp, rsi
                jz      loc_14033D95A

loc_14033D872:                          ; CODE XREF: sub_14033D7B8+1A4↓j
                                        ; sub_14033D7B8+13E8EA↓j
                add     rsp, 78h
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
                align 4

loc_14033D884:                          ; CODE XREF: sub_14033D7B8+86↑j
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+0B8h+var_58], rax
                mov     eax, [rbx]
                movups  [rsp+0B8h+var_68], xmm0
                mov     dword ptr [rsp+0B8h+var_68], eax
                mov     byte ptr [rsp+0B8h+var_68+2], r15b
                mov     eax, dword ptr [rsp+0B8h+var_68]
                mov     [rbx], eax
                movzx   eax, byte ptr [rbx+31h]
                mov     rdi, gs:20h
                mov     rbp, [rbx+28h]
                mov     [rsp+0B8h+arg_10], eax
                mov     [rsp+0B8h+arg_0], r15d

loc_14033D8C4:                          ; CODE XREF: sub_14033D7B8+13E6D6↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14047BE2C

loc_14033D8D4:                          ; CODE XREF: sub_14033D7B8+13E678↓j
                                        ; sub_14033D7B8+13E687↓j ...
                lock bts qword ptr [rbp+40h], 0
                jb      loc_14047BE53
                lea     rax, [rbx+18h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     short loc_14033D967
                cmp     [rcx], rax
                jnz     short loc_14033D967
                mov     [rcx], rdx
                mov     r13d, 2
                mov     [rdx+8], rcx
                test    [rbx+30h], r13b
                jnz     loc_14047BE93

loc_14033D90E:                          ; CODE XREF: sub_14033D7B8+13E6E6↓j
                                        ; sub_14033D7B8+13E6FA↓j
                mov     rcx, rbp
                call    sub_1403261B0
                lea     rax, [rbx+8]
                mov     [rbx+28h], r15
                mov     rsi, [rax]
                mov     r15d, 0FFFFFF7Fh
                cmp     rsi, rax
                jnz     loc_14047BEB7

loc_14033D930:                          ; CODE XREF: sub_14033D7B8+13E8AE↓j
                lock and [rbx], r15d
                mov     rcx, rbx
                call    sub_14033D974
                mov     rsi, [rsp+0B8h+var_70]
                mov     r12, [rsp+0B8h+var_88]
                mov     r13b, byte ptr [rsp+0B8h+arg_8]
                mov     edi, [rsp+0B8h+arg_10]
                jmp     loc_14033D84A
; ---------------------------------------------------------------------------

loc_14033D95A:                          ; CODE XREF: sub_14033D7B8+B4↑j
                test    edi, edi
                jz      loc_14033D872
                jmp     loc_14047C099
; ---------------------------------------------------------------------------

loc_14033D967:                          ; CODE XREF: sub_14033D7B8+138↑j
                                        ; sub_14033D7B8+13D↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_14033D7B8   endp

; ---------------------------------------------------------------------------
byte_14033D96E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007F964↑o
                                        ; .pdata:00000001400D6F5C↑o

; =============== S U B R O U T I N E =======================================


sub_14033D974   proc near               ; CODE XREF: sub_14033D458+75↑p
                                        ; sub_14033D7B8+17F↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rax, unk_140D26A00
                shr     rbx, 4
                and     ebx, 3Fh
                shl     rbx, 6
                add     rbx, rax
                mov     rcx, rbx
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                mov     rcx, rbx
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033D974   endp

algn_14033D9A9:                         ; DATA XREF: .pdata:00000001400D6F68↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033D9B0   proc near               ; CODE XREF: sub_14033D2E8+13E↑p
                                        ; DATA XREF: .rdata:000000014007F990↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047C0A8 SIZE 00000064 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, [rcx+50h]
                mov     rdi, rcx
                add     rcx, 60h ; '`'
                mov     rbp, rdx
                call    KeAcquireSpinLockRaiseToDpc
                and     qword ptr [rdi+58h], 0
                lea     rcx, [rdi+60h]
                movzx   esi, al
                mov     byte ptr [rdi+68h], 0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047C0A8

loc_14033D9FF:                          ; CODE XREF: sub_14033D9B0+13E6FA↓j
                                        ; sub_14033D9B0+13E706↓j ...
                mov     cr8, rsi
                mov     ebx, 746C6644h
                mov     rcx, r14
                mov     edx, ebx
                call    ObfDereferenceObjectWithTag
                mov     edx, ebx
                mov     rcx, rbp
                call    ObfDereferenceObjectWithTag
                mov     edx, ebx
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033D9B0   endp

algn_14033DA42:                         ; DATA XREF: .rdata:000000014007F990↑o
                                        ; .pdata:00000001400D6F74↑o
                align 10h
; Exported entry 799. IoCsqRemoveNextIrp

; =============== S U B R O U T I N E =======================================


                public IoCsqRemoveNextIrp
IoCsqRemoveNextIrp proc near            ; DATA XREF: .pdata:00000001400D6F80↑o

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+20h]
                mov     rsi, rdx
                and     qword ptr [rcx+38h], 0
                lea     rdx, [rsp+28h+arg_0]
                mov     rbx, rcx
                mov     [rsp+28h+arg_0], 0
                call    sub_1404079D0
                xor     edx, edx

loc_14033DA7F:                          ; CODE XREF: IoCsqRemoveNextIrp+52↓j
                mov     rax, [rbx+18h]
                mov     r8, rsi
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14033DAE8
                xor     ecx, ecx
                mov     rdx, rax
                xchg    rcx, [rdi+68h]
                test    rcx, rcx
                jz      short loc_14033DA7F
                mov     rax, [rbx+10h]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rax, [rdi+90h]
                cmp     dword ptr [rax], 1
                jz      short loc_14033DAFC

loc_14033DABC:                          ; CODE XREF: IoCsqRemoveNextIrp+B1↓j
                and     qword ptr [rdi+90h], 0
                mov     rcx, rbx
                mov     rax, [rbx+28h]
                mov     dl, [rsp+28h+arg_0]
                call    sub_1404079D0
                mov     rax, rdi

loc_14033DAD7:                          ; CODE XREF: IoCsqRemoveNextIrp+AA↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033DAE8:                          ; CODE XREF: IoCsqRemoveNextIrp+44↑j
                mov     rax, [rbx+28h]
                mov     rcx, rbx
                mov     dl, [rsp+28h+arg_0]
                call    sub_1404079D0
                xor     eax, eax
                jmp     short loc_14033DAD7
; ---------------------------------------------------------------------------

loc_14033DAFC:                          ; CODE XREF: IoCsqRemoveNextIrp+6A↑j
                and     qword ptr [rax+8], 0
                jmp     short loc_14033DABC
IoCsqRemoveNextIrp endp

; ---------------------------------------------------------------------------
algn_14033DB03:                         ; DATA XREF: .pdata:00000001400D6F80↑o
                align 10h
; Exported entry 1322. KeSetKernelStackSwapEnable

; =============== S U B R O U T I N E =======================================


                public KeSetKernelStackSwapEnable
KeSetKernelStackSwapEnable proc near    ; CODE XREF: NtSetInformationFile+556↑p
                                        ; NtSetInformationFile+CF4↑p ...
                mov     rax, gs:188h
                mov     edx, [rax+78h]
                shr     edx, 6
                and     dl, 1
                cmp     cl, dl
                jz      short loc_14033DB30
                test    cl, cl
                jnz     short loc_14033DB34
                lock btr dword ptr [rax+78h], 6

loc_14033DB30:                          ; CODE XREF: KeSetKernelStackSwapEnable+14↑j
                                        ; KeSetKernelStackSwapEnable+2A↓j
                mov     al, dl
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033DB34:                          ; CODE XREF: KeSetKernelStackSwapEnable+18↑j
                lock bts dword ptr [rax+78h], 6
                jmp     short loc_14033DB30
KeSetKernelStackSwapEnable endp

; ---------------------------------------------------------------------------
byte_14033DB3C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400D6F8C↑o
; Exported entry  79. CcSetAdditionalCacheAttributesEx

; =============== S U B R O U T I N E =======================================


                public CcSetAdditionalCacheAttributesEx
CcSetAdditionalCacheAttributesEx proc near
                                        ; DATA XREF: .rdata:000000014007F9D0↑o
                                        ; .pdata:00000001400D6F98↑o

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047C10C SIZE 0000008F BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                mov     edi, edx
                mov     rax, [rcx+28h]
                mov     r9, rcx
                movups  [rsp+58h+var_28], xmm0
                mov     rbx, [rax+8]
                cmp     dword ptr [rbx+4], 0
                jbe     loc_14047C17C
                shr     edx, 1
                mov     ecx, edi
                shr     ecx, 2
                and     dl, 1
                and     cl, 1
                test    dword ptr [rbx+98h], 2000h
                jnz     short loc_14033DBA4
                mov     r8b, cl
                mov     rcx, r9
                call    CcSetAdditionalCacheAttributes

loc_14033DBA4:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+47↑j
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rsp+58h+var_28]
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rbx+98h]
                test    dil, 1
                jnz     loc_14033DC59
                btr     eax, 17h

loc_14033DBD1:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+10D↓j
                mov     [rbx+98h], eax
                test    dil, 8
                jnz     loc_14033DC62
                bt      eax, 1Ah
                jb      loc_14047C10C

loc_14033DBEB:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+13E5C0↓j
                btr     eax, 1Ah

loc_14033DBEF:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+116↓j
                mov     ecx, 10000000h
                test    dil, 10h
                jz      short loc_14033DC4D
                or      eax, ecx

loc_14033DBFC:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+101↓j
                mov     [rbx+98h], eax
                test    dil, 20h
                jnz     short loc_14033DC53
                btr     eax, 1Bh

loc_14033DC0C:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+107↓j
                mov     [rbx+98h], eax
                test    ecx, edi
                jnz     short loc_14033DC68
                btr     eax, 0Ch

loc_14033DC1A:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+11C↓j
                lea     rcx, [rsp+58h+var_28]
                mov     [rbx+98h], eax
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+58h+var_18]
                test    eax, eax
                jnz     loc_14047C115

loc_14033DC3D:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+13E5C7↓j
                                        ; CcSetAdditionalCacheAttributesEx+13E5D3↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033DC4D:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+A8↑j
                btr     eax, 1Ch
                jmp     short loc_14033DBFC
; ---------------------------------------------------------------------------

loc_14033DC53:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+B6↑j
                bts     eax, 1Bh
                jmp     short loc_14033DC0C
; ---------------------------------------------------------------------------

loc_14033DC59:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+77↑j
                bts     eax, 17h
                jmp     loc_14033DBD1
; ---------------------------------------------------------------------------

loc_14033DC62:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+8B↑j
                bts     eax, 1Ah
                jmp     short loc_14033DBEF
; ---------------------------------------------------------------------------

loc_14033DC68:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+C4↑j
                bts     eax, 0Ch
                jmp     short loc_14033DC1A
CcSetAdditionalCacheAttributesEx endp

; ---------------------------------------------------------------------------
algn_14033DC6E:                         ; DATA XREF: .rdata:000000014007F9D0↑o
                                        ; .pdata:00000001400D6F98↑o
                align 20h
; Exported entry  78. CcSetAdditionalCacheAttributes

; =============== S U B R O U T I N E =======================================


                public CcSetAdditionalCacheAttributes
CcSetAdditionalCacheAttributes proc near
                                        ; CODE XREF: CcSetAdditionalCacheAttributesEx+4F↑p
                                        ; DATA XREF: .rdata:000000014007F9F4↑o ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047C19C SIZE 00000084 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                mov     dil, r8b
                mov     rax, [rcx+28h]
                mov     sil, dl
                movups  [rsp+58h+var_28], xmm0
                mov     rbx, [rax+8]
                cmp     dword ptr [rbx+4], 0
                jbe     loc_14047C203
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rsp+58h+var_28]
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rbx+98h]
                test    sil, sil
                jnz     short loc_14033DD1D
                and     eax, 0FFFFFFFEh

loc_14033DCDD:                          ; CODE XREF: CcSetAdditionalCacheAttributes+A0↓j
                test    dil, dil
                jnz     short loc_14033DD22
                and     eax, 0FFFFFFFDh

loc_14033DCE5:                          ; CODE XREF: CcSetAdditionalCacheAttributes+A7↓j
                lea     rcx, [rsp+58h+var_28]
                mov     [rbx+98h], eax
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+58h+var_18]
                test    eax, eax
                jnz     loc_14047C19C

loc_14033DD08:                          ; CODE XREF: CcSetAdditionalCacheAttributes+13E51E↓j
                                        ; CcSetAdditionalCacheAttributes+13E52A↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033DD1D:                          ; CODE XREF: CcSetAdditionalCacheAttributes+58↑j
                or      eax, 1
                jmp     short loc_14033DCDD
; ---------------------------------------------------------------------------

loc_14033DD22:                          ; CODE XREF: CcSetAdditionalCacheAttributes+60↑j
                or      eax, 202h
                jmp     short loc_14033DCE5
CcSetAdditionalCacheAttributes endp

; ---------------------------------------------------------------------------
algn_14033DD29:                         ; DATA XREF: .rdata:000000014007F9F4↑o
                                        ; .pdata:00000001400D6FA4↑o
                align 10h
; Exported entry 1813. PsGetCurrentThreadId

; =============== S U B R O U T I N E =======================================


                public PsGetCurrentThreadId
PsGetCurrentThreadId proc near          ; CODE XREF: sub_1408AD014:loc_1408AD0BC↓p
                                        ; PoShutdownBugCheck+8B↓p ...
                mov     rax, gs:188h
                mov     rax, [rax+480h]
                retn
PsGetCurrentThreadId endp

; ---------------------------------------------------------------------------
                align 2
algn_14033DD42:                         ; DATA XREF: .pdata:00000001400D6FB0↑o
                align 10h
; Exported entry 459. FsRtlInitializeEofLock

; =============== S U B R O U T I N E =======================================


                public FsRtlInitializeEofLock
FsRtlInitializeEofLock proc near        ; DATA XREF: .pdata:00000001400D6FBC↑o
                xor     eax, eax
                mov     [rcx], rax
                mov     [rcx+10h], rax
                mov     [rcx+20h], rax
                lea     rax, [rcx+8]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx+18h], rdx
                retn
FsRtlInitializeEofLock endp

; ---------------------------------------------------------------------------
                align 2
byte_14033DD6E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D6FBC↑o

; =============== S U B R O U T I N E =======================================


sub_14033DD74   proc near               ; CODE XREF: sub_14060DA00+3E7↓p
                                        ; DATA XREF: .pdata:00000001400D6FC8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041AFB6 SIZE 00000016 BYTES

; __unwind { // __C_specific_handler
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                xor     ebx, ebx
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     r8, [rdx+5D8h]
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                movzx   esi, word ptr [rdx+72Eh]
                mov     rax, gs:20h
                movzx   ecx, byte ptr [rax+0D0h]

loc_14033DDBF:                          ; DATA XREF: .rdata:000000014007FA18↑o
;   __try { // __except at loc_14033DEFD
                mov     [rdi], ebx
                mov     eax, cs:dword_140CFC418
                mov     [rdi+4], eax
                mov     dword ptr [rdi+8], 1000h
                mov     r9d, 10000h
                mov     [rdi+18h], r9d
                cmp     cx, cs:word_140CFC840
                jnb     short loc_14033DDFB
                mov     eax, ecx
                lea     rcx, qword_140CFC848
                mov     rcx, [rcx+rax*8]
                mov     [rsp+48h+arg_10], rcx
                mov     rdx, rcx
                jmp     short loc_14033DE06
; ---------------------------------------------------------------------------

loc_14033DDFB:                          ; CODE XREF: sub_14033DD74+6E↑j
                mov     rcx, rbx
                mov     [rsp+48h+arg_10], rbx
                mov     rdx, rbx

loc_14033DE06:                          ; CODE XREF: sub_14033DD74+85↑j
                shr     rdx, 20h
                mov     eax, ecx
                or      rdx, rax
                mov     [rdi+30h], rdx
                mov     [rsp+48h+arg_8], rdx
                mov     rax, rdx
                shr     rax, 1
                mov     rcx, 5555555555555555h
                and     rax, rcx
                sub     rdx, rax
                mov     [rsp+48h+arg_8], rdx
                mov     rax, rdx
                shr     rax, 2
                mov     rcx, 3333333333333333h
                and     rax, rcx
                and     rdx, rcx
                add     rax, rdx
                mov     [rsp+48h+arg_8], rax
                mov     rcx, rax
                shr     rcx, 4
                add     rcx, rax
                mov     rax, 0F0F0F0F0F0F0F0Fh
                and     rcx, rax
                mov     [rsp+48h+arg_8], rcx
                mov     rax, 101010101010101h
                imul    rcx, rax
                shr     rcx, 38h
                mov     [rsp+48h+arg_8], rcx
                mov     [rdi+38h], cl
                mov     [rdi+20h], r9
                lea     rax, [r8-1]
                mov     [rdi+28h], rax
                movzx   ecx, si
                call    ntoskrnl_12
                mov     rcx, rax
                mov     [rsp+48h+arg_18], rax
                mov     r9d, 0FFFFFFFFh
                mov     eax, r9d
                cmp     rcx, r9
                cmovbe  eax, ecx
                mov     [rdi+0Ch], eax
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rax+rsi*8]
                mov     rdx, [rcx+1B00h]
                mov     [rsp+48h+var_28], rdx
                mov     eax, r9d
                cmp     rdx, r9
                cmovbe  eax, edx
                mov     [rdi+10h], eax
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rax+rsi*8]
                mov     rax, [rcx+1B08h]
                mov     [rsp+48h+var_20], rax
                cmp     rax, r9
                cmovbe  r9d, eax
                mov     [rdi+14h], r9d
                jmp     short loc_14033DEFF
;   } // starts at 14033DDBF
; ---------------------------------------------------------------------------

loc_14033DEFD:                          ; DATA XREF: .rdata:000000014007FA18↑o
;   __except(BaseFiberStart$filt$0_0) // owned by 14033DDBF
                mov     ebx, eax

loc_14033DEFF:                          ; CODE XREF: sub_14033DD74+187↑j
                mov     eax, ebx
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033DD74
sub_14033DD74   endp

algn_14033DF0A:                         ; DATA XREF: .pdata:00000001400D6FC8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033DF10   proc near               ; CODE XREF: sub_14060DA00+3BB↓p
                                        ; DATA XREF: .pdata:00000001400D6FD4↑o

var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041AFD2 SIZE 00000016 BYTES

; __unwind { // __C_specific_handler
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                xor     edi, edi
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                movzx   esi, word ptr [rdx+72Eh]
                mov     rax, gs:20h
                movzx   ecx, byte ptr [rax+0D0h]

loc_14033DF44:                          ; DATA XREF: .rdata:000000014007FA4C↑o
;   __try { // __except at loc_14033E06D
                mov     [rbx], edi
                mov     eax, cs:dword_140CFC418
                mov     [rbx+4], eax
                mov     dword ptr [rbx+8], 1000h
                mov     eax, 10000h
                mov     [rbx+18h], eax
                mov     [rbx+20h], rax
                mov     rax, 7FFFFFFEFFFFh
                mov     [rbx+28h], rax
                cmp     cx, cs:word_140CFC840
                jnb     short loc_14033DF88
                mov     eax, ecx
                lea     rcx, qword_140CFC848
                mov     rcx, [rcx+rax*8]
                jmp     short loc_14033DF8B
; ---------------------------------------------------------------------------

loc_14033DF88:                          ; CODE XREF: sub_14033DF10+67↑j
                mov     rcx, rdi

loc_14033DF8B:                          ; CODE XREF: sub_14033DF10+76↑j
                mov     [rbx+30h], rcx
                mov     [rsp+48h+arg_8], rcx
                mov     rax, rcx
                shr     rax, 1
                mov     rdx, 5555555555555555h
                and     rax, rdx
                sub     rcx, rax
                mov     [rsp+48h+arg_8], rcx
                mov     rax, rcx
                shr     rax, 2
                mov     rdx, 3333333333333333h
                and     rax, rdx
                and     rcx, rdx
                add     rax, rcx
                mov     [rsp+48h+arg_8], rax
                mov     rcx, rax
                shr     rcx, 4
                add     rcx, rax
                mov     rax, 0F0F0F0F0F0F0F0Fh
                and     rcx, rax
                mov     [rsp+48h+arg_8], rcx
                mov     rax, 101010101010101h
                imul    rcx, rax
                shr     rcx, 38h
                mov     [rsp+48h+arg_8], rcx
                mov     [rbx+38h], cl
                movzx   ecx, si
                call    ntoskrnl_12
                mov     rcx, rax
                mov     [rsp+48h+arg_10], rax
                mov     r9d, 0FFFFFFFFh
                mov     eax, r9d
                cmp     rcx, r9
                cmovbe  eax, ecx
                mov     [rbx+0Ch], eax
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rax+rsi*8]
                mov     rdx, [rcx+1B00h]
                mov     [rsp+48h+arg_18], rdx
                mov     eax, r9d
                cmp     rdx, r9
                cmovbe  eax, edx
                mov     [rbx+10h], eax
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rax+rsi*8]
                mov     rax, [rcx+1B08h]
                mov     [rsp+48h+var_28], rax
                cmp     rax, r9
                cmovbe  r9d, eax
                mov     [rbx+14h], r9d
                jmp     short loc_14033E06F
;   } // starts at 14033DF44
; ---------------------------------------------------------------------------

loc_14033E06D:                          ; DATA XREF: .rdata:000000014007FA4C↑o
;   __except(BaseFiberStart$filt$0_1) // owned by 14033DF44
                mov     edi, eax

loc_14033E06F:                          ; CODE XREF: sub_14033DF10+15B↑j
                mov     eax, edi
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033DF10
sub_14033DF10   endp

algn_14033E07A:                         ; DATA XREF: .pdata:00000001400D6FD4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033E080   proc near               ; CODE XREF: sub_140222F70+5AC↑p
                                        ; sub_140222F70+8CE↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047C220 SIZE 0000000F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r8b, [rcx+2]
                mov     esi, edx
                mov     rax, [rcx+0A0h]
                or      r8b, 2
                mov     [rcx+2], r8b
                mov     rbx, rcx
                test    rax, rax
                jz      short loc_14033E0E9
                call    sub_1404079D0
                mov     r8b, [rbx+2]
                mov     edi, eax

loc_14033E0B7:                          ; CODE XREF: sub_14033E080+6F↓j
                and     r8b, 0FDh
                mov     [rbx+2], r8b
                test    r8b, 1
                jnz     short loc_14033E0D6
                cmp     edi, 3
                jge     short loc_14033E0D6
                test    esi, esi
                jz      short loc_14033E0D6
                mov     rcx, rbx
                call    sub_14033E0FC

loc_14033E0D6:                          ; CODE XREF: sub_14033E080+43↑j
                                        ; sub_14033E080+48↑j ...
                mov     eax, edi

loc_14033E0D8:                          ; CODE XREF: sub_14033E080+13E1AA↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E0E9:                          ; CODE XREF: sub_14033E080+2A↑j
                xor     edi, edi
                cmp     byte ptr [rcx+6], 11h
                jnz     short loc_14033E0B7
                jmp     loc_14047C220
sub_14033E080   endp

; ---------------------------------------------------------------------------
byte_14033E0F6  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007FA8C↑o
                                        ; .pdata:00000001400D6FE0↑o

; =============== S U B R O U T I N E =======================================


sub_14033E0FC   proc near               ; CODE XREF: sub_140223F80+E1↑p
                                        ; sub_14033E080+51↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047C230 SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdx, [rcx+30h]
                mov     rbx, rcx
                mov     rdi, [rcx+18h]
                test    rdx, rdx
                jz      short loc_14033E123
                mov     rcx, rdi
                call    sub_140312B40
                and     qword ptr [rbx+30h], 0

loc_14033E123:                          ; CODE XREF: sub_14033E0FC+18↑j
                movzx   eax, word ptr [rbx]
                test    al, 4
                jz      short loc_14033E145
                mov     dl, [rbx+6]
                mov     rcx, rdi
                call    sub_140226960

loc_14033E135:                          ; CODE XREF: sub_14033E0FC+62↓j
                or      byte ptr [rbx+2], 1
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E145:                          ; CODE XREF: sub_14033E0FC+2C↑j
                mov     ecx, 400h
                test    cx, ax
                jnz     loc_14047C230

loc_14033E153:                          ; CODE XREF: sub_14033E0FC+13E141↓j
                mov     dl, [rbx+6]
                mov     rcx, rdi
                call    sub_140234180
                jmp     short loc_14033E135
sub_14033E0FC   endp

; ---------------------------------------------------------------------------
byte_14033E160  db 10h dup(0CCh)        ; DATA XREF: .rdata:000000014007FAAC↑o
                                        ; .pdata:00000001400D6FEC↑o
; Exported entry 2016. RtlClearBit

; =============== S U B R O U T I N E =======================================


