PsGetProcessId  proc near               ; CODE XREF: sub_1405F3400+EF↓p
                                        ; sub_140656690+49C↓p ...
                mov     rax, [rcx+440h]
                retn
PsGetProcessId  endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140309D89:                         ; DATA XREF: .pdata:00000001400D42B0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140309D90   proc near               ; CODE XREF: sub_1403F8AB4+51↓p
                                        ; sub_1405D69C4+157↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = byte ptr  38h

; FUNCTION CHUNK AT 000000014046BB9C SIZE 00000041 BYTES

                mov     rax, rsp
                push    rbx
                sub     rsp, 50h
                mov     dword ptr [rax+38h], 3
                mov     ebx, edx
                mov     eax, [rsp+58h+arg_28]
                neg     eax
                sbb     r10d, r10d
                and     r10d, 0FFFFFFFCh
                add     r10d, 6
                mov     dword ptr [rsp+58h+var_38], r10d
                call    sub_140309DE4
                test    eax, eax
                jnz     short loc_140309DCA

loc_140309DC3:                          ; CODE XREF: sub_140309D90+44↓j
                                        ; sub_140309D90+161E48↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140309DCA:                          ; CODE XREF: sub_140309D90+31↑j
                mov     rax, cs:qword_140CFA058
                test    rax, rax
                jz      short loc_140309DC3
                jmp     loc_14046BB9C
sub_140309D90   endp

; ---------------------------------------------------------------------------
byte_140309DDB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007259C↑o
                                        ; .pdata:00000001400D42BC↑o

; =============== S U B R O U T I N E =======================================


sub_140309DE4   proc near               ; CODE XREF: sub_140309D90+2A↑p
                                        ; DATA XREF: .pdata:00000001400D42C8↑o

var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_30], rax
                mov     edi, [rsp+98h+arg_20]
                mov     esi, edx
                mov     rdx, rcx
                mov     ebp, r8d
                mov     r15, rcx
                mov     r8d, edi
                lea     rcx, [rsp+98h+var_60]
                mov     r14d, r9d
                call    sub_140309ED0
                xor     ebx, ebx
                mov     r12d, 1
                movups  xmm1, xmmword ptr [rax]
                movups  [rsp+98h+var_48], xmm1
                movsd   xmm0, qword ptr [rax+10h]
                mov     rax, cs:qword_140CF49A8
                movsd   [rsp+98h+var_38], xmm0
                test    rax, rax
                jz      short loc_140309E6B
                lea     rcx, [rsp+98h+var_48]
                mov     r9, r15
                mov     [rsp+98h+var_78], rcx
                mov     r8d, r12d
                mov     ecx, esi
                mov     edx, edi
                call    sub_1404079D0

loc_140309E6B:                          ; CODE XREF: sub_140309DE4+6C↑j
                test    ebp, ebp
                jz      short loc_140309E9A
                cmp     edi, 0FEh
                jz      short loc_140309E9A
                mov     [rsp+98h+var_68], rbx
                mov     dword ptr [rsp+98h+var_68], esi
                mov     word ptr [rsp+98h+var_68+4], di
                test    r14d, r14d
                jz      short loc_140309E90
                or      word ptr [rsp+98h+var_68+6], r12w

loc_140309E90:                          ; CODE XREF: sub_140309DE4+A4↑j
                lea     rcx, [rsp+98h+var_68]
                call    RtlNotifyFeatureUsage

loc_140309E9A:                          ; CODE XREF: sub_140309DE4+89↑j
                                        ; sub_140309DE4+91↑j
                cmp     dword ptr [rsp+98h+var_38], ebx
                setz    bl
                mov     eax, ebx
                mov     rcx, [rsp+98h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+40h]
                mov     rbp, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140309DE4
sub_140309DE4   endp

