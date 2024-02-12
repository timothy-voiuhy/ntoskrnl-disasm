RtlAreBitsSet   proc near               ; CODE XREF: sub_14075BEC8+EC↓p
                                        ; DATA XREF: .pdata:00000001400D731C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     eax, [rcx]
                mov     r9d, edx
                cmp     edx, eax
                jnb     loc_14034130E
                cmp     r8d, 1
                jbe     short loc_1403412DD
                sub     eax, r9d
                cmp     eax, r8d
                jb      short loc_14034130E
                mov     rcx, [rcx+8]
                lea     ebx, [r8-1]
                add     ebx, r9d
                mov     eax, r9d
                shr     rax, 5
                lea     rdx, [rcx+rax*4]
                mov     eax, ebx
                mov     r10d, [rdx]
                shr     rax, 5
                lea     r11, [rcx+rax*4]
                cmp     rdx, r11
                jnz     short loc_1403412EC
                mov     ecx, 20h ; ' '
                sub     ecx, r8d
                or      r8d, 0FFFFFFFFh
                shr     r8d, cl
                mov     ecx, r9d
                shl     r8d, cl
                and     r10d, r8d
                cmp     r10d, r8d

loc_1403412D3:                          ; CODE XREF: RtlAreBitsSet+B1↓j
                setz    al

loc_1403412D6:                          ; CODE XREF: RtlAreBitsSet+7A↓j
                                        ; RtlAreBitsSet+A0↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403412DD:                          ; CODE XREF: RtlAreBitsSet+16↑j
                jnz     short loc_14034130E
                mov     rax, [rcx+8]
                bt      [rax], r9d
                setb    al
                jmp     short loc_1403412D6
; ---------------------------------------------------------------------------

loc_1403412EC:                          ; CODE XREF: RtlAreBitsSet+46↑j
                or      r8d, 0FFFFFFFFh
                mov     ecx, r9d
                mov     eax, r8d
                shl     eax, cl
                and     r10d, eax
                cmp     r10d, eax
                jnz     short loc_14034130E

loc_140341300:                          ; CODE XREF: RtlAreBitsSet+9C↓j
                add     rdx, 4
                cmp     rdx, r11
                jz      short loc_140341312
                cmp     [rdx], r8d
                jz      short loc_140341300

loc_14034130E:                          ; CODE XREF: RtlAreBitsSet+C↑j
                                        ; RtlAreBitsSet+1E↑j ...
                xor     al, al
                jmp     short loc_1403412D6
; ---------------------------------------------------------------------------

loc_140341312:                          ; CODE XREF: RtlAreBitsSet+97↑j
                mov     eax, [rdx]
                not     ebx
                mov     cl, bl
                shr     r8d, cl
                and     eax, r8d
                cmp     eax, r8d
                jmp     short loc_1403412D3
RtlAreBitsSet   endp

; ---------------------------------------------------------------------------
byte_140341323  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D731C↑o

; =============== S U B R O U T I N E =======================================


sub_14034132C   proc near               ; CODE XREF: sub_14023D8E0+1B2↑p
                                        ; sub_140613E40+80↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047D5B6 SIZE 0000003D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140C19184
                mov     rbx, rcx
                test    eax, eax
                jnz     loc_14047D5B6

loc_14034134C:                          ; CODE XREF: sub_14034132C+13C29F↓j
                movzx   edi, byte ptr [rbx-0Dh]
                test    dil, 8
                jz      short loc_140341399
                lea     rcx, [rbx-10h]
                call    sub_1403413E8
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140341399
                movzx   ecx, word ptr [rbx-0Eh]
                movzx   r8d, cl
                test    dil, 4
                jnz     loc_14047D5D0

loc_140341379:                          ; CODE XREF: sub_14034132C+13C2C2↓j
                and     byte ptr [rbx-0Dh], 0F7h
                and     edi, 1
                mov     edx, edi
                shl     r8, 4
                mov     rcx, rsi
                call    PsReturnPoolQuota
                mov     edx, [rbx-0Ch]
                mov     rcx, rsi
                call    ObDereferenceObjectDeferDeleteWithTag

loc_140341399:                          ; CODE XREF: sub_14034132C+28↑j
                                        ; sub_14034132C+39↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14034132C   endp

