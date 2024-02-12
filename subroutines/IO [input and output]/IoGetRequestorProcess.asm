IoGetRequestorProcess proc near         ; CODE XREF: FsRtlCheckLockForWriteAccess+6A↑p
                                        ; FsRtlCheckLockForReadAccess+4D↑p ...
                test    dword ptr [rcx+10h], 2000h
                mov     rdx, [rcx+98h]
                jnz     short loc_1403293B6
                test    rdx, rdx
                jz      short loc_1403293C0
                movzx   eax, byte ptr [rcx+46h]
                test    al, al
                jnz     short loc_1403293C4
                mov     rax, [rdx+220h]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403293B6:                          ; CODE XREF: IoGetRequestorProcess+E↑j
                mov     rax, [rcx+58h]
                and     rax, 0FFFFFFFFFFFFFFF9h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403293C0:                          ; CODE XREF: IoGetRequestorProcess+13↑j
                                        ; IoGetRequestorProcess+36↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403293C4:                          ; CODE XREF: IoGetRequestorProcess+1B↑j
                cmp     al, 1
                jnz     short loc_1403293C0
                mov     rax, [rdx+0B8h]
                retn
IoGetRequestorProcess endp
