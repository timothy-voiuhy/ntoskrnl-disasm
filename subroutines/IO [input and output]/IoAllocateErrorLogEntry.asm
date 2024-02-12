IoAllocateErrorLogEntry proc near       ; CODE XREF: sub_140500838+1F0↓p
                                        ; FsRtlLogCcFlushError+175↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     r8b, dl
                test    rcx, rcx
                jz      short loc_140380281
                movzx   eax, word ptr [rcx]
                cmp     ax, 3
                jz      short loc_14038027B
                cmp     ax, 4
                jnz     short loc_140380281
                mov     rdx, rcx
                xor     ecx, ecx

loc_140380270:                          ; CODE XREF: IoAllocateErrorLogEntry+2F↓j
                call    sub_14038028C

loc_140380275:                          ; CODE XREF: IoAllocateErrorLogEntry+33↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14038027B:                          ; CODE XREF: IoAllocateErrorLogEntry+13↑j
                mov     rdx, [rcx+8]
                jmp     short loc_140380270
; ---------------------------------------------------------------------------

loc_140380281:                          ; CODE XREF: IoAllocateErrorLogEntry+A↑j
                                        ; IoAllocateErrorLogEntry+19↑j
                xor     eax, eax
                jmp     short loc_140380275
IoAllocateErrorLogEntry endp