algn_140309ECA:                         ; DATA XREF: .pdata:00000001400D42C8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140309ED0   proc near               ; CODE XREF: sub_140309DE4+42↑p
                                        ; DATA XREF: .rdata:00000001400725E0↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046BBDE SIZE 00000096 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     eax, eax
                xorps   xmm0, xmm0
                xor     r11d, r11d
                mov     r10, rdx
                mov     r9, rcx
                movups  xmmword ptr [rcx], xmm0
                mov     [rcx+10h], rax
                test    r8d, r8d
                jz      loc_14046BC63
                cmp     r8d, 1
                jz      loc_14046BC52
                jle     loc_14046BBF1
                cmp     r8d, 3
                jle     short loc_140309F2F
                cmp     r8d, 4
                jz      loc_14046BC63
                cmp     r8d, 5
                jz      loc_14046BC52
                lea     eax, [r8-6]
                cmp     eax, 1
                ja      loc_14046BBF1

loc_140309F2F:                          ; CODE XREF: sub_140309ED0+3C↑j
                mov     ecx, r11d
                sub     r8d, 2
                jz      short loc_140309F90
                sub     r8d, 1
                jz      short loc_140309F89
                sub     r8d, 3
                jnz     loc_14046BBDE
                lea     ecx, [r8+4]

loc_140309F4C:                          ; CODE XREF: sub_140309ED0+BE↓j
                                        ; sub_140309ED0+C5↓j ...
                or      ecx, 1
                prefetchw byte ptr [rdx]
                mov     eax, [rdx]

loc_140309F54:                          ; CODE XREF: sub_140309ED0+8D↓j
                mov     edx, eax
                or      edx, ecx
                lock cmpxchg [r10], edx
                jnz     short loc_140309F54
                and     ecx, 0FFFFFFFEh
                mov     edx, eax
                not     edx
                and     edx, 1
                mov     [r9], edx
                mov     edx, ecx
                and     edx, eax
                cmp     edx, ecx
                setz    r11b
                mov     [r9+10h], r11d

loc_140309F7A:                          ; CODE XREF: sub_140309ED0+161D7D↓j
                                        ; sub_140309ED0+161D8E↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, r9
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140309F89:                          ; CODE XREF: sub_140309ED0+6C↑j
                mov     ecx, 8
                jmp     short loc_140309F4C
; ---------------------------------------------------------------------------

loc_140309F90:                          ; CODE XREF: sub_140309ED0+66↑j
                mov     ecx, 2
                jmp     short loc_140309F4C
sub_140309ED0   endp

; ---------------------------------------------------------------------------
algn_140309F97:                         ; DATA XREF: .rdata:00000001400725E0↑o
                                        ; .pdata:00000001400D42D4↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140309FA0   proc near               ; CODE XREF: sub_1406AEF4C+C7↓p
                                        ; DATA XREF: .rdata:0000000140008BC0↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  48h
