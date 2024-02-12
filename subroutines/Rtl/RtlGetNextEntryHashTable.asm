RtlGetNextEntryHashTable proc near      ; CODE XREF: sub_1405980F4+E9↓p
                                        ; sub_1406D7DB8+148B4B↓p ...

; FUNCTION CHUNK AT 0000000140479C66 SIZE 00000021 BYTES

                mov     rax, [rdx+8]
                mov     r9, [rdx]
                mov     r8, [rax]
                mov     rax, [r8]
                cmp     rax, r9
                jz      short loc_140338548
                cmp     dword ptr [rcx+1Ch], 0
                jnz     short loc_14033854C

loc_140338538:                          ; CODE XREF: RtlGetNextEntryHashTable+14174E↓j
                                        ; RtlGetNextEntryHashTable+141762↓j
                mov     rcx, [rdx+10h]
                cmp     [rax+10h], rcx
                jnz     short loc_140338548
                mov     [rdx+8], r8
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140338548:                          ; CODE XREF: RtlGetNextEntryHashTable+10↑j
                                        ; RtlGetNextEntryHashTable+20↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033854C:                          ; CODE XREF: RtlGetNextEntryHashTable+16↑j
                mov     r10, rax
                jmp     loc_140479C66
RtlGetNextEntryHashTable endp
