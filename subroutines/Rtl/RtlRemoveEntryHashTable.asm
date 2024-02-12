RtlRemoveEntryHashTable proc near       ; CODE XREF: sub_14020260C+49↓p
                                        ; sub_1406A0F7C+C4↓p ...

; FUNCTION CHUNK AT 000000014041F132 SIZE 00000018 BYTES

                sub     rsp, 28h
                or      r11d, 0FFFFFFFFh
                mov     r10, r8
                mov     r8, [rdx+10h]
                add     [rcx+14h], r11d
                mov     r9, [rdx]
                mov     rax, [rdx+8]
                cmp     r9, rax
                jnz     short loc_1402025DA
                add     [rcx+18h], r11d
                mov     rax, [rdx+8]
                mov     r9, [rdx]

loc_1402025DA:                          ; CODE XREF: RtlRemoveEntryHashTable+1D↑j
                cmp     [r9+8], rdx
                jnz     short loc_1402025FD
                cmp     [rax], rdx
                jnz     short loc_1402025FD
                mov     [rax], r9
                mov     [r9+8], rax
                test    r10, r10
                jnz     loc_14041F132

loc_1402025F5:                          ; CODE XREF: RtlRemoveEntryHashTable+21CB86↓j
                                        ; RtlRemoveEntryHashTable+21CB95↓j
                mov     al, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402025FD:                          ; CODE XREF: RtlRemoveEntryHashTable+2E↑j
                                        ; RtlRemoveEntryHashTable+33↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlRemoveEntryHashTable endp
