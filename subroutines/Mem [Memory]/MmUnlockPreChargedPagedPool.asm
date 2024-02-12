MmUnlockPreChargedPagedPool proc near   ; CODE XREF: sub_140386A6C+22↑p
                                        ; sub_1403F5F50+1AD↑p ...
                sub     rsp, 28h
                mov     r8, rcx
                call    sub_14026B560
                lea     rcx, [rdx+0FFFh]
                and     r8d, 0FFFh
                add     rcx, r8
                xor     r8d, r8d
                shr     rcx, 0Ch
                dec     rcx
                lea     rdx, [rax+rcx*8]
                mov     rcx, rax
                call    sub_1403A1040
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmUnlockPreChargedPagedPool endp
