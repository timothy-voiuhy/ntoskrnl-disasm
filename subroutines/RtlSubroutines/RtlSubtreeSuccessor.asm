RtlSubtreeSuccessor proc near           ; DATA XREF: .pdata:00000001400F7E48↑o
                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short locret_14058C00D
                mov     rcx, [rax+8]
                jmp     short loc_14058C006
; ---------------------------------------------------------------------------

loc_14058BFFF:                          ; CODE XREF: RtlSubtreeSuccessor+19↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_14058C006:                          ; CODE XREF: RtlSubtreeSuccessor+D↑j
                test    rcx, rcx
                jnz     short loc_14058BFFF
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

locret_14058C00D:                       ; CODE XREF: RtlSubtreeSuccessor+7↑j
                retn
RtlSubtreeSuccessor endp
