IoCsqRemoveNextIrp proc near            ; DATA XREF: .pdata:00000001400D6F80↑o

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+20h]
                mov     rsi, rdx
                and     qword ptr [rcx+38h], 0
                lea     rdx, [rsp+28h+arg_0]
                mov     rbx, rcx
                mov     [rsp+28h+arg_0], 0
                call    sub_1404079D0
                xor     edx, edx

loc_14033DA7F:                          ; CODE XREF: IoCsqRemoveNextIrp+52↓j
                mov     rax, [rbx+18h]
                mov     r8, rsi
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14033DAE8
                xor     ecx, ecx
                mov     rdx, rax
                xchg    rcx, [rdi+68h]
                test    rcx, rcx
                jz      short loc_14033DA7F
                mov     rax, [rbx+10h]
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rax, [rdi+90h]
                cmp     dword ptr [rax], 1
                jz      short loc_14033DAFC

loc_14033DABC:                          ; CODE XREF: IoCsqRemoveNextIrp+B1↓j
                and     qword ptr [rdi+90h], 0
                mov     rcx, rbx
                mov     rax, [rbx+28h]
                mov     dl, [rsp+28h+arg_0]
                call    sub_1404079D0
                mov     rax, rdi

loc_14033DAD7:                          ; CODE XREF: IoCsqRemoveNextIrp+AA↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14033DAE8:                          ; CODE XREF: IoCsqRemoveNextIrp+44↑j
                mov     rax, [rbx+28h]
                mov     rcx, rbx
                mov     dl, [rsp+28h+arg_0]
                call    sub_1404079D0
                xor     eax, eax
                jmp     short loc_14033DAD7
; ---------------------------------------------------------------------------

loc_14033DAFC:                          ; CODE XREF: IoCsqRemoveNextIrp+6A↑j
                and     qword ptr [rax+8], 0
                jmp     short loc_14033DABC
IoCsqRemoveNextIrp endp
