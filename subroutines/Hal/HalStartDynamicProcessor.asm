HalStartDynamicProcessor proc near      ; CODE XREF: sub_1408BBF18+457↓p
                                        ; sub_140997588+F366↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:dword_140CF4D7C, 0
                movzx   esi, r9w
                mov     edi, r8d
                mov     ebx, edx
                mov     rbp, rcx
                jz      short loc_1404BC547
                mov     eax, cs:dword_140C11510
                cmp     eax, cs:dword_140CF4D7C
                jnb     short loc_1404BC5C4

loc_1404BC547:                          ; CODE XREF: HalStartDynamicProcessor+27↑j
                call    sub_1403A2364
                cmp     ebx, eax
                jnb     short loc_1404BC5C4
                cmp     cs:byte_140C49778, 0
                jnz     short loc_1404BC56A
                cmp     cs:byte_140CF4A50, 0
                jnz     short loc_1404BC56A
                cmp     ebx, cs:dword_140C0F3C0
                jnb     short loc_1404BC5C4

loc_1404BC56A:                          ; CODE XREF: HalStartDynamicProcessor+47↑j
                                        ; HalStartDynamicProcessor+50↑j
                mov     al, cs:byte_140C4A248
                test    al, al
                jnz     short loc_1404BC593
                mov     rcx, cs:qword_140C4A240
                call    MmLockPagableSectionByHandle
                call    sub_140387BD4
                movzx   edx, si
                mov     ecx, edi
                call    sub_1404D1DC0
                test    al, al
                jz      short loc_1404BC5C4

loc_1404BC593:                          ; CODE XREF: HalStartDynamicProcessor+62↑j
                mov     r9, rbp
                mov     r8d, 1
                mov     edx, edi
                mov     ecx, ebx
                call    sub_14099BD84
                mov     ebx, eax
                cmp     eax, 4
                jz      short loc_1404BC5C0
                mov     cl, cs:byte_140C4A248
                test    cl, cl
                jnz     short loc_1404BC5C0
                movzx   edx, si
                mov     ecx, edi
                call    sub_1404D2154

loc_1404BC5C0:                          ; CODE XREF: HalStartDynamicProcessor+9A↑j
                                        ; HalStartDynamicProcessor+A4↑j
                mov     eax, ebx
                jmp     short loc_1404BC5C9
; ---------------------------------------------------------------------------

loc_1404BC5C4:                          ; CODE XREF: HalStartDynamicProcessor+35↑j
                                        ; HalStartDynamicProcessor+3E↑j ...
                mov     eax, 2

loc_1404BC5C9:                          ; CODE XREF: HalStartDynamicProcessor+B2↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalStartDynamicProcessor endp
