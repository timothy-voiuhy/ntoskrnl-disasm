RtlSplay        proc near               ; CODE XREF: RtlInsertElementGenericTableFull+B1↑p
                                        ; sub_140326E30+A9↑p ...
                xchg    ax, ax

loc_140327612:                          ; CODE XREF: RtlSplay+37↓j
                                        ; RtlSplay+A0↓j ...
                mov     rax, [rcx]
                cmp     rax, rcx
                jnz     short loc_14032761F
                mov     rax, rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032761F:                          ; CODE XREF: RtlSplay+8↑j
                mov     r8, [rax+8]
                mov     rdx, [rax]
                cmp     r8, rcx
                jnz     short loc_140327649
                cmp     rdx, rax
                jnz     short loc_140327669
                mov     rdx, [rcx+10h]
                mov     [rax+8], rdx
                test    rdx, rdx
                jnz     short loc_140327664

loc_14032763D:                          ; CODE XREF: RtlSplay+57↓j
                mov     [rcx+10h], rax

loc_140327641:                          ; CODE XREF: RtlSplay+52↓j
                mov     [rax], rcx
                mov     [rcx], rcx
                jmp     short loc_140327612
; ---------------------------------------------------------------------------

loc_140327649:                          ; CODE XREF: RtlSplay+19↑j
                cmp     rdx, rax
                jnz     short loc_1403276B5
                mov     rdx, [rcx+8]
                mov     [rax+10h], rdx
                test    rdx, rdx
                jz      short loc_14032765E
                mov     [rdx], rax

loc_14032765E:                          ; CODE XREF: RtlSplay+49↑j
                mov     [rcx+8], rax
                jmp     short loc_140327641
; ---------------------------------------------------------------------------

loc_140327664:                          ; CODE XREF: RtlSplay+2B↑j
                mov     [rdx], rax
                jmp     short loc_14032763D
; ---------------------------------------------------------------------------

loc_140327669:                          ; CODE XREF: RtlSplay+1E↑j
                cmp     [rdx+8], rax
                jnz     loc_1403276F4
                mov     r8, [rcx+10h]
                mov     [rax+8], r8
                test    r8, r8
                jz      short loc_140327683
                mov     [r8], rax

loc_140327683:                          ; CODE XREF: RtlSplay+6E↑j
                mov     r8, [rax+10h]
                mov     [rdx+8], r8
                test    r8, r8
                jz      short loc_140327693
                mov     [r8], rdx

loc_140327693:                          ; CODE XREF: RtlSplay+7E↑j
                mov     r8, [rdx]
                cmp     r8, rdx
                jnz     loc_14032779C
                mov     [rcx], rcx

loc_1403276A2:                          ; CODE XREF: RtlSplay+19E↓j
                mov     [rcx+10h], rax
                mov     [rax+10h], rdx

loc_1403276AA:                          ; CODE XREF: RtlSplay+E2↓j
                mov     [rax], rcx
                mov     [rdx], rax
                jmp     loc_140327612
; ---------------------------------------------------------------------------

loc_1403276B5:                          ; CODE XREF: RtlSplay+3C↑j
                cmp     [rdx+10h], rax
                jnz     loc_14032774B
                mov     [rdx+10h], r8
                test    r8, r8
                jz      short loc_1403276CB
                mov     [r8], rdx

loc_1403276CB:                          ; CODE XREF: RtlSplay+B6↑j
                mov     r8, [rcx+8]
                mov     [rax+10h], r8
                test    r8, r8
                jz      short loc_1403276DB
                mov     [r8], rax

loc_1403276DB:                          ; CODE XREF: RtlSplay+C6↑j
                mov     r8, [rdx]
                cmp     r8, rdx
                jnz     loc_1403277B3
                mov     [rcx], rcx

loc_1403276EA:                          ; CODE XREF: RtlSplay+1B9↓j
                mov     [rcx+8], rax
                mov     [rax+8], rdx
                jmp     short loc_1403276AA
; ---------------------------------------------------------------------------

loc_1403276F4:                          ; CODE XREF: RtlSplay+5D↑j
                mov     r8, [rcx+8]
                mov     [rdx+10h], r8
                test    r8, r8
                jnz     loc_1403277D6

