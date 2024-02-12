KeUnstackDetachProcess proc near        ; CODE XREF: sub_140280660+756↓p
                                        ; sub_140280660+7B7↓p ...
                sub     rsp, 28h
                mov     rax, [rcx+20h]
                cmp     rax, 1
                jz      short loc_14021E81A
                xor     edx, edx
                test    rax, rax
                jnz     short loc_14021E815
                mov     rcx, gs:188h
                add     rcx, 258h

loc_14021E815:                          ; CODE XREF: KeUnstackDetachProcess+13↑j
                call    sub_14021E830

loc_14021E81A:                          ; CODE XREF: KeUnstackDetachProcess+C↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeUnstackDetachProcess endp
