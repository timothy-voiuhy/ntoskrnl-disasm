ZwLockProductActivationKeys proc near   ; CODE XREF: sub_140A5D3D8+A↓p
                                        ; DATA XREF: .pdata:00000001400E2974↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 10Ch
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwLockProductActivationKeys endp
