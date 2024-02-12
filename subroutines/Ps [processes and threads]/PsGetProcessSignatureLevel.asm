PsGetProcessSignatureLevel proc near    ; DATA XREF: .pdata:00000001400DC8F0↑o
                                        ; sub_140A1EEE4+312B↓o
                test    rdx, rdx
                jz      short loc_1403954AD
                mov     al, [rcx+879h]
                mov     [rdx], al

loc_1403954AD:                          ; CODE XREF: PsGetProcessSignatureLevel+3↑j
                mov     al, [rcx+878h]
                retn
PsGetProcessSignatureLevel endp
