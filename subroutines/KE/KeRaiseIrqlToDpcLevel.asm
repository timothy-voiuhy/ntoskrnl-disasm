KeRaiseIrqlToDpcLevel proc near         ; DATA XREF: .pdata:00000001400CBEC8↑o

; FUNCTION CHUNK AT 000000014041CCE4 SIZE 00000041 BYTES

                mov     rax, cr8
                mov     ecx, 2
                mov     cr8, rcx
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_14041CCE4

locret_140242F0B:                       ; CODE XREF: KeRaiseIrqlToDpcLevel+1D9DF7↓j
                                        ; KeRaiseIrqlToDpcLevel+1D9DFF↓j
                retn
KeRaiseIrqlToDpcLevel endp