algn_1403413AA:                         ; DATA XREF: .rdata:0000000140080674↑o
                                        ; .pdata:00000001400D7328↑o
                align 10h
; Exported entry 1931. PsReturnPoolQuota

; =============== S U B R O U T I N E =======================================


                public PsReturnPoolQuota
PsReturnPoolQuota proc near             ; CODE XREF: sub_14034132C+5D↑p
                                        ; DATA XREF: .pdata:00000001400D7334↑o
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     eax, edx
                mov     rdx, rcx
                mov     r9, r8
                jz      short loc_1403413DB
                mov     rcx, [rcx+568h]
                xor     r8d, r8d
                cmp     eax, 1
                setz    r8b
                call    sub_14023BF10

loc_1403413DB:                          ; CODE XREF: PsReturnPoolQuota+13↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReturnPoolQuota endp

algn_1403413E1:                         ; DATA XREF: .pdata:00000001400D7334↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403413E8   proc near               ; CODE XREF: sub_14034132C+2E↑p
                                        ; ExQueryPoolBlockSize+E6EAF↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014047D5F4 SIZE 0000001D BYTES

                sub     rsp, 38h
                test    byte ptr [rcx+3], 8
                mov     r8, rcx
                jz      short loc_14034142D
                mov     rcx, [rcx+8]
                xor     rcx, cs:qword_140CFC9E8
                xor     rcx, r8
                jz      short loc_140341424
                mov     rax, 0FFFF800000000000h
                cmp     rcx, rax
                jb      loc_14047D5F4
                mov     al, [rcx]
                and     al, 7Fh
                cmp     al, 3
                jnz     loc_14047D5F4

loc_140341424:                          ; CODE XREF: sub_1403413E8+1B↑j
                mov     rax, rcx

loc_140341427:                          ; CODE XREF: sub_1403413E8+47↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034142D:                          ; CODE XREF: sub_1403413E8+B↑j
                xor     eax, eax
                jmp     short loc_140341427
sub_1403413E8   endp

; ---------------------------------------------------------------------------
algn_140341431:                         ; DATA XREF: .rdata:0000000140080690↑o
                                        ; .pdata:00000001400D7340↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140341438   proc near               ; CODE XREF: sub_14028A280+59F↑p
                                        ; sub_1402973D0+321↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047D612 SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rcx, xmmword_140C4E830
                call    ExpInterlockedPopEntrySList
                mov     rdi, rax
                test    rax, rax
                jz      loc_140341554
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, word ptr [rcx+72Eh]
                mov     rbx, [rax+rcx*8]
                mov     rax, 0FFFFFA8000000000h
                mov     rcx, rdi
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                mov     r8, rdx
                mov     edx, 4
                sar     r8, 3
                mov     rax, r8
                shr     rax, 3Fh
                add     r8, rax
                mov     rcx, r8
                call    sub_1402810E0
                mov     [rdi+10h], rax
                mov     rcx, 0FFFFFFFFFh
                mov     rax, [rdi+28h]
                xor     rax, r8
                and     rax, rcx
                mov     rcx, rdi
                xor     [rdi+28h], rax
                call    sub_1402DAA00
                mov     cl, [rdi+23h]
                mov     edx, 4
                or      cl, 8
                movzx   esi, al
                mov     [rdi+23h], cl
                mov     rax, 1FF8000000000h
                movzx   ecx, word ptr [rbx]
                shl     rcx, 27h
                xor     rcx, [rdi+28h]
                and     rcx, rax
                mov     al, [rdi+23h]
                xor     [rdi+28h], rcx
                and     al, 0FDh
                or      al, 5
                mov     rcx, rdi
                mov     [rdi+23h], al
                call    sub_140279270
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047D612

loc_14034153C:                          ; CODE XREF: sub_140341438+13C1DC↓j
                                        ; sub_140341438+13C1E8↓j ...
                mov     cr8, rsi
                mov     rax, rdi

loc_140341543:                          ; CODE XREF: sub_140341438:loc_140341554↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140341554:                          ; CODE XREF: sub_140341438+21↑j
                jmp     short loc_140341543
sub_140341438   endp

; ---------------------------------------------------------------------------
byte_140341556  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400806B4↑o
                                        ; .pdata:00000001400D734C↑o

