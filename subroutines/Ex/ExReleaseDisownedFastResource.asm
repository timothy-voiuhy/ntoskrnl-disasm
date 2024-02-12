ExReleaseDisownedFastResource proc near ; DATA XREF: .rdata:00000001400999E4↑o
                                        ; .pdata:00000001400DC278↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049C3B4 SIZE 00000087 BYTES

                sub     rsp, 38h
                movzx   r9d, word ptr [rcx+1Ah]
                mov     r10b, 1
                test    r10b, r9b
                jz      loc_14049C3B4
                mov     rax, cr8
                mov     r8, gs:188h
                cmp     al, 2
                ja      loc_14049C3CF
                cmp     al, r10b
                jnb     short loc_14038E497
                test    dword ptr [r8+74h], 400h
                jnz     short loc_14038E497
                cmp     dword ptr [r8+1E4h], 0
                jz      loc_14049C3EA

loc_14038E497:                          ; CODE XREF: ExReleaseDisownedFastResource+2D↑j
                                        ; ExReleaseDisownedFastResource+37↑j
                mov     rax, [rdx+18h]
                cmp     rax, rcx
                jnz     loc_14049C405
                test    [rdx+11h], r10b
                jz      loc_14049C420
                test    r9b, r9b
                js      short loc_14038E4BE
                call    sub_14038E4CC

loc_14038E4B8:                          ; CODE XREF: ExReleaseDisownedFastResource+73↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14038E4BE:                          ; CODE XREF: ExReleaseDisownedFastResource+61↑j
                call    sub_1405B4D60
                jmp     short loc_14038E4B8
ExReleaseDisownedFastResource endp
