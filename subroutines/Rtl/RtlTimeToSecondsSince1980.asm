RtlTimeToSecondsSince1980 proc near     ; DATA XREF: .pdata:00000001400DC8D8↑o
                sub     rsp, 28h
                mov     rcx, [rcx]
                mov     r10, rdx
                mov     rdx, cs:qword_14001E928
                mov     r8b, 17h
                call    sub_140346DC4
                sub     rax, cs:qword_14001E920
                mov     rcx, rax
                shr     rcx, 20h
                test    ecx, ecx
                jnz     short loc_140395476
                mov     [r10], eax
                mov     al, 1

loc_140395470:                          ; CODE XREF: RtlTimeToSecondsSince1980+38↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140395476:                          ; CODE XREF: RtlTimeToSecondsSince1980+29↑j
                xor     al, al
                jmp     short loc_140395470
RtlTimeToSecondsSince1980 endp
