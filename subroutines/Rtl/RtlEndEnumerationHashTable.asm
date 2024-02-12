RtlEndEnumerationHashTable proc near    ; CODE XREF: sub_14020260C+DC↓p
                                        ; RtlEndWeakEnumerationHashTable+4↓p ...
                or      r9d, 0FFFFFFFFh
                add     [rcx+1Ch], r9d
                mov     rax, [rdx]
                cmp     rax, rdx
                jz      short loc_140201C5F
                cmp     [rax+8], rdx
                jnz     short loc_140201C6C
                mov     r8, [rdx+8]
                cmp     [r8], rdx
                jnz     short loc_140201C6C
                mov     [r8], rax
                mov     [rax+8], r8
                mov     rax, [rdx+18h]
                cmp     [rax], rax
                jz      short loc_140201C66

loc_140201C5F:                          ; CODE XREF: RtlEndEnumerationHashTable+E↑j
                                        ; RtlEndEnumerationHashTable+3A↓j
                and     qword ptr [rdx+18h], 0
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140201C66:                          ; CODE XREF: RtlEndEnumerationHashTable+2D↑j
                add     [rcx+18h], r9d
                jmp     short loc_140201C5F
; ---------------------------------------------------------------------------

loc_140201C6C:                          ; CODE XREF: RtlEndEnumerationHashTable+14↑j
                                        ; RtlEndEnumerationHashTable+1D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlEndEnumerationHashTable endp
