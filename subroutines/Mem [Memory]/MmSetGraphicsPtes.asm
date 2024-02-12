MmSetGraphicsPtes proc near             ; DATA XREF: .pdata:000000014011E6D4↑o

var_38          = qword ptr -38h
var_30          = dword ptr -30h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbx, rcx
                mov     r13, r9
                mov     rcx, 0FFFF800000000000h
                mov     r14, r8
                mov     rdi, rdx
                cmp     rbx, rcx
                jnb     loc_1408C8775
                lea     rax, [rbx+rdx]
                cmp     rax, rbx
                jbe     loc_1408C8775
                cmp     rax, rcx
                jnb     loc_1408C8775
                mov     r12, gs:188h
                lea     r8, [r11+8]
                and     [rsp+58h+arg_0], 0
                lea     rbp, [rax-1]
                xor     edx, edx
                mov     rcx, rbx
                xor     r15d, r15d
                call    sub_140232930
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1408C862E
                mov     eax, [rsp+58h+arg_0]

loc_1408C8610:                          ; CODE XREF: MmSetGraphicsPtes+1E0↓j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1408C862E:                          ; CODE XREF: MmSetGraphicsPtes+7A↑j
                mov     edx, [rax+30h]
                mov     ecx, 1100000h
                mov     eax, edx
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1408C8648
                mov     ebx, 0C00000EFh
                jmp     loc_1408C8766
; ---------------------------------------------------------------------------

loc_1408C8648:                          ; CODE XREF: MmSetGraphicsPtes+AC↑j
                movzx   ecx, byte ptr [rsi+21h]
                mov     eax, [rsi+1Ch]
                shl     rcx, 20h
                or      rcx, rax
                shl     rcx, 0Ch
                or      rcx, 0FFFh
                cmp     rbp, rcx
                jbe     short loc_1408C8670
                mov     ebx, 0C00000F0h
                jmp     loc_1408C8766
; ---------------------------------------------------------------------------

loc_1408C8670:                          ; CODE XREF: MmSetGraphicsPtes+D4↑j
                mov     eax, edx
                mov     ebp, 1
                and     eax, 70h
                cmp     al, 30h ; '0'
                jnz     short loc_1408C86A3
                mov     rcx, r12
                mov     r15d, ebp
                call    sub_14054D1D0
                mov     rcx, rbx
                call    sub_14054C62C
                mov     r10, rax
                test    rax, rax
                jnz     short loc_1408C86BD
                mov     ebx, 0C00000EFh
                jmp     loc_1408C875E
; ---------------------------------------------------------------------------

loc_1408C86A3:                          ; CODE XREF: MmSetGraphicsPtes+EC↑j
                mov     eax, 500000h
                and     edx, eax
                cmp     edx, eax
                jnz     loc_1408C8754
                mov     rcx, rsi
                call    sub_14055BFB0
                mov     r10, rax

loc_1408C86BD:                          ; CODE XREF: MmSetGraphicsPtes+107↑j
                mov     r9d, [rsp+58h+arg_28]
                test    r9d, 0FFFFFFFEh
                jz      short loc_1408C86D8
                mov     ebx, 0C00000F4h
                jmp     loc_1408C8759
; ---------------------------------------------------------------------------

loc_1408C86D8:                          ; CODE XREF: MmSetGraphicsPtes+13C↑j
                cmp     [rsp+58h+arg_20], 0
                jz      short loc_1408C86E9
                mov     ebx, 0C00000F3h
                jmp     short loc_1408C8759
; ---------------------------------------------------------------------------

loc_1408C86E9:                          ; CODE XREF: MmSetGraphicsPtes+150↑j
                shl     r10, 0Ch
                cmp     r13, r10
                jz      short loc_1408C86F9
                mov     ebx, 0C00000F2h
                jmp     short loc_1408C8759
; ---------------------------------------------------------------------------

loc_1408C86F9:                          ; CODE XREF: MmSetGraphicsPtes+160↑j
                lea     r8, [r10-1]
                test    rbx, r8
                jnz     short loc_1408C8754
                test    rdi, r8
                jnz     short loc_1408C8754
                test    r14, r14
                jz      short loc_1408C8733
                test    bpl, r9b
                jz      short loc_1408C8716
                mov     rax, rbp
                jmp     short loc_1408C8723
; ---------------------------------------------------------------------------

loc_1408C8716:                          ; CODE XREF: MmSetGraphicsPtes+17F↑j
                xor     edx, edx
                mov     rax, rdi
                div     r10
                test    rax, rax
                jz      short loc_1408C8733

loc_1408C8723:                          ; CODE XREF: MmSetGraphicsPtes+184↑j
                xor     edx, edx

loc_1408C8725:                          ; CODE XREF: MmSetGraphicsPtes+1A1↓j
                test    [r14+rdx*8], r8
                jnz     short loc_1408C874D
                add     rdx, rbp
                cmp     rdx, rax
                jb      short loc_1408C8725

loc_1408C8733:                          ; CODE XREF: MmSetGraphicsPtes+17A↑j
                                        ; MmSetGraphicsPtes+191↑j
                mov     [rsp+58h+var_30], r9d
                mov     r8, r14
                mov     r9, r13
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14053480C
                mov     ebx, eax
                jmp     short loc_1408C8759
; ---------------------------------------------------------------------------

loc_1408C874D:                          ; CODE XREF: MmSetGraphicsPtes+199↑j
                mov     ebx, 0C00000F1h
                jmp     short loc_1408C8759
; ---------------------------------------------------------------------------

loc_1408C8754:                          ; CODE XREF: MmSetGraphicsPtes+11C↑j
                                        ; MmSetGraphicsPtes+170↑j ...
                mov     ebx, 0C00000EFh

loc_1408C8759:                          ; CODE XREF: MmSetGraphicsPtes+143↑j
                                        ; MmSetGraphicsPtes+157↑j ...
                test    r15d, r15d
                jz      short loc_1408C8766

loc_1408C875E:                          ; CODE XREF: MmSetGraphicsPtes+10E↑j
                mov     rcx, r12
                call    sub_14054E1C8

loc_1408C8766:                          ; CODE XREF: MmSetGraphicsPtes+B3↑j
                                        ; MmSetGraphicsPtes+DB↑j ...
                mov     rcx, rsi
                call    sub_140232610
                mov     eax, ebx
                jmp     loc_1408C8610
; ---------------------------------------------------------------------------

loc_1408C8775:                          ; CODE XREF: MmSetGraphicsPtes+35↑j
                                        ; MmSetGraphicsPtes+42↑j ...
                and     [rsp+58h+var_38], 0
                mov     r9, rdi
                mov     r8, rbx
                mov     edx, 0A000h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
MmSetGraphicsPtes endp
