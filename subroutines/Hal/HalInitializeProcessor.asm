HalInitializeProcessor proc near        ; CODE XREF: sub_14099D840+2FE↓p
                                        ; DATA XREF: .pdata:00000001400DDDB4↑o
                sub     rsp, 28h
                mov     eax, ecx
                mov     r8, rdx
                neg     eax
                sbb     edx, edx
                and     edx, 3
                add     edx, 3
                neg     ecx
                sbb     ecx, ecx
                and     ecx, 4
                call    sub_14099D7A8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalInitializeProcessor endp
