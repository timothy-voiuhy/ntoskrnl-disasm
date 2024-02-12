CcSetFileSizes  proc near               ; DATA XREF: .pdata:00000001400D9818↑o
                sub     rsp, 28h
                call    CcSetFileSizesEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcSetFileSizes  endp

byte_140363DDF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400D9818↑o

; =============== S U B R O U T I N E =======================================


sub_140363DF0   proc near               ; DATA XREF: .pdata:00000001400D9824↑o
                                        ; sub_14099D180+3A↓o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                xor     edx, edx
                mov     ecx, [rbx+80h]
                call    sub_140363E20
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140363DF0   endp

algn_140363E17:                         ; DATA XREF: .pdata:00000001400D9824↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140363E20   proc near               ; CODE XREF: sub_140363DF0+11↑p
                                        ; sub_14099D094+2D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048CA34 SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, ecx
                mov     ebx, edx
                lea     rcx, qword_140C502D0
                call    KeAcquireSpinLockRaiseToDpc
                mov     esi, cs:dword_140C503D0
                movzx   ebp, al
                test    ebx, ebx
                jnz     short loc_140363E91
                not     edi
                and     edi, esi
                mov     cs:dword_140C503D0, edi

loc_140363E5B:                          ; CODE XREF: sub_140363E20+7B↓j
                lea     rcx, qword_140C502D0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048CA34

loc_140363E75:                          ; CODE XREF: sub_140363E20+128C16↓j
                                        ; sub_140363E20+128C22↓j ...
                mov     cr8, rbp
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140363E91:                          ; CODE XREF: sub_140363E20+2F↑j
                mov     edx, esi
                or      edx, edi
                mov     cs:dword_140C503D0, edx
                jmp     short loc_140363E5B
sub_140363E20   endp

; ---------------------------------------------------------------------------
byte_140363E9D  db 13h dup(0CCh)        ; DATA XREF: .rdata:0000000140089A4C↑o
                                        ; .pdata:00000001400D9830↑o

; =============== S U B R O U T I N E =======================================


sub_140363EB0   proc near               ; CODE XREF: sub_14034F50C+133DD4↓p
                                        ; DATA XREF: .pdata:00000001400D983C↑o ...
                mov     rax, gs:188h
                mov     rcx, gs:20h
                mov     rdx, [rax+0B8h]
                prefetchw byte ptr [rcx+0FEh]
                test    byte ptr [rcx+0FEh], 4
                jz      short locret_140363EF6
                mov     rax, [rdx+9E0h]
                cmp     rax, [rcx+0F0h]
                jz      short locret_140363EF6
                mov     eax, 2
                lock or [rcx+0FEh], ax

locret_140363EF6:                       ; CODE XREF: sub_140363EB0+27↑j
                                        ; sub_140363EB0+37↑j
                retn
sub_140363EB0   endp

; ---------------------------------------------------------------------------
                align 8
algn_140363EF8:                         ; DATA XREF: .pdata:00000001400D983C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140363F00   proc near               ; CODE XREF: sub_14061BEE0+3AD↓p
                                        ; DATA XREF: .rdata:0000000140089ABC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014048CA98 SIZE 00000064 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, [rcx+28h]
                mov     rbp, rdx
                bt      r8d, 18h
                jnb     short loc_140363F2B
                add     rdi, 10h

