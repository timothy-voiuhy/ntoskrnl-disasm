IoClearFsTrackOffsetState proc near     ; DATA XREF: .pdata:00000001400F2904↑o
                sub     rsp, 28h
                mov     edx, 5
                call    sub_1402F17B0
                test    al, al
                jnz     short loc_140507C69
                mov     eax, 0C0000225h
                jmp     short loc_140507C73
; ---------------------------------------------------------------------------

loc_140507C69:                          ; CODE XREF: IoClearFsTrackOffsetState+10↑j
                xor     r8d, r8d
                call    sub_1402F0FC8
                xor     eax, eax

loc_140507C73:                          ; CODE XREF: IoClearFsTrackOffsetState+17↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoClearFsTrackOffsetState endp
