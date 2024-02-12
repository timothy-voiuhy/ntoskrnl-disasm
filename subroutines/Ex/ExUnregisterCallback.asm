ExUnregisterCallback proc near          ; CODE XREF: sub_14037C850+1188CE↓p
                                        ; KeRegisterProcessorChangeCallback+98D43↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140496F4C SIZE 00000100 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     r14, [rcx+10h]
                mov     rbx, rcx
                lea     rsi, [r14+8]
                mov     rcx, rsi
                call    KeAcquireSpinLockRaiseToDpc
                or      rbp, 0FFFFFFFFFFFFFFFFh

loc_140381780:                          ; CODE XREF: ExUnregisterCallback+115895↓j
                cmp     dword ptr [rbx+28h], 0
                mov     dil, al
                jnz     loc_140496F4C
                mov     rdx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rdx+8], rbx
                jnz     short loc_1403817F7
                cmp     [rax], rbx
                jnz     short loc_1403817F7
                mov     [rax], rdx
                mov     rcx, rsi
                mov     [rdx+8], rax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140496FEA

loc_1403817BC:                          ; CODE XREF: ExUnregisterCallback+11589C↓j
                                        ; ExUnregisterCallback+1158A8↓j ...
                movzx   eax, dil
                mov     cr8, rax
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     edx, 746C6644h
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403817F7:                          ; CODE XREF: ExUnregisterCallback+48↑j
                                        ; ExUnregisterCallback+4D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
ExUnregisterCallback endp
