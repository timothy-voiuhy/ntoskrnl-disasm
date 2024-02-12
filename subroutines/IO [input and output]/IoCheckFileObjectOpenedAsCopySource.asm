IoCheckFileObjectOpenedAsCopySource proc near
                                        ; DATA XREF: .pdata:00000001400FB124↑o
                mov     rax, [rcx+0D0h]
                xor     ecx, ecx
                test    rax, rax
                jz      short loc_1405CD3F6
                mov     eax, [rax]
                test    al, 20h
                jz      short loc_1405CD3F6
                mov     cl, 1

loc_1405CD3F6:                          ; CODE XREF: IoCheckFileObjectOpenedAsCopySource+C↑j
                                        ; IoCheckFileObjectOpenedAsCopySource+12↑j
                mov     al, cl
                retn
IoCheckFileObjectOpenedAsCopySource endp