arg_8           = qword ptr  50h
arg_10          = qword ptr  58h
arg_18          = dword ptr  60h
arg_20          = qword ptr  68h
arg_28          = dword ptr  70h
arg_30          = qword ptr  78h

                test    r9d, r9d
                jz      locret_14030A2E6
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
                mov     r15d, [rbp+arg_28]
                mov     eax, r9d
                and     [rbp+var_28], 0
                mov     esi, r15d
                mov     rdi, [rbp+arg_20]
                not     esi
                and     eax, 7
                mov     dword ptr [rbp+var_38], esi
                mov     r13d, r9d
                mov     dword ptr [rbp+var_30], eax
                mov     r12, r8
                mov     r14, rcx
                jz      loc_14030A2E8
                mov     r9d, r15d
                mov     r8, rdi
                mov     edx, 9
                call    sub_14030A300
                mov     ebx, eax
                mov     r8, rdi
                xor     ebx, esi
                mov     edx, 8
                mov     r9d, ebx
                mov     rcx, r14
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r15d
                mov     edx, 7
                mov     r9d, esi
                mov     rcx, r14
                call    sub_14030A300
                mov     r14d, eax
                mov     r8, rdi
                xor     r14d, ebx
                mov     edx, 6
                mov     rbx, [rbp+arg_0]
                mov     r9d, r14d
                mov     rcx, rbx
                call    sub_14030A300
                mov     r15d, eax
                mov     r8, rdi
                xor     r15d, esi
                mov     edx, 5
                mov     r9d, r15d
                mov     rcx, rbx
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r14d
                mov     edx, 4
                mov     r9d, esi
                mov     rcx, rbx
                call    sub_14030A300
                mov     ebx, eax
                mov     r8, rdi
                xor     ebx, r15d
                mov     edx, 3
                mov     r15, [rbp+arg_0]
                mov     r9d, ebx
                mov     rcx, r15
                call    sub_14030A300
                mov     r14d, eax
                mov     r8, rdi
                xor     r14d, esi
                mov     edx, 2
                mov     r9d, r14d
                mov     rcx, r15
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, ebx
                mov     edx, 1
                mov     r9d, esi
                mov     rcx, r15
                call    sub_14030A300
                xor     r14d, eax
                mov     r8, rdi
                mov     r9d, r14d
                xor     edx, edx
                mov     rcx, r15
                call    sub_14030A300
                mov     rdx, [rbp+arg_8]
                lea     rcx, [rbp+var_38]
                and     [rbp+var_38], 0
                mov     ebx, eax
                xor     ebx, esi
                mov     esi, dword ptr [rbp+var_30]
                mov     r8d, esi
                mov     r15d, esi
                call    memmove
                mov     rcx, [rbp+var_38]
                xor     r14d, ecx
                mov     rdx, rcx
                mov     dword ptr [rbp+var_28], r14d
                shr     rdx, 20h
                mov     r8d, 8
                xor     edx, ebx
                mov     [rbp+var_30], rcx
                mov     dword ptr [rbp+var_28+4], edx
                lea     rcx, [rbp+var_28]
                xor     edx, edx
                sub     r8d, esi
                add     rcx, rsi
                call    memset
                mov     r8d, esi
                lea     rdx, [rbp+var_28]
                mov     rcx, r12
                call    memmove
                mov     eax, dword ptr [rbp+var_30+4]
                mov     r14, [rbp+arg_0]
                mov     rdx, [rbp+arg_8]
                mov     [rbp+arg_28], eax
                mov     eax, dword ptr [rbp+var_30]
                mov     dword ptr [rbp+var_38], eax

loc_14030A15C:                          ; CODE XREF: sub_140309FA0+34B↓j
                mov     eax, r13d
                lea     rcx, [r15+r12]
                shr     eax, 3
                mov     [rbp+var_20], rcx
                test    eax, eax
                jz      loc_14030A2C8
                mov     r15d, dword ptr [rbp+var_28+4]
                sub     rdx, r12
                mov     r12d, dword ptr [rbp+var_28]
                mov     r13d, dword ptr [rbp+var_38]
                mov     r8d, eax
                mov     [rbp+arg_8], rdx
                mov     [rbp+var_18], r8

