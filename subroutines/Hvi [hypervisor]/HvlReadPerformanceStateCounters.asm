HvlReadPerformanceStateCounters proc near
                                        ; DATA XREF: .pdata:00000001400DC518↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, edx
                mov     r10, r9
                mov     r11, r8
                cmp     edx, 2
                jnb     short loc_140390C68
                call    sub_140390C78
                test    rax, rax
                jz      short loc_140390C68
                lfence
                mov     r8, [rax+20h]
                lea     rdx, xmmword_140CED2E0
                mov     eax, [rdx+rbx*8+18h]
                mov     ecx, [rdx+rbx*8+1Ch]
                mov     rax, [r8+rax*8]
                mov     [r11], rax
                mov     rax, [r8+rcx*8]
                mov     [r10], rax

loc_140390C61:                          ; CODE XREF: HvlReadPerformanceStateCounters+50↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140390C68:                          ; CODE XREF: HvlReadPerformanceStateCounters+11↑j
                                        ; HvlReadPerformanceStateCounters+1B↑j
                and     qword ptr [r11], 0
                and     qword ptr [r10], 0
                jmp     short loc_140390C61
HvlReadPerformanceStateCounters endp
