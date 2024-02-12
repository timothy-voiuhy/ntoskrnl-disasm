KeAcquireInterruptSpinLock proc near    ; DATA XREF: .rdata:0000000140086A74↑o
                                        ; .pdata:00000001400D8B1C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404880B0 SIZE 00000086 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                movzx   edx, byte ptr [rcx+5Dh]
                mov     rbx, rcx
                test    dl, dl
                jz      loc_1404880B0
                mov     rdi, cr8
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404880CB

loc_1403596FF:                          ; CODE XREF: KeAcquireInterruptSpinLock+12EA04↓j
                                        ; KeAcquireInterruptSpinLock+12EA0E↓j ...
                mov     rcx, [rbx+48h]
                call    KeAcquireSpinLockAtDpcLevel
                mov     rbx, [rsp+38h+arg_0]
                mov     al, dil
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireInterruptSpinLock endp