loc_14030A18C:                          ; CODE XREF: sub_140309FA0+31B↓j
                mov     rbx, [rdx+rcx]
                mov     r8, rdi
                mov     rax, rbx
                mov     edx, 9
                shr     rax, 20h
                mov     rcx, r14
                xor     r15d, eax
                mov     r9d, r15d
                call    sub_14030A300
                xor     eax, ebx
                mov     r8, rdi
                xor     r12d, eax
                mov     edx, 8
                mov     r9d, r12d
                mov     rcx, r14
                call    sub_14030A300
                mov     rcx, [rbp+arg_0]
                mov     r14d, eax
                xor     r14d, r15d
                mov     r8, rdi
                mov     r9d, r14d
                mov     edx, 7
                call    sub_14030A300
                mov     rcx, [rbp+arg_0]
                mov     r15d, eax
                xor     r15d, r12d
                mov     r8, rdi
                mov     r9d, r15d
                mov     edx, 6
                call    sub_14030A300
                mov     esi, eax
                mov     r8, rdi
                xor     esi, r14d
                mov     edx, 5
                mov     r14, [rbp+arg_0]
                mov     r9d, esi
                mov     rcx, r14
                call    sub_14030A300
                mov     r12d, eax
                mov     r8, rdi
                xor     r12d, r15d
                mov     edx, 4
                mov     r9d, r12d
                mov     rcx, r14
                call    sub_14030A300
                mov     r15d, eax
                mov     r8, rdi
                xor     r15d, esi
                mov     edx, 3
                mov     r9d, r15d
                mov     rcx, r14
                call    sub_14030A300
                xor     r12d, eax
                mov     r8, rdi
                mov     r9d, r12d
                mov     edx, 2
                mov     rcx, r14
                call    sub_14030A300
                xor     r15d, eax
                mov     r8, rdi
                mov     r9d, r15d
                mov     edx, 1
                mov     rcx, r14
                call    sub_14030A300
                xor     r12d, eax
                mov     r8, rdi
                mov     r9d, r12d
                xor     edx, edx
                mov     rcx, r14
                call    sub_14030A300
                mov     rcx, [rbp+var_20]
                xor     r15d, eax
                xor     r15d, [rbp+arg_28]
                xor     r12d, r13d
                mov     [rbp+var_30], rbx
                mov     [rcx], r12d
                mov     [rcx+4], r15d
                add     rcx, 8
                sub     [rbp+var_18], 1
                mov     [rbp+var_20], rcx
                jz      short loc_14030A2C0
                mov     eax, dword ptr [rbp+var_30+4]
                mov     r13d, ebx
                mov     rdx, [rbp+arg_8]
                mov     [rbp+arg_28], eax
                jmp     loc_14030A18C
; ---------------------------------------------------------------------------

loc_14030A2C0:                          ; CODE XREF: sub_140309FA0+30C↑j
                mov     r13d, [rbp+arg_18]
                mov     r12, [rbp+arg_10]

loc_14030A2C8:                          ; CODE XREF: sub_140309FA0+1CC↑j
                lea     eax, [r13-1]
                mov     dl, [rax+r12]
                mov     rax, [rbp+arg_30]
                mov     [rax], dl
                add     rsp, 58h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp

locret_14030A2E6:                       ; CODE XREF: sub_140309FA0+3↑j
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14030A2E8:                          ; CODE XREF: sub_140309FA0+56↑j
                xor     r15d, r15d
                jmp     loc_14030A15C
sub_140309FA0   endp

; ---------------------------------------------------------------------------
algn_14030A2F0:                         ; DATA XREF: .pdata:00000001400D42E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14030A300   proc near               ; CODE XREF: sub_1402001A0+76↑p
                                        ; sub_1402001A0+8D↑p ...

var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014046BC74 SIZE 00000007 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     ebx, edx
                mov     edi, r9d
                mov     r11d, edx
                mov     edx, edx
                shl     rdx, 4
                add     rdx, rcx
                mov     eax, [rdx+8]
                cmp     eax, 1Eh        ; switch 31 cases
                ja      def_14030A34F   ; jumptable 000000014030A34F default case
                lea     r9, cs:140000000h
                mov     eax, ds:(jpt_14030A34F - 140000000h)[r9+rax*4]
                add     rax, r9
                jmp     rax             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14030A355:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 19
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                sub     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A39A:                          ; CODE XREF: sub_14030A300+239↓j
                                        ; sub_14030A300+64F↓j ...
                imul    r9d, eax
                mov     r8d, r10d
                mov     eax, 8421085h
                mul     r10d
                sub     r8d, edx
                shr     r8d, 1
                add     r8d, edx
                shr     r8d, 4
                imul    edx, r8d, 1Fh
                sub     r10d, edx
                lea     ecx, [r10+1]
                ror     edi, cl
                xor     r9d, edi
                jmp     short loc_14030A439
; ---------------------------------------------------------------------------

loc_14030A3C8:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 17
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A40D:                          ; CODE XREF: sub_14030A300+1EF↓j
                                        ; sub_14030A300+283↓j ...
                imul    r9d, eax
                mov     r8d, r10d
                mov     eax, 8421085h
                mul     r10d
                sub     r8d, edx
                shr     r8d, 1
                add     r8d, edx
                shr     r8d, 4
                imul    edx, r8d, 1Fh
                sub     r10d, edx
                lea     ecx, [r10+1]
                ror     edi, cl

