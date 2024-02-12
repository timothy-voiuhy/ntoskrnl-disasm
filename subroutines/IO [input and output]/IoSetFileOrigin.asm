IoSetFileOrigin proc near               ; DATA XREF: .pdata:00000001400DAE2C↑o

; FUNCTION CHUNK AT 00000001404945AE SIZE 00000012 BYTES

                mov     eax, [rcx+50h]
                mov     r10d, 1000000h
                mov     r9d, eax
                mov     r8d, 0C0000030h
                and     r9d, r10d
                test    dl, dl
                jz      loc_1404945AE
                test    r9d, r9d
                jnz     short loc_14037997B
                or      eax, r10d

loc_140379975:                          ; CODE XREF: IoSetFileOrigin+11AC6B↓j
                xor     r8d, r8d
                mov     [rcx+50h], eax

loc_14037997B:                          ; CODE XREF: IoSetFileOrigin+20↑j
                                        ; IoSetFileOrigin+11AC61↓j
                mov     eax, r8d
                retn
IoSetFileOrigin endp