; =============== S U B R O U T I N E =======================================


sub_14034155C   proc near               ; CODE XREF: PoRegisterSystemState+A0↓p
                                        ; sub_1406F7ED0+FE↓p
                                        ; DATA XREF: ...
                xor     eax, eax
                mov     r11, rcx
                mov     r10d, 80000000h
                test    rcx, rcx
                jz      short loc_14034159F
                cmp     [rcx+20h], eax
                mov     r9d, 80000002h
                cmovbe  r9d, r10d
                mov     ecx, r9d
                or      ecx, 1
                cmp     [r11+24h], eax
                cmovz   ecx, r9d
                mov     r10d, ecx
                or      r10d, 40h
                cmp     [r11+28h], eax
                cmovz   r10d, ecx
                mov     eax, r10d
                xor     eax, edx
                btr     eax, 1Fh

loc_14034159F:                          ; CODE XREF: sub_14034155C+E↑j
                test    r8, r8
                jz      short locret_1403415A7
                mov     [r8], r10d

locret_1403415A7:                       ; CODE XREF: sub_14034155C+46↑j
                retn
sub_14034155C   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403415A9:                         ; DATA XREF: .pdata:00000001400D7358↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403415B0   proc near               ; CODE XREF: PoRegisterSystemState+AB↓p
                                        ; sub_1406F7ED0+122↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047D676 SIZE 00000024 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     esi, r8d
                mov     edx, 1
                mov     rbx, rcx
                test    dl, r8b
                jz      short loc_1403415DB
                test    dl, dil
                jz      short loc_1403415FC
                call    PoSetPowerRequest

loc_1403415DB:                          ; CODE XREF: sub_1403415B0+1F↑j
                                        ; sub_1403415B0+51↓j
                test    sil, 2
                jnz     short loc_140341603

loc_1403415E1:                          ; CODE XREF: sub_1403415B0+63↓j
                                        ; sub_1403415B0+6A↓j
                test    sil, 40h
                jnz     loc_14047D676

loc_1403415EB:                          ; CODE XREF: sub_1403415B0+13C0DA↓j
                                        ; sub_1403415B0+13C0E5↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403415FC:                          ; CODE XREF: sub_1403415B0+24↑j
                call    PoClearPowerRequest
                jmp     short loc_1403415DB
; ---------------------------------------------------------------------------

loc_140341603:                          ; CODE XREF: sub_1403415B0+2F↑j
                xor     edx, edx
                mov     rcx, rbx
                test    dil, 2
                jz      short loc_140341615
                call    PoSetPowerRequest
                jmp     short loc_1403415E1
; ---------------------------------------------------------------------------

loc_140341615:                          ; CODE XREF: sub_1403415B0+5C↑j
                call    PoClearPowerRequest
                jmp     short loc_1403415E1
sub_1403415B0   endp

; ---------------------------------------------------------------------------
byte_14034161C  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140080728↑o
                                        ; .pdata:00000001400D7364↑o

; =============== S U B R O U T I N E =======================================


sub_140341624   proc near               ; CODE XREF: sub_1406F7ED0+1AD↓p
                                        ; sub_1406F8274+73↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047D69A SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     edi, ecx
                mov     [rsp+28h+arg_8], rbx
                cmp     ecx, 0FFFFFFFFh
                jz      short loc_14034169A
                lea     rdx, [rsp+28h+arg_8]
                call    sub_1406C84C4
                test    eax, eax
                js      short loc_14034169A
                mov     rdx, [rsp+28h+arg_8]
                lea     rax, unk_140D24540
                test    rdx, rdx
                jnz     short loc_140341691

loc_14034165B:                          ; CODE XREF: sub_140341624+74↓j
                mov     rax, [rax+468h]
                cmp     edi, [rax]
                jz      short loc_140341676

loc_140341666:                          ; CODE XREF: sub_140341624+6B↓j
                mov     bl, 1

loc_140341668:                          ; CODE XREF: sub_140341624+69↓j
                mov     al, bl

loc_14034166A:                          ; CODE XREF: sub_140341624+78↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140341676:                          ; CODE XREF: sub_140341624+40↑j
                test    rdx, rdx
                jnz     loc_14047D69A
                mov     rax, 0FFFFF780000002D8h
                mov     eax, [rax]

