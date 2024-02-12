FsRtlMdlWriteComplete proc near         ; DATA XREF: .pdata:000000014011C238↑o

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
                jz      short loc_14088CA45
                cmp     dword ptr [r10], 98h
                jbe     short loc_14088CA45
                mov     rax, [r10+98h]
                test    rax, rax
                jz      short loc_14088CA45
                mov     r9, rcx
                mov     r8, rdi
                mov     rcx, rbx
                mov     rdx, rsi
                call    sub_1404079D0
                jmp     short loc_14088CA47
; ---------------------------------------------------------------------------

loc_14088CA45:                          ; CODE XREF: FsRtlMdlWriteComplete+2B↑j
                                        ; FsRtlMdlWriteComplete+34↑j ...
                xor     al, al

loc_14088CA47:                          ; CODE XREF: FsRtlMdlWriteComplete+53↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlMdlWriteComplete endp
