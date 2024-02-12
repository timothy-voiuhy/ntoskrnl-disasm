RtlGetSystemBootStatusEx proc near      ; CODE XREF: sub_140A46920+8F↓p
                                        ; DATA XREF: .pdata:000000014010CB54↑o
                sub     rsp, 28h
                mov     r9, r8
                mov     r8d, edx
                mov     rdx, rcx
                mov     ecx, 1Fh
                call    sub_14079A0EC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetSystemBootStatusEx endp
