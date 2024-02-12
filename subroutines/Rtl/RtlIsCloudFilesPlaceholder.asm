RtlIsCloudFilesPlaceholder proc near    ; DATA XREF: .pdata:00000001400F7FD4↑o
                bt      ecx, 0Ah
                jnb     short loc_14058DC68
                and     edx, 0FFFF0FFFh
                cmp     edx, 9000001Ah
                jnz     short loc_14058DC68
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14058DC68:                          ; CODE XREF: RtlIsCloudFilesPlaceholder+4↑j
                                        ; RtlIsCloudFilesPlaceholder+12↑j
                xor     al, al
                retn
RtlIsCloudFilesPlaceholder endp
