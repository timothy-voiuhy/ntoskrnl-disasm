ExDeletePagedLookasideList proc near    ; CODE XREF: FsRtlDeleteExtraCreateParameterLookasideList:loc_14088BDA0↓p
                                        ; DATA XREF: .pdata:00000001400D8270↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdx, rcx
                lea     rcx, qword_140C16900
                call    sub_140351A64
                mov     rcx, rbx
                call    sub_140351990
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExDeletePagedLookasideList endp
