HalDmaFreeCrashDumpRegistersEx proc near
                                        ; DATA XREF: .rdata:000000014009E970↑o
                                        ; .pdata:00000001400DDAC0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A7690 SIZE 00000096 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rcx
                test    rcx, rcx
                jz      loc_1404A771C
                cmp     edx, 1
                ja      loc_1404A771C
                movsxd  rbp, edx
                mov     eax, [rcx+rbp*4+110h]
                test    eax, eax
                jz      loc_1404A7690
                sub     eax, 1
                mov     [rcx+rbp*4+110h], eax
                jz      short loc_1403A70CA

loc_1403A70AC:                          ; CODE XREF: HalDmaFreeCrashDumpRegistersEx+9F↓j
                                        ; HalDmaFreeCrashDumpRegistersEx+C1↓j
                xor     eax, eax

loc_1403A70AE:                          ; CODE XREF: HalDmaFreeCrashDumpRegistersEx+100635↓j
                                        ; HalDmaFreeCrashDumpRegistersEx+1006C1↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403A70CA:                          ; CODE XREF: HalDmaFreeCrashDumpRegistersEx+4A↑j
                cmp     dword ptr [rcx+rbp*4+108h], 0
                mov     r14d, 2
                jnz     loc_1404A769A

loc_1403A70DE:                          ; CODE XREF: HalDmaFreeCrashDumpRegistersEx+1006B7↓j
                mov     al, 1
                lea     rdx, [rsi+110h]

loc_1403A70E7:                          ; CODE XREF: HalDmaFreeCrashDumpRegistersEx+9B↓j
                xor     ecx, ecx
                movzx   eax, al
                cmp     [rdx], ecx
                lea     rdx, [rdx+4]
                cmovbe  ecx, eax
                mov     al, cl
                sub     r14, 1
                jnz     short loc_1403A70E7
                test    al, al
                jz      short loc_1403A70AC
                add     rsi, 118h
                mov     rcx, [rsi]
                cmp     [rcx+8], rsi
                jnz     short loc_1403A7123
                mov     rax, [rsi+8]
                cmp     [rax], rsi
                jnz     short loc_1403A7123
                mov     [rax], rcx
                mov     [rcx+8], rax
                jmp     short loc_1403A70AC
; ---------------------------------------------------------------------------

loc_1403A7123:                          ; CODE XREF: HalDmaFreeCrashDumpRegistersEx+AF↑j
                                        ; HalDmaFreeCrashDumpRegistersEx+B8↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
HalDmaFreeCrashDumpRegistersEx endp
