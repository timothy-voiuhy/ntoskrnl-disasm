FsRtlAllocatePool proc near             ; DATA XREF: .pdata:00000001400F1398↑o
                sub     rsp, 28h
                mov     edx, edx
                mov     r8d, 74725346h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jnz     short loc_1404F0231
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F0231:                          ; CODE XREF: FsRtlAllocatePool+14↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAllocatePool endp
