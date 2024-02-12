IoSetIoPriorityHintIntoThread proc near ; DATA XREF: .pdata:00000001400D37F4↑o
                sub     rsp, 28h
                cmp     edx, 5
                jnb     short loc_1402FB766
                call    sub_1402FA570
                xor     eax, eax

loc_1402FB760:                          ; CODE XREF: IoSetIoPriorityHintIntoThread+1B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402FB766:                          ; CODE XREF: IoSetIoPriorityHintIntoThread+7↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1402FB760
IoSetIoPriorityHintIntoThread endp
