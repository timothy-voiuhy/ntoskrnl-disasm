ExTryAcquireSpinLockSharedAtDpcLevel proc near
                                        ; CODE XREF: sub_140547FD0+44↑p
                                        ; DATA XREF: .pdata:00000001400F9FD8↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, gs:20h
                mov     rdi, rcx
                mov     rdx, [rbx+84B8h]
                test    rdx, rdx
                jz      short loc_1405B5E0B
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_1405B5E0B
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_1405B5E0B
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_1405B5E0B:                          ; CODE XREF: ExTryAcquireSpinLockSharedAtDpcLevel+20↑j
                                        ; ExTryAcquireSpinLockSharedAtDpcLevel+26↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                mov     rcx, rdi
                jz      short loc_1405B5E20
                call    sub_1405B6134
                mov     edi, eax
                jmp     short loc_1405B5E28
; ---------------------------------------------------------------------------

loc_1405B5E20:                          ; CODE XREF: ExTryAcquireSpinLockSharedAtDpcLevel+45↑j
                call    sub_14026F5B0
                movzx   edi, al

loc_1405B5E28:                          ; CODE XREF: ExTryAcquireSpinLockSharedAtDpcLevel+4E↑j
                test    edi, edi
                jnz     short loc_1405B5E51
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jz      short loc_1405B5E51
                cmp     byte ptr [rbx+20h], 1
                ja      short loc_1405B5E51
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_1405B5E51
                mov     rcx, rbx
                call    sub_1403F2EC4

loc_1405B5E51:                          ; CODE XREF: ExTryAcquireSpinLockSharedAtDpcLevel+5A↑j
                                        ; ExTryAcquireSpinLockSharedAtDpcLevel+66↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExTryAcquireSpinLockSharedAtDpcLevel endp
