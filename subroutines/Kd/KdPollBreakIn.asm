KdPollBreakIn   proc near               ; CODE XREF: sub_140383CE8:loc_14049792F↑p
                                        ; sub_1409B7160+AEB↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                pushfq
                push    r14
                push    r15
                sub     rsp, 30h
                cmp     cs:byte_140C0F430, 0
                jz      short loc_140511CB2
                cmp     cs:KdEventLoggingEnabled, 0
                jnz     short loc_140511CB2
                xor     al, al
                jmp     loc_140511DDF
; ---------------------------------------------------------------------------

loc_140511CB2:                          ; CODE XREF: KdPollBreakIn+20↑j
                                        ; KdPollBreakIn+29↑j
                xor     bl, bl
                cmp     cs:KdDebuggerEnabled, bl
                jnz     short loc_140511CC8
                cmp     cs:KdEventLoggingEnabled, bl
                jz      loc_140511DDD

loc_140511CC8:                          ; CODE XREF: KdPollBreakIn+3A↑j
                cli
                mov     eax, gs:1A4h
                lea     r15, unk_140C40760
                mov     edi, [rsp+48h+var_8]
                mov     r14d, 1
                shr     edi, 9
                mov     esi, eax
                and     dil, r14b
                mov     rax, [r15+rax*8]
                test    rax, rax
                jz      short loc_140511D1C
                mov     ecx, [rax]
                add     rcx, r14
                shl     rcx, 4
                add     rcx, rax
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     [rcx], rax
                movzx   eax, cs:KdDebuggerNotPresent
                and     eax, r14d
                shl     eax, 2
                mov     [rcx+8], rax

loc_140511D1C:                          ; CODE XREF: KdPollBreakIn+71↑j
                cmp     byte ptr cs:xmmword_140C320A0+4, bl
                jz      short loc_140511D30
                mov     bl, r14b
                mov     byte ptr cs:xmmword_140C320A0+4, 0
                jmp     short loc_140511D72
; ---------------------------------------------------------------------------

loc_140511D30:                          ; CODE XREF: KdPollBreakIn+A2↑j
                lea     rcx, unk_140D23280
                call    sub_140361758
                test    al, al
                jz      short loc_140511D72
                and     [rsp+48h+var_28], 0
                xor     edx, edx
                xor     r9d, r9d
                xor     r8d, r8d
                lea     ecx, [rdx+8]
                call    cs:KdReceivePacket
                nop     dword ptr [rax+rax+00h]
                movzx   ebx, bl
                lea     rcx, unk_140D23280
                test    eax, eax
                cmovz   ebx, r14d
                call    KeReleaseSpinLockFromDpcLevel

loc_140511D72:                          ; CODE XREF: KdPollBreakIn+AE↑j
                                        ; KdPollBreakIn+BE↑j
                and     bl, cs:KdDebuggerEnabled
                or      cs:byte_140C34610, bl
                mov     r9, [r15+rsi*8]
                test    r9, r9
                jz      short loc_140511DD7
                mov     r10d, [r9]
                lea     r8, [r14+r10]
                add     r8, r8
                rdtsc
                movzx   ecx, cs:KdDebuggerNotPresent
                and     ecx, r14d
                shl     rdx, 20h
                or      rax, rdx
                add     ecx, ecx
                sub     rax, [r9+r8*8]
                and     rax, 0FFFFFFFFFFFFFFF0h
                or      rax, rcx
                mov     ecx, [r9+r8*8+8]
                and     ecx, 4
                or      rax, rcx
                mov     [r9+r8*8+8], rax
                cmp     r10d, 0FEh
                jnz     short loc_140511DD0
                and     dword ptr [r9], 0
                jmp     short loc_140511DD7
; ---------------------------------------------------------------------------

loc_140511DD0:                          ; CODE XREF: KdPollBreakIn+148↑j
                lea     ecx, [r10+1]
                mov     [r9], ecx

loc_140511DD7:                          ; CODE XREF: KdPollBreakIn+105↑j
                                        ; KdPollBreakIn+14E↑j
                test    dil, dil
                jz      short loc_140511DDD
                sti

loc_140511DDD:                          ; CODE XREF: KdPollBreakIn+42↑j
                                        ; KdPollBreakIn+15A↑j
                mov     al, bl

loc_140511DDF:                          ; CODE XREF: KdPollBreakIn+2D↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdPollBreakIn   endp

algn_140511DF9:                         ; DATA XREF: .pdata:00000001400F31E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140511E00   proc near               ; CODE XREF: sub_1409BC7A0+D2↓p
                                        ; DATA XREF: .pdata:00000001400F31EC↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                xor     bl, bl
                cmp     cs:KdDebuggerEnabled, bl
                jz      short loc_140511E52
                cmp     byte ptr cs:xmmword_140C320A0+4, bl
                jz      short loc_140511E26
                mov     ebx, 1
                mov     byte ptr cs:xmmword_140C320A0+4, 0
                jmp     short loc_140511E52
; ---------------------------------------------------------------------------

loc_140511E26:                          ; CODE XREF: sub_140511E00+16↑j
                and     [rsp+38h+var_18], 0
                xor     edx, edx
                xor     r9d, r9d
                xor     r8d, r8d
                lea     ecx, [rdx+8]
                call    cs:KdReceivePacket
                nop     dword ptr [rax+rax+00h]
                movzx   ecx, bl
                mov     ebx, 1
                test    eax, eax
                cmovz   ecx, ebx
                mov     bl, cl

loc_140511E52:                          ; CODE XREF: sub_140511E00+E↑j
                                        ; sub_140511E00+24↑j
                mov     al, bl
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140511E00   endp

byte_140511E5B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F31EC↑o

; =============== S U B R O U T I N E =======================================


sub_140511E64   proc near               ; CODE XREF: KdSystemDebugControl+4F3↓p
                                        ; sub_1409BA4F4+382↓p ...

arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                xor     r10d, r10d
                lea     r11d, [r10+1]
                cmp     ecx, r11d
                jnz     loc_140511F0C
                test    edx, edx
                jnz     loc_140511F0C
                cmp     r8d, r11d
                jnz     loc_140511F0C
                mov     eax, [rsp+arg_28]
                sub     eax, r11d
                jz      short loc_140511EF3
                sub     eax, r11d
                jz      short loc_140511ED0
                cmp     eax, 2
                jz      short loc_140511EA7
                mov     rax, [rsp+arg_30]
                mov     r10d, 0C000000Dh
                and     [rax], edx
                jmp     short loc_140511F07
; ---------------------------------------------------------------------------

loc_140511EA7:                          ; CODE XREF: sub_140511E64+32↑j
                test    r9b, 3
                jz      short loc_140511EB5

loc_140511EAD:                          ; CODE XREF: sub_140511E64+6F↓j
                mov     r10d, 80000002h
                jmp     short loc_140511F07
; ---------------------------------------------------------------------------

loc_140511EB5:                          ; CODE XREF: sub_140511E64+47↑j
                movzx   edx, r9w
                in      eax, dx
                mov     ecx, eax
                mov     rax, [rsp+arg_20]
                mov     [rax], ecx
                mov     rax, [rsp+arg_30]
                mov     dword ptr [rax], 4
                jmp     short loc_140511F07
; ---------------------------------------------------------------------------

loc_140511ED0:                          ; CODE XREF: sub_140511E64+2D↑j
                test    r11b, r9b
                jnz     short loc_140511EAD
                movzx   edx, r9w
                in      ax, dx
                movzx   ecx, ax
                mov     rax, [rsp+arg_20]
                mov     [rax], cx
                mov     rax, [rsp+arg_30]
                mov     dword ptr [rax], 2
                jmp     short loc_140511F07
; ---------------------------------------------------------------------------

loc_140511EF3:                          ; CODE XREF: sub_140511E64+28↑j
                movzx   edx, r9w
                in      al, dx
                mov     rcx, [rsp+arg_20]
                mov     [rcx], al
                mov     rcx, [rsp+arg_30]
                mov     [rcx], r11d

loc_140511F07:                          ; CODE XREF: sub_140511E64+41↑j
                                        ; sub_140511E64+4F↑j ...
                mov     eax, r10d
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140511F0C:                          ; CODE XREF: sub_140511E64+A↑j
                                        ; sub_140511E64+12↑j ...
                mov     rax, [rsp+arg_30]
                and     [rax], r10d
                mov     eax, 0C0000001h
                retn
sub_140511E64   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140511F1B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F31F8↑o

; =============== S U B R O U T I N E =======================================


sub_140511F24   proc near               ; CODE XREF: KdSystemDebugControl+6DE↓p
                                        ; sub_1409BA4F4+4C0↓p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rdx
                mov     r9, rdx
                xor     r8d, r8d

loc_140511F2F:                          ; DATA XREF: .rdata:00000001400B9290↑o
;   __try { // __except at loc_140511F3D
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r9], rax
                jmp     short loc_140511F4C
;   } // starts at 140511F2F
; ---------------------------------------------------------------------------

loc_140511F3D:                          ; DATA XREF: .rdata:00000001400B9290↑o
;   __except(1) // owned by 140511F2F
                mov     rax, [rsp+arg_8]
                and     qword ptr [rax], 0
                mov     r8d, 0C000000Eh

loc_140511F4C:                          ; CODE XREF: sub_140511F24+17↑j
                mov     eax, r8d
                retn
sub_140511F24   endp

; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140511F24
algn_140511F51:                         ; DATA XREF: .pdata:00000001400F3204↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140511F58   proc near               ; CODE XREF: KdSystemDebugControl+789↓p
                                        ; sub_1409BA4F4+3D4↓p ...

arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                xor     r10d, r10d
                lea     r11d, [r10+1]
                cmp     ecx, r11d
                jnz     loc_140511FFB
                test    edx, edx
                jnz     loc_140511FFB
                cmp     r8d, r11d
                jnz     loc_140511FFB
                mov     eax, [rsp+arg_28]
                sub     eax, r11d
                jz      short loc_140511FE2
                sub     eax, r11d
                jz      short loc_140511FC2
                cmp     eax, 2
                jz      short loc_140511F9B
                mov     rax, [rsp+arg_30]
                mov     r10d, 0C000000Dh
                and     [rax], edx
                jmp     short loc_140511FF6
; ---------------------------------------------------------------------------

loc_140511F9B:                          ; CODE XREF: sub_140511F58+32↑j
                test    r9b, 3
                jz      short loc_140511FA9

loc_140511FA1:                          ; CODE XREF: sub_140511F58+6D↓j
                mov     r10d, 80000002h
                jmp     short loc_140511FF6
; ---------------------------------------------------------------------------

loc_140511FA9:                          ; CODE XREF: sub_140511F58+47↑j
                mov     rax, [rsp+arg_20]
                mov     eax, [rax]
                movzx   edx, r9w
                out     dx, eax
                mov     rax, [rsp+arg_30]
                mov     dword ptr [rax], 4
                jmp     short loc_140511FF6
; ---------------------------------------------------------------------------

loc_140511FC2:                          ; CODE XREF: sub_140511F58+2D↑j
                test    r11b, r9b
                jnz     short loc_140511FA1
                mov     rax, [rsp+arg_20]
                movzx   eax, word ptr [rax]
                movzx   edx, r9w
                out     dx, ax
                mov     rax, [rsp+arg_30]
                mov     dword ptr [rax], 2
                jmp     short loc_140511FF6
; ---------------------------------------------------------------------------

loc_140511FE2:                          ; CODE XREF: sub_140511F58+28↑j
                mov     rcx, [rsp+arg_20]
                mov     al, [rcx]
                movzx   edx, r9w
                out     dx, al
                mov     rcx, [rsp+arg_30]
                mov     [rcx], r11d

loc_140511FF6:                          ; CODE XREF: sub_140511F58+41↑j
                                        ; sub_140511F58+4F↑j ...
                mov     eax, r10d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140511FFB:                          ; CODE XREF: sub_140511F58+A↑j
                                        ; sub_140511F58+12↑j ...
                mov     rax, [rsp+arg_30]
                and     [rax], r10d
                mov     eax, 0C0000001h
                retn
sub_140511F58   endp

; ---------------------------------------------------------------------------
                align 2
algn_14051200A:                         ; DATA XREF: .pdata:00000001400F3210↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140512010   proc near               ; CODE XREF: KdSystemDebugControl+6BD↓p
                                        ; sub_1409BA4F4+510↓p
                                        ; DATA XREF: ...
; __unwind { // __C_specific_handler
                xor     r8d, r8d

loc_140512013:                          ; DATA XREF: .rdata:00000001400B92AC↑o
;   __try { // __except at loc_140512021
                mov     rdx, [rdx]
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                jmp     short loc_140512027
;   } // starts at 140512013
; ---------------------------------------------------------------------------

loc_140512021:                          ; DATA XREF: .rdata:00000001400B92AC↑o
;   __except(1) // owned by 140512013
                mov     r8d, 0C000000Eh

loc_140512027:                          ; CODE XREF: sub_140512010+F↑j
                mov     eax, r8d
                retn
sub_140512010   endp

; ---------------------------------------------------------------------------
                align 4
; } // starts at 140512010
algn_14051202C:                         ; DATA XREF: .pdata:00000001400F321C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512040   proc near               ; CODE XREF: sub_14040CE80+388↑p
                                        ; DATA XREF: .pdata:00000001400F3228↑o
                sub     rsp, 28h
                cmp     cs:byte_140C0F430, 0
                jnz     short loc_14051205B
                cmp     cs:byte_140C40664, 0
                jz      short loc_14051205B
                call    sub_1409BC5E0

loc_14051205B:                          ; CODE XREF: sub_140512040+B↑j
                                        ; sub_140512040+14↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512040   endp

algn_140512061:                         ; DATA XREF: .pdata:00000001400F3228↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140512068   proc near               ; CODE XREF: sub_1409BC398+47↓p
                                        ; sub_1409BC450+4C↓p ...
                movzx   r8d, byte ptr [rcx+24h]
                mov     r9, rdx
                sub     r8d, 1
                jz      short loc_1405120AD
                sub     r8d, 1
                jz      short loc_1405120A1
                sub     r8d, 2
                jz      short loc_140512097
                cmp     r8d, 4
                jz      short loc_14051208C
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14051208C:                          ; CODE XREF: sub_140512068+1E↑j
                mov     rax, [rcx+10h]
                xor     edx, edx
                cmp     [r9], rax
                jmp     short loc_1405120B5
; ---------------------------------------------------------------------------

loc_140512097:                          ; CODE XREF: sub_140512068+18↑j
                mov     eax, [rcx+10h]
                xor     edx, edx
                cmp     [r9], eax
                jmp     short loc_1405120B5
; ---------------------------------------------------------------------------

loc_1405120A1:                          ; CODE XREF: sub_140512068+12↑j
                movzx   eax, word ptr [rcx+10h]
                xor     edx, edx
                cmp     [r9], ax
                jmp     short loc_1405120B5
; ---------------------------------------------------------------------------

loc_1405120AD:                          ; CODE XREF: sub_140512068+C↑j
                mov     cl, [rcx+10h]
                xor     edx, edx
                cmp     [r9], cl

loc_1405120B5:                          ; CODE XREF: sub_140512068+2D↑j
                                        ; sub_140512068+37↑j ...
                setz    dl
                mov     eax, edx
                retn
sub_140512068   endp

; ---------------------------------------------------------------------------
                align 4
byte_1405120BC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F3234↑o

