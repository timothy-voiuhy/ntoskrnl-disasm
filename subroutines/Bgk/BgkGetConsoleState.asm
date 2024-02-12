BgkGetConsoleState proc near            ; DATA XREF: .pdata:000000014012BFAC↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1404FFA78
                test    al, al
                jnz     short loc_1409F8429
                mov     eax, 0C0000001h
                jmp     short loc_1409F8445
; ---------------------------------------------------------------------------

loc_1409F8429:                          ; CODE XREF: BgkGetConsoleState+10↑j
                mov     rax, cs:qword_140C50A00
                mov     rcx, rbx
                mov     rax, [rax+28h]
                call    sub_1404079D0
                mov     ebx, eax
                call    sub_1404FFAC4
                mov     eax, ebx

loc_1409F8445:                          ; CODE XREF: BgkGetConsoleState+17↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
BgkGetConsoleState endp
