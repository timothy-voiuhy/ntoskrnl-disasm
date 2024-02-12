HvlRegisterWheaErrorNotification proc near
                                        ; DATA XREF: .pdata:000000014011C568↑o
                sub     rsp, 28h
                xor     eax, eax
                lock cmpxchg cs:qword_140CF5210, rcx
                jz      short loc_14088FD38
                mov     eax, 0C0000001h
                jmp     short loc_14088FD53
; ---------------------------------------------------------------------------

loc_14088FD38:                          ; CODE XREF: HvlRegisterWheaErrorNotification+F↑j
                xor     edx, edx
                lea     rcx, sub_1404F20E0
                call    WheaRegisterInUsePageOfflineNotification
                xor     ecx, ecx
                test    eax, eax
                jns     short loc_14088FD53
                xchg    rcx, cs:qword_140CF5210

loc_14088FD53:                          ; CODE XREF: HvlRegisterWheaErrorNotification+16↑j
                                        ; HvlRegisterWheaErrorNotification+2A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlRegisterWheaErrorNotification endp
