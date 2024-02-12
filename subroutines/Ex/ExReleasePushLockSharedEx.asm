ExReleasePushLockSharedEx proc near     ; DATA XREF: .rdata:000000014005676C↑o
                                        ; .pdata:00000001400CC03C↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041CE88 SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                mov     edi, edx
                xor     ecx, ecx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041CE88
                mov     eax, 11h
                lock cmpxchg [rbx], rcx
                jnz     short loc_1402435E3

loc_1402435C9:                          ; CODE XREF: ExReleasePushLockSharedEx+4B↓j
                test    dil, 2
                jnz     short loc_1402435D7
                mov     rcx, rbx
                call    sub_140243660

loc_1402435D7:                          ; CODE XREF: ExReleasePushLockSharedEx+2D↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402435E3:                          ; CODE XREF: ExReleasePushLockSharedEx+27↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_1402435C9
ExReleasePushLockSharedEx endp
