FsRtlCurrentBatchOplock proc near       ; DATA XREF: .pdata:0000000140104FDC↑o
                mov     rax, [rcx]
                xor     edx, edx
                test    rax, rax
                jnz     short loc_1406F864E

loc_1406F864A:                          ; CODE XREF: FsRtlCurrentBatchOplock+21↓j
                mov     al, dl
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F864E:                          ; CODE XREF: FsRtlCurrentBatchOplock+8↑j
                mov     al, [rax+90h]
                mov     ecx, 1
                test    al, 0Ch
                movzx   edx, dl
                cmovnz  edx, ecx
                jmp     short loc_1406F864A
FsRtlCurrentBatchOplock endp
