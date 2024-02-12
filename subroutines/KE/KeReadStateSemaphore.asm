KeReadStateSemaphore proc near          ; CODE XREF: sub_140653C50+1256↓p
                                        ; DATA XREF: .pdata:00000001400D3194↑o
                mov     eax, [rcx+4]    ; FsRtlNumberOfRunsInBaseMcb
                                        ; KeReadStateEvent
                                        ; KeReadStateMutant
                                        ; KeReadStateMutex
                                        ; KeReadStateQueue
                retn
KeReadStateSemaphore endp