loc_14034168B:                          ; CODE XREF: sub_140341624+13C087↓j
                cmp     edi, eax
                jnz     short loc_140341668
                jmp     short loc_140341666
; ---------------------------------------------------------------------------

loc_140341691:                          ; CODE XREF: sub_140341624+35↑j
                mov     rax, [rdx+4F8h]
                jmp     short loc_14034165B
; ---------------------------------------------------------------------------

loc_14034169A:                          ; CODE XREF: sub_140341624+16↑j
                                        ; sub_140341624+24↑j
                xor     al, al
                jmp     short loc_14034166A
sub_140341624   endp

; ---------------------------------------------------------------------------
byte_14034169E  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400807B0↑o
                                        ; .pdata:00000001400D7370↑o

; =============== S U B R O U T I N E =======================================


sub_1403416A4   proc near               ; CODE XREF: sub_1402BF650+244↑p
                                        ; sub_140379160+11B2D5↓p ...

var_38          = dword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 50h
                mov     r14, r8
                mov     dil, dl
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+58h+var_30], xmm0
                movups  [rsp+58h+var_20], xmm0
                mov     [r11-10h], rax
                mov     rsi, [rsp+58h+arg_28]
                and     [rsi], rax
                test    rcx, rcx
                jz      loc_1403417AF
                test    dl, dl
                jz      loc_1403417AF

loc_1403416EE:                          ; DATA XREF: .rdata:00000001400807DC↑o
;   __try { // __except at loc_140341760
                test    r9b, r9b
                jnz     short loc_140341745
                test    cl, 3
                jnz     short loc_140341733
                lea     rax, [rcx+28h]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_140341738
                cmp     rax, rcx
                jb      short loc_140341738

loc_140341710:                          ; CODE XREF: sub_1403416A4+9F↓j
                movups  xmm0, xmmword ptr [rcx]
                movups  [rsp+58h+var_30], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  [rsp+58h+var_20], xmm1
                movsd   xmm0, qword ptr [rcx+20h]
                movsd   [rsp+58h+var_10], xmm0
                lea     rcx, [rsp+58h+var_30]
                jmp     short loc_140341745
; ---------------------------------------------------------------------------

loc_140341733:                          ; CODE XREF: sub_1403416A4+52↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140341738:                          ; CODE XREF: sub_1403416A4+65↑j
                                        ; sub_1403416A4+6A↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140341710
; ---------------------------------------------------------------------------

loc_140341745:                          ; CODE XREF: sub_1403416A4+4D↑j
                                        ; sub_1403416A4+8D↑j
                mov     r9, rsi
                mov     r8, [rsp+58h+arg_20]
                mov     dl, dil
                call    sub_1403418DC
                mov     ebx, eax
                mov     [rsp+58h+var_38], eax
                jmp     short loc_140341784
;   } // starts at 1403416EE
; ---------------------------------------------------------------------------

loc_140341760:                          ; DATA XREF: .rdata:00000001400807DC↑o
;   __except(1) // owned by 1403416EE
                mov     edi, eax
                mov     rbx, [rsp+58h+arg_28]
                mov     rcx, [rbx]
                test    rcx, rcx
                jz      short loc_140341780
                mov     edx, 78435250h
                call    ExFreePoolWithTag
                and     qword ptr [rbx], 0

loc_140341780:                          ; CODE XREF: sub_1403416A4+CC↑j
                mov     eax, edi
                jmp     short loc_140341798
; ---------------------------------------------------------------------------

loc_140341784:                          ; CODE XREF: sub_1403416A4+BA↑j
                                        ; sub_1403416A4+11D↓j
                test    ebx, ebx
                js      short loc_140341796
                mov     r8, [rsi]
                mov     rdx, r14
                mov     cl, dil
                call    sub_1403417CC

loc_140341796:                          ; CODE XREF: sub_1403416A4+E2↑j
                mov     eax, ebx

loc_140341798:                          ; CODE XREF: sub_1403416A4+DE↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403417AF:                          ; CODE XREF: sub_1403416A4+3C↑j
                                        ; sub_1403416A4+44↑j
                mov     r9, rsi
                mov     r8, [rsp+58h+arg_20]
                call    sub_1403418DC
                mov     ebx, eax
                jmp     short loc_140341784
