ExCleanupAutoExpandPushLock proc near   ; CODE XREF: ExFreeAutoExpandPushLock+9↓p
                                        ; sub_1405F604C+AF↓p ...
                sub     rsp, 28h
                mov     eax, [rcx+8]
                test    al, 1
                jnz     short loc_140207A81

loc_140207A7B:                          ; CODE XREF: ExCleanupAutoExpandPushLock+25↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140207A81:                          ; CODE XREF: ExCleanupAutoExpandPushLock+9↑j
                mov     ecx, eax
                mov     edx, 10h
                mov     eax, 0FFFFFFF8h
                and     rcx, rax
                call    sub_1403942BC
                jmp     short loc_140207A7B
ExCleanupAutoExpandPushLock endp
