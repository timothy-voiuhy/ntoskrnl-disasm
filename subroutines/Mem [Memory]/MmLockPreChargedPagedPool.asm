MmLockPreChargedPagedPool proc near     ; CODE XREF: sub_140387BD4+22↑p
                                        ; sub_1406A13BC+724↑p ...
                sub     rsp, 28h
                mov     r8, rcx
                call    sub_14026B560
                lea     rcx, [rdx+0FFFh]
                and     r8d, 0FFFh
                add     rcx, r8
                mov     r9d, 1
                shr     rcx, 0Ch
                mov     rdx, rax
                dec     rcx
                lea     r8, [rax+rcx*8]
                xor     ecx, ecx
                call    sub_140276020
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmLockPreChargedPagedPool endp
