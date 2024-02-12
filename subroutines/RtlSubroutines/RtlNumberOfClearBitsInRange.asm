RtlNumberOfClearBitsInRange proc near   ; DATA XREF: .pdata:00000001400F7C98↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, r8d
                call    RtlNumberOfSetBitsInRange
                or      ecx, 0FFFFFFFFh
                cmp     eax, ecx
                jnz     short loc_140588229
                mov     eax, ecx
                jmp     short loc_14058822D
; ---------------------------------------------------------------------------

loc_140588229:                          ; CODE XREF: RtlNumberOfClearBitsInRange+13↑j
                sub     ebx, eax
                mov     eax, ebx

loc_14058822D:                          ; CODE XREF: RtlNumberOfClearBitsInRange+17↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNumberOfClearBitsInRange endp
