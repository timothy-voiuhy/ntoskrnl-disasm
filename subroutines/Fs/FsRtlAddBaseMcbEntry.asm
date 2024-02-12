FsRtlAddBaseMcbEntry proc near          ; DATA XREF: .pdata:00000001400D629C↑o
                sub     rsp, 28h
                call    FsRtlAddBaseMcbEntryEx
                test    eax, eax
                setns   al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAddBaseMcbEntry endp
