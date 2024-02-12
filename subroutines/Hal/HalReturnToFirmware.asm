HalReturnToFirmware proc near           ; CODE XREF: sub_1403855A0:loc_14038591F↑p
                                        ; sub_1404BE520+9↓p ...
                sub     rsp, 28h
                test    ecx, ecx
                jz      short loc_1404BE406
                cmp     ecx, 1
                jz      short loc_1404BE3F7
                jle     short loc_1404BE3E4
                cmp     ecx, 3
                jle     short loc_1404BE406

loc_1404BE3E4:                          ; CODE XREF: HalReturnToFirmware+D↑j
                lea     rcx, aHalreturntofir ; "HalReturnToFirmware called\n"
                call    DbgPrint
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404BE3F7:                          ; CODE XREF: HalReturnToFirmware+B↑j
                xor     edx, edx
                lea     ecx, [rdx+4]
                call    KdPowerTransitionEx
                call    sub_1404BE6BC

loc_1404BE406:                          ; CODE XREF: HalReturnToFirmware+6↑j
                                        ; HalReturnToFirmware+12↑j
                xor     edx, edx
                lea     ecx, [rdx+4]
                call    KdPowerTransitionEx
                cmp     cs:qword_140CDB1A8, 0
                jz      short loc_1404BE426
                mov     rax, cs:off_140C00950
                call    sub_1404079D0

loc_1404BE426:                          ; CODE XREF: HalReturnToFirmware+48↑j
                cli
                cmp     cs:byte_140C4A458, 0
                jz      short loc_1404BE439
                cmp     cs:dword_140C4A260, 0
                jz      short loc_1404BE43E

loc_1404BE439:                          ; CODE XREF: HalReturnToFirmware+5E↑j
                call    sub_1404B6D1C

loc_1404BE43E:                          ; CODE XREF: HalReturnToFirmware+67↑j
                call    sub_140346FBC
                cmp     cs:dword_140C12380, 0
                jz      short loc_1404BE452
                call    sub_1404D2E0C
; ---------------------------------------------------------------------------
                align 2

loc_1404BE452:                          ; CODE XREF: HalReturnToFirmware+7A↑j
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1404BE53C
; ---------------------------------------------------------------------------
                db 0CCh
HalReturnToFirmware endp
