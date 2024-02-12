RtlOwnerAcesPresent proc near           ; CODE XREF: sub_140627C40:loc_140628B54↓p
                                        ; DATA XREF: .pdata:00000001400D5F84↑o
                sub     rsp, 28h
                mov     rdx, rcx
                xor     ecx, ecx
                call    sub_140329990
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlOwnerAcesPresent endp
