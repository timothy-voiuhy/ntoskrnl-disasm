PsInsertSiloContext proc near           ; CODE XREF: sub_1405D17AC+1D1↓p
                                        ; sub_1409074F0+B6↓p ...
                push    rbx
                sub     rsp, 20h
                mov     r11, cs:qword_140D24990
                xor     r9d, r9d
                mov     ebx, edx
                mov     r10, rcx
                test    rcx, rcx
                jz      short loc_1405D1701
                mov     r11, [rcx+518h]

loc_1405D1701:                          ; CODE XREF: PsInsertSiloContext+18↑j
                mov     rcx, r8
                call    sub_1406E0378
                test    al, al
                jz      short loc_1405D1736
                lea     rcx, [r8-30h]
                movzx   eax, byte ptr [rcx+1Ah]
                test    al, 40h
                jz      short loc_1405D1731
                and     eax, 7Fh
                lea     rdx, unk_140C25E20
                movzx   eax, byte ptr [rax+rdx]
                sub     rcx, rax
                mov     r9, [rcx]
                add     r9, 20h ; ' '

loc_1405D1731:                          ; CODE XREF: PsInsertSiloContext+37↑j
                cmp     [r9], r10
                jnz     short loc_1405D174D

loc_1405D1736:                          ; CODE XREF: PsInsertSiloContext+2B↑j
                mov     r9, r8
                mov     edx, ebx
                xor     r8d, r8d
                mov     rcx, r11
                call    sub_1406E0258

loc_1405D1746:                          ; CODE XREF: PsInsertSiloContext+72↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405D174D:                          ; CODE XREF: PsInsertSiloContext+54↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1405D1746
PsInsertSiloContext endp