; =============== S U B R O U T I N E =======================================


sub_1405120C4   proc near               ; CODE XREF: sub_1409BC334+1C↓p
                                        ; sub_1409BC520+1A↓p
                                        ; DATA XREF: ...
                movzx   r9d, r8b
                sub     r9d, 1
                jz      short loc_1405120EE
                sub     r9d, 1
                jz      short loc_1405120E9
                sub     r9d, 2
                jz      short loc_1405120E5
                cmp     r9d, 4
                jnz     short locret_1405120F0
                mov     [rcx], rdx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405120E5:                          ; CODE XREF: sub_1405120C4+14↑j
                mov     [rcx], edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405120E9:                          ; CODE XREF: sub_1405120C4+E↑j
                mov     [rcx], dx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405120EE:                          ; CODE XREF: sub_1405120C4+8↑j
                mov     [rcx], dl

locret_1405120F0:                       ; CODE XREF: sub_1405120C4+1A↑j
                retn
sub_1405120C4   endp

; ---------------------------------------------------------------------------
                align 2
algn_1405120F2:                         ; DATA XREF: .pdata:00000001400F3240↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405120F8   proc near               ; CODE XREF: KdEnableDebugger+F↑p
                                        ; KdEnableDebugger+22↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140CFC47F, 0
                setz    dil
                test    ecx, ecx
                jnz     short loc_140512157
                lea     ebx, [rcx+1]
                test    dil, dil
                jz      short loc_140512159
                mov     eax, cs:dword_140CFC404
                test    eax, eax
                jz      short loc_140512159
                lea     rsi, qword_140CFDCC0
                mov     ebp, eax

loc_140512136:                          ; CODE XREF: sub_1405120F8+5B↓j
                mov     rcx, [rsi]
                and     dword ptr [rcx+7BECh], 0
                and     dword ptr [rcx+7E9Ch], 0
                call    sub_140326178
                lea     rsi, [rsi+8]
                sub     rbp, rbx
                jnz     short loc_140512136
                jmp     short loc_140512159
; ---------------------------------------------------------------------------

loc_140512157:                          ; CODE XREF: sub_1405120F8+21↑j
                xor     bl, bl

loc_140512159:                          ; CODE XREF: sub_1405120F8+29↑j
                                        ; sub_1405120F8+33↑j ...
                mov     rbp, [rsp+28h+arg_8]
                mov     al, dil
                mov     rsi, [rsp+28h+arg_10]
                mov     cs:byte_140CFC47F, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405120F8   endp

algn_140512178:                         ; DATA XREF: .pdata:00000001400F324C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512180   proc near               ; CODE XREF: sub_140256240+1E12CA↑p
                                        ; sub_140256240+1E135F↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140C50BC8
                mov     rbx, rcx
                mov     rcx, [rcx+84A8h]
                add     rax, 0FFFFFFFFFFFFFFFEh
                mov     rdi, [rbx+84B0h]
                lea     rdx, [rcx+rax*8]
                lea     rax, [rdi+1A0h]
                cmp     rax, rdx
                jbe     short loc_1405121BF
                mov     [rbx+84B0h], rcx
                mov     rdi, rcx

loc_1405121BF:                          ; CODE XREF: sub_140512180+33↑j
                lea     rcx, [rdi+8]
                mov     edx, 32h ; '2'
                mov     r8d, 200h
                call    RtlWalkFrameChain
                lea     ecx, [rax-3]
                cmp     ecx, 31h ; '1'
                ja      short loc_14051220C
                lea     ecx, [rax-2]
                xorps   xmm0, xmm0
                mov     [rdi], cx
                add     eax, 0FFFFFFFEh
                lea     rcx, ds:10h[rax*8]
                add     [rbx+84B0h], rcx
                mov     rax, [rbx+84B0h]
                movups  xmmword ptr [rax], xmm0
                mov     rax, [rbx+84B0h]
                and     qword ptr [rax-8], 0

loc_14051220C:                          ; CODE XREF: sub_140512180+59↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512180   endp

algn_140512218:                         ; DATA XREF: .pdata:00000001400F3258↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512220   proc near               ; DATA XREF: .pdata:00000001400F3264↑o
                                        ; sub_1408BBBF8+258↓o

var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 30h
                xor     r14d, r14d
                mov     rdi, r9
                mov     [rsp+58h+arg_18], r14d
                or      eax, 0FFFFFFFFh
                mov     rbp, r8
                mov     rbx, rdx
                lock xadd [r9], eax
                dec     eax
                mov     r12d, 80000000h
                mov     esi, eax
                not     esi
                and     esi, r12d
                test    eax, 7FFFFFFFh
                jnz     loc_1405122E9
                mov     eax, [r9+4]
                or      eax, esi
                mov     [r9], eax

loc_140512272:                          ; CODE XREF: sub_140512220+D0↓j
                mov     eax, gs:1A4h
                test    eax, eax
                jnz     loc_1405124DF
                mov     eax, cs:dword_140CFC404
                mov     esi, 1
                mov     rdx, [rbx]
                test    eax, eax
                jz      short loc_140512311
                lea     r9, qword_140CFDCC0
                add     rdx, 8
                mov     r10d, eax

loc_1405122A2:                          ; CODE XREF: sub_140512220+EF↓j
                mov     r8, [r9]
                mov     al, [rdx-1]
                movzx   ecx, byte ptr [r8+0D0h]
                mov     [r8+81BAh], al
                mov     al, [rdx]
                mov     [r8+81B9h], al
                mov     al, [rdx-2]
                mov     [r8+81B8h], al
                lea     rax, qword_140CFDA88
                shl     rcx, 4
                add     rcx, rax
                mov     rax, [r8+0C8h]
                cmp     [rdx], r14b
                jnz     short loc_1405122FE
                or      [rcx], rax
                jmp     short loc_140512304
; ---------------------------------------------------------------------------

loc_1405122E9:                          ; CODE XREF: sub_140512220+43↑j
                                        ; sub_140512220+DC↓j
                mov     eax, [rdi]
                and     eax, r12d
                cmp     eax, esi
                jz      short loc_140512272
                lea     rcx, [rsp+58h+arg_18]
                call    sub_1402C8C70
                jmp     short loc_1405122E9
; ---------------------------------------------------------------------------

loc_1405122FE:                          ; CODE XREF: sub_140512220+C2↑j
                not     rax
                and     [rcx], rax

loc_140512304:                          ; CODE XREF: sub_140512220+C7↑j
                add     rdx, 3
                add     r9, 8
                sub     r10, rsi
                jnz     short loc_1405122A2

loc_140512311:                          ; CODE XREF: sub_140512220+72↑j
                movzx   r10d, cs:word_140CFB000
                mov     r8, r14
                movzx   r9d, r14w
                cmp     r14w, r10w
                jnb     loc_1405123B4
                mov     r13, 3333333333333333h

loc_140512334:                          ; CODE XREF: sub_140512220+18D↓j
                movzx   eax, r9w
                lea     r11, qword_140D23380
                mov     rcx, 5555555555555555h
                mov     r11, [r11+rax*8]
                mov     rdx, [r11+88h]
                mov     rax, rdx
                shr     rax, 1
                and     rax, rcx
                sub     rdx, rax
                mov     rcx, rdx
                and     rdx, r13
                shr     rcx, 2
                and     rcx, r13
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                test    eax, eax
                jz      short loc_1405123A5
                test    r8, r8
                jnz     short loc_1405123B1
                mov     r8, r11

loc_1405123A5:                          ; CODE XREF: sub_140512220+17B↑j
                add     r9w, si
                cmp     r9w, r10w
                jb      short loc_140512334
                jmp     short loc_1405123B4
; ---------------------------------------------------------------------------

loc_1405123B1:                          ; CODE XREF: sub_140512220+180↑j
                mov     r8, r14