; } // starts at 1403416A4
sub_1403416A4   endp

; ---------------------------------------------------------------------------
byte_1403417C3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D737C↑o

; =============== S U B R O U T I N E =======================================


sub_1403417CC   proc near               ; CODE XREF: sub_1403416A4+ED↑p
                                        ; DATA XREF: .rdata:0000000140080814↑o ...

arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047D6B0 SIZE 00000007 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8
                sub     rsp, 28h
                mov     rax, rdx
                test    cl, cl
                jz      loc_1403418B8
                and     [rsp+28h+arg_18], 0
                mov     rdx, gs:188h
                test    dword ptr [rdx+74h], 400h
                jnz     loc_14047D6B0
                cmp     byte ptr [rdx+24Ah], 1
                jz      loc_14047D6B0
                mov     rdx, [rdx+0F0h]

loc_140341810:                          ; CODE XREF: sub_1403417CC+13BEE6↓j
                test    rdx, rdx
                jz      short loc_140341884

loc_140341815:                          ; DATA XREF: .rdata:0000000140080800↑o
;   __try { // __except at loc_140341879
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                cmp     qword ptr [rax+580h], 0
                jnz     short loc_140341838

loc_14034182F:                          ; CODE XREF: sub_1403417CC+86↓j
                                        ; sub_1403417CC+9E↓j
                mov     rax, [rdx+1720h]
                jmp     short loc_140341872
; ---------------------------------------------------------------------------

loc_140341838:                          ; CODE XREF: sub_1403417CC+61↑j
                mov     rax, gs:188h
                mov     rax, [rax+0B8h]
                mov     rcx, [rax+580h]
                test    rcx, rcx
                jz      short loc_14034182F
                movzx   eax, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_14034186C
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_14034182F

loc_14034186C:                          ; CODE XREF: sub_1403417CC+94↑j
                mov     eax, [rdx+2F60h]

loc_140341872:                          ; CODE XREF: sub_1403417CC+6A↑j
                mov     [rsp+28h+arg_18], rax
                jmp     short loc_140341884
;   } // starts at 140341815
; ---------------------------------------------------------------------------

loc_140341879:                          ; DATA XREF: .rdata:0000000140080800↑o
;   __except(1) // owned by 140341815
                and     [rsp+28h+arg_18], 0
                mov     r8, [rsp+28h+arg_10]

loc_140341884:                          ; CODE XREF: sub_1403417CC+47↑j
                                        ; sub_1403417CC+AB↑j
                mov     rax, [rsp+28h+arg_18]
                neg     rax
                sbb     ecx, ecx
                neg     ecx
                inc     ecx
                mov     [r8], ecx
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     [r8+8], rcx
                mov     rax, [rsp+28h+arg_18]
                mov     [r8+10h], eax

loc_1403418B2:                          ; CODE XREF: sub_1403417CC+F7↓j
                                        ; sub_1403417CC+106↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403418B8:                          ; CODE XREF: sub_1403417CC+E↑j
                and     dword ptr [r8], 0
                mov     [r8+8], rax
                test    rax, rax
                jz      short loc_1403418B2
                mov     edx, 67446F50h
                mov     rcx, rax
                call    ObfReferenceObjectWithTag
                jmp     short loc_1403418B2
; } // starts at 1403417CC
sub_1403417CC   endp

; ---------------------------------------------------------------------------
byte_1403418D4  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140080814↑o
                                        ; .pdata:00000001400D7388↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403418DC   proc near               ; CODE XREF: sub_1403416A4+AF↑p
                                        ; sub_1403416A4+116↑p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  48h
arg_8           = byte ptr  50h
arg_10          = qword ptr  58h
arg_18          = qword ptr  60h

; FUNCTION CHUNK AT 000000014047D6B8 SIZE 00000096 BYTES

                mov     [rsp-40h+arg_18], r9
                mov     [rsp-40h+arg_10], r8
                mov     [rsp-40h+arg_8], dl
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
                xor     r10d, r10d
                mov     r14, r9
                mov     [rbp+arg_0], r10
                xorps   xmm0, xmm0
                mov     r9b, dl
                mov     rdi, rcx
                movups  [rbp+var_18], xmm0
                mov     [r14], r10
                lea     ebx, [r10+20h]
                test    r8, r8
                jnz     loc_140341B2A

