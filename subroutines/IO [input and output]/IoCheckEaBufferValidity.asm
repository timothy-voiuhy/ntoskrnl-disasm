IoCheckEaBufferValidity proc near       ; CODE XREF: sub_14063FB00+3D9↑p
                                        ; sub_14063FB00+5FD↑p ...

; FUNCTION CHUNK AT 0000000140828554 SIZE 00000006 BYTES

                mov     r9, rcx
                cmp     edx, 7FFFFFFFh
                ja      short loc_140706098

loc_14070604B:                          ; CODE XREF: IoCheckEaBufferValidity+56↓j
                cmp     edx, 8
                jb      short loc_1407060A1
                movzx   r10d, byte ptr [r9+5]
                movzx   eax, word ptr [r9+6]
                lea     r11d, [r10+9]
                add     r11d, eax
                cmp     edx, r11d
                jb      short loc_1407060A1
                cmp     byte ptr [r10+r9+8], 0
                jnz     short loc_1407060A1
                mov     r10d, [r9]
                test    r10d, r10d
                jnz     short loc_14070607A
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14070607A:                          ; CODE XREF: IoCheckEaBufferValidity+34↑j
                lea     eax, [r11+3]
                and     eax, 0FFFFFFFCh
                cmp     eax, r10d
                jnz     short loc_1407060A1
                test    r10d, r10d
                js      short loc_1407060A1
                cmp     edx, r10d
                jb      short loc_1407060A1
                sub     edx, r10d
                add     r9, r10
                jmp     short loc_14070604B
; ---------------------------------------------------------------------------

loc_140706098:                          ; CODE XREF: IoCheckEaBufferValidity+9↑j
                and     dword ptr [r8], 0
                jmp     loc_140828554
; ---------------------------------------------------------------------------

loc_1407060A1:                          ; CODE XREF: IoCheckEaBufferValidity+E↑j
                                        ; IoCheckEaBufferValidity+24↑j ...
                sub     r9d, ecx
                mov     [r8], r9d
                jmp     loc_140828554
IoCheckEaBufferValidity endp
