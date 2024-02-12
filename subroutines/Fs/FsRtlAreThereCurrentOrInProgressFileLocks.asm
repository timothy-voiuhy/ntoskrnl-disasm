FsRtlAreThereCurrentOrInProgressFileLocks proc near
                                        ; DATA XREF: .pdata:00000001400F132C↑o
                mov     rax, [rcx+18h]
                xor     edx, edx
                test    rax, rax
                jz      short loc_1404EF9E7
                cmp     [rax+20h], rdx
                jnz     short loc_1404EF9EE
                cmp     [rax+28h], rdx
                jnz     short loc_1404EF9EE

loc_1404EF9E7:                          ; CODE XREF: FsRtlAreThereCurrentOrInProgressFileLocks+9↑j
                mov     eax, [rcx+58h]
                test    eax, eax
                jz      short loc_1404EF9F0

loc_1404EF9EE:                          ; CODE XREF: FsRtlAreThereCurrentOrInProgressFileLocks+F↑j
                                        ; FsRtlAreThereCurrentOrInProgressFileLocks+15↑j
                mov     dl, 1

loc_1404EF9F0:                          ; CODE XREF: FsRtlAreThereCurrentOrInProgressFileLocks+1C↑j
                mov     al, dl
                retn
FsRtlAreThereCurrentOrInProgressFileLocks endp
