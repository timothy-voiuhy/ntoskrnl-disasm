RtlTimeToSecondsSince1970 proc near     ; DATA XREF: .pdata:00000001400F7A04↑o
                sub     rsp, 28h
                mov     rcx, [rcx]
                mov     r10, rdx
                mov     rdx, cs:qword_14001E928
                mov     r8b, 17h
                call    sub_140346DC4
                sub     rax, cs:qword_140021670
                mov     rcx, rax
                shr     rcx, 20h
                test    ecx, ecx
                jz      short loc_14058561F
                xor     al, al
                jmp     short loc_140585624
; ---------------------------------------------------------------------------

loc_14058561F:                          ; CODE XREF: RtlTimeToSecondsSince1970+29↑j
                mov     [r10], eax
                mov     al, 1

loc_140585624:                          ; CODE XREF: RtlTimeToSecondsSince1970+2D↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlTimeToSecondsSince1970 endp
