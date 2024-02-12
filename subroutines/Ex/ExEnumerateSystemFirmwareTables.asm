ExEnumerateSystemFirmwareTables proc near
                                        ; DATA XREF: .pdata:000000014012417C↑o

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     dword ptr [rax+10h], 0
                mov     r14, r9
                mov     edi, r8d
                mov     rsi, rdx
                mov     r15d, ecx
                test    rdx, rdx
                jnz     short loc_14094B56C
                test    r8d, r8d
                jz      short loc_14094B56C
                mov     eax, 0C000000Dh
                jmp     loc_14094B5FF
; ---------------------------------------------------------------------------

loc_14094B56C:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+2B↑j
                                        ; ExEnumerateSystemFirmwareTables+30↑j
                lea     ebp, [r8+10h]
                mov     ecx, 1
                mov     edx, ebp
                mov     r8d, 54465241h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14094B5F8
                and     dword ptr [rax+4], 0
                lea     r9, [rsp+38h+arg_8]
                and     dword ptr [rax+8], 0
                mov     r8d, ebp
                xor     edx, edx
                mov     [rax+0Ch], edi
                mov     rcx, rax
                mov     [rax], r15d
                call    sub_14070D6EC
                mov     edi, eax
                mov     eax, 80000000h
                lea     ecx, [rdi+rax]
                test    eax, ecx
                jnz     short loc_14094B5C0
                cmp     edi, 0C0000023h
                jnz     short loc_14094B5CB

loc_14094B5C0:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+86↑j
                test    r14, r14
                jz      short loc_14094B5CB
                mov     ecx, [rbx+0Ch]
                mov     [r14], ecx

loc_14094B5CB:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+8E↑j
                                        ; ExEnumerateSystemFirmwareTables+93↑j
                test    edi, edi
                js      short loc_14094B5E9
                test    rsi, rsi
                jz      short loc_14094B5E9
                mov     r8d, [rsp+38h+arg_8]
                lea     rdx, [rbx+10h]
                add     r8d, 0FFFFFFF0h
                mov     rcx, rsi
                call    memmove

loc_14094B5E9:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+9D↑j
                                        ; ExEnumerateSystemFirmwareTables+A2↑j
                mov     edx, 54465241h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_14094B5FD
; ---------------------------------------------------------------------------

loc_14094B5F8:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+58↑j
                mov     edi, 0C000009Ah

loc_14094B5FD:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+C6↑j
                mov     eax, edi

loc_14094B5FF:                          ; CODE XREF: ExEnumerateSystemFirmwareTables+37↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExEnumerateSystemFirmwareTables endp
