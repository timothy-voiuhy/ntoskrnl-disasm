MmSizeOfMdl     proc near               ; CODE XREF: sub_1406909D8+3D↓p
                                        ; MmRotatePhysicalView+26A↓p ...
                and     ecx, 0FFFh
                lea     rax, [rdx+0FFFh]
                add     rax, rcx
                shr     rax, 0Ch
                lea     rax, ds:30h[rax*8]
                retn
MmSizeOfMdl     endp

; ---------------------------------------------------------------------------
                align 2
algn_1402E6DAE:                         ; DATA XREF: .pdata:00000001400D28AC↑o
                align 20h
; Exported entry 1462. MmMapIoSpace
; Exported entry 1471. MmMapVideoDisplay

; =============== S U B R O U T I N E =======================================


