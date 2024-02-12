FsRtlMdlWriteCompleteDev proc near      ; DATA XREF: .pdata:0000000140106EB4↑o
                sub     rsp, 28h
                mov     eax, [rcx+50h]
                test    al, 10h
                jnz     short loc_14071D9C8
                call    sub_140361498
                mov     al, 1

loc_14071D9C2:                          ; CODE XREF: FsRtlMdlWriteCompleteDev+1A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14071D9C8:                          ; CODE XREF: FsRtlMdlWriteCompleteDev+9↑j
                xor     al, al
                jmp     short loc_14071D9C2
FsRtlMdlWriteCompleteDev endp
