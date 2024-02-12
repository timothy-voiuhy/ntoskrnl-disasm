RtlSubtreePredecessor proc near         ; CODE XREF: RtlDeleteNoSplay+AF↑p
                                        ; RtlDelete:loc_140327864↑p
                                        ; DATA XREF: ...
                mov     rax, [rcx+8]
                test    rax, rax
                jz      short locret_140327CED
                mov     rcx, [rax+10h]

loc_140327CDD:                          ; CODE XREF: RtlSubtreePredecessor+1B↓j
                test    rcx, rcx
                jnz     short loc_140327CE4
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140327CE4:                          ; CODE XREF: RtlSubtreePredecessor+10↑j
                mov     rax, rcx
                mov     rcx, [rcx+10h]
                jmp     short loc_140327CDD
; ---------------------------------------------------------------------------

locret_140327CED:                       ; CODE XREF: RtlSubtreePredecessor+7↑j
                retn
RtlSubtreePredecessor endp
