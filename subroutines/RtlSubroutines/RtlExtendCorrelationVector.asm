RtlExtendCorrelationVector proc near    ; DATA XREF: .pdata:0000000140122184↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                xor     r11d, r11d
                call    sub_14058CFA4
                movsxd  r8, eax
                test    eax, eax
                js      short loc_1409178C7
                mov     rcx, rbx
                call    sub_140917C14
                sub     eax, 3
                cmp     r8d, eax
                jge     short loc_1409178C7
                mov     word ptr [r8+rbx+1], 302Eh
                mov     [r8+rbx+3], r11b
                jmp     short loc_1409178CD
; ---------------------------------------------------------------------------

loc_1409178C7:                          ; CODE XREF: RtlExtendCorrelationVector+16↑j
                                        ; RtlExtendCorrelationVector+26↑j
                mov     r11d, 80000005h

loc_1409178CD:                          ; CODE XREF: RtlExtendCorrelationVector+35↑j
                mov     eax, r11d
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlExtendCorrelationVector endp