loc_1405123B4:                          ; CODE XREF: sub_140512220+104↑j
                                        ; sub_140512220+18F↑j
                mov     cs:dword_140CFC51C, r14d
                mov     cs:dword_140CFC65C, r14d
                mov     cs:dword_140CFC580, r14d
                test    r8, r8
                jz      loc_1405124DF
                cmp     [rbx+0Ch], r14d
                jz      short loc_1405123EF
                mov     cs:dword_140CFC51C, esi
                mov     cs:dword_140CFC65C, esi
                mov     cs:dword_140CFC580, esi
                jmp     loc_1405124DF
; ---------------------------------------------------------------------------

loc_1405123EF:                          ; CODE XREF: sub_140512220+1B6↑j
                cmp     [rbx+10h], r14d
                jz      short loc_140512473
                movzx   ecx, word ptr [r8+90h]
                mov     eax, [rbx+8]
                mov     cs:dword_140CFC51C, esi
                mov     cs:dword_140CFC580, eax
                cmp     cx, [rbx+18h]
                jnb     short loc_140512419
                mov     r9, [rbx+rcx*8+20h]
                jmp     short loc_14051241C
; ---------------------------------------------------------------------------

loc_140512419:                          ; CODE XREF: sub_140512220+1F0↑j
                mov     r9, r14

loc_14051241C:                          ; CODE XREF: sub_140512220+1F7↑j
                cmp     cx, [rbx+0C0h]
                jnb     short loc_14051242F
                mov     r11, [rbx+rcx*8+0C8h]
                jmp     short loc_140512432
; ---------------------------------------------------------------------------

loc_14051242F:                          ; CODE XREF: sub_140512220+203↑j
                mov     r11, r14

loc_140512432:                          ; CODE XREF: sub_140512220+20D↑j
                cmp     cx, [rbx+168h]
                jnb     short loc_140512445
                mov     rdx, [rbx+rcx*8+170h]
                jmp     short loc_140512448
; ---------------------------------------------------------------------------

loc_140512445:                          ; CODE XREF: sub_140512220+219↑j
                mov     rdx, r14

loc_140512448:                          ; CODE XREF: sub_140512220+223↑j
                cmp     cx, [rbx+210h]
                jnb     short loc_14051245B
                mov     r10, [rbx+rcx*8+218h]
                jmp     short loc_14051245E
; ---------------------------------------------------------------------------

loc_14051245B:                          ; CODE XREF: sub_140512220+22F↑j
                mov     r10, r14

loc_14051245E:                          ; CODE XREF: sub_140512220+239↑j
                mov     rax, [r8+88h]
                and     r9, rax
                and     r11, rax
                and     rdx, rax
                and     r10, rax
                jmp     short loc_140512483
; ---------------------------------------------------------------------------

loc_140512473:                          ; CODE XREF: sub_140512220+1D3↑j
                mov     rdx, [r8+88h]
                mov     r10, rdx
                mov     r9, rdx
                mov     r11, rdx

loc_140512483:                          ; CODE XREF: sub_140512220+251↑j
                mov     ebx, esi
                lea     rcx, [r8+0E0h]

loc_14051248C:                          ; CODE XREF: sub_140512220+2BD↓j
                mov     eax, ebx
                sub     eax, esi
                jz      short loc_1405124C9
                sub     eax, esi
                jz      short loc_1405124B5
                sub     eax, esi
                jz      short loc_1405124A8
                cmp     eax, esi
                jnz     short loc_1405124D4
                mov     [rcx-10h], r10
                mov     [rcx-8], rdx
                jmp     short loc_1405124BD
; ---------------------------------------------------------------------------

loc_1405124A8:                          ; CODE XREF: sub_140512220+278↑j
                mov     [rcx-10h], r10
                mov     [rcx-8], rdx
                mov     [rcx], rdx
                jmp     short loc_1405124D4
; ---------------------------------------------------------------------------

loc_1405124B5:                          ; CODE XREF: sub_140512220+274↑j
                mov     [rcx-10h], r11
                mov     [rcx-8], r9

loc_1405124BD:                          ; CODE XREF: sub_140512220+286↑j
                mov     rax, [r8+88h]
                mov     [rcx], rax
                jmp     short loc_1405124D4
; ---------------------------------------------------------------------------

loc_1405124C9:                          ; CODE XREF: sub_140512220+270↑j
                mov     [rcx-10h], r11
                mov     [rcx-8], r9
                mov     [rcx], r9

loc_1405124D4:                          ; CODE XREF: sub_140512220+27C↑j
                                        ; sub_140512220+293↑j ...
                add     ebx, esi
                add     rcx, 18h
                cmp     ebx, 5
                jb      short loc_14051248C

loc_1405124DF:                          ; CODE XREF: sub_140512220+5C↑j
                                        ; sub_140512220+1AC↑j ...
                or      eax, 0FFFFFFFFh
                lock xadd [rdi], eax
                dec     eax
                mov     ebx, eax
                not     ebx
                and     ebx, r12d
                test    eax, 7FFFFFFFh
                jnz     short loc_140512519
                mov     eax, [rdi+4]
                or      eax, ebx
                mov     [rdi], eax