loc_14030A436:                          ; CODE XREF: sub_14030A300+490↓j
                sub     r9d, edi

loc_14030A439:                          ; CODE XREF: sub_14030A300+C6↑j
                                        ; sub_14030A300+764↓j
                mov     eax, r9d

loc_14030A43C:                          ; CODE XREF: sub_14030A300+1A8↓j
                                        ; sub_14030A300+2AA↓j ...
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+20h+arg_0]
                mov     rdi, [rsp+20h+arg_8]
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030A459:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r9d, [rdx+10h]  ; jumptable 000000014030A34F case 25
                mov     eax, 88888889h
                mov     ecx, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                sub     ecx, eax
                movzx   eax, word ptr [rbp+r11*2+var_18]
                inc     ecx
                ror     edi, cl
                sub     edi, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_20]
                imul    eax, edi
                jmp     short loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A4AA:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 16
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                sub     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030A4F4:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 23
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030A53E:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 22
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030A588:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                and     r11d, 3         ; jumptable 000000014030A34F case 29
                shr     ebx, 1
                mov     [rbp+var_18], r8
                mov     [rbp+var_20], r8
                movzx   eax, word ptr [rbp+r11*2+var_18]
                sub     edi, eax
                lea     eax, [rbx-1]
                and     eax, 1
                xor     edi, dword ptr [rbp+rax*4+var_20]
                mov     eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A5AF:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                lea     eax, [rbx-1]    ; jumptable 000000014030A34F case 28
                mov     [rbp+var_20], r8
                and     eax, 1
                mov     [rbp+var_18], r8
                and     r11d, 1
                mov     eax, dword ptr [rbp+rax*4+var_20]
                xor     eax, dword ptr [rbp+r11*4+var_18]
                xor     eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A5D1:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 10
                mov     eax, 24924925h
                mov     r9d, [rdx+0Ch]
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030A631:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 21
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A676:                          ; CODE XREF: sub_14030A300+42A↓j
                                        ; sub_14030A300+699↓j ...
                imul    r9d, eax
                mov     r8d, r10d
                mov     eax, 8421085h
                mul     r10d
                sub     r8d, edx
                shr     r8d, 1
                add     r8d, edx
                shr     r8d, 4
                imul    edx, r8d, 1Fh
                sub     r10d, edx
                lea     ecx, [r10+1]
                ror     edi, cl
                lea     eax, [rdi+r9]
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A6A8:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                shr     ebx, 1          ; jumptable 000000014030A34F case 30
                and     r11d, 3
                mov     [rbp+var_18], r8
                mov     [rbp+var_20], r8
                lea     eax, [rbx-1]
                and     eax, 1
                sub     edi, dword ptr [rbp+rax*4+var_18]
                movzx   eax, word ptr [rbp+r11*2+var_20]
                sub     edi, eax
                mov     eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A6CF:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 9
                mov     eax, 24924925h
                mov     r9d, [rdx+0Ch]
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030A72F:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 7
                mov     eax, 24924925h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]

loc_14030A774:                          ; CODE XREF: sub_14030A300+5AA↓j
                imul    r9d, eax
                mov     eax, 88888889h
                mul     r10d
                shr     edx, 3
                imul    r8d, edx, 0Fh
                sub     r10d, r8d
                lea     ecx, [r10+1]
                shr     edi, cl
                jmp     loc_14030A436
; ---------------------------------------------------------------------------

