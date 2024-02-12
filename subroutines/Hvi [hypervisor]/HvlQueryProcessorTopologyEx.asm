HvlQueryProcessorTopologyEx proc near   ; CODE XREF: HvlQueryProcessorTopology+A↑p
                                        ; DATA XREF: .pdata:00000001400F16B0↑o

arg_0           = qword ptr  8
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140CFC40C
                mov     r11, r9
                mov     rbx, r8
                mov     rdi, rdx
                test    al, 2
                jnz     short loc_1404F2564
                mov     eax, 0C0000022h
                jmp     short loc_1404F25BC
; ---------------------------------------------------------------------------

loc_1404F2564:                          ; CODE XREF: HvlQueryProcessorTopologyEx+1B↑j
                cmp     ecx, 400h
                jnb     short loc_1404F25B7
                call    sub_140390C78
                mov     r10, rax
                test    rax, rax
                jz      short loc_1404F25B7
                test    rdi, rdi
                jz      short loc_1404F2585
                movzx   ecx, word ptr [rax+0Eh]
                mov     [rdi], cx

loc_1404F2585:                          ; CODE XREF: HvlQueryProcessorTopologyEx+3C↑j
                test    rbx, rbx
                jz      short loc_1404F258F
                mov     eax, [rax+10h]
                mov     [rbx], eax

loc_1404F258F:                          ; CODE XREF: HvlQueryProcessorTopologyEx+48↑j
                test    r11, r11
                jz      short loc_1404F259B
                mov     eax, [r10+14h]
                mov     [r11], eax

loc_1404F259B:                          ; CODE XREF: HvlQueryProcessorTopologyEx+52↑j
                mov     rdx, [rsp+28h+arg_20]
                test    rdx, rdx
                jz      short loc_1404F25B3
                mov     ecx, [r10+18h]
                or      eax, 0FFFFFFFFh
                cmp     ecx, eax
                cmovnz  eax, ecx
                mov     [rdx], eax

loc_1404F25B3:                          ; CODE XREF: HvlQueryProcessorTopologyEx+63↑j
                xor     eax, eax
                jmp     short loc_1404F25BC
; ---------------------------------------------------------------------------

loc_1404F25B7:                          ; CODE XREF: HvlQueryProcessorTopologyEx+2A↑j
                                        ; HvlQueryProcessorTopologyEx+37↑j
                mov     eax, 0C000000Dh

loc_1404F25BC:                          ; CODE XREF: HvlQueryProcessorTopologyEx+22↑j
                                        ; HvlQueryProcessorTopologyEx+75↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlQueryProcessorTopologyEx endp
