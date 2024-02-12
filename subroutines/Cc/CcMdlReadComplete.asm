CcMdlReadComplete proc near             ; DATA XREF: .pdata:0000000140106C98↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                call    IoGetRelatedDeviceObject
                mov     rcx, rax
                mov     r8, [rax+8]
                mov     r9, [r8+50h]
                test    r9, r9
                jz      short loc_14071BCE8
                cmp     dword ptr [r9], 98h
                jbe     short loc_14071BCE8
                mov     rax, [r9+88h]
                test    rax, rax
                jz      short loc_14071BCE8
                mov     r8, rcx
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1404079D0
                test    al, al
                jz      short loc_14071BCE8

loc_14071BCDC:                          ; CODE XREF: CcMdlReadComplete+60↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14071BCE8:                          ; CODE XREF: CcMdlReadComplete+23↑j
                                        ; CcMdlReadComplete+2C↑j ...
                mov     rdx, rbx
                call    sub_14070D934
                jmp     short loc_14071BCDC
CcMdlReadComplete endp
