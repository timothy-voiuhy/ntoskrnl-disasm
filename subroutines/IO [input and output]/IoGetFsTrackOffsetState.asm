IoGetFsTrackOffsetState proc near       ; DATA XREF: .rdata:000000014006DB78↑o
                                        ; .pdata:00000001400D3050↑o

; FUNCTION CHUNK AT 00000001404634B4 SIZE 0000001C BYTES

                sub     rsp, 28h
                mov     r9, rdx
                mov     edx, 5
                call    sub_1402F17B0
                test    al, al
                jnz     loc_1404634B4
                mov     eax, 0C0000225h

loc_1402F14DE:                          ; CODE XREF: IoGetFsTrackOffsetState+17200B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetFsTrackOffsetState endp
