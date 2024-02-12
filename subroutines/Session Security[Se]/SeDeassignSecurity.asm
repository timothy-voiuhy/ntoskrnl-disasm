SeDeassignSecurity proc near            ; CODE XREF: sub_14024C4F0:loc_14024C54C↑p
                                        ; sub_140601BA0+100C↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_140704098
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140704098:                          ; CODE XREF: SeDeassignSecurity+F↑j
                and     qword ptr [rbx], 0
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeDeassignSecurity endp