loc_140341924:                          ; CODE XREF: sub_1403418DC+251↓j
                mov     r12d, r10d
                mov     r13, r10
                mov     rdx, 7FFFFFFF0000h
                mov     r11d, 1
                test    rdi, rdi
                jz      loc_140341ABF
                cmp     [rcx], r10d
                ja      loc_140341B3B
                mov     r15d, [rcx+4]
                test    r11b, r15b
                jnz     loc_140341A7D
                test    r15b, 2
                jz      loc_140341B32
                movzx   ebx, word ptr [rcx+8]
                add     rbx, 2
                test    r11b, bl
                jnz     loc_140341B3B
                mov     r12d, [rcx+1Ch]
                add     rbx, 40h ; '@'
                mov     eax, r12d
                mov     ecx, 0FFFFFFFFh
                shl     rax, 4
                cmp     rax, rcx
                ja      loc_140341B3B
                mov     r13, [rdi+20h]
                test    r9b, r9b
                jz      short loc_1403419A2
                test    eax, eax
                jnz     loc_14047D6B8

loc_1403419A2:                          ; CODE XREF: sub_1403418DC+BC↑j
                                        ; sub_1403418DC+13BDF5↓j ...
                mov     edx, r10d
                test    r12d, r12d
                jnz     loc_140341ACA

loc_1403419AE:                          ; CODE XREF: sub_1403418DC+1B6↓j
                                        ; sub_1403418DC+1E9↓j ...
                mov     r8d, 78435250h
                mov     rdx, rbx
                test    r9b, r9b
                jz      loc_140341AAB
                mov     ecx, 9
                call    ExAllocatePoolWithQuotaTag

loc_1403419CA:                          ; CODE XREF: sub_1403418DC+1D7↓j
                mov     rsi, rax
                test    rax, rax
                jz      loc_14047D6E7
                mov     [r14], rax
                test    r15d, r15d
                js      loc_140341AB8
                lea     r14, [rax+27h]
                and     r14, 0FFFFFFFFFFFFFFF8h
                lea     rcx, [rdi+8]
                sub     rax, r14
                lea     rdx, [rbp+arg_0]
                add     rax, rbx
                mov     [rsi+18h], rax
                lea     rax, [r14+20h]
                mov     [r14], r15d
                mov     [rbp+arg_0], rax
                lea     rax, [rsi+rbx]
                mov     [rbp+var_38], rax
                mov     r8, rax
                mov     qword ptr [r14+8], 20h ; ' '
                and     r15d, 1
                jnz     short loc_140341A97
                mov     r15b, [rbp+arg_8]
                mov     r9b, r15b
                call    sub_140341B4C
                mov     ebx, eax
                test    eax, eax
                js      loc_14047D734
                movzx   eax, word ptr [rdi+18h]
                mov     [r14+10h], ax
                mov     rax, [rbp+arg_0]
                sub     rax, r14
                mov     [r14+14h], r12d
                mov     [r14+18h], rax
                xor     r14d, r14d
                test    r12d, r12d
                jnz     loc_140341AF0

loc_140341A5A:                          ; CODE XREF: sub_1403418DC+1C8↓j
                                        ; sub_1403418DC+249↓j
                mov     rcx, [rbp+arg_10]
                test    rcx, rcx
                jnz     loc_14047D725

loc_140341A67:                          ; CODE XREF: sub_1403418DC+1E1↓j
                                        ; sub_1403418DC+13BE53↓j
                xor     ebx, ebx

loc_140341A69:                          ; CODE XREF: sub_1403418DC+13BE6D↓j
                mov     eax, ebx

loc_140341A6B:                          ; CODE XREF: sub_1403418DC+264↓j
                                        ; sub_1403418DC+13BE10↓j
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

loc_140341A7D:                          ; CODE XREF: sub_1403418DC+77↑j
                movzx   ebx, word ptr [rcx+8]
                add     rbx, 2
                test    r11b, bl
                jnz     loc_140341B3B
                add     rbx, 40h ; '@'
                jmp     loc_1403419AE
