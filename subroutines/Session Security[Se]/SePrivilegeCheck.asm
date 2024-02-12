SePrivilegeCheck proc near              ; CODE XREF: sub_140629158+3F↓p
                                        ; sub_14064A9E0+21C↓p ...

var_18          = byte ptr -18h

                sub     rsp, 38h
                mov     rax, rcx
                test    r8b, r8b
                jz      short loc_140611911
                mov     rcx, [rdx]
                test    rcx, rcx
                jnz     short loc_140611903
                mov     rcx, [rdx+10h]

loc_1406118E8:                          ; CODE XREF: SePrivilegeCheck+37↓j
                mov     r9d, [rax+4]
                lea     rdx, [rax+8]
                mov     [rsp+38h+var_18], r8b
                mov     r8d, [rax]
                call    sub_1402163F0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140611903:                          ; CODE XREF: SePrivilegeCheck+12↑j
                cmp     dword ptr [rdx+8], 2
                jge     short loc_1406118E8
                xor     al, al
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140611911:                          ; CODE XREF: SePrivilegeCheck+A↑j
                mov     al, 1
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SePrivilegeCheck endp