loc_140363F2B:                          ; CODE XREF: sub_140363F00+25↑j
                mov     rcx, rdi
                call    sub_140243660
                lea     rcx, [rbp+48h]
                call    ExAcquireSpinLockExclusive
                mov     r14, [rbp+50h]
                lea     rcx, dword_140C4C800
                and     qword ptr [rbp+50h], 0
                movzx   esi, al
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                and     qword ptr [rdi], 0
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                or      dword ptr [rbp+38h], 0C0000h
                lea     rcx, [rbp+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048CA98

loc_140363F82:                          ; CODE XREF: sub_140363F00+128B9A↓j
                                        ; sub_140363F00+128BA6↓j ...
                mov     cr8, rsi
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, r14
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140363F00   endp

byte_140363FA5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140089ABC↑o
                                        ; .pdata:00000001400D9848↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140363FAC   proc near               ; CODE XREF: sub_1403EF9BC+48↓p
                                        ; DATA XREF: .pdata:00000001400D9854↑o

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 60h
                mov     al, [rcx+14h]
                lea     r9, [rbp+var_30]
                mov     r14d, [rcx+10h]
                lea     r8, [rbp+arg_0]
                xor     esi, esi
                sub     al, 2
                mov     rdi, rcx
                xorps   xmm0, xmm0
                mov     ecx, r14d
                movups  [rbp+var_20], xmm0
                lea     ebx, [rsi+1]
                cmp     al, bl
                mov     [rdx], ebx
                setbe   sil
                xor     eax, eax
                mov     edx, esi
                mov     [rbp+var_10], rax
                xor     edx, ebx
                mov     [rbp+var_30], rax
                mov     [rbp+var_28], eax
                call    RtlQueryFeatureConfiguration
                test    eax, eax
                jnz     short loc_140364022
                mov     eax, dword ptr [rbp+var_30+4]
                mov     r9d, eax
                mov     edx, eax
                shr     r9d, 4
                shr     edx, 6
                and     r9d, 3
                and     edx, ebx
                shr     eax, 7
                and     eax, ebx
                jmp     short loc_140364057
; ---------------------------------------------------------------------------

loc_140364022:                          ; CODE XREF: sub_140363FAC+58↑j
                cmp     eax, 117h
                jnz     short loc_140364034
                mov     eax, dword ptr [rbp+var_30+4]
                shr     eax, 7
                and     eax, ebx
                mov     dword ptr [rbp+var_10], eax

loc_140364034:                          ; CODE XREF: sub_140363FAC+7B↑j
                and     [rsp+60h+var_40], 0
                lea     rdx, [rbp+var_20]
                mov     r9d, esi
                mov     r8d, r14d
                xor     ecx, ecx
                call    sub_140722748
                mov     edx, dword ptr [rbp+var_10+4]
                mov     ebx, eax
                mov     eax, dword ptr [rbp+var_10]
                mov     r9d, dword ptr [rbp+var_20]

loc_140364057:                          ; CODE XREF: sub_140363FAC+74↑j
                and     [rbp+arg_0], 0
                neg     eax
                sbb     ecx, ecx
                and     ecx, 100h
                neg     edx
                sbb     edx, edx
                and     edx, 200h
                or      edx, ecx
                neg     ebx
                sbb     r8d, r8d
                and     r8d, r9d
                and     r8d, 3
                shl     r8d, 5
                or      r8d, edx
                test    r8b, 60h
                jnz     short loc_140364097
                mov     al, [rdi+17h]
                neg     al
                sbb     ecx, ecx
                and     ecx, 10h
                jmp     short loc_1403640A3
; ---------------------------------------------------------------------------

loc_140364097:                          ; CODE XREF: sub_140363FAC+DD↑j
                xor     ecx, ecx
                cmp     r9d, 2
                lea     eax, [rcx+10h]
                cmovz   ecx, eax

loc_1403640A3:                          ; CODE XREF: sub_140363FAC+E9↑j
                or      r8d, ecx
                mov     esi, 8
                mov     ebx, r8d
                shr     ebx, 1
                and     ebx, esi
                or      ebx, r8d
                mov     dword ptr [rbp+arg_0], ebx
                test    sil, bl
                jz      short loc_140364116
                mov     rdi, [rdi+18h]
                test    rdi, rdi
                jz      short loc_140364116
                mov     r14d, 0FFFFFFF7h

loc_1403640CC:                          ; CODE XREF: sub_140363FAC+168↓j
                mov     rax, [rdi]
                test    rax, rax
                jz      short loc_140364116
                cmp     byte ptr [rax+16h], 0
                jnz     short loc_1403640F5
                cmp     byte ptr [rax+15h], 0
                jnz     short loc_1403640F5
                mov     rcx, [rax]
                mov     rdx, rax
                call    sub_14038C8C4
                test    sil, bl
                jz      short loc_140364104
                test    sil, al
                jmp     short loc_1403640FE
; ---------------------------------------------------------------------------

loc_1403640F5:                          ; CODE XREF: sub_140363FAC+12C↑j
                                        ; sub_140363FAC+132↑j
                test    sil, bl
                jz      short loc_140364104
                cmp     byte ptr [rax+17h], 0

loc_1403640FE:                          ; CODE XREF: sub_140363FAC+147↑j
                jz      short loc_140364104
                mov     eax, esi
                jmp     short loc_140364106
; ---------------------------------------------------------------------------

loc_140364104:                          ; CODE XREF: sub_140363FAC+142↑j
                                        ; sub_140363FAC+14C↑j ...
                xor     eax, eax

loc_140364106:                          ; CODE XREF: sub_140363FAC+156↑j
                and     ebx, r14d
                add     rdi, rsi
                or      ebx, eax
                mov     dword ptr [rbp+arg_0], ebx
                test    sil, bl
                jnz     short loc_1403640CC

loc_140364116:                          ; CODE XREF: sub_140363FAC+10F↑j
                                        ; sub_140363FAC+118↑j ...
                mov     rax, [rbp+arg_0]
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140363FAC   endp

byte_140364130  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D9854↑o

; =============== S U B R O U T I N E =======================================


sub_140364138   proc near               ; CODE XREF: RtlCreateHeap+123↓p
                                        ; DATA XREF: .pdata:00000001400D9860↑o
                movups  xmm0, cs:xmmword_140C1DC60
                mov     rax, rcx
                movdqu  xmmword ptr [rcx], xmm0
                retn
sub_140364138   endp

; ---------------------------------------------------------------------------
                align 8
algn_140364148:                         ; DATA XREF: .pdata:00000001400D9860↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140364150   proc near               ; DATA XREF: .pdata:00000001400D986C↑o
                                        ; sub_140A59E90+23E↓o
                sub     rsp, 28h
                mov     edx, 1
                lea     rcx, qword_140C47B00
                call    ExQueueWorkItem
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140364150   endp

byte_14036416B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D986C↑o

; =============== S U B R O U T I N E =======================================


sub_140364174   proc near               ; CODE XREF: sub_14036BD88+71↓p
                                        ; sub_140729640+2B↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xorps   xmm0, xmm0
                movups  xmmword ptr [rcx], xmm0
                movups  xmmword ptr [rcx+10h], xmm0
                add     rcx, 10h
                call    sub_140877540
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140364174   endp

algn_140364191:                         ; DATA XREF: .pdata:00000001400D9878↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403641A0   proc near               ; CODE XREF: sub_1407C6860+43↓p
                                        ; sub_1407C6860+B6↓p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+28h+var_18], rax
                mov     r10, [rsp+28h+arg_20]
                mov     r11, rdx
                mov     eax, ecx
                xor     ecx, ecx
                cpuid
                mov     [r11], eax
                mov     [r8], ebx
                mov     [r9], ecx
                mov     [r10], edx
                mov     rcx, [rsp+28h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403641A0
sub_1403641A0   endp

byte_1403641E3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D9884↑o

; =============== S U B R O U T I N E =======================================


sub_1403641EC   proc near               ; CODE XREF: sub_140210B30+274↑p
                                        ; sub_140363180+12963B↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx]
                add     rcx, 78h ; 'x'
                call    sub_14024C380
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403641EC   endp

