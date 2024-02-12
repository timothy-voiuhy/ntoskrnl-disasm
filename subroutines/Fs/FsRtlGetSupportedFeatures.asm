FsRtlGetSupportedFeatures proc near     ; CODE XREF: sub_1406EBBE0+3D↓p
                                        ; sub_1406EBDE4+27↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                xor     eax, eax
                mov     [rdx], eax
                mov     r8, cs:qword_140CF4338
                test    r8, r8
                jz      short loc_14032F33D
                mov     rax, [r8+10h]
                call    sub_1404079D0

loc_14032F33D:                          ; CODE XREF: FsRtlGetSupportedFeatures+12↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlGetSupportedFeatures endp