; ---------------------------------------------------------------------------

loc_140341A97:                          ; CODE XREF: sub_1403418DC+142↑j
                mov     r9b, [rbp+arg_8]
                call    sub_140341B4C
                mov     ebx, eax
                test    eax, eax
                jns     short loc_140341A5A
                jmp     loc_14047D734
; ---------------------------------------------------------------------------

loc_140341AAB:                          ; CODE XREF: sub_1403418DC+DE↑j
                mov     ecx, r11d
                call    ExAllocatePoolWithTag
                jmp     loc_1403419CA
; ---------------------------------------------------------------------------

loc_140341AB8:                          ; CODE XREF: sub_1403418DC+100↑j
                and     qword ptr [rsi+18h], 0
                jmp     short loc_140341A67
; ---------------------------------------------------------------------------

loc_140341ABF:                          ; CODE XREF: sub_1403418DC+61↑j
                mov     r15d, 80000000h
                jmp     loc_1403419AE
; ---------------------------------------------------------------------------

loc_140341ACA:                          ; CODE XREF: sub_1403418DC+CC↑j
                mov     rcx, r13

loc_140341ACD:                          ; CODE XREF: sub_1403418DC+20D↓j
                movzx   eax, word ptr [rcx]
                lea     r8, [rbx+2]
                add     r8, rax
                cmp     r8, rbx
                jb      short loc_140341B3B
                add     edx, r11d
                add     rcx, 10h
                mov     rbx, r8
                cmp     edx, r12d
                jb      short loc_140341ACD
                jmp     loc_1403419AE
; ---------------------------------------------------------------------------

loc_140341AF0:                          ; CODE XREF: sub_1403418DC+178↑j
                                        ; sub_1403418DC+247↓j
                mov     ecx, r14d
                shl     rcx, 4
                add     rcx, r13
                test    r15b, r15b
                jnz     loc_14047D6F1

loc_140341B03:                          ; CODE XREF: sub_1403418DC+13BE44↓j
                mov     r8, [rbp+var_38]
                lea     rdx, [rbp+arg_0]
                mov     r9b, r15b
                call    sub_140341B4C
                mov     ebx, eax
                test    eax, eax
                js      loc_14047D734
                inc     r14d
                cmp     r14d, r12d
                jb      short loc_140341AF0
                jmp     loc_140341A5A
; ---------------------------------------------------------------------------

loc_140341B2A:                          ; CODE XREF: sub_1403418DC+42↑j
                mov     [r8], r10b
                jmp     loc_140341924
; ---------------------------------------------------------------------------

loc_140341B32:                          ; CODE XREF: sub_1403418DC+81↑j
                test    r15d, r15d
                js      loc_1403419AE

loc_140341B3B:                          ; CODE XREF: sub_1403418DC+6A↑j
                                        ; sub_1403418DC+92↑j ...
                mov     eax, 0C000000Dh
                jmp     loc_140341A6B
sub_1403418DC   endp

; ---------------------------------------------------------------------------
byte_140341B45  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140080840↑o
                                        ; .pdata:00000001400D7394↑o

; =============== S U B R O U T I N E =======================================


sub_140341B4C   proc near               ; CODE XREF: sub_1403418DC+14B↑p
                                        ; sub_1403418DC+1BF↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, [rdx]
                mov     rbx, rcx
                movzx   ecx, word ptr [rcx]
                mov     rdi, rdx
                sub     r8, rsi
                lea     rdx, [rcx+2]
                cmp     rdx, r8
                ja      loc_140341C01
                xor     ebp, ebp
                test    r9b, r9b
                jz      short loc_140341BA7
                test    cx, cx
                jz      short loc_140341BA7
                mov     rax, [rbx+8]
                test    al, 1
                jnz     short loc_140341BEE
                add     rcx, rax
                mov     r8, 7FFFFFFF0000h
                cmp     rcx, r8
                ja      short loc_140341BF4
                cmp     rcx, rax
                jb      short loc_140341BF4

