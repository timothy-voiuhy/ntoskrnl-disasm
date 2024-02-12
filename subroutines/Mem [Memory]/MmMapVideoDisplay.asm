MmMapVideoDisplay proc near             ; DATA XREF: .pdata:00000001400D28B8↑o
                sub     rsp, 28h        ; MmMapIoSpace
                movzx   eax, r8b
                cmp     eax, 6
                jnb     short loc_1402E6DF6
                mov     r8d, 40h ; '@'
                cmp     eax, 1
                jz      short loc_1402E6DEB
                cmp     eax, 2
                mov     r8d, 240h
                mov     r9d, 404h
                cmovz   r8d, r9d

loc_1402E6DEB:                          ; CODE XREF: MmMapVideoDisplay+16↑j
                call    MmMapIoSpaceEx

loc_1402E6DF0:                          ; CODE XREF: MmMapVideoDisplay+38↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402E6DF6:                          ; CODE XREF: MmMapVideoDisplay+B↑j
                xor     eax, eax
                jmp     short loc_1402E6DF0
MmMapVideoDisplay endp
