x86BiosReadMemory proc near             ; DATA XREF: .pdata:00000001400DEFD8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                movzx   ebp, cx
                mov     ebx, r9d
                mov     r10d, ebp
                movzx   edi, dx
                shl     r10d, 4
                mov     rsi, r8
                add     r10d, r9d
                add     r10d, edi
                cmp     r10d, 100000h
                ja      short loc_1403BF69E
                test    ebx, ebx
                jz      short loc_1403BF680
                mov     r14d, 1

loc_1403BF665:                          ; CODE XREF: x86BiosReadMemory+5E↓j
                movzx   edx, di
                movzx   ecx, bp
                call    sub_140397B30
                add     di, r14w
                mov     cl, [rax]
                mov     [rsi], cl
                add     rsi, r14
                add     ebx, 0FFFFFFFFh
                jnz     short loc_1403BF665

loc_1403BF680:                          ; CODE XREF: x86BiosReadMemory+3D↑j
                xor     eax, eax

loc_1403BF682:                          ; CODE XREF: x86BiosReadMemory+83↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403BF69E:                          ; CODE XREF: x86BiosReadMemory+39↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1403BF682
x86BiosReadMemory endp
