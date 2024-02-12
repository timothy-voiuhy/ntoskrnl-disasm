MmIsIoSpaceActive proc near             ; DATA XREF: .pdata:00000001400F4B78↑o
                sub     rsp, 28h
                mov     rax, rcx
                xor     r8d, r8d
                dec     rcx
                shr     rax, 0Ch
                add     rdx, rcx
                mov     rcx, rax
                shr     rdx, 0Ch
                sub     rdx, rax
                inc     rdx
                call    sub_140353CE0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmIsIoSpaceActive endp
