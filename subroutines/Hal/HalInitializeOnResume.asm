HalInitializeOnResume proc near         ; CODE XREF: sub_14099A6B0+109↓p
                                        ; DATA XREF: .pdata:00000001400DBF90↑o
                sub     rsp, 28h
                xor     eax, eax
                cmp     cs:byte_140C49E48, al
                jnz     short loc_14038C8B4

loc_14038C8AE:                          ; CODE XREF: HalInitializeOnResume+19↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14038C8B4:                          ; CODE XREF: HalInitializeOnResume+C↑j
                call    sub_1404C4304
                jmp     short loc_14038C8AE
HalInitializeOnResume endp
