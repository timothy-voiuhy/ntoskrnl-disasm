ExEnterCriticalRegionAndAcquireSharedWaitForExclusive proc near
                                        ; CODE XREF: sub_1409D3B70+10↓p
                                        ; DATA XREF: .pdata:00000001400F9F48↑o
                sub     rsp, 28h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                call    ExAcquireSharedWaitForExclusive
                mov     rax, gs:188h
                mov     rax, [rax+1C8h]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExEnterCriticalRegionAndAcquireSharedWaitForExclusive endp
