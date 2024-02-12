PsRegisterSiloMonitor proc near         ; DATA XREF: .rdata:000000014008E090↑o
                                        ; .pdata:000000014010C4DC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083A708 SIZE 00000032 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     r14, rdx
                mov     rbx, rcx
                cmp     [rcx], r15b
                jz      loc_14083A712
                mov     rax, [rcx+8]
                test    rax, rax
                jz      loc_14083A712
                cmp     [rax], r15w
                jz      loc_14083A712
                cmp     [rcx+10h], r15
                jz      loc_14083A708

loc_140790C4B:                          ; CODE XREF: PsRegisterSiloMonitor+A9B0C↓j
                call    PsGetCurrentSilo
                mov     rcx, rax
                call    PsIsHostSilo
                test    al, al
                jz      loc_14083A71C
                mov     rax, [rbx+8]
                mov     r8d, 4D6C6953h
                mov     ecx, 1
                movzx   ebp, word ptr [rax]
                lea     rdx, [rbp+38h]
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140790CF8
                lea     r8, [rbp+38h]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     al, [rbx+1]
                lea     rcx, [rdi+28h]
                mov     [rdi+10h], al
                mov     al, [rbx+2]
                mov     [rdi+11h], al
                mov     rax, [rbx+10h]
                mov     [rdi+18h], rax
                mov     rax, [rbx+18h]
                mov     [rdi+20h], rax
                lea     rax, [rdi+38h]
                mov     [rdi+30h], rax
                mov     [rdi+2Ah], bp
                mov     rdx, [rbx+8]
                call    RtlCopyUnicodeString
                lea     rcx, [rdi+14h]
                call    sub_140790D08
                mov     ebx, eax
                test    eax, eax
                js      loc_14083A726
                mov     [r14], rdi
                xor     eax, eax

loc_140790CDE:                          ; CODE XREF: PsRegisterSiloMonitor+FD↓j
                                        ; PsRegisterSiloMonitor+A9B17↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140790CF8:                          ; CODE XREF: PsRegisterSiloMonitor+81↑j
                mov     eax, 0C000009Ah
                jmp     short loc_140790CDE
PsRegisterSiloMonitor endp
