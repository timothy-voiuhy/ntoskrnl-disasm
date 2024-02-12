IoIsActivityTracingEnabled proc near    ; DATA XREF: .pdata:00000001400D6CEC↑o

; FUNCTION CHUNK AT 000000014047B020 SIZE 00000011 BYTES

                mov     eax, cs:dword_140CF49EC
                test    al, 4
                jnz     loc_14047B020

loc_14033AA7E:                          ; CODE XREF: IoIsActivityTracingEnabled+1405B8↓j
                xor     al, al
                retn
IoIsActivityTracingEnabled endp
