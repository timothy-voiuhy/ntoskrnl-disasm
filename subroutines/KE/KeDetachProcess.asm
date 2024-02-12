KeDetachProcess proc near               ; DATA XREF: .pdata:00000001400D9128↑o
                sub     rsp, 28h
                mov     rcx, gs:188h
                cmp     byte ptr [rcx+24Ah], 0
                jz      short loc_14035EBE4
                add     rcx, 258h
                xor     edx, edx
                call    sub_14021E830

loc_14035EBE4:                          ; CODE XREF: KeDetachProcess+14↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeDetachProcess endp
