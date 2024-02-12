FsRtlIs32BitProcess proc near           ; DATA XREF: .pdata:000000014011C2EC↑o
                mov     rdx, [rcx+580h]
                xor     eax, eax
                test    rdx, rdx
                jz      short locret_14088D468
                movzx   ecx, word ptr [rdx+8]
                mov     edx, 14Ch
                cmp     cx, dx
                jz      short loc_14088D466
                mov     edx, 1C4h
                cmp     cx, dx
                jnz     short locret_14088D468

loc_14088D466:                          ; CODE XREF: FsRtlIs32BitProcess+1A↑j
                mov     al, 1

locret_14088D468:                       ; CODE XREF: FsRtlIs32BitProcess+C↑j
                                        ; FsRtlIs32BitProcess+24↑j
                retn
FsRtlIs32BitProcess endp
