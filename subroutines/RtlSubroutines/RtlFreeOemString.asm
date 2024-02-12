RtlFreeOemString proc near              ; DATA XREF: .pdata:000000014010AC10↑o
                sub     rsp, 28h
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_140772742
                call    ExFreePoolWithTag

loc_140772742:                          ; CODE XREF: RtlFreeOemString+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFreeOemString endp
