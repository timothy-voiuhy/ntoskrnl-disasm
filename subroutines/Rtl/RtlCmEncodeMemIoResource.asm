RtlCmEncodeMemIoResource proc near      ; CODE XREF: sub_140A3B2F0+2C1↓p
                                        ; sub_140A3B8B0+1E2↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014048F41E SIZE 00000064 BYTES

                lea     eax, [rdx-3]
                mov     r10d, 0FFFFFFFFh
                test    al, 0FBh
                jnz     short loc_1403A8A2B
                cmp     dl, 1
                jz      short loc_1403A8A30

loc_1403A8A02:                          ; CODE XREF: RtlCmEncodeMemIoResource+43↓j
                mov     [rcx+4], r9
                cmp     dl, 1
                jz      short loc_1403A8A3C
                movzx   edx, word ptr [rcx+2]
                mov     eax, 0F1FFh
                and     dx, ax
                mov     [rcx+2], dx
                cmp     r8, r10
                ja      short loc_1403A8A41
                mov     byte ptr [rcx], 3

loc_1403A8A23:                          ; CODE XREF: RtlCmEncodeMemIoResource+4F↓j
                mov     [rcx+0Ch], r8d

loc_1403A8A27:                          ; CODE XREF: RtlCmEncodeMemIoResource+8A↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A8A2B:                          ; CODE XREF: RtlCmEncodeMemIoResource+B↑j
                cmp     dl, 1
                jnz     short loc_1403A8A35

loc_1403A8A30:                          ; CODE XREF: RtlCmEncodeMemIoResource+10↑j
                cmp     r8, r10
                jbe     short loc_1403A8A02

loc_1403A8A35:                          ; CODE XREF: RtlCmEncodeMemIoResource+3E↑j
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403A8A3C:                          ; CODE XREF: RtlCmEncodeMemIoResource+19↑j
                mov     byte ptr [rcx], 1
                jmp     short loc_1403A8A23
; ---------------------------------------------------------------------------

loc_1403A8A41:                          ; CODE XREF: RtlCmEncodeMemIoResource+2E↑j
                mov     rax, 0FFFFFFFF00h
                cmp     r8, rax
                ja      loc_14048F41E
                mov     r9, r8
                shr     r9, 8
                mov     eax, r9d
                shl     rax, 8
                cmp     r8, rax
                jnz     short loc_1403A8A7C
                mov     eax, 200h

loc_1403A8A6C:                          ; CODE XREF: RtlCmEncodeMemIoResource+E6A59↓j
                                        ; RtlCmEncodeMemIoResource+E6A8D↓j
                or      dx, ax
                mov     byte ptr [rcx], 7
                mov     [rcx+2], dx
                mov     [rcx+0Ch], r9d
                jmp     short loc_1403A8A27
; ---------------------------------------------------------------------------

loc_1403A8A7C:                          ; CODE XREF: RtlCmEncodeMemIoResource+75↑j
                                        ; RtlCmEncodeMemIoResource+E6A4E↓j ...
                mov     eax, 0C0000001h
                retn
RtlCmEncodeMemIoResource endp
