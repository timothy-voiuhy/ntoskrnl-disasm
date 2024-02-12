FsRtlIsPagingFile proc near             ; DATA XREF: .pdata:00000001400D6F14↑o
                mov     rax, [rcx+18h]
                xor     ecx, ecx
                test    rax, rax
                jz      short loc_14033D2B2
                mov     al, [rax+6]
                test    al, 8
                jnz     short loc_14033D2B6

loc_14033D2B2:                          ; CODE XREF: FsRtlIsPagingFile+9↑j
                                        ; FsRtlIsPagingFile+1B↓j
                mov     eax, ecx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033D2B6:                          ; CODE XREF: FsRtlIsPagingFile+10↑j
                mov     ecx, 1
                jmp     short loc_14033D2B2
FsRtlIsPagingFile endp
