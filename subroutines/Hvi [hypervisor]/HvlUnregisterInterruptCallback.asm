HvlUnregisterInterruptCallback proc near
                                        ; DATA XREF: .pdata:00000001400F1614↑o
                cmp     ecx, 4
                ja      short locret_1404F20CF
                movsxd  rcx, ecx
                lea     r9, off_140CFB430
                lea     r8, sub_1404F1930
                mov     rax, rdx
                lock cmpxchg [r9+rcx*8], r8

locret_1404F20CF:                       ; CODE XREF: HvlUnregisterInterruptCallback+3↑j
                retn
HvlUnregisterInterruptCallback endp
