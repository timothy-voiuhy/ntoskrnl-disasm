PsGetCurrentServerSiloName proc near    ; DATA XREF: .pdata:00000001401213F8↑o
                sub     rsp, 28h
                call    sub_1402B95B0
                add     rax, 440h
                lea     rcx, qword_140985968
                cmp     word ptr [rax], 0
                cmova   rcx, rax
                mov     rax, rcx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetCurrentServerSiloName endp
