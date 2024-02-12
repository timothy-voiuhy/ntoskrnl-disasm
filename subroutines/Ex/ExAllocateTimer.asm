ExAllocateTimer proc near               ; CODE XREF: sub_14067C0D4+42↓p
                                        ; sub_1407945A8+26↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014044F89C SIZE 0000001B BYTES

                sub     rsp, 38h
                test    r8b, 2
                jnz     loc_14044F89C
                mov     r9d, r8d
                xor     r8d, r8d
                call    ntoskrnl_4
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAllocateTimer endp