loc_14030A795:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 4
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                ror     r8d, cl
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_18]
                xor     eax, edi
                imul    eax, ecx
                sub     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A7F0:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r10d, [rdx+14h] ; jumptable 000000014030A34F case 6
                mov     eax, 24924925h
                mov     ecx, [rdx+10h]
                and     r11d, 3
                mov     r9d, [rdx+0Ch]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                movzx   eax, word ptr [rbp+r11*2+var_20]
                xor     r9d, edi
                rol     r9d, cl
                imul    r9d, eax
                mov     eax, 88888889h
                mul     r10d
                shr     edx, 3
                imul    r8d, edx, 0Fh
                sub     r10d, r8d
                lea     ecx, [r10+1]
                shr     edi, cl
                lea     eax, [rdi+r9]
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A870:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+0Ch]  ; jumptable 000000014030A34F case 1
                mov     eax, 0AAAAAAABh
                mov     r10d, [rdx+10h]
                mov     r9d, edi
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 1
                mov     [rbp+var_20], r8
                lea     eax, [rdx+rdx*2]
                sub     ecx, eax
                lea     eax, [rbx+1]
                add     eax, ecx
                and     eax, 3
                movzx   ecx, word ptr [rbp+rax*2+var_18]
                sub     r9d, ecx
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A774
; ---------------------------------------------------------------------------

loc_14030A8AF:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 5
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                ror     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_18]
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                xor     eax, edi
                imul    eax, ecx
                xor     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030A90A:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 20
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030A954:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 14
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                xor     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030A99E:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 12
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                add     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030A9E8:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r10d, [rdx+14h] ; jumptable 000000014030A34F case 8
                mov     eax, 24924925h
                mov     ecx, [rdx+10h]
                and     r11d, 3
                mov     r9d, [rdx+0Ch]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                mov     r9d, edi
                and     eax, 3
                movzx   edx, word ptr [rbp+rax*2+var_18]
                movzx   eax, word ptr [rbp+r11*2+var_20]
                sub     r9d, edx
                rol     r9d, cl
                imul    r9d, eax
                mov     eax, 88888889h
                mul     r10d
                shr     edx, 3
                imul    r8d, edx, 0Fh
                sub     r10d, r8d
                lea     ecx, [r10+1]
                shr     edi, cl
                xor     r9d, edi
                jmp     loc_14030A439
; ---------------------------------------------------------------------------

loc_14030AA69:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r9d, [rdx+10h]  ; jumptable 000000014030A34F case 26
                mov     eax, 88888889h
                mov     ecx, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                sub     ecx, eax
                movzx   eax, word ptr [rbp+r11*2+var_18]
                inc     ecx
                ror     edi, cl
                xor     edi, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_20]
                imul    eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AABD:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     r9d, [rdx+10h]  ; jumptable 000000014030A34F case 24
                mov     eax, 88888889h
                mov     ecx, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                not     edi
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                sub     ecx, eax
                movzx   eax, word ptr [rbp+r11*2+var_18]
                inc     ecx
                ror     edi, cl
                add     edi, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   eax, word ptr [rbp+rax*2+var_20]
                imul    eax, edi
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AB13:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 0
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_20], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_18], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                shr     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_20]
                movzx   ecx, word ptr [rbp+r11*2+var_18]
                xor     eax, edi
                imul    eax, ecx
                add     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AB6E:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 11
                mov     eax, 24924925h
                mov     r9d, [rdx+0Ch]
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                mov     [rbp+var_18], r8
                sub     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 1
                add     eax, edx
                shr     eax, 2
                imul    eax, 7
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                mul     r9d
                inc     ecx
                shr     edx, 1
                lea     eax, [rdx+rdx*2]
                sub     r9d, eax
                lea     eax, [rbx+1]
                add     eax, r9d
                and     eax, 3
                movzx   r9d, word ptr [rbp+rax*2+var_18]
                xor     r9d, edi
                rol     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030ABCE:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                lea     eax, [rbx-1]    ; jumptable 000000014030A34F case 27
                mov     [rbp+var_18], r8
                and     r11d, 1
                mov     [rbp+var_20], r8
                and     eax, 1
                mov     ecx, dword ptr [rbp+r11*4+var_18]
                mov     eax, dword ptr [rbp+rax*4+var_20]
                xor     ecx, edi
                sub     eax, ecx
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030ABF2:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 15
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                add     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A40D
; ---------------------------------------------------------------------------

loc_14030AC3C:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 2
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                shr     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_18]
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                xor     eax, edi
                imul    eax, ecx
                xor     eax, r8d
                jmp     loc_14030A43C
; ---------------------------------------------------------------------------