algn_140364212:                         ; DATA XREF: .pdata:00000001400D9890↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140364218   proc near               ; CODE XREF: sub_140996B90:loc_140996BED↓p
                                        ; DATA XREF: .pdata:00000001400D989C↑o
                pause
                xor     al, al
                retn
sub_140364218   endp

; ---------------------------------------------------------------------------
                align 2
byte_14036421E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D989C↑o

; =============== S U B R O U T I N E =======================================


sub_140364224   proc near               ; CODE XREF: sub_1402B0230+109↑p
                                        ; sub_14086FF90+247↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014048CAFC SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                mov     rcx, rdi
                mov     dl, r8b
                call    sub_1403642A0
                test    eax, eax
                js      short loc_140364282
                mov     eax, [rdi+1038h]
                test    al, 1
                jz      short loc_14036428E
                call    sub_14066DEF0
                lea     rcx, [rdi+1040h]
                mov     rdx, [rcx+8]
                lea     rax, [rbx+1040h]
                cmp     [rdx], rcx
                jnz     FatalListEntryError_36
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                call    sub_14066DF10

loc_140364280:                          ; CODE XREF: sub_140364224+71↓j
                xor     eax, eax

loc_140364282:                          ; CODE XREF: sub_140364224+1D↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036428E:                          ; CODE XREF: sub_140364224+27↑j
                and     dword ptr [rbx+1038h], 0FFFFFFFEh
                jmp     short loc_140364280
