FsRtlCurrentOplockH proc near           ; DATA XREF: .pdata:00000001401076A0↑o

; FUNCTION CHUNK AT 000000014082FF00 SIZE 0000001A BYTES

                mov     rax, [rcx]
                xor     edx, edx
                test    rax, rax
                jnz     loc_14082FF00

loc_140722D6E:                          ; CODE XREF: FsRtlCurrentOplockH+10D1B5↓j
                mov     al, dl
                retn
FsRtlCurrentOplockH endp
