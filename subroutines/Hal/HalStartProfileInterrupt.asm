HalStartProfileInterrupt proc near      ; CODE XREF: sub_14051C290+232↓p
                                        ; DATA XREF: .pdata:00000001400EEBB4↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00A40
                mov     edx, ecx
                xor     r8d, r8d
                xor     ecx, ecx
                mov     rax, [rax+8]
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalStartProfileInterrupt endp
