FsRtlAllocateFileLock proc near         ; DATA XREF: .pdata:00000001400D947C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rbx, rdx
                lea     rcx, unk_140CDB880
                call    sub_14030E5D4
                xor     ecx, ecx
                test    rax, rax
                jz      short loc_140361EA4
                mov     [rax+18h], rcx
                mov     [rax], rdi
                mov     [rax+8], rbx
                mov     [rax+10h], cl
                mov     [rax+58h], ecx

loc_140361EA4:                          ; CODE XREF: FsRtlAllocateFileLock+21↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAllocateFileLock endp
