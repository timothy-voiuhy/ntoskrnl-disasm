FsRtlRegisterUncProviderEx2 proc near   ; DATA XREF: .rdata:00000001400AA648↑o
                                        ; .pdata:000000014010E57C↑o

; FUNCTION CHUNK AT 000000014085FBBA SIZE 0000000E BYTES

                sub     rsp, 28h
                mov     eax, 200h
                cmp     [r8+2], ax
                jb      loc_14085FBBA
                call    sub_1407C6428

loc_1407C6419:                          ; CODE XREF: FsRtlRegisterUncProviderEx2+997C3↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlRegisterUncProviderEx2 endp
