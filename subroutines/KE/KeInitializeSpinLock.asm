KeInitializeSpinLock proc near          ; CODE XREF: IoRegisterPriorityCallback+59↓p
                                        ; sub_1403B46D0+147↓p ...
                and     qword ptr [rcx], 0 ; ExInitializePushLock
                                        ; ExInitializeRundownProtection
                retn
KeInitializeSpinLock endp
