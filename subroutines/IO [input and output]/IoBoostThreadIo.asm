IoBoostThreadIo proc near               ; DATA XREF: .pdata:00000001400F270C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     rbx, rcx
                test    r9d, r9d
                jz      short loc_140505A5B
                mov     eax, 0C000000Dh
                jmp     short loc_140505A8A
; ---------------------------------------------------------------------------

loc_140505A5B:                          ; CODE XREF: IoBoostThreadIo+12↑j
                xor     r9d, r9d
                cmp     r8b, 1
                mov     r8b, 1
                jnz     short loc_140505A71
                mov     dl, r8b
                call    sub_140248280
                jmp     short loc_140505A88
; ---------------------------------------------------------------------------

loc_140505A71:                          ; CODE XREF: IoBoostThreadIo+25↑j
                xor     edx, edx
                call    sub_140248280
                mov     r8d, 80000000h
                mov     edx, edi
                mov     rcx, rbx
                call    sub_14032292C

loc_140505A88:                          ; CODE XREF: IoBoostThreadIo+2F↑j
                xor     eax, eax

loc_140505A8A:                          ; CODE XREF: IoBoostThreadIo+19↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoBoostThreadIo endp
