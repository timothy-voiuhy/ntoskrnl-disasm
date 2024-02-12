KeInitializeAffinityEx proc near        ; CODE XREF: sub_14099D840+413↓p
                                        ; DATA XREF: .pdata:00000001400CD308↑o
                sub     rsp, 28h
                mov     qword ptr [rcx], 140001h
                xor     edx, edx
                add     rcx, 8
                mov     r8d, 0A0h
                call    memset
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeAffinityEx endp
