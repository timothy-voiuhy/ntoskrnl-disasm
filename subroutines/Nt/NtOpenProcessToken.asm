NtOpenProcessToken proc near            ; DATA XREF: .pdata:00000001400FD914↑o
                                        ; PAGE:000000014098BDE8↓o
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                call    NtOpenProcessTokenEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenProcessToken endp
