HvlUnregisterWheaErrorNotification proc near
                                        ; DATA XREF: .pdata:000000014011C580↑o
                sub     rsp, 28h
                xor     edx, edx
                mov     rax, rcx
                lock cmpxchg cs:qword_140CF5210, rdx
                jz      short loc_14088FDBB
                mov     eax, 0C0000001h
                jmp     short loc_14088FDC7
; ---------------------------------------------------------------------------

loc_14088FDBB:                          ; CODE XREF: HvlUnregisterWheaErrorNotification+12↑j
                lea     rcx, sub_1404F20E0
                call    WheaUnregisterInUsePageOfflineNotification

loc_14088FDC7:                          ; CODE XREF: HvlUnregisterWheaErrorNotification+19↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlUnregisterWheaErrorNotification endp
