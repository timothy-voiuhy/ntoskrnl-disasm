SkReleasePushLockExclusive proc near    ; DATA XREF: .pdata:00000001400F78E4↑o

var_18          = qword ptr -18h

                sub     rsp, 38h        ; SkAcquirePushLockExclusive
                                        ; SkAllocatePool
                                        ; SkFreePool
                                        ; SkInitializePushLock
                                        ; SkQuerySecureKernelInformation
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                mov     ecx, 123h
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
SkReleasePushLockExclusive endp
