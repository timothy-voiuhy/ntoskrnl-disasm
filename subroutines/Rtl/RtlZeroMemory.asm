RtlZeroMemory   proc near               ; CODE XREF: sub_1409AC5A8+13A↓p
                                        ; DATA XREF: .rdata:0000000140008E60↑o ...
                sub     rsp, 28h
                mov     r8, rdx
                xor     edx, edx
                call    memset
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlZeroMemory   endp

algn_14036D424:                         ; DATA XREF: .pdata:00000001400DA40C↑o
                align 10h
; Exported entry 2409. RtlTestBitEx

; =============== S U B R O U T I N E =======================================


