IoRegisterShutdownNotification proc near
                                        ; CODE XREF: sub_140A6BA20+F7↓p
                                        ; sub_140A6BC80+170↓p
                                        ; DATA XREF: ...

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
                jz      short loc_1407BDD97
                mov     rcx, rbx
                mov     [rax+10h], rbx
                call    ObfReferenceObject
                mov     rdx, rdi
                lea     rcx, qword_140C45B10
                call    sub_1403C5168
                bts     dword ptr [rbx+30h], 0Bh
                lea     rcx, qword_14000DC38
                mov     rdx, rbx
                call    sub_1407BDDA4
                xor     eax, eax

loc_1407BDD8B:                          ; CODE XREF: IoRegisterShutdownNotification+6C↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407BDD97:                          ; CODE XREF: IoRegisterShutdownNotification+28↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1407BDD8B
IoRegisterShutdownNotification endp
