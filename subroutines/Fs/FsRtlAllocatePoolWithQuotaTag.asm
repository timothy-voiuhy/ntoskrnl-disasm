FsRtlAllocatePoolWithQuotaTag proc near ; DATA XREF: .pdata:00000001400F13B0↑o
                sub     rsp, 28h
                mov     edx, edx
                call    ExAllocatePoolWithQuotaTag
                test    rax, rax
                jnz     short loc_1404F028B
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F028B:                          ; CODE XREF: FsRtlAllocatePoolWithQuotaTag+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAllocatePoolWithQuotaTag endp
