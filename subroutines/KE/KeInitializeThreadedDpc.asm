KeInitializeThreadedDpc proc near       ; CODE XREF: sub_1409A0900+73↓p
                                        ; DATA XREF: .pdata:00000001400DE7A4↑o
                xor     eax, eax
                mov     dword ptr [rcx], 11Ah
                mov     [rcx+38h], rax
                mov     [rcx+10h], rax
                mov     [rcx+18h], rdx
                mov     [rcx+20h], r8
                retn
KeInitializeThreadedDpc endp
