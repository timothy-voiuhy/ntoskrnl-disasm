IoCheckFileObjectOpenedAsCopyDestination proc near
                                        ; DATA XREF: .pdata:00000001400FB118↑o
                mov     rax, [rcx+0D0h]
                xor     ecx, ecx
                test    rax, rax
                jz      short loc_1405CD3D6
                mov     eax, [rax]
                test    al, 40h
                jz      short loc_1405CD3D6
                mov     cl, 1

loc_1405CD3D6:                          ; CODE XREF: IoCheckFileObjectOpenedAsCopyDestination+C↑j
                                        ; IoCheckFileObjectOpenedAsCopyDestination+12↑j
                mov     al, cl
                retn
IoCheckFileObjectOpenedAsCopyDestination endp
