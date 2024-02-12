FsRtlUninitializeBaseMcb proc near      ; CODE XREF: FsRtlUninitializeLargeMcb+25↑p
                                        ; DATA XREF: .pdata:00000001400D4484↑o
                sub     rsp, 28h
                cmp     dword ptr [rcx], 0Fh
                jnz     short loc_14030D010
                cmp     word ptr [rcx+8], 1
                mov     rdx, [rcx+10h]
                jnz     short loc_14030D002
                lea     rcx, unk_140CDB800
                call    sub_140234500
                jmp     short loc_14030D01B
; ---------------------------------------------------------------------------

loc_14030D002:                          ; CODE XREF: FsRtlUninitializeBaseMcb+12↑j
                lea     rcx, unk_140CDB780
                call    sub_14030D224
                jmp     short loc_14030D01B
; ---------------------------------------------------------------------------

loc_14030D010:                          ; CODE XREF: FsRtlUninitializeBaseMcb+7↑j
                mov     rcx, [rcx+10h]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14030D01B:                          ; CODE XREF: FsRtlUninitializeBaseMcb+20↑j
                                        ; FsRtlUninitializeBaseMcb+2E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlUninitializeBaseMcb endp
