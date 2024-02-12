KeIsWaitListEmpty proc near             ; DATA XREF: .pdata:000000014011DE1C↑o
                add     rcx, 8
                lock or dword ptr [rsp+0], 0
                cmp     rcx, [rcx]
                setz    al
                retn
KeIsWaitListEmpty endp
