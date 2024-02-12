FsRtlQueryMaximumVirtualDiskNestingLevel proc near
                                        ; CODE XREF: FsRtlGetVirtualDiskNestingLevel+160↑p
                                        ; FsRtlGetVirtualDiskNestingLevel:loc_14035E1BC↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     eax, cs:dword_140C0F368
                cmp     eax, 0FFFFFFFFh
                jz      short loc_14039ABE5

loc_14039ABDF:                          ; CODE XREF: FsRtlQueryMaximumVirtualDiskNestingLevel+20↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039ABE5:                          ; CODE XREF: FsRtlQueryMaximumVirtualDiskNestingLevel+D↑j
                call    sub_1403CD0FC
                mov     cs:dword_140C0F368, eax
                jmp     short loc_14039ABDF
FsRtlQueryMaximumVirtualDiskNestingLevel endp
