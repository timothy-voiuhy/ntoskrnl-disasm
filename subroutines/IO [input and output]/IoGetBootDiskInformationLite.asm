IoGetBootDiskInformationLite proc near  ; DATA XREF: .pdata:000000014010CCF8↑o
                sub     rsp, 28h
                cmp     cs:dword_140C4C058, 2
                jnb     short loc_14079CC68
                call    NaptrDnsRecordConvert_2

loc_14079CC62:                          ; CODE XREF: IoGetBootDiskInformationLite+1D↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14079CC68:                          ; CODE XREF: IoGetBootDiskInformationLite+B↑j
                mov     eax, 0C0000189h
                jmp     short loc_14079CC62
IoGetBootDiskInformationLite endp
