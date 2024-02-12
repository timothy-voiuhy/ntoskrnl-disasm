FsRtlMdlReadComplete proc near          ; DATA XREF: .pdata:00000001400F1224↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    IoGetRelatedDeviceObject
                mov     rcx, rax
                mov     r8, [rax+8]
                mov     r9, [r8+50h]
                test    r9, r9
                jz      short loc_1404EF29A
                cmp     dword ptr [r9], 88h
                jbe     short loc_1404EF29A
                mov     rax, [r9+88h]
                test    rax, rax
                jz      short loc_1404EF29A
                mov     r8, rcx
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     short loc_1404EF29C
; ---------------------------------------------------------------------------

loc_1404EF29A:                          ; CODE XREF: FsRtlMdlReadComplete+23↑j
                                        ; FsRtlMdlReadComplete+2C↑j ...
                xor     al, al

loc_1404EF29C:                          ; CODE XREF: FsRtlMdlReadComplete+48↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlMdlReadComplete endp
