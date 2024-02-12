CcMdlWriteComplete proc near            ; DATA XREF: .pdata:0000000140107304↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbx, rcx
                call    IoGetRelatedDeviceObject
                mov     rcx, rax
                mov     r9, [rax+8]
                mov     r10, [r9+50h]
                test    r10, r10
                jz      short loc_140720BD8
                cmp     dword ptr [r10], 98h
                jbe     short loc_140720BD8
                mov     rax, [r10+98h]
                test    rax, rax
                jz      short loc_140720BD8
                mov     r9, rcx
                mov     r8, rdi
                mov     rcx, rbx
                mov     rdx, rsi
                call    sub_1404079D0
                test    al, al
                jz      short loc_140720BD8

loc_140720BC7:                          ; CODE XREF: CcMdlWriteComplete+76↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140720BD8:                          ; CODE XREF: CcMdlWriteComplete+2B↑j
                                        ; CcMdlWriteComplete+34↑j ...
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140361498
                jmp     short loc_140720BC7
CcMdlWriteComplete endp
