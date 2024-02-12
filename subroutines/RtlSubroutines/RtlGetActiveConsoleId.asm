RtlGetActiveConsoleId proc near         ; CODE XREF: sub_1402B2F18+27↑p
                                        ; sub_140578B10:loc_140578DB3↓p ...
                sub     rsp, 28h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     short loc_1402B2FEB
                mov     rax, 0FFFFF780000002D8h
                mov     eax, [rax]
                jmp     short loc_1402B3021
; ---------------------------------------------------------------------------

loc_1402B2FEB:                          ; CODE XREF: RtlGetActiveConsoleId+B↑j
                call    sub_1403F2884
                test    eax, eax
                jnz     short loc_1402B3010
                mov     rcx, gs:188h
                call    PsGetThreadServerSilo
                test    rax, rax
                jz      short loc_1402B3010
                mov     rax, [rax+4F8h]
                jmp     short loc_1402B3017
; ---------------------------------------------------------------------------

loc_1402B3010:                          ; CODE XREF: RtlGetActiveConsoleId+22↑j
                                        ; RtlGetActiveConsoleId+35↑j
                lea     rax, unk_140D24540

loc_1402B3017:                          ; CODE XREF: RtlGetActiveConsoleId+3E↑j
                mov     rax, [rax+468h]
                mov     eax, [rax+4]

loc_1402B3021:                          ; CODE XREF: RtlGetActiveConsoleId+19↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetActiveConsoleId endp
