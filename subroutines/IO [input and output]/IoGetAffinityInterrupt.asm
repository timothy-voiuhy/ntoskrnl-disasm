IoGetAffinityInterrupt proc near        ; DATA XREF: .pdata:00000001400DB684↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rbx, rdx
                mov     rdi, rcx
                lea     rdx, [rsp+28h+arg_0]
                mov     ecx, [rcx+60h]
                call    KeGetProcessorNumberFromIndex
                test    eax, eax
                js      short loc_140381BDE
                movzx   eax, word ptr [rsp+28h+arg_0]
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx], xmm0
                mov     [rbx+8], ax
                mov     rax, [rdi-68h]
                mov     [rbx], rax
                xor     eax, eax

loc_140381BDE:                          ; CODE XREF: IoGetAffinityInterrupt+24↑j
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetAffinityInterrupt endp
