HalAllocateCrashDumpRegisters proc near ; CODE XREF: sub_1409CCDA0+35↓p
                                        ; DATA XREF: .pdata:00000001400EE6E0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rsi, rdx
                mov     rbx, rcx
                cmp     [rcx+1B0h], dil
                jnz     short loc_1404B8FA5
                cmp     [rcx+1B5h], dil
                jz      short loc_1404B8FA5
                mov     [rcx+0E8h], rdi
                jmp     loc_1404B903D
; ---------------------------------------------------------------------------

loc_1404B8FA5:                          ; CODE XREF: HalAllocateCrashDumpRegisters+1E↑j
                                        ; HalAllocateCrashDumpRegisters+27↑j
                cmp     cs:dword_140C4BD58, 1
                jnz     short loc_1404B8FE5
                mov     edx, cs:dword_140C4BD70
                lea     r8, unk_140C4BDA0
                mov     ecx, edx
                add     rcx, rcx
                mov     eax, [r8+rcx*8+8]
                mov     [rsi], eax
                mov     rax, [r8+rcx*8]
                mov     [rbx+0E8h], rax
                mov     ecx, [rsi]
                mov     [rbx+0F0h], ecx
                lea     ecx, [rdx+1]
                mov     cs:dword_140C4BD70, ecx
                jmp     short loc_1404B9051
; ---------------------------------------------------------------------------

loc_1404B8FE5:                          ; CODE XREF: HalAllocateCrashDumpRegisters+3C↑j
                mov     eax, [rcx+0E0h]
                cmp     [rdx], eax
                jbe     short loc_1404B8FFB
                mov     [rcx+0F0h], edi
                xor     eax, eax
                mov     [rdx], edi
                jmp     short loc_1404B9051
; ---------------------------------------------------------------------------

loc_1404B8FFB:                          ; CODE XREF: HalAllocateCrashDumpRegisters+7D↑j
                call    sub_1404C6F0C
                mov     [rbx+0E8h], rax
                test    rax, rax
                jnz     short loc_1404B9010
                mov     [rsi], edi
                jmp     short loc_1404B903B
; ---------------------------------------------------------------------------

loc_1404B9010:                          ; CODE XREF: HalAllocateCrashDumpRegisters+9A↑j
                mov     edx, cs:dword_140C4BD74
                cmp     edx, 4
                jnb     short loc_1404B903B
                lea     r8, unk_140C4BDA0
                mov     ecx, edx
                add     rcx, rcx
                mov     [r8+rcx*8], rax
                mov     eax, [rsi]
                mov     [r8+rcx*8+8], eax
                lea     eax, [rdx+1]
                mov     cs:dword_140C4BD74, eax

loc_1404B903B:                          ; CODE XREF: HalAllocateCrashDumpRegisters+9E↑j
                                        ; HalAllocateCrashDumpRegisters+A9↑j
                mov     edi, [rsi]

loc_1404B903D:                          ; CODE XREF: HalAllocateCrashDumpRegisters+30↑j
                mov     [rbx+0F0h], edi
                mov     rax, [rbx+0E8h]
                mov     cs:qword_140C4BD50, rbx

loc_1404B9051:                          ; CODE XREF: HalAllocateCrashDumpRegisters+73↑j
                                        ; HalAllocateCrashDumpRegisters+89↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalAllocateCrashDumpRegisters endp
