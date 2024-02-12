IoGetDriverDirectory proc near          ; DATA XREF: .pdata:000000014011D03C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     esi, esi
                mov     r10, rcx
                mov     ecx, esi
                mov     rdi, r9
                mov     [rsp+28h+arg_0], rcx
                test    r10, r10
                jz      short loc_1408A0415
                mov     rax, [r10+30h]
                test    rax, rax
                jz      short loc_1408A0415
                cmp     [rax+20h], rsi
                jz      short loc_1408A0415
                cmp     [rax+18h], si
                jz      short loc_1408A0415
                test    r8d, r8d
                jnz     short loc_1408A0415
                test    r9, r9
                jz      short loc_1408A0415
                test    edx, edx
                jz      short loc_1408A03F1
                cmp     edx, 1
                jz      short loc_1408A03E2
                mov     ebx, 0C000000Dh
                jmp     short loc_1408A0424
; ---------------------------------------------------------------------------

loc_1408A03E2:                          ; CODE XREF: IoGetDriverDirectory+49↑j
                lea     r8, [rsp+28h+arg_0]
                mov     rcx, r10
                call    sub_1408A0C48
                jmp     short loc_1408A03FE
; ---------------------------------------------------------------------------

loc_1408A03F1:                          ; CODE XREF: IoGetDriverDirectory+44↑j
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, r10
                call    sub_1408A0B04

loc_1408A03FE:                          ; CODE XREF: IoGetDriverDirectory+5F↑j
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408A040E
                mov     rax, [rsp+28h+arg_0]
                mov     [rdi], rax
                jmp     short loc_1408A0424
; ---------------------------------------------------------------------------

loc_1408A040E:                          ; CODE XREF: IoGetDriverDirectory+72↑j
                mov     rcx, [rsp+28h+arg_0]
                jmp     short loc_1408A041A
; ---------------------------------------------------------------------------

loc_1408A0415:                          ; CODE XREF: IoGetDriverDirectory+21↑j
                                        ; IoGetDriverDirectory+2A↑j ...
                mov     ebx, 0C000000Dh

loc_1408A041A:                          ; CODE XREF: IoGetDriverDirectory+83↑j
                test    rcx, rcx
                jz      short loc_1408A0424
                call    ZwClose

loc_1408A0424:                          ; CODE XREF: IoGetDriverDirectory+50↑j
                                        ; IoGetDriverDirectory+7C↑j ...
                mov     rsi, [rsp+28h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetDriverDirectory endp
