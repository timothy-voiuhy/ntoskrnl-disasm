PoSetSystemState proc near              ; CODE XREF: PoRegisterSystemState+37↑p
                                        ; DATA XREF: .pdata:00000001400F69CC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, ecx
                mov     rbx, cr8
                cmp     bl, 2
                jnb     short loc_14056F2CA
                call    sub_140991320

loc_14056F2CA:                          ; CODE XREF: PoSetSystemState+13↑j
                mov     edx, 7
                mov     ecx, edi
                call    sub_1403A5EB0
                cmp     bl, 2
                jnb     short loc_14056F2E0
                call    sub_1409912E0

loc_14056F2E0:                          ; CODE XREF: PoSetSystemState+29↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoSetSystemState endp
