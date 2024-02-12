PsGetThreadSessionId proc near          ; DATA XREF: .pdata:00000001401002B4↑o
                sub     rsp, 28h
                mov     rcx, [rcx+220h]
                call    sub_1402A9C50
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetThreadSessionId endp
