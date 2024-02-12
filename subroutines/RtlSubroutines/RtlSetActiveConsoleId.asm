RtlSetActiveConsoleId proc near         ; DATA XREF: .rdata:000000014009EBC0↑o
                                        ; .pdata:000000014010C254↑o

; FUNCTION CHUNK AT 0000000140853BEA SIZE 00000014 BYTES

                push    rbx
                sub     rsp, 20h
                mov     ebx, ecx
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_140853BEA
                mov     eax, ebx
                mov     ds:0FFFFF780000002D8h, eax

loc_14078D810:                          ; CODE XREF: RtlSetActiveConsoleId+C6409↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSetActiveConsoleId endp
