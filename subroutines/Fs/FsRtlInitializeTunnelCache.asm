FsRtlInitializeTunnelCache proc near    ; DATA XREF: .pdata:0000000140106ECC↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     edx, 1
                mov     [rcx], edx
                mov     rbx, rcx
                mov     [rcx+8], rdi
                xor     r8d, r8d
                mov     [rcx+10h], edi
                add     rcx, 18h
                call    KeInitializeEvent
                lea     rax, [rbx+40h]
                mov     [rbx+38h], rdi
                mov     [rbx+50h], di
                mov     rbx, [rsp+28h+arg_0]
                mov     [rax+8], rax
                mov     [rax], rax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInitializeTunnelCache endp
