ExReleaseAutoExpandPushLockExclusive proc near
                                        ; CODE XREF: sub_140289B60+6AC↑p
                                        ; sub_1402FEA00+169295↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047768A SIZE 0000001D BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     edi, edx
                mov     rbx, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14047768A
                mov     eax, [rcx+8]
                test    al, 1
                jnz     short loc_140330BD3
                mov     ecx, [rcx+0Ch]
                mov     eax, ecx
                and     eax, 0F0000h
                cmp     eax, 0F0000h
                jnb     short loc_140330BAC
                add     ecx, 10000h
                mov     [rbx+0Ch], ecx

loc_140330BAC:                          ; CODE XREF: ExReleaseAutoExpandPushLockExclusive+31↑j
                                        ; ExReleaseAutoExpandPushLockExclusive+72↓j
                mov     edx, 2
                mov     rcx, rbx
                call    ExReleasePushLockEx
                test    dil, 2
                jnz     short loc_140330BC7
                mov     rcx, rbx
                call    sub_140243660

loc_140330BC7:                          ; CODE XREF: ExReleaseAutoExpandPushLockExclusive+4D↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140330BD3:                          ; CODE XREF: ExReleaseAutoExpandPushLockExclusive+20↑j
                mov     ecx, eax
                mov     eax, 0FFFFFFF8h
                and     rcx, rax
                call    sub_140391404
                jmp     short loc_140330BAC
ExReleaseAutoExpandPushLockExclusive endp
