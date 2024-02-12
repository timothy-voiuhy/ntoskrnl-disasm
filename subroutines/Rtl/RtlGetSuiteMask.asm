RtlGetSuiteMask proc near               ; CODE XREF: RtlGetVersion:loc_14070C8FC↑p
                                        ; RtlGetVersion:loc_140829D74↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 0000000140829D8A SIZE 00000014 BYTES

                sub     rsp, 28h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_140829D8A
                mov     eax, ds:0FFFFF780000002D0h

loc_14070C94A:                          ; CODE XREF: RtlGetSuiteMask+11D469↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetSuiteMask endp
