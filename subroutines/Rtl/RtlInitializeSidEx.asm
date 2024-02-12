RtlInitializeSidEx proc near            ; CODE XREF: RtlCheckTokenMembershipEx+13C↑p
                                        ; RtlCheckTokenMembershipEx+19ADE4↓p
                                        ; DATA XREF: ...

arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_18], r9
                push    rbx
                push    rdi
                sub     rsp, 38h
                movzx   ebx, r8b
                mov     rdi, rcx
                mov     r8b, bl
                call    RtlInitializeSid
                test    eax, eax
                js      short loc_1403C9A5B
                lea     rcx, [rsp+48h+arg_18]
                test    bl, bl
                jz      short loc_1403C9A59
                add     rcx, 0FFFFFFFFFFFFFFF8h
                lea     rdx, [rdi+8]
                mov     r8d, ebx

loc_1403C9A47:                          ; CODE XREF: RtlInitializeSidEx+47↓j
                lea     rcx, [rcx+8]
                mov     eax, [rcx]
                mov     [rdx], eax
                lea     rdx, [rdx+4]
                sub     r8, 1
                jnz     short loc_1403C9A47

loc_1403C9A59:                          ; CODE XREF: RtlInitializeSidEx+2A↑j
                xor     eax, eax

loc_1403C9A5B:                          ; CODE XREF: RtlInitializeSidEx+21↑j
                add     rsp, 38h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitializeSidEx endp
