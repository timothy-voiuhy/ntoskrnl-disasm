ExDeleteNPagedLookasideList proc near   ; CODE XREF: FsRtlDeleteExtraCreateParameterLookasideList+9↓p
                                        ; DATA XREF: .pdata:00000001400DCEE4↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdx, rcx
                lea     rcx, qword_140C168D8
                call    sub_140351A64
                mov     rcx, rbx
                call    sub_140351990
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExDeleteNPagedLookasideList endp
