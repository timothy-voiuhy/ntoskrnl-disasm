ExConvertPushLockExclusiveToShared proc near
                                        ; DATA XREF: .pdata:00000001400E1B04↑o
                mov     edx, 11h
                lea     eax, [rdx-10h]
                lock cmpxchg [rcx], rdx
                retn
ExConvertPushLockExclusiveToShared endp
