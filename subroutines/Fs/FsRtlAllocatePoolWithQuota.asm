FsRtlAllocatePoolWithQuota proc near    ; DATA XREF: .pdata:00000001400F13A4↑o
                sub     rsp, 28h
                mov     edx, edx
                mov     r8d, 74725346h
                call    ExAllocatePoolWithQuotaTag
                test    rax, rax
                jnz     short loc_1404F0261
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F0261:                          ; CODE XREF: FsRtlAllocatePoolWithQuota+14↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAllocatePoolWithQuota endp
