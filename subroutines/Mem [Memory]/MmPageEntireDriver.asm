MmPageEntireDriver proc near            ; DATA XREF: .pdata:0000000140104D6C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140260090
                test    eax, eax
                jnz     short loc_1406F4D0A
                lea     edx, [rax+1]
                mov     rcx, rbx
                call    sub_14033EE44
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1406F4D0A
                mov     ecx, cs:dword_140CFB174
                mov     rbp, [rax+30h]
                test    cl, 1
                jnz     short loc_1406F4CF1
                mov     rcx, rbx
                call    sub_140245330
                cmp     eax, 1
                jz      short loc_1406F4CF1
                call    KeFlushQueuedDpcs
                mov     rcx, rbp
                call    sub_14026B560
                mov     ecx, [rsi+40h]
                mov     rdi, rax
                shr     rcx, 0Ch
                lea     rbx, [rax+rcx*8]
                mov     rcx, rsi
                call    sub_1406F5908
                lea     r8, [rbx-8]
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402DFB84

loc_1406F4CF1:                          ; CODE XREF: MmPageEntireDriver+40↑j
                                        ; MmPageEntireDriver+4D↑j
                mov     rax, rbp

loc_1406F4CF4:                          ; CODE XREF: MmPageEntireDriver+9C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F4D0A:                          ; CODE XREF: MmPageEntireDriver+1E↑j
                                        ; MmPageEntireDriver+31↑j
                xor     eax, eax
                jmp     short loc_1406F4CF4
MmPageEntireDriver endp