loc_1405124FD:                          ; CODE XREF: sub_140512220+305↓j
                lock dec dword ptr [rbp+0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140512519:                          ; CODE XREF: sub_140512220+2D4↑j
                mov     [rsp+58h+var_38], r14d

loc_14051251E:                          ; CODE XREF: sub_140512220+311↓j
                mov     eax, [rdi]
                and     eax, r12d
                cmp     eax, ebx
                jz      short loc_1405124FD
                lea     rcx, [rsp+58h+var_38]
                call    sub_1402C8C70
                jmp     short loc_14051251E
sub_140512220   endp

; ---------------------------------------------------------------------------
algn_140512533:                         ; DATA XREF: .pdata:00000001400F3264↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512540   proc near               ; DATA XREF: .pdata:00000001400F3270↑o
                                        ; sub_1403B4FB0+14↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_8           = dword ptr  10h

                sub     rsp, 38h
                and     [rsp+38h+arg_8], 0
                call    sub_1403B5034
                test    eax, eax
                js      short loc_140512590
                and     [rsp+38h+var_10], 0
                lea     r9, [rsp+38h+arg_8]
                mov     rcx, cs:qword_140C32078
                lea     rdx, aDisablefgboost ; "DisableFGBoostDecay"
                mov     r8d, 4
                mov     [rsp+38h+var_18], r8d
                call    RtlQueryImageFileKeyOption
                test    eax, eax
                js      short loc_140512590
                cmp     [rsp+38h+arg_8], 0
                setnz   cs:byte_140CFB016
                call    sub_1403B4FB0

loc_140512590:                          ; CODE XREF: sub_140512540+10↑j
                                        ; sub_140512540+3D↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512540   endp

byte_140512596  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400F3270↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14051259C   proc near               ; CODE XREF: sub_1408BBF18+4EC↓p
                                        ; DATA XREF: .pdata:00000001400F327C↑o

var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     edx, [rcx+24h]
                lea     rax, dword_140D010D0
                mov     rbx, rcx
                xorps   xmm0, xmm0
                movups  [rbp+var_28], xmm0
                mov     ecx, [rax+rdx*4]
                xorps   xmm1, xmm1
                mov     eax, ecx
                xor     edx, edx
                shr     eax, 6
                and     ecx, 3Fh
                mov     word ptr [rbp+var_28+8], ax
                mov     dword ptr [rbp+var_28+0Ah], edx
                lea     eax, [rdx+1]
                mov     word ptr [rbp+var_28+0Eh], dx
                shl     rax, cl
                lea     rdx, [rbp+var_18]
                lea     rcx, [rbp+var_28]
                mov     qword ptr [rbp+var_28], rax
                movups  [rbp+var_18], xmm1
                call    KeSetSystemGroupAffinityThread
                lea     rcx, [rbx-180h]
                call    sub_1409A14B0
                mov     rbx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140512662
                test    al, 1
                jz      short loc_140512662
                cmp     bl, 0Fh
                ja      short loc_140512662
                mov     rax, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140512662:                          ; CODE XREF: sub_14051259C+8F↑j
                                        ; sub_14051259C+93↑j ...
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                lea     rdx, [rbp+var_30]
                mov     [rbp+var_2C], eax
                lea     rcx, sub_1403C77C0
                mov     [rbp+var_30], eax
                call    KeIpiGenericCall
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405126D2
                test    al, 1
                jz      short loc_1405126D2
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405126D2
                cmp     bl, 0Fh
                ja      short loc_1405126D2
                cmp     al, 2
                jb      short loc_1405126D2
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rdi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, di
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405126D2
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405126D2:                          ; CODE XREF: sub_14051259C+EE↑j
                                        ; sub_14051259C+F2↑j ...
                movzx   eax, bl
                mov     cr8, rax
                lea     rcx, [rbp+var_18]
                call    KeRevertToUserGroupAffinityThread
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14051259C
sub_14051259C   endp

byte_1405126FF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F327C↑o

; =============== S U B R O U T I N E =======================================


sub_140512708   proc near               ; CODE XREF: sub_1409B1550+1CF↓p
                                        ; DATA XREF: .pdata:00000001400F3288↑o
                mov     rax, [rdx+0C8h]
                or      [rcx+0A0h], rax
                mov     r8, [rcx+178h]
                test    [rdx+8468h], r8
                jnz     short loc_140512734
                or      r8, [rdx+0C8h]
                mov     [rcx+178h], r8

loc_140512734:                          ; CODE XREF: sub_140512708+1C↑j
                mov     rax, [rdx+8440h]
                or      [rcx+98h], rax
                mov     rax, [rdx+0C8h]
                cmp     [rdx+8458h], rax
                jz      short locret_140512759
                or      byte ptr [rcx+0B5h], 20h

locret_140512759:                       ; CODE XREF: sub_140512708+48↑j
                retn
sub_140512708   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14051275B  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400F3288↑o

; =============== S U B R O U T I N E =======================================


sub_140512770   proc near               ; CODE XREF: sub_140512BD0+52↓p
                                        ; sub_140512BD0+110↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, gs:20h
                mov     rbx, rcx
                mov     eax, [rdi+2D88h]
                cmp     eax, 5
                jnz     loc_14051284C
                call    sub_14051E050
                cmp     cs:byte_140CF9EA0, 0
                jz      loc_140512848
                test    rbx, rbx
                jz      loc_140512848
                mov     eax, 10h
                cmp     [rbx+170h], ax
                jz      short loc_1405127DC
                mov     [rbx+170h], ax
                mov     eax, 18h
                mov     [rbx+188h], ax
                mov     rax, [rdi+28h]
                mov     [rbx+180h], rax

loc_1405127DC:                          ; CODE XREF: sub_140512770+4C↑j
                btr     dword ptr [rbx+178h], 9
                mov     r10d, 0C0000101h
                mov     ecx, r10d
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [rbx+68h], rax
                lea     rax, loc_140512D90
                mov     [rbx+168h], rax
                cmp     cs:byte_140E01840, 0
                jz      short loc_140512848
                mov     r8, [rdi-180h]
                mov     r9d, 7
                add     r8, 1430h

loc_140512825:                          ; CODE XREF: sub_140512770+D6↓j
                mov     rcx, cr3
                mov     [r8+8], rcx
                mov     ecx, r10d
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [r8], rax
                lea     r8, [r8+200h]
                sub     r9, 1
                jnz     short loc_140512825

loc_140512848:                          ; CODE XREF: sub_140512770+31↑j
                                        ; sub_140512770+3A↑j ...
                mov     al, 1
                jmp     short loc_14051284E
; ---------------------------------------------------------------------------

loc_14051284C:                          ; CODE XREF: sub_140512770+1F↑j
                xor     al, al

loc_14051284E:                          ; CODE XREF: sub_140512770+DA↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512770   endp

algn_14051285A:                         ; DATA XREF: .pdata:00000001400F3294↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512860   proc near               ; CODE XREF: sub_140405C40+61E↑p
                                        ; DATA XREF: .pdata:00000001400F32A0↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00990
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512860   endp

algn_140512876:                         ; DATA XREF: .pdata:00000001400F32A0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512880   proc near               ; CODE XREF: sub_14040E240:loc_14040E2B5↑p
                                        ; DATA XREF: .pdata:00000001400F32AC↑o
                sub     rsp, 28h
                call    HalHandleMcheck
                mov     rax, qword ptr cs:xmmword_140CFC4D0
                mov     rcx, 20000000000h
                test    rcx, rax
                jz      short loc_1405128A4
                call    sub_140A19740

loc_1405128A4:                          ; CODE XREF: sub_140512880+1D↑j
                lfence
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512880   endp

algn_1405128AD:                         ; DATA XREF: .pdata:00000001400F32AC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405128C0   proc near               ; CODE XREF: sub_14040F340+2C9↑p
                                        ; DATA XREF: .pdata:00000001400F32B8↑o

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_0           = byte ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                push    rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 58h
                mov     r8, rcx
                and     [rsp+78h+var_58], 0
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     [rsp+78h+var_50], rdx
                xor     esi, esi
                mov     [rsp+78h+arg_10], esi
                and     [rsp+78h+var_58], rsi
                mov     rax, [rcx+168h]
                mov     [rsp+78h+arg_18], rax
                mov     [rsp+78h+arg_8], 2
                mov     rdi, cr8
                mov     [rsp+78h+arg_0], dil
                lea     ebx, [rsi+1]
                cmp     dil, bl
                jnb     short loc_14051292C
                mov     rax, cr8
                mov     cr8, rbx

loc_14051292C:                          ; CODE XREF: sub_1405128C0+62↑j
                cmp     word ptr [rcx+170h], 33h ; '3'
                jnz     loc_140512B30
                cmp     [rcx+160h], rbx
                jnz     loc_140512B30
                mov     r10d, 6A7h
                mov     ecx, r10d
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     rdx, rax
                mov     [rsp+78h+var_48], rax
                test    al, 7
                jnz     loc_140512B30
                mov     rcx, [r8+180h]

loc_140512970:                          ; DATA XREF: .rdata:00000001400B93F4↑o
;   __try { // __except at loc_140512B1C
                test    cl, 7
                jnz     loc_140512BB9
                lea     rax, [rcx+8]
                mov     r8, 7FFFFFFF0000h
                cmp     rax, r8
                ja      short loc_140512991
                cmp     rax, rcx
                jnb     short loc_14051299C

loc_140512991:                          ; CODE XREF: sub_1405128C0+CA↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14051299C:                          ; CODE XREF: sub_1405128C0+CF↑j
                mov     rax, [rcx]
                mov     [rsp+78h+var_58], rax
;   } // starts at 140512970

loc_1405129A4:                          ; DATA XREF: .rdata:00000001400B93F4↑o
                mov     r8, [rsp+78h+var_58]
                lea     rax, [r8-10000h]
                mov     r9, 7FFFFFFDFFFFh
                cmp     rax, r9
                ja      loc_140512B30
                mov     rax, [rsp+78h+arg_18]
                add     rax, 0FFFFFFFFFFFF0000h
                cmp     rax, r9
                ja      loc_140512B30
                cmp     r8, cs:qword_140CFCA00
                jnz     short loc_140512A17

loc_1405129E3:                          ; DATA XREF: .rdata:00000001400B9404↑o
;   __try { // __except at loc_1405129FE
                mov     rax, [rdx]
                mov     [rsp+78h+var_40], rax
                mov     [rcx], rax
;   } // starts at 1405129E3

loc_1405129EE:                          ; DATA XREF: .rdata:00000001400B9404↑o
                mov     [rsp+78h+arg_8], 3
                jmp     loc_140512B30
; ---------------------------------------------------------------------------

loc_1405129FE:                          ; DATA XREF: .rdata:00000001400B9404↑o
;   __except(1) // owned by 1405129E3
                mov     ebx, 1
                mov     esi, [rsp+78h+arg_10]
                mov     dil, [rsp+78h+arg_0]
                jmp     loc_140512B30
; ---------------------------------------------------------------------------

loc_140512A17:                          ; CODE XREF: sub_1405128C0+121↑j
                                        ; sub_1405128C0+194↓j ...
                add     rdx, 8

loc_140512A1B:                          ; DATA XREF: .rdata:00000001400B9414↑o
;   __try { // __except at loc_140512A6E
                mov     rax, [rdx]
                mov     [rsp+78h+var_38], rax
;   } // starts at 140512A1B

loc_140512A23:                          ; DATA XREF: .rdata:00000001400B9414↑o
                cmp     rax, 10000h
                jb      loc_140512B30
                cmp     rax, [rsp+78h+var_58]
                jnz     short loc_140512A4E
                mov     rax, rdx
                shr     rdx, 20h
                mov     ecx, r10d
                wrmsr
                mov     [rsp+78h+arg_8], ebx
                jmp     loc_140512B30
; ---------------------------------------------------------------------------

loc_140512A4E:                          ; CODE XREF: sub_1405128C0+174↑j
                test    edx, 0FFFh
                jnz     short loc_140512A17
                mov     rax, gs:188h
                mov     ecx, [rax+510h]
                test    bl, cl
                jz      short loc_140512A17
                jmp     loc_140512B30
; ---------------------------------------------------------------------------

loc_140512A6E:                          ; DATA XREF: .rdata:00000001400B9414↑o
;   __except(1) // owned by 140512A1B
                mov     esi, 2
                cmp     eax, 0C0000005h
                jz      short loc_140512A8A
                lea     ebx, [rsi-1]
                mov     dil, [rsp+78h+arg_0]
                jmp     loc_140512B30
; ---------------------------------------------------------------------------

loc_140512A8A:                          ; CODE XREF: sub_1405128C0+1B8↑j
                xor     bl, bl
                mov     rdi, [rsp+78h+var_50]
                test    dword ptr [rdi+9D4h], 100000h
                jnz     short loc_140512AD7
                mov     rdx, [rsp+78h+arg_18]
                mov     rcx, rdi
                call    sub_1405CE5DC
                mov     r14b, al
                mov     ecx, cs:dword_140CFC754
                test    cl, 1
                jnz     short loc_140512ABF
                test    al, al
                jmp     short loc_140512AD3
; ---------------------------------------------------------------------------

loc_140512ABF:                          ; CODE XREF: sub_1405128C0+1F9↑j
                mov     rdx, [rsp+78h+var_58]
                mov     rcx, rdi
                call    sub_1405CE5DC
                test    r14b, r14b
                jz      short loc_140512AD5
                test    al, al

loc_140512AD3:                          ; CODE XREF: sub_1405128C0+1FD↑j
                jnz     short loc_140512AD7

loc_140512AD5:                          ; CODE XREF: sub_1405128C0+20F↑j
                mov     bl, 1

loc_140512AD7:                          ; CODE XREF: sub_1405128C0+1DB↑j
                                        ; sub_1405128C0:loc_140512AD3↑j
                test    bl, bl
                jnz     short loc_140512AE7
                test    dword ptr [rdi+9D4h], 8000h
                jz      short loc_140512B0D

loc_140512AE7:                          ; CODE XREF: sub_1405128C0+219↑j
                mov     r8, [rsp+78h+var_58]
                mov     rcx, [rsp+78h+var_48]
                call    sub_1403F267C
                test    eax, eax
                js      short loc_140512B0D
                mov     [rsp+78h+arg_8], 1
                xor     esi, esi
                test    bl, bl
                setz    sil

loc_140512B0D:                          ; CODE XREF: sub_1405128C0+225↑j
                                        ; sub_1405128C0+238↑j
                mov     ebx, 1
                mov     dil, [rsp+78h+arg_0]
                jmp     short loc_140512B30
; ---------------------------------------------------------------------------

loc_140512B1C:                          ; DATA XREF: .rdata:00000001400B93F4↑o
                                        ; .rdata:00000001400B9424↑o
;   __except(1) // owned by 140512970
;   __except(1) // owned by 140512BB9
                mov     ebx, 1
                mov     esi, [rsp+78h+arg_10]
                mov     dil, [rsp+78h+arg_0]

loc_140512B30:                          ; CODE XREF: sub_1405128C0+74↑j
                                        ; sub_1405128C0+81↑j ...
                cmp     dil, bl
                jnb     short loc_140512B8C
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140512B84
                test    bl, al
                jz      short loc_140512B84
                mov     rax, cr8
                sub     al, 2
                cmp     al, 0Dh
                ja      short loc_140512B84
                mov     r10, gs:20h
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, dil
                add     ecx, ebx
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140512B84
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140512B84:                          ; CODE XREF: sub_1405128C0+27D↑j
                                        ; sub_1405128C0+281↑j ...
                movzx   eax, dil
                mov     cr8, rax

loc_140512B8C:                          ; CODE XREF: sub_1405128C0+273↑j
                lea     eax, [rsi-1]
                cmp     eax, ebx
                ja      short loc_140512BA7
                mov     r9, [rsp+78h+var_58]
                mov     r8, [rsp+78h+arg_18]
                mov     ecx, esi
                call    sub_1403F26A0

loc_140512BA7:                          ; CODE XREF: sub_1405128C0+2D1↑j
                mov     eax, [rsp+78h+arg_8]
                add     rsp, 58h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140512BB9:                          ; CODE XREF: sub_1405128C0+B3↑j
                                        ; DATA XREF: .rdata:00000001400B9424↑o
;   __try { // __except at loc_140512B1C
                call    ExRaiseDatatypeMisalignment
sub_1405128C0   endp

; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 140512BB9
byte_140512BBF  db 0CCh                 ; DATA XREF: .rdata:00000001400B9424↑o
; } // starts at 1405128C0
byte_140512BC0  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400F32B8↑o

; =============== S U B R O U T I N E =======================================


sub_140512BD0   proc near               ; CODE XREF: sub_14040A4C0+7D↑p
                                        ; DATA XREF: .rdata:0000000140009278↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, cs:off_140C00978
                mov     r14, rcx
                xor     ecx, ecx
                mov     rbp, rdx
                call    sub_1404079D0
                mov     rax, qword ptr cs:xmmword_140CFC4D0
                mov     ebx, 1
                shr     rax, 29h
                and     al, bl
                jz      short loc_140512C19
                call    sub_140A19740

loc_140512C19:                          ; CODE XREF: sub_140512BD0+42↑j
                lfence
                mov     rdx, rbp
                mov     rcx, r14
                call    sub_140512770
                xor     r12d, r12d
                test    al, al
                jnz     loc_140512D3D
                mov     rax, gs:20h
                lea     r13, cs:140000000h
                mov     r8, rbx
                mov     ecx, [rax+24h]
                mov     r15d, ecx
                mov     eax, ds:rva dword_140D010D0[r13+rcx*4]
                mov     ecx, eax
                mov     edx, eax
                and     ecx, 3Fh
                shr     rdx, 6
                shl     r8, cl
                prefetchw byte ptr ds:rva qword_140C126C8[r13+rdx*8]
                mov     rax, ds:rva qword_140C126C8[r13+rdx*8]

loc_140512C72:                          ; CODE XREF: sub_140512BD0+B2↓j
                mov     rcx, rax
                or      rcx, r8
                lock cmpxchg ds:rva qword_140C126C8[r13+rdx*8], rcx
                jnz     short loc_140512C72
                test    rax, r8
                jnz     loc_140512D3D
                mov     rax, cs:off_140C00978
                mov     ecx, ebx
                call    sub_1404079D0
                mov     rdi, cs:qword_140C31410
                mov     sil, r12b
                test    rdi, rdi
                jz      short loc_140512CCA

loc_140512CAA:                          ; CODE XREF: sub_140512BD0+F3↓j
                mov     rax, [rdi+8]
                mov     dl, sil
                mov     rcx, [rdi+10h]
                call    sub_1404079D0
                mov     rdi, [rdi]
                or      sil, al
                test    rdi, rdi
                jnz     short loc_140512CAA
                test    sil, sil
                jnz     short loc_140512D1B

loc_140512CCA:                          ; CODE XREF: sub_140512BD0+D8↑j
                                        ; sub_140512BD0+121↓j
                lea     rcx, qword_140D23680
                call    sub_140361758
                test    al, al
                jnz     short loc_140512CF3

loc_140512CDA:                          ; CODE XREF: sub_140512BD0+11F↓j
                mov     rdx, rbp
                mov     rcx, r14
                call    sub_140512770
                mov     rax, cs:qword_140D23680
                test    rax, rax
                jnz     short loc_140512CDA
                jmp     short loc_140512CCA
; ---------------------------------------------------------------------------

loc_140512CF3:                          ; CODE XREF: sub_140512BD0+108↑j
                xor     eax, eax
                lock cmpxchg cs:dword_140C313E0, ebx
                xor     ecx, ecx
                call    HalHandleNMI
                mov     eax, ebx
                lock cmpxchg cs:dword_140C313E0, r12d
                lea     rcx, qword_140D23680
                call    KeReleaseSpinLockFromDpcLevel

loc_140512D1B:                          ; CODE XREF: sub_140512BD0+F8↑j
                mov     edx, ds:rva dword_140D010D0[r13+r15*4]
                mov     ecx, edx
                mov     eax, edx
                and     ecx, 3Fh
                shl     rbx, cl
                not     rbx
                shr     rax, 6
                lock and ds:rva qword_140C126C8[r13+rax*8], rbx

loc_140512D3D:                          ; CODE XREF: sub_140512BD0+5C↑j
                                        ; sub_140512BD0+B7↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512BD0   endp

byte_140512D5B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F32C4↑o

; =============== S U B R O U T I N E =======================================


sub_140512D64   proc near               ; CODE XREF: sub_1403DC860+D59↑p
                                        ; DATA XREF: .pdata:00000001400F32D0↑o
                mov     rax, gs:20h
                mov     rcx, [rax+148h]
                mov     rax, rcx
                and     eax, 355h
                neg     rax
                sbb     rax, rax
                and     rax, rcx
                retn
sub_140512D64   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140512D87  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F32D0↑o
; ---------------------------------------------------------------------------

loc_140512D90:                          ; DATA XREF: .pdata:00000001400F32DC↑o
                                        ; sub_140512770+8A↑o
                xchg    ax, ax

loc_140512D92:                          ; CODE XREF: .text:loc_140512D92↓j
                jmp     short loc_140512D92
; ---------------------------------------------------------------------------
algn_140512D94:                         ; DATA XREF: .pdata:00000001400F32DC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140512DA0   proc near               ; CODE XREF: sub_1403FED90+DD↑p
                                        ; sub_1403FF150+15↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   ebx, cl
                mov     rdi, cr8
                cmp     dil, bl
                ja      short loc_140512E32
                mov     rcx, cr8
                mov     cr8, rbx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      loc_140512E91
                mov     r11d, 1
                test    r11b, al
                jz      loc_140512E91
                cmp     cl, 0Fh
                ja      loc_140512E91
                lea     eax, [rbx-2]
                cmp     al, 0Dh
                ja      loc_140512E91
                mov     rax, gs:20h
                mov     r8d, r11d
                movzx   ecx, cl
                mov     edx, r11d
                add     ecx, r11d
                shl     r8, cl
                lea     ecx, [r11+rbx]
                mov     r10, [rax+84B8h]
                sub     r8d, r11d
                not     r8d
                shl     rdx, cl
                sub     edx, r11d
                and     r8d, edx
                mov     r9d, [r10+14h]
                and     r8d, 0FFFFFFFCh
                or      r8d, r9d
                mov     [r10+14h], r8d
                jmp     short loc_140512E91
; ---------------------------------------------------------------------------

loc_140512E32:                          ; CODE XREF: sub_140512DA0+14↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140512E8D
                mov     r11d, 1
                test    r11b, al
                jz      short loc_140512E8D
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140512E8D
                cmp     bl, 0Fh
                ja      short loc_140512E8D
                cmp     al, 2
                jb      short loc_140512E8D
                mov     r10, gs:20h
                lea     ecx, [r11+rbx]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   edx, dx
                mov     r9, [r10+84B8h]
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_140512E8D
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140512E8D:                          ; CODE XREF: sub_140512DA0+9A↑j
                                        ; sub_140512DA0+A5↑j ...
                mov     cr8, rbx

loc_140512E91:                          ; CODE XREF: sub_140512DA0+26↑j
                                        ; sub_140512DA0+35↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     al, dil
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512DA0   endp

byte_140512EA0  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F32E8↑o

; =============== S U B R O U T I N E =======================================


sub_140512EA8   proc near               ; CODE XREF: sub_1408C6570+28A↓p
                                        ; sub_1408C73B4+1D6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     esi, r8d
                mov     rdi, rdx
                mov     rbx, rcx
                cmp     rcx, rdx
                ja      short loc_140512F01
                sub     rdx, rcx
                cmp     rdx, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140512F01
                cmp     cs:byte_140CFC40A, 0
                jz      short loc_140512F0A
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jz      short loc_140512F0A
                mov     eax, r8d
                test    r8d, r8d
                jz      short loc_140512EF7
                sub     eax, 1
                jz      short loc_140512EF3
                cmp     eax, 1
                jnz     short loc_140512F01

loc_140512EF3:                          ; CODE XREF: sub_140512EA8+44↑j
                xor     eax, eax
                jmp     short loc_140512F06
; ---------------------------------------------------------------------------

loc_140512EF7:                          ; CODE XREF: sub_140512EA8+3F↑j
                inc     rdx
                call    sub_1405C99AC
                jmp     short loc_140512F06
; ---------------------------------------------------------------------------

loc_140512F01:                          ; CODE XREF: sub_140512EA8+1B↑j
                                        ; sub_140512EA8+24↑j ...
                mov     eax, 0C000000Dh

loc_140512F06:                          ; CODE XREF: sub_140512EA8+4D↑j
                                        ; sub_140512EA8+57↑j
                test    eax, eax
                js      short loc_140512F18

loc_140512F0A:                          ; CODE XREF: sub_140512EA8+2D↑j
                                        ; sub_140512EA8+37↑j
                mov     r8d, esi
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1404FC224

loc_140512F18:                          ; CODE XREF: sub_140512EA8+60↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140512EA8   endp

algn_140512F29:                         ; DATA XREF: .pdata:00000001400F32F4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140512F30   proc near               ; CODE XREF: sub_14025B390+2F1↑p
                                        ; sub_1408D96C0+145↓p ...

var_A8          = byte ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_38          = qword ptr -38h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_38], rax
                mov     rbp, rdx
                mov     rbx, r8
                xor     edx, edx
                mov     rdi, rcx
                lea     rcx, [rsp+0C8h+var_A8]
                mov     rsi, r9
                lea     r8d, [rdx+68h]
                call    memset
                mov     rax, [rsp+0C8h+arg_20]
                lea     r9, [rsp+0C8h+var_A8]
                movups  xmm0, xmmword ptr [rsi]
                mov     [rsp+0C8h+var_70], rax
                mov     edx, 0F4h
                mov     al, [rsp+0C8h+arg_28]
                xor     r8d, r8d
                movups  xmm1, xmmword ptr [rbp+0]
                and     al, 1
                mov     [rsp+0C8h+var_A0], rbx
                mov     cl, 2
                mov     [rsp+0C8h+var_68], al
                movdqu  [rsp+0C8h+var_98], xmm0
                mov     [rsp+0C8h+var_88], rdi
                movdqu  [rsp+0C8h+var_80], xmm1
                call    sub_14034DB1C
                mov     rcx, [rsp+0C8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140512F30
sub_140512F30   endp

algn_140512FD2:                         ; DATA XREF: .pdata:00000001400F3300↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140512FD8   proc near               ; CODE XREF: sub_140228E90+39B↑p
                                        ; sub_14025B390+3C4↑p ...

var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_20          = qword ptr -20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                lea     rbp, [rsp-47h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                mov     ebx, r8d
                mov     rsi, rdx
                mov     rdi, rcx
                bt      r8d, 8
                jnb     short loc_140513020
                xor     edx, edx
                lea     rcx, [rbp+57h+var_90]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 0F5h
                jmp     short loc_14051307E
; ---------------------------------------------------------------------------

loc_140513020:                          ; CODE XREF: sub_140512FD8+30↑j
                bt      ebx, 0Ah
                jnb     short loc_14051303C
                xor     edx, edx
                lea     rcx, [rbp+57h+var_90]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 0F6h
                jmp     short loc_14051307E
; ---------------------------------------------------------------------------

loc_14051303C:                          ; CODE XREF: sub_140512FD8+4C↑j
                test    bl, 6
                jz      short loc_14051306A
                xor     eax, eax
                test    bl, 2
                jz      short loc_140513058
                and     r8d, 800h
                call    sub_1404FCF28
                test    eax, eax
                js      short loc_140513098

loc_140513058:                          ; CODE XREF: sub_140512FD8+6E↑j
                test    bl, 4
                jz      short loc_140513098
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1404FCFC4
                jmp     short loc_140513098
; ---------------------------------------------------------------------------

loc_14051306A:                          ; CODE XREF: sub_140512FD8+67↑j
                xor     edx, edx
                lea     rcx, [rbp+57h+var_90]
                lea     r8d, [rdx+68h]
                call    memset
                mov     edx, 0F3h

loc_14051307E:                          ; CODE XREF: sub_140512FD8+46↑j
                                        ; sub_140512FD8+62↑j
                movups  xmm0, xmmword ptr [rsi]
                lea     r9, [rbp+57h+var_90]
                mov     [rbp+57h+var_88], rdi
                xor     r8d, r8d
                mov     cl, 2
                movdqu  [rbp+57h+var_80], xmm0
                call    sub_14034DB1C

loc_140513098:                          ; CODE XREF: sub_140512FD8+7E↑j
                                        ; sub_140512FD8+83↑j ...
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B0h+arg_18]
                add     rsp, 0A0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140512FD8
sub_140512FD8   endp

algn_1405130B8:                         ; DATA XREF: .pdata:00000001400F330C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405130C0   proc near               ; CODE XREF: sub_14090DC70+A9↓p
                                        ; DATA XREF: .pdata:00000001400F3318↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rcx
                mov     rbx, cr8
                mov     r14d, 2
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140513126
                test    al, 1
                jz      short loc_140513126
                cmp     bl, 0Fh
                ja      short loc_140513126
                mov     rax, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140513126:                          ; CODE XREF: sub_1405130C0+32↑j
                                        ; sub_1405130C0+36↑j ...
                xor     edx, edx
                mov     rcx, rsi
                call    KeAlertThread
                mov     rcx, rsi
                call    sub_140343A44
                mov     ecx, cs:dword_140CFC660
                mov     esi, eax
                test    ecx, ecx
                jz      short loc_14051318D
                test    cl, 1
                jz      short loc_14051318D
                mov     rcx, cr8
                cmp     cl, 0Fh
                ja      short loc_14051318D
                cmp     bl, 0Fh
                ja      short loc_14051318D
                cmp     cl, r14b
                jb      short loc_14051318D
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rdi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, di
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14051318D
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14051318D:                          ; CODE XREF: sub_1405130C0+82↑j
                                        ; sub_1405130C0+87↑j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405130C0   endp

byte_1405131AD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400F3318↑o

; =============== S U B R O U T I N E =======================================


sub_1405131B4   proc near               ; CODE XREF: sub_140216560+C0F↑p
                                        ; KeSetEvent+2FF↑p ...
                mov     al, [rcx+184h]
                cmp     al, 2
                jnz     short loc_1405131D4
                mov     ecx, [rcx+218h]
                mov     eax, gs:1A4h
                cmp     ecx, eax
                jnz     short loc_1405131D4
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405131D4:                          ; CODE XREF: sub_1405131B4+8↑j
                                        ; sub_1405131B4+1A↑j
                xor     al, al
                retn
sub_1405131B4   endp

; ---------------------------------------------------------------------------
                align 8
algn_1405131D8:                         ; DATA XREF: .pdata:00000001400F3324↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405131E0   proc near               ; CODE XREF: NtQueryInformationThread+1E35D1↓p
                                        ; DATA XREF: .pdata:00000001400F3330↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r13
                push    r14
                sub     rsp, 20h
                xor     eax, eax
                mov     r14, rdx
                mov     [rdx+0Ah], eax
                mov     rsi, rcx
                mov     [rdx+0Eh], ax
                mov     rdi, cr8
                lea     r13d, [rax+2]
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140513255
                test    al, 1
                jz      short loc_140513255
                cmp     dil, 0Fh
                ja      short loc_140513255
                mov     rax, gs:20h
                mov     rdx, rbp
                movzx   ecx, dil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140513255:                          ; CODE XREF: sub_1405131E0+3F↑j
                                        ; sub_1405131E0+43↑j ...
                mov     rbx, gs:20h
                and     [rsp+38h+arg_0], 0

loc_140513263:                          ; CODE XREF: sub_1405131E0+E9↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_140513288
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_140513288
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_140513288
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_140513288:                          ; CODE XREF: sub_1405131E0+8D↑j
                                        ; sub_1405131E0+93↑j ...
                lock bts qword ptr [rsi+40h], 0
                jnb     short loc_1405132CB
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_1405132B6
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_1405132B6
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_1405132B6
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_1405132B6:                          ; CODE XREF: sub_1405131E0+BB↑j
                                        ; sub_1405131E0+C1↑j ...
                lea     rcx, [rsp+38h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rsi+40h]
                test    rax, rax
                jnz     short loc_1405132B6
                jmp     short loc_140513263
; ---------------------------------------------------------------------------

loc_1405132CB:                          ; CODE XREF: sub_1405131E0+AF↑j
                movzx   eax, word ptr [rsi+248h]
                mov     rcx, rsi
                mov     [r14+8], ax
                mov     rax, [rsi+240h]
                mov     [r14], rax
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14051333C
                test    al, 1
                jz      short loc_14051333C
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14051333C
                cmp     dil, 0Fh
                ja      short loc_14051333C
                cmp     al, r13b
                jb      short loc_14051333C
                mov     r9, gs:20h
                movzx   ecx, dil
                inc     ecx
                shl     rbp, cl
                mov     r8, [r9+84B8h]
                movzx   eax, bp
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14051333C
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14051333C:                          ; CODE XREF: sub_1405131E0+111↑j
                                        ; sub_1405131E0+115↑j ...
                movzx   eax, dil
                mov     cr8, rax
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     r13
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405131E0   endp

byte_14051335E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400F3330↑o
; Exported entry 1243. KeQueryHeteroCpuPolicyThread

; =============== S U B R O U T I N E =======================================


