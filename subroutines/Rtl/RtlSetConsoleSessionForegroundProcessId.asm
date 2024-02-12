RtlSetConsoleSessionForegroundProcessId proc near
                                        ; DATA XREF: .rdata:0000000140086670↑o
                                        ; .pdata:0000000140106494↑o

; FUNCTION CHUNK AT 000000014082BD06 SIZE 00000015 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_14082BD06
                mov     rax, rbx
                mov     ds:0FFFFF78000000338h, rax

loc_140713303:                          ; CODE XREF: RtlSetConsoleSessionForegroundProcessId+118A36↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSetConsoleSessionForegroundProcessId endp
