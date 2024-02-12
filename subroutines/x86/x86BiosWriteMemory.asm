x86BiosWriteMemory proc near            ; DATA XREF: .pdata:00000001400DF440↑o

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
                ja      short loc_1403C4CAE
                test    ebx, ebx
                jz      short loc_1403C4C90
                mov     r14d, 1

loc_1403C4C75:                          ; CODE XREF: x86BiosWriteMemory+5E↓j
                movzx   edx, di
                movzx   ecx, bp
                call    sub_140397B30
                mov     cl, [rsi]
                add     di, r14w
                add     rsi, r14
                mov     [rax], cl
                add     ebx, 0FFFFFFFFh
                jnz     short loc_1403C4C75

loc_1403C4C90:                          ; CODE XREF: x86BiosWriteMemory+3D↑j
                xor     eax, eax

loc_1403C4C92:                          ; CODE XREF: x86BiosWriteMemory+83↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403C4CAE:                          ; CODE XREF: x86BiosWriteMemory+39↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1403C4C92
x86BiosWriteMemory endp
