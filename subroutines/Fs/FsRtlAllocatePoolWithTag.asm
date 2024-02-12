FsRtlAllocatePoolWithTag proc near      ; DATA XREF: .pdata:00000001400F13BC↑o
                sub     rsp, 28h
                mov     edx, edx
                call    ExAllocatePoolWithTag
                test    rax, rax
                jnz     short loc_1404F02BB
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404F02BB:                          ; CODE XREF: FsRtlAllocatePoolWithTag+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAllocatePoolWithTag endp