loc_14030AC97:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 18
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mov     r9d, edi
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                sub     r9d, dword ptr [rbp+rax*4+var_18]
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A39A
; ---------------------------------------------------------------------------

loc_14030ACE1:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 13
                mov     eax, 8421085h
                mov     r10d, [rdx+14h]
                mul     ecx
                mov     eax, ecx
                shr     ebx, 1
                sub     eax, edx
                mov     [rbp+var_18], r8
                shr     eax, 1
                add     eax, edx
                mov     [rbp+var_20], r8
                shr     eax, 4
                imul    eax, 1Fh
                sub     ecx, eax
                lea     eax, [rbx-1]
                and     eax, 1
                inc     ecx
                mov     r9d, dword ptr [rbp+rax*4+var_18]
                sub     r9d, edi
                ror     r9d, cl
                and     r11d, 3
                movzx   eax, word ptr [rbp+r11*2+var_20]
                jmp     loc_14030A676
; ---------------------------------------------------------------------------

loc_14030AD2B:                          ; CODE XREF: sub_14030A300+4F↑j
                                        ; DATA XREF: .rdata:jpt_14030A34F↑o
                mov     ecx, [rdx+10h]  ; jumptable 000000014030A34F case 3
                mov     eax, 88888889h
                mov     r9d, [rdx+0Ch]
                and     r11d, 3
                mul     ecx
                mov     [rbp+var_18], r8
                shr     edx, 3
                imul    eax, edx, 0Fh
                mov     [rbp+var_20], r8
                mov     r8d, edi
                sub     ecx, eax
                mov     eax, 0AAAAAAABh
                inc     ecx
                mul     r9d
                ror     r8d, cl
                shr     edx, 1
                lea     ecx, [rdx+rdx*2]
                sub     r9d, ecx
                lea     ecx, [rbx+1]
                add     ecx, r9d
                and     ecx, 3
                movzx   eax, word ptr [rbp+rcx*2+var_18]
                movzx   ecx, word ptr [rbp+r11*2+var_20]
                xor     eax, edi
                imul    eax, ecx
                add     eax, r8d
                jmp     loc_14030A43C
; } // starts at 14030A300
sub_14030A300   endp

; ---------------------------------------------------------------------------
byte_14030AD86  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014007263C↑o
                                        ; .pdata:00000001400D42EC↑o

; =============== S U B R O U T I N E =======================================


sub_14030AD8C   proc near               ; CODE XREF: sub_1406AFC74+16E↓p
                                        ; sub_140741328+53↓p
                                        ; DATA XREF: ...
                mov     r9, rcx
                mov     r8d, 4CB2Fh
                mov     r10d, 2

loc_14030AD9B:                          ; CODE XREF: sub_14030AD8C+76↓j
                movzx   eax, byte ptr [r9]
                lea     r9, [r9+8]
                imul    rdx, r8, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [r9-7]
                imul    r8, rdx, 25h ; '%'
                add     r8, rax
                movzx   eax, byte ptr [r9-6]
                imul    rdx, r8, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [r9-5]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [r9-4]
                imul    rdx, rcx, 25h ; '%'
                add     rdx, rax
                movzx   eax, byte ptr [r9-3]
                imul    rcx, rdx, 25h ; '%'
                add     rcx, rax
                movzx   eax, byte ptr [r9-2]
                imul    rdx, rcx, 25h ; '%'
                movzx   ecx, byte ptr [r9-1]
                add     rdx, rax
                imul    r8, rdx, 25h ; '%'
                add     r8, rcx
                sub     r10, 1
                jnz     short loc_14030AD9B
                mov     rax, 4EC4EC4EC4EC4EC5h
                mul     r8
                shr     rdx, 2
                imul    ecx, edx, 0Dh
                sub     r8d, ecx
                mov     eax, r8d
                retn
sub_14030AD8C   endp

; ---------------------------------------------------------------------------
                align 20h
byte_14030AE20  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400D42F8↑o
; Exported entry 2079. RtlDeriveCapabilitySidsFromName

; =============== S U B R O U T I N E =======================================


