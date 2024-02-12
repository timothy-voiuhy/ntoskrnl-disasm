MmAllocateContiguousNodeMemory proc near
                                        ; CODE XREF: sub_1403812D0+5D↓p
                                        ; sub_1403A11E4+C9↓p ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 000000014045FCAA SIZE 00000024 BYTES

                push    rbx
                sub     rsp, 40h
                mov     rax, rdx
                mov     rbx, rcx
                shr     rax, 0Ch
                mov     ecx, 0FFFh
                test    ecx, edx
                lea     r11, [rax+1]
                cmovz   r11, rax
                test    ecx, r9d
                jnz     short loc_1402E7300
                mov     ecx, [rsp+48h+arg_20]
                call    sub_1402320B0
                test    [rsp+48h+arg_20], 100h
                mov     r10d, eax
                jnz     short loc_1402E7300
                cmp     eax, 0FFFFFFFFh
                jz      short loc_1402E7300
                mov     ecx, eax
                and     cl, 5
                cmp     cl, 4
                jnz     short loc_1402E7300
                test    r10b, 2
                jnz     loc_14045FCAA

loc_1402E72C3:                          ; CODE XREF: MmAllocateContiguousNodeMemory+178A49↓j
                                        ; MmAllocateContiguousNodeMemory+178A59↓j
                shr     r8, 0Ch
                mov     rax, 0FFFFFFFFFh
                shr     r9, 0Ch
                cmp     r8, rax
                cmova   r8, rax
                cmp     r11, r8
                ja      short loc_1402E7300
                mov     eax, [rsp+48h+arg_28]
                mov     rdx, r11
                mov     [rsp+48h+var_20], eax
                mov     rcx, rbx
                mov     [rsp+48h+var_28], r10d
                call    sub_1402E730C

loc_1402E72F9:                          ; CODE XREF: MmAllocateContiguousNodeMemory+92↓j
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402E7300:                          ; CODE XREF: MmAllocateContiguousNodeMemory+22↑j
                                        ; MmAllocateContiguousNodeMemory+38↑j ...
                xor     eax, eax
                jmp     short loc_1402E72F9
MmAllocateContiguousNodeMemory endp
