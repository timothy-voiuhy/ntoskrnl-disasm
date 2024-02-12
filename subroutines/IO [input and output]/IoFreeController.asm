IoFreeController proc near              ; CODE XREF: IoAllocateController+56↑p
                                        ; DATA XREF: .pdata:00000001400F273C↑o
                push    rbx
                sub     rsp, 30h
                lea     rbx, [rcx+10h]

loc_140505B0A:                          ; CODE XREF: IoFreeController+32↓j
                mov     rcx, rbx
                call    KeRemoveDeviceQueue
                test    rax, rax
                jz      short loc_140505B34
                lea     rcx, [rax-50h]
                xor     r8d, r8d
                mov     rax, [rcx+68h]
                mov     r9, [rcx+70h]
                mov     rdx, [rcx+20h]
                call    sub_1404079D0
                cmp     eax, 2
                jz      short loc_140505B0A

loc_140505B34:                          ; CODE XREF: IoFreeController+15↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFreeController endp
