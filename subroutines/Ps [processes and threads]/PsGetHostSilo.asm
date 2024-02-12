PsGetHostSilo   proc near               ; CODE XREF: sub_1403618E0+4↓p
                                        ; sub_1403D5A4C+4D↓p ...
                xor     eax, eax        ; HalAdjustResourceList
                                        ; HalSystemVectorDispatchEntry
                                        ; KeRestoreFloatingPointState
                                        ; KeSaveFloatingPointState
                retn
PsGetHostSilo   endp

; ---------------------------------------------------------------------------
                align 4
algn_140206D14:                         ; DATA XREF: .pdata:00000001400C9678↑o
                align 20h
; Exported entry 2162. RtlGetDaclSecurityDescriptor

; =============== S U B R O U T I N E =======================================


