PsGetPermanentSiloContext proc near     ; CODE XREF: sub_1405D175C+17↓p
                                        ; sub_1405D1B0C+1A7↓p ...

; FUNCTION CHUNK AT 000000014041DEEA SIZE 00000026 BYTES

                test    rcx, rcx
                jnz     short loc_14032093B
                mov     rcx, cs:qword_140D24990

loc_14032090C:                          ; CODE XREF: PsGetPermanentSiloContext+42↓j
                mov     qword ptr [r8], 0
                cmp     edx, 20h ; ' '
                jnb     loc_14041DEEA

loc_14032091C:                          ; CODE XREF: PsGetPermanentSiloContext+FD605↓j
                mov     eax, edx
                add     rax, rax
                mov     rcx, [rcx+rax*8+8]
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFFFFFEh
                jz      short loc_140320944
                test    cl, 1
                jz      short loc_14032094B
                mov     [r8], rax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032093B:                          ; CODE XREF: PsGetPermanentSiloContext+3↑j
                mov     rcx, [rcx+518h]
                jmp     short loc_14032090C
; ---------------------------------------------------------------------------

loc_140320944:                          ; CODE XREF: PsGetPermanentSiloContext+2D↑j
                                        ; PsGetPermanentSiloContext+FD5FF↓j
                mov     eax, 0C0000225h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032094B:                          ; CODE XREF: PsGetPermanentSiloContext+32↑j
                mov     eax, 0C00000BBh
                retn
PsGetPermanentSiloContext endp