sub_140364224   endp

; ---------------------------------------------------------------------------
algn_140364297:                         ; DATA XREF: .rdata:0000000140089B74↑o
                                        ; .pdata:00000001400D98A8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403642A0   proc near               ; CODE XREF: sub_140364224+16↑p
                                        ; sub_14086FF90+137↓p
                                        ; DATA XREF: ...
                test    dl, dl
                jz      short loc_1403642AE
                mov     eax, [rcx+1038h]
                test    al, 1
                jz      short loc_1403642B2

loc_1403642AE:                          ; CODE XREF: sub_1403642A0+2↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403642B2:                          ; CODE XREF: sub_1403642A0+C↑j
                mov     eax, 0C000000Dh
                retn
sub_1403642A0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403642B9:                         ; DATA XREF: .pdata:00000001400D98B4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403642C0   proc near               ; DATA XREF: .pdata:00000001400D98C0↑o
                                        ; sub_140A6EEDC+10C↓o
                sub     rsp, 28h
                mov     edx, 1
                lea     rcx, unk_140C24568
                call    sub_1403642E4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403642C0   endp

byte_1403642DB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D98C0↑o

; =============== S U B R O U T I N E =======================================


sub_1403642E4   proc near               ; CODE XREF: sub_1402B3690+23E↑p
                                        ; sub_1403642C0+10↑p ...
                sub     rsp, 28h
                xor     r8b, r8b
                mov     eax, 1
                lock xadd [rcx+20h], eax
                inc     eax
                cmp     eax, 1
                jnz     short loc_140364304
                call    ExQueueWorkItem
                mov     r8b, 1

loc_140364304:                          ; CODE XREF: sub_1403642E4+16↑j
                mov     al, r8b
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403642E4   endp

byte_14036430D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D98CC↑o

; =============== S U B R O U T I N E =======================================


sub_140364314   proc near               ; CODE XREF: sub_140308F08+8F↑p
                                        ; DATA XREF: .rdata:0000000140089BD0↑o ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014048CB04 SIZE 0000001B BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                or      rbp, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rcx
                xor     eax, eax
                lock cmpxchg [rcx+19A8h], rbp
                jnz     loc_14048CB04
                mov     edx, [rcx+1844h]
                mov     r8d, 77536D73h
                add     rdx, 1Fh
                mov     ecx, 200h
                shr     rdx, 5
                lea     rdx, ds:18h[rdx*4]
                call    ExAllocatePoolWithTag
                xor     edi, edi
                mov     rsi, rax
                test    rax, rax
                jz      loc_14048CB0E
                xor     ecx, ecx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0
                mov     [rax+10h], rcx
                lea     rcx, [rax+8]
                mov     edx, [rbx+1844h]
                mov     [rcx], edx
                lea     rdx, [rax+18h]
                mov     [rcx+8], rdx
                call    RtlSetAllBits
                mov     rax, rbp
                lock cmpxchg [rbx+19A8h], rsi
                mov     eax, edi

loc_1403643A7:                          ; CODE XREF: sub_140364314+1287F5↓j
                                        ; sub_140364314+128806↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140364314   endp

byte_1403643BD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140089BD0↑o
                                        ; .pdata:00000001400D98D8↑o

; =============== S U B R O U T I N E =======================================


sub_1403643C4   proc near               ; CODE XREF: sub_1409F3718+2F↓p
                                        ; sub_1409F3A40+4A↓p ...
                mov     eax, dword ptr cs:xmmword_140C13320+8
                mov     [rcx], eax
                mov     eax, dword ptr cs:xmmword_140C13320+4
                mov     [rcx+4], eax
                mov     eax, dword ptr cs:xmmword_140C13320+0Ch
                mov     [rcx+8], eax
                mov     rax, rcx
                retn
sub_1403643C4   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403643E3:                         ; DATA XREF: .pdata:00000001400D98E4↑o
                align 10h
; Exported entry 1825. PsGetJobLock

; =============== S U B R O U T I N E =======================================


