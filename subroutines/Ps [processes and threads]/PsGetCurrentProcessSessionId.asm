PsGetCurrentProcessSessionId proc near  ; CODE XREF: sub_1406483B0:loc_1406498BA↓p
                                        ; sub_140653C50+22C↓p ...
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     rcx, [rdx+558h]
                test    rcx, rcx
                jz      short loc_1402BCE17
                test    dword ptr [rdx+87Ch], 1000h
                jnz     short loc_1402BCE17
                mov     eax, [rcx+8]

loc_1402BCE0B:                          ; CODE XREF: PsGetCurrentProcessSessionId+3C↓j
                xor     ecx, ecx
                cmp     eax, 0FFFFFFFFh
                cmovnz  ecx, eax
                mov     eax, ecx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BCE17:                          ; CODE XREF: PsGetCurrentProcessSessionId+1A↑j
                                        ; PsGetCurrentProcessSessionId+26↑j
                mov     eax, 0FFFFFFFFh
                jmp     short loc_1402BCE0B
PsGetCurrentProcessSessionId endp