loc_140327705:                          ; CODE XREF: RtlSplay+1C9↓j
                mov     r8, [rcx+10h]
                mov     [rax+8], r8
                test    r8, r8
                jnz     loc_1403277CE

loc_140327716:                          ; CODE XREF: RtlSplay+1C1↓j
                mov     r8, [rdx]
                cmp     r8, rdx
                jz      loc_1403277DE
                mov     [rcx], r8
                mov     r9, [rdx]
                lea     r8, [r9+8]
                cmp     [r8], rdx
                jz      short loc_140327735
                lea     r8, [r9+10h]

loc_140327735:                          ; CODE XREF: RtlSplay+11F↑j
                mov     [r8], rcx

loc_140327738:                          ; CODE XREF: RtlSplay+1D1↓j
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rcx+10h], rax
                mov     [rax], rcx
                jmp     loc_140327612
; ---------------------------------------------------------------------------

loc_14032774B:                          ; CODE XREF: RtlSplay+A9↑j
                mov     r8, [rcx+8]
                mov     [rax+10h], r8
                test    r8, r8
                jz      short loc_14032775B
                mov     [r8], rax

loc_14032775B:                          ; CODE XREF: RtlSplay+146↑j
                mov     r8, [rcx+10h]
                mov     [rdx+8], r8
                test    r8, r8
                jz      short loc_14032776B
                mov     [r8], rdx

loc_14032776B:                          ; CODE XREF: RtlSplay+156↑j
                mov     r8, [rdx]
                cmp     r8, rdx
                jz      short loc_1403277E6
                mov     [rcx], r8
                mov     r9, [rdx]
                lea     r8, [r9+8]
                cmp     [r8], rdx
                jz      short loc_140327786
                lea     r8, [r9+10h]

loc_140327786:                          ; CODE XREF: RtlSplay+170↑j
                mov     [r8], rcx

loc_140327789:                          ; CODE XREF: RtlSplay+1D9↓j
                mov     [rcx+8], rax
                mov     [rax], rcx
                mov     [rcx+10h], rdx
                mov     [rdx], rcx
                jmp     loc_140327612
; ---------------------------------------------------------------------------

loc_14032779C:                          ; CODE XREF: RtlSplay+89↑j
                mov     [rcx], r8
                mov     r9, [rdx]
                lea     r8, [r9+8]
                cmp     [r8], rdx
                jnz     short loc_1403277EB

loc_1403277AB:                          ; CODE XREF: RtlSplay+1DF↓j
                mov     [r8], rcx
                jmp     loc_1403276A2
; ---------------------------------------------------------------------------

loc_1403277B3:                          ; CODE XREF: RtlSplay+D1↑j
                mov     [rcx], r8
                mov     r9, [rdx]
                lea     r8, [r9+8]
                cmp     [r8], rdx
                jz      short loc_1403277C6
                lea     r8, [r9+10h]

loc_1403277C6:                          ; CODE XREF: RtlSplay+1B0↑j
                mov     [r8], rcx
                jmp     loc_1403276EA
; ---------------------------------------------------------------------------

loc_1403277CE:                          ; CODE XREF: RtlSplay+100↑j
                mov     [r8], rax
                jmp     loc_140327716
; ---------------------------------------------------------------------------

loc_1403277D6:                          ; CODE XREF: RtlSplay+EF↑j
                mov     [r8], rdx
                jmp     loc_140327705
; ---------------------------------------------------------------------------

loc_1403277DE:                          ; CODE XREF: RtlSplay+10C↑j
                mov     [rcx], rcx
                jmp     loc_140327738
; ---------------------------------------------------------------------------

loc_1403277E6:                          ; CODE XREF: RtlSplay+161↑j
                mov     [rcx], rcx
                jmp     short loc_140327789
; ---------------------------------------------------------------------------

loc_1403277EB:                          ; CODE XREF: RtlSplay+199↑j
                lea     r8, [r9+10h]
                jmp     short loc_1403277AB
RtlSplay        endp

; ---------------------------------------------------------------------------
algn_1403277F1:                         ; DATA XREF: .pdata:00000001400D5D08↑o
                align 20h
; Exported entry 2068. RtlDelete

; =============== S U B R O U T I N E =======================================


