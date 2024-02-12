FsRtlCurrentOplock proc near            ; DATA XREF: .pdata:00000001400DC854↑o

; FUNCTION CHUNK AT 000000014049EF50 SIZE 0000001B BYTES

                mov     rax, [rcx]
                xor     edx, edx
                test    rax, rax
                jnz     loc_14049EF50

loc_140394D4E:                          ; CODE XREF: FsRtlCurrentOplock+10A226↓j
                mov     al, dl
                retn
FsRtlCurrentOplock endp
