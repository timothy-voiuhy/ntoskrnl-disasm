FsRtlSetDriverBacking proc near         ; CODE XREF: IoRegisterFileSystem+1B↑p
                                        ; IoRegisterFsRegistrationChangeMountAware+3F↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     eax, eax
                test    dl, 1
                jz      short loc_14077F059
                mov     rcx, [rcx+58h]
                test    rcx, rcx
                jz      short loc_14077F05F
                call    sub_14077F06C

loc_14077F059:                          ; CODE XREF: FsRtlSetDriverBacking+9↑j
                                        ; FsRtlSetDriverBacking+24↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14077F05F:                          ; CODE XREF: FsRtlSetDriverBacking+12↑j
                mov     eax, 0C0000263h
                jmp     short loc_14077F059
FsRtlSetDriverBacking endp
