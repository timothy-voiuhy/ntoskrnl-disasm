ExReleaseFastResource proc near         ; CODE XREF: sub_14038E39C+82↑p
                                        ; DATA XREF: .rdata:0000000140099A2C↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049C542 SIZE 0000009C BYTES

                sub     rsp, 38h
                movzx   r10d, word ptr [rcx+1Ah]
                mov     r11b, 1
                test    r11b, r10b
                jz      loc_14049C542
                mov     rax, cr8
                mov     r8, gs:188h
                mov     r9d, 2
                cmp     al, r9b
                ja      loc_14049C55D
                cmp     al, r11b
                jnb     short loc_14038E81E
                test    dword ptr [r8+74h], 400h
                jnz     short loc_14038E81E
                cmp     dword ptr [r8+1E4h], 0
                jz      loc_14049C574

loc_14038E81E:                          ; CODE XREF: ExReleaseFastResource+34↑j
                                        ; ExReleaseFastResource+3E↑j
                mov     r9, [rdx+20h]
                cmp     r9, r8
                jnz     loc_14049C58F
                mov     rax, [rdx+18h]
                cmp     rax, rcx
                jnz     loc_14049C5A8
                test    [rdx+11h], r11b
                jnz     loc_14049C5C3
                test    r10b, r10b
                js      short loc_14038E852
                call    sub_14038E860

loc_14038E84C:                          ; CODE XREF: ExReleaseFastResource+87↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14038E852:                          ; CODE XREF: ExReleaseFastResource+75↑j
                call    sub_14038FB10
                jmp     short loc_14038E84C
ExReleaseFastResource endp
