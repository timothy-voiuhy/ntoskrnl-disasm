KeAcquireInStackQueuedSpinLockForDpc proc near
                                        ; CODE XREF: KeInsertByKeyDeviceQueue+3A↓p
                                        ; KeInsertDeviceQueue+2F↓p ...
                sub     rsp, 28h
                mov     rax, gs:20h
                mov     r9, rdx
                mov     r8d, [rax+312Ch]
                bt      r8d, 10h
                jnb     short loc_1405167D5
                call    KeAcquireInStackQueuedSpinLock
                jmp     short loc_1405167E8
; ---------------------------------------------------------------------------

loc_1405167D5:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockForDpc+1C↑j
                and     qword ptr [rdx], 0
                mov     [rdx+8], rcx
                mov     rdx, rcx
                mov     rcx, r9
                call    sub_14024B3F0

loc_1405167E8:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockForDpc+23↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireInStackQueuedSpinLockForDpc endp
