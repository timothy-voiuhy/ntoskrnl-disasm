RtlIoEncodeMemIoResource proc near      ; DATA XREF: .pdata:00000001400DF59C↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001404B0B98 SIZE 00000141 BYTES

                mov     r10, [rsp+arg_28]
                lea     eax, [rdx-3]
                mov     r11d, 0FFFFFFFFh
                test    al, 0FBh
                jnz     short loc_1403C5DCB
                cmp     dl, 1
                jz      short loc_1403C5DD0

loc_1403C5D87:                          ; CODE XREF: RtlIoEncodeMemIoResource+68↓j
                mov     rax, [rsp+arg_20]
                mov     [rcx+10h], rax
                mov     [rcx+18h], r10
                cmp     dl, 1
                jz      short loc_1403C5DE1
                movzx   edx, word ptr [rcx+4]
                mov     eax, 0F1FFh
                and     dx, ax
                mov     [rcx+4], dx
                cmp     r8, r11
                ja      loc_1404B0B98
                cmp     r9, r11
                ja      loc_1404B0B98
                mov     byte ptr [rcx+1], 3

loc_1403C5DBF:                          ; CODE XREF: RtlIoEncodeMemIoResource+75↓j
                mov     [rcx+8], r8d
                mov     [rcx+0Ch], r9d

loc_1403C5DC7:                          ; CODE XREF: RtlIoEncodeMemIoResource+EAEA6↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C5DCB:                          ; CODE XREF: RtlIoEncodeMemIoResource+10↑j
                cmp     dl, 1
                jnz     short loc_1403C5DDA

loc_1403C5DD0:                          ; CODE XREF: RtlIoEncodeMemIoResource+15↑j
                cmp     r8, r11
                ja      short loc_1403C5DDA
                cmp     r9, r11
                jbe     short loc_1403C5D87

loc_1403C5DDA:                          ; CODE XREF: RtlIoEncodeMemIoResource+5E↑j
                                        ; RtlIoEncodeMemIoResource+63↑j
                mov     eax, 0C000000Dh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C5DE1:                          ; CODE XREF: RtlIoEncodeMemIoResource+27↑j
                mov     byte ptr [rcx+1], 1
                jmp     short loc_1403C5DBF
RtlIoEncodeMemIoResource endp
