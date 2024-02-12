PoFxRegisterDripsWatchdogCallback proc near
                                        ; DATA XREF: .rdata:00000001400AB77C↑o
                                        ; .pdata:00000001400DFA10↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B34A2 SIZE 00000078 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, [rcx+30h]
                mov     rbx, rcx
                mov     r14, r9
                mov     bpl, r8b
                mov     r15, rdx
                lea     rcx, [rsi+58h]
                call    ExAcquireSpinLockExclusive
                cmp     qword ptr [rbx+0A8h], 0
                movzx   edi, al
                jnz     loc_1404B34A2
                test    bpl, bpl
                jnz     short loc_1403CB22A

loc_1403CB1E7:                          ; CODE XREF: PoFxRegisterDripsWatchdogCallback+92↓j
                lea     rcx, [rsi+58h]
                mov     [rbx+360h], r14
                mov     [rbx+0A8h], r15
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B34B6

loc_1403CB20C:                          ; CODE XREF: PoFxRegisterDripsWatchdogCallback+E8318↓j
                                        ; PoFxRegisterDripsWatchdogCallback+E8324↓j ...
                mov     cr8, rdi
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403CB22A:                          ; CODE XREF: PoFxRegisterDripsWatchdogCallback+45↑j
                lock or dword ptr [rbx+338h], 8
                jmp     short loc_1403CB1E7
PoFxRegisterDripsWatchdogCallback endp
