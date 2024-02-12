CmGetCallbackVersion proc near          ; DATA XREF: .pdata:000000014011ADEC↑o
                mov     eax, 1
                test    rcx, rcx
                jz      short loc_14086B40C
                mov     [rcx], eax

loc_14086B40C:                          ; CODE XREF: CmGetCallbackVersion+8↑j
                test    rdx, rdx
                jz      short locret_14086B413
                mov     [rdx], eax

locret_14086B413:                       ; CODE XREF: CmGetCallbackVersion+F↑j
                retn
CmGetCallbackVersion endp
