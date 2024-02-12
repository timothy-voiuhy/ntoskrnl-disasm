FsRtlAreThereWaitingFileLocks proc near ; DATA XREF: .pdata:00000001400F1338↑o
                xor     eax, eax
                test    rcx, rcx
                jz      short locret_1404EFA17
                mov     rcx, [rcx+18h]
                test    rcx, rcx
                jz      short locret_1404EFA17
                cmp     [rcx+30h], rax
                setnz   al

locret_1404EFA17:                       ; CODE XREF: FsRtlAreThereWaitingFileLocks+5↑j
                                        ; FsRtlAreThereWaitingFileLocks+E↑j
                retn
FsRtlAreThereWaitingFileLocks endp