loc_140341BA7:                          ; CODE XREF: sub_140341B4C+35↑j
                                        ; sub_140341B4C+3A↑j ...
                mov     r8, rbx
                mov     rcx, rsi
                call    sub_140341C10
                test    eax, eax
                js      short loc_140341C01
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140341BBA:                          ; CODE XREF: sub_140341B4C+75↓j
                inc     rax
                cmp     [rsi+rax*2], bp
                jnz     short loc_140341BBA
                lea     rcx, [rax+rax]
                movzx   eax, word ptr [rbx]
                cmp     rax, rcx
                jnz     short loc_140341C01
                lea     rax, [rcx+2]
                add     [rdi], rax
                xor     eax, eax

loc_140341BD8:                          ; CODE XREF: sub_140341B4C+BA↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140341BEE:                          ; CODE XREF: sub_140341B4C+42↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4

loc_140341BF4:                          ; CODE XREF: sub_140341B4C+54↑j
                                        ; sub_140341B4C+59↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140341BA7
; ---------------------------------------------------------------------------

loc_140341C01:                          ; CODE XREF: sub_140341B4C+2A↑j
                                        ; sub_140341B4C+68↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_140341BD8
sub_140341B4C   endp

; ---------------------------------------------------------------------------
algn_140341C08:                         ; DATA XREF: .pdata:00000001400D73A0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140341C10   proc near               ; CODE XREF: sub_1402B1E40+1A0↑p
                                        ; sub_1402B1E40+25A↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047D74E SIZE 0000002E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                xor     ebp, ebp
                mov     r9, rdx
                shr     r9, 1
                mov     rbx, r8
                mov     rdi, rdx
                mov     eax, ebp
                cmp     rdx, 2
                jb      loc_14047D74E
                cmp     r9, 7FFFh
                ja      loc_14047D74E

loc_140341C4A:                          ; CODE XREF: sub_140341C10+13BB43↓j
                test    eax, eax
                js      loc_140341CEB
                movzx   r8d, word ptr [r8]
                mov     r11, rbp
                mov     rdx, rbp
                mov     eax, ebp
                test    r8b, 1
                jnz     loc_14047D772
                movzx   r10d, word ptr [rbx+2]
                test    r10b, 1
                jnz     loc_14047D772
                cmp     r8w, r10w
                ja      loc_14047D772
                mov     esi, 0FFFEh
                cmp     r10w, si
                ja      loc_14047D772
                mov     rbx, [rbx+8]
                test    rbx, rbx
                jz      loc_14047D758

loc_140341C9D:                          ; CODE XREF: sub_140341C10+13BB52↓j
                mov     rdx, r8
                mov     r11, rbx
                shr     rdx, 1

loc_140341CA6:                          ; CODE XREF: sub_140341C10+13BB5D↓j
                test    eax, eax
                js      short loc_140341D01
                cmp     rdi, 2
                jb      short loc_140341CD1
                sub     rdx, r9
                sub     r11, rcx

loc_140341CB6:                          ; CODE XREF: sub_140341C10+BF↓j
                lea     rax, [rdx+r9]
                test    rax, rax
                jz      short loc_140341CD1
                movzx   eax, word ptr [r11+rcx]
                mov     [rcx], ax
                add     rcx, 2
                sub     r9, 1
                jnz     short loc_140341CB6

loc_140341CD1:                          ; CODE XREF: sub_140341C10+9E↑j
                                        ; sub_140341C10+AD↑j
                test    r9, r9
                lea     rax, [rcx-2]
                cmovnz  rax, rcx
                neg     r9
                mov     [rax], bp
                sbb     eax, eax
                not     eax
                and     eax, 80000005h

loc_140341CEB:                          ; CODE XREF: sub_140341C10+3C↑j
                                        ; sub_140341C10+F4↓j
                mov     rbx, [rsp+arg_0]
                mov     rbp, [rsp+arg_8]
                mov     rsi, [rsp+arg_10]
                mov     rdi, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140341D01:                          ; CODE XREF: sub_140341C10+98↑j
                                        ; sub_140341C10+13BB67↓j
                mov     [rcx], bp
                jmp     short loc_140341CEB
sub_140341C10   endp

; ---------------------------------------------------------------------------
algn_140341D06:                         ; DATA XREF: .rdata:0000000140080868↑o
                                        ; .pdata:00000001400D73AC↑o
                align 10h
; Exported entry 2188. RtlGetThreadLangIdByIndex

; =============== S U B R O U T I N E =======================================


