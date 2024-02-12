PsRegisterPicoProvider proc near        ; DATA XREF: .pdata:0000000140121A1C↑o
                cmp     qword ptr [rcx], 58h ; 'X'
                jz      short loc_14090D2DD

loc_14090D2D6:                          ; CODE XREF: PsRegisterPicoProvider+11↓j
                mov     eax, 0C0000004h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14090D2DD:                          ; CODE XREF: PsRegisterPicoProvider+4↑j
                cmp     qword ptr [rdx], 60h ; '`'
                jnz     short loc_14090D2D6
                mov     r8d, 0FFE00000h
                test    [rcx+48h], r8d
                jz      short loc_14090D2F6

loc_14090D2EF:                          ; CODE XREF: PsRegisterPicoProvider+2A↓j
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14090D2F6:                          ; CODE XREF: PsRegisterPicoProvider+1D↑j
                test    [rcx+4Ch], r8d
                jnz     short loc_14090D2EF
                xor     eax, eax
                cmp     cs:byte_140C1DE38, al
                jz      short loc_14090D30D
                mov     eax, 0C0000189h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14090D30D:                          ; CODE XREF: PsRegisterPicoProvider+34↑j
                movups  xmm0, xmmword ptr [rcx]
                movups  xmmword ptr cs:unk_140C1DE40, xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  cs:xmmword_140C1DE50, xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  cs:xmmword_140C1DE60, xmm0
                movups  xmm2, xmmword ptr [rcx+30h]
                movups  cs:xmmword_140C1DE70, xmm2
                movups  xmm0, xmmword ptr [rcx+40h]
                psrldq  xmm2, 8
                movups  cs:xmmword_140C1DE80, xmm0
                movsd   xmm1, qword ptr [rcx+50h]
                lea     rcx, sub_14090D3F0
                movsd   cs:qword_140C1DE90, xmm1
                movq    cs:qword_140C1DE30, xmm2
                mov     [rdx+8], rcx
                lea     rcx, sub_14090D640
                mov     [rdx+10h], rcx
                lea     rcx, sub_1407254C0
                mov     [rdx+18h], rcx
                lea     rcx, sub_1407254D0
                mov     [rdx+20h], rcx
                lea     rcx, sub_14090D9F0
                mov     [rdx+28h], rcx
                lea     rcx, sub_14090DA20
                mov     [rdx+30h], rcx
                lea     rcx, sub_1406AB230
                mov     [rdx+38h], rcx
                lea     rcx, sub_1406FA490
                mov     [rdx+40h], rcx
                lea     rcx, sub_140582E70
                mov     [rdx+48h], rcx
                lea     rcx, sub_1406ABCC0
                mov     [rdx+50h], rcx
                lea     rcx, sub_14090DA50
                mov     [rdx+58h], rcx
                mov     qword ptr [rdx], 60h ; '`'
                retn
PsRegisterPicoProvider endp
