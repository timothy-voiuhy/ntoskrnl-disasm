WmiGetClock     proc near               ; DATA XREF: .pdata:00000001400F9444↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, ecx
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                xor     eax, eax
                test    ebx, ebx
                jz      short loc_1405A6A36
                cmp     ebx, 2
                jz      short loc_1405A6A47
                jle     short loc_1405A6A50
                cmp     ebx, 4
                jle     short loc_1405A6A55
                cmp     ebx, 5
                jnz     short loc_1405A6A50

loc_1405A6A2B:                          ; CODE XREF: WmiGetClock+45↓j
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                jmp     short loc_1405A6A55
; ---------------------------------------------------------------------------

loc_1405A6A36:                          ; CODE XREF: WmiGetClock+18↑j
                movzx   ecx, byte ptr [rcx+1071h]
                sub     ecx, 2
                jz      short loc_1405A6A50
                cmp     ecx, 1
                jz      short loc_1405A6A2B

loc_1405A6A47:                          ; CODE XREF: WmiGetClock+1D↑j
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                jmp     short loc_1405A6A55
; ---------------------------------------------------------------------------

loc_1405A6A50:                          ; CODE XREF: WmiGetClock+1F↑j
                                        ; WmiGetClock+29↑j ...
                call    sub_1402D2E80

loc_1405A6A55:                          ; CODE XREF: WmiGetClock+24↑j
                                        ; WmiGetClock+34↑j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WmiGetClock     endp

byte_1405A6A5C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400F9444↑o
; Exported entry 2692. WmiTraceMessageVa

; =============== S U B R O U T I N E =======================================


