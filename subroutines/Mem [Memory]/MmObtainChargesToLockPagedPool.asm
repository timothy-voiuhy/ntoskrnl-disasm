MmObtainChargesToLockPagedPool proc near
                                        ; CODE XREF: sub_1406A13BC+614↑p
                                        ; sub_14079B05C+110↑p ...
                sub     rsp, 28h
                and     ecx, 0FFFh
                add     rdx, 0FFFh
                add     rdx, rcx
                mov     r8d, 400h
                shr     rdx, 0Ch
                lea     rcx, unk_140C50C00
                call    sub_1402D4174
                xor     ecx, ecx
                test    eax, eax
                setnz   cl
                mov     eax, ecx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmObtainChargesToLockPagedPool endp
