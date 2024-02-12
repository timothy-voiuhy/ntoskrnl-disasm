FsRtlReleaseFileNameInformation proc near
                                        ; DATA XREF: .pdata:0000000140107208↑o
                sub     rsp, 28h
                mov     rax, cs:qword_140CF4338
                mov     rax, [rax+20h]
                call    sub_1404079D0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlReleaseFileNameInformation endp
