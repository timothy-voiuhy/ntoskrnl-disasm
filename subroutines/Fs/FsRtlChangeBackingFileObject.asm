FsRtlChangeBackingFileObject proc near  ; DATA XREF: .rdata:000000014009AA8C↑o
                                        ; .pdata:00000001400DC878↑o

; FUNCTION CHUNK AT 000000014049EF6C SIZE 0000002C BYTES

                sub     rsp, 28h
                test    r9d, r9d
                jnz     short loc_140394E91
                test    r8d, r8d
                jnz     loc_14049EF6C
                lea     r8d, [r9+1]

loc_140394E86:                          ; CODE XREF: FsRtlChangeBackingFileObject+10A123↓j
                call    sub_140356734

loc_140394E8B:                          ; CODE XREF: FsRtlChangeBackingFileObject+26↓j
                                        ; FsRtlChangeBackingFileObject+10A10D↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140394E91:                          ; CODE XREF: FsRtlChangeBackingFileObject+7↑j
                mov     eax, 0C00000F2h
                jmp     short loc_140394E8B
FsRtlChangeBackingFileObject endp
