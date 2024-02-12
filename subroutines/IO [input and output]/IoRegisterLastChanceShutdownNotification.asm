IoRegisterLastChanceShutdownNotification proc near
                                        ; DATA XREF: .pdata:000000014010DF34↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     edx, 18h
                mov     ecx, 200h
                mov     r8d, 68536F49h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1407BDD17
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     rdx, rdi
                mov     [rdi+10h], rbx
                lea     rcx, qword_140C45B00
                call    sub_1403C5168
                bts     dword ptr [rbx+30h], 0Bh
                lea     rcx, asc_14000DC28 ; "\a"
                mov     rdx, rbx
                call    sub_1407BDDA4
                xor     eax, eax

loc_1407BDD0B:                          ; CODE XREF: IoRegisterLastChanceShutdownNotification+6C↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407BDD17:                          ; CODE XREF: IoRegisterLastChanceShutdownNotification+28↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1407BDD0B
IoRegisterLastChanceShutdownNotification endp
