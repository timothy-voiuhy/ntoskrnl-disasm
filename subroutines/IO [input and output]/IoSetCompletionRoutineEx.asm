IoSetCompletionRoutineEx proc near      ; DATA XREF: .pdata:00000001400D8954↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     sil, [rsp+38h+arg_28]
                mov     rbp, r9
                mov     bl, [rsp+38h+arg_30]
                mov     r14, r8
                mov     dil, [rsp+38h+arg_20]
                mov     r15, rdx
                mov     r12, rcx
                test    sil, sil
                jz      short loc_140357F5B

loc_140357EEC:                          ; CODE XREF: IoSetCompletionRoutineEx+AD↓j
                                        ; IoSetCompletionRoutineEx+B2↓j
                mov     edx, 20h ; ' '
                mov     ecx, 200h
                mov     r8d, 73556F49h
                call    ExAllocatePoolWithTag
                mov     rcx, rax
                test    rax, rax
                jz      short loc_140357F6B
                mov     [rax], r12
                lea     rdx, sub_140359980
                mov     [rax+10h], r14
                mov     [rax+8], rbp
                mov     [rax+18h], sil
                mov     [rax+19h], dil
                mov     [rax+1Ah], bl
                mov     rax, [r15+0B8h]
                mov     [rax-10h], rdx
                mov     [rax-8], rcx
                mov     byte ptr [rax-45h], 0E0h
                xor     eax, eax

loc_140357F3B:                          ; CODE XREF: IoSetCompletionRoutineEx+B9↓j
                                        ; IoSetCompletionRoutineEx+C0↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140357F5B:                          ; CODE XREF: IoSetCompletionRoutineEx+3A↑j
                test    bl, bl
                jnz     short loc_140357EEC
                test    dil, dil
                jnz     short loc_140357EEC
                mov     eax, 0C000000Dh
                jmp     short loc_140357F3B
; ---------------------------------------------------------------------------

loc_140357F6B:                          ; CODE XREF: IoSetCompletionRoutineEx+57↑j
                mov     eax, 0C000009Ah
                jmp     short loc_140357F3B
IoSetCompletionRoutineEx endp
