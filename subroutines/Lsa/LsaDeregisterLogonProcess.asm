LsaDeregisterLogonProcess proc near     ; DATA XREF: .pdata:0000000140122730↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     ebx, 0C0000002h
                mov     rcx, cs:qword_140C1D8C8
                call    sub_140309D44
                test    rax, rax
                jz      short loc_14091DBDD
                mov     rax, [rax+8]
                mov     rcx, rdi
                call    sub_1404079D0
                mov     rcx, cs:qword_140C1D8C8
                mov     ebx, eax
                call    sub_140309D28

loc_14091DBDD:                          ; CODE XREF: LsaDeregisterLogonProcess+21↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LsaDeregisterLogonProcess endp
