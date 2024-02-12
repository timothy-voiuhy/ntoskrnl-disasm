FsRtlDeleteExtraCreateParameterLookasideList proc near
                                        ; DATA XREF: .pdata:000000014011C1CC↑o
                sub     rsp, 28h
                test    dl, 2
                jz      short loc_14088BDA0
                call    ExDeleteNPagedLookasideList
                jmp     short loc_14088BDA5
; ---------------------------------------------------------------------------

loc_14088BDA0:                          ; CODE XREF: FsRtlDeleteExtraCreateParameterLookasideList+7↑j
                call    ExDeletePagedLookasideList

loc_14088BDA5:                          ; CODE XREF: FsRtlDeleteExtraCreateParameterLookasideList+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlDeleteExtraCreateParameterLookasideList endp
