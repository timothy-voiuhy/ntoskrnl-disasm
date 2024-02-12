IoGetBootDiskInformation proc near      ; DATA XREF: .pdata:000000014011C9D0↑o
                sub     rsp, 28h
                cmp     cs:dword_140C4C058, 2
                jb      short loc_140895354
                mov     eax, 0C0000189h
                jmp     short loc_140895359
; ---------------------------------------------------------------------------

loc_140895354:                          ; CODE XREF: IoGetBootDiskInformation+B↑j
                call    sub_140A91BDC

loc_140895359:                          ; CODE XREF: IoGetBootDiskInformation+12↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetBootDiskInformation endp
