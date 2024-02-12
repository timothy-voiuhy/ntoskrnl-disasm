HalDmaAllocateCrashDumpRegistersEx proc near
                                        ; DATA XREF: .rdata:000000014009E630↑o
                                        ; .pdata:00000001400DD9B8↑o

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404A70D4 SIZE 000002AD BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     edi, edi
                mov     ebp, edx
                mov     r15, r9
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_1404A7377
                test    edx, edx
                jz      loc_1404A7377
                test    r9, r9
                jz      loc_1404A7377
                mov     r12, [rsp+68h+arg_20]
                test    r12, r12
                jz      loc_1404A7377
                cmp     r8d, 1
                ja      loc_1404A7377
                cmp     [rcx+1B0h], dil
                jnz     loc_1404A70D4
                cmp     [rcx+1B5h], dil
                jz      loc_1404A70D4
                mov     [r9], rdi
                mov     [r12], ebp
                movsxd  rsi, r8d
                mov     [rcx+0E8h], rdi
                mov     [rcx+0F0h], edi
                mov     [rcx+rsi*8+0F8h], rdi
                mov     [rcx+rsi*4+108h], edi

loc_1403A640B:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+100D83↓j
                                        ; HalDmaAllocateCrashDumpRegistersEx+100EDD↓j ...
                mov     rax, [r15]
                test    rax, rax
                jnz     loc_1404A7367

loc_1403A6417:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+100FFB↓j
                inc     dword ptr [rbx+rsi*4+110h]
                lea     rdx, qword_140C4BD80
                mov     rax, cs:qword_140C4BD80

loc_1403A642C:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+120↓j
                cmp     rax, rdx
                jz      short loc_1403A645E
                lea     rdi, [rax-118h]
                cmp     rdi, rbx
                jnz     short loc_1403A648D

loc_1403A643D:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+F1↓j
                                        ; HalDmaAllocateCrashDumpRegistersEx+11B↓j
                xor     eax, eax

loc_1403A643F:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+100E55↓j
                                        ; HalDmaAllocateCrashDumpRegistersEx+100F08↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403A645E:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+BF↑j
                cmp     rdi, rbx
                jz      short loc_1403A643D
                mov     rax, cs:qword_140C4BD88
                add     rbx, 118h
                cmp     [rax], rdx
                jnz     loc_1404A7370
                mov     [rbx], rdx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C4BD88, rbx
                jmp     short loc_1403A643D
; ---------------------------------------------------------------------------

loc_1403A648D:                          ; CODE XREF: HalDmaAllocateCrashDumpRegistersEx+CB↑j
                mov     rax, [rax]
                jmp     short loc_1403A642C
HalDmaAllocateCrashDumpRegistersEx endp
