FsRtlGetFileNameInformation proc near   ; DATA XREF: .pdata:0000000140107124↑o
                sub     rsp, 38h
                mov     rax, cs:qword_140CF4338
                test    rax, rax
                jz      short loc_14071F5AF
                mov     rax, [rax+18h]
                call    sub_1404079D0

loc_14071F5A9:                          ; CODE XREF: FsRtlGetFileNameInformation+24↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071F5AF:                          ; CODE XREF: FsRtlGetFileNameInformation+E↑j
                mov     eax, 0C00000BBh
                jmp     short loc_14071F5A9
FsRtlGetFileNameInformation endp
