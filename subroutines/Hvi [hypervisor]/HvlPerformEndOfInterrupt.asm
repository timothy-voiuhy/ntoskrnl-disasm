HvlPerformEndOfInterrupt proc near      ; CODE XREF: sub_1404F1930+4↑p
                                        ; DATA XREF: .rdata:00000001400092B0↑o ...
                sub     rsp, 28h
                cli
                xor     ecx, ecx
                call    HalPerformEndOfInterrupt
                sti
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlPerformEndOfInterrupt endp
