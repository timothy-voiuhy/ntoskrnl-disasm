PsIsProcessCommitRelinquished proc near ; DATA XREF: .pdata:00000001401070B8↑o
                mov     eax, [rcx+87Ch]
                shr     eax, 8
                and     al, 1
                retn
PsIsProcessCommitRelinquished endp
