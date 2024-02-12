PoNotifyVSyncChange proc near           ; DATA XREF: .pdata:00000001400D07F4↑o
                push    rbx
                sub     rsp, 20h
                mov     bl, cl
                lea     rcx, unk_140C24960
                call    sub_1402B44BC
                mov     cs:byte_140C0F1E5, bl
                call    sub_1402B4260
                lea     rcx, unk_140C24960
                call    sub_1402B4220
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoNotifyVSyncChange endp
