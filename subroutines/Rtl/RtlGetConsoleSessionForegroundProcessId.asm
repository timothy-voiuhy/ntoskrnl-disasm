RtlGetConsoleSessionForegroundProcessId proc near
                                        ; DATA XREF: .pdata:0000000140121D94↑o
                sub     rsp, 28h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     short loc_140911739
                mov     rax, ds:0FFFFF78000000338h
                jmp     short loc_140911749
; ---------------------------------------------------------------------------

loc_140911739:                          ; CODE XREF: RtlGetConsoleSessionForegroundProcessId+B↑j
                call    sub_1402B95B0
                mov     rax, [rax+468h]
                mov     rax, [rax+8]

loc_140911749:                          ; CODE XREF: RtlGetConsoleSessionForegroundProcessId+17↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetConsoleSessionForegroundProcessId endp
