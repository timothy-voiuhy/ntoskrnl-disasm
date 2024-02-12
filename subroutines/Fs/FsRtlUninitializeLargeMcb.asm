FsRtlUninitializeLargeMcb proc near     ; CODE XREF: FsRtlUninitializeMcb+4↓p
                                        ; DATA XREF: .pdata:00000001400D4478↑o
                push    rbx
                sub     rsp, 20h
                mov     rdx, [rcx]
                mov     rbx, rcx
                test    rdx, rdx
                jz      short loc_14030CFCA
                lea     rcx, unk_140CDB700
                call    sub_14030D224
                and     qword ptr [rbx], 0
                lea     rcx, [rbx+8]
                call    FsRtlUninitializeBaseMcb

loc_14030CFCA:                          ; CODE XREF: FsRtlUninitializeLargeMcb+F↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlUninitializeLargeMcb endp
