IoIsFileObjectIgnoringSharing proc near ; DATA XREF: .pdata:0000000140107610↑o
                mov     rax, [rcx+0D0h]
                test    rax, rax
                jnz     short loc_140722962

loc_14072295C:                          ; CODE XREF: IoIsFileObjectIgnoringSharing+18↓j
                xor     cl, cl

loc_14072295E:                          ; CODE XREF: IoIsFileObjectIgnoringSharing+1A↓j
                mov     al, cl
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140722962:                          ; CODE XREF: IoIsFileObjectIgnoringSharing+A↑j
                mov     eax, [rax]
                mov     cl, 1
                test    cl, al
                jz      short loc_14072295C
                jmp     short loc_14072295E
IoIsFileObjectIgnoringSharing endp
