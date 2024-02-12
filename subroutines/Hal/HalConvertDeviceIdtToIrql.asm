HalConvertDeviceIdtToIrql proc near     ; CODE XREF: sub_1407B8D64+D0↓p
                                        ; DATA XREF: .pdata:000000014010A70C↑o
                cmp     ecx, 100h
                jb      short loc_14076DC6E

loc_14076DC68:                          ; CODE XREF: HalConvertDeviceIdtToIrql+14↓j
                mov     cl, 3

loc_14076DC6A:                          ; CODE XREF: HalConvertDeviceIdtToIrql+19↓j
                                        ; HalConvertDeviceIdtToIrql+1D↓j
                mov     al, cl
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076DC6E:                          ; CODE XREF: HalConvertDeviceIdtToIrql+6↑j
                shr     cl, 4
                cmp     cl, 3
                jb      short loc_14076DC68
                cmp     cl, 0Ch
                jbe     short loc_14076DC6A
                mov     cl, 0Ch
                jmp     short loc_14076DC6A
HalConvertDeviceIdtToIrql endp
