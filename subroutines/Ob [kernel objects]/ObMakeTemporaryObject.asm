ObMakeTemporaryObject proc near         ; CODE XREF: IoDeleteDevice+130↑p
                                        ; sub_1402F0A40+172860↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                lea     rdi, [rcx-30h]
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, [rdi+10h]
                call    ExAcquirePushLockExclusiveEx
                and     byte ptr [rdi+1Bh], 0EFh
                lea     rcx, [rdi+10h]
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, rdi
                call    sub_140673E90
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObMakeTemporaryObject endp
