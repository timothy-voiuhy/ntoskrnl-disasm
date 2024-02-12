KeQueryEffectivePriorityThread proc near
                                        ; DATA XREF: .pdata:00000001400DAD9C↑o
                push    rbx
                sub     rsp, 20h
                xor     edx, edx
                mov     rbx, rcx
                call    sub_1402D0980
                test    al, al
                mov     eax, 1
                jnz     short loc_140379150
                movsx   eax, byte ptr [rbx+0C3h]

loc_140379150:                          ; CODE XREF: KeQueryEffectivePriorityThread+17↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeQueryEffectivePriorityThread endp
