IoSetStartIoAttributes proc near        ; DATA XREF: .pdata:00000001400E0100↑o

; FUNCTION CHUNK AT 00000001404B5E6C SIZE 0000000D BYTES

                test    dl, dl
                jz      short loc_1403CFCD0
                mov     rax, [rcx+138h]
                bts     dword ptr [rax+40h], 8

loc_1403CFCD0:                          ; CODE XREF: IoSetStartIoAttributes+2↑j
                test    r8b, r8b
                jnz     loc_1404B5E6C
                retn
IoSetStartIoAttributes endp
