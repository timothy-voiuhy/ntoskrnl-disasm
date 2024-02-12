KeAllocateCalloutStackEx proc near      ; CODE XREF: KeAllocateCalloutStack+20↓p
                                        ; DATA XREF: .rdata:000000014009B7FC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140850C9C SIZE 0000005C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], r9
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   ebp, dl
                test    ecx, ecx
                jnz     loc_140850C9C
                xor     sil, sil

loc_14077E7AE:                          ; CODE XREF: KeAllocateCalloutStackEx+D252E↓j
                test    dl, dl
                jz      loc_140850CB3
                test    r8, r8
                jnz     loc_140850CBD
                lea     rdx, ds:40h[rbp*8]
                mov     ecx, 200h
                mov     r8d, 6353654Bh
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140850CC7
                mov     al, sil
                movzx   r13d, sil
                neg     al
                sbb     r15d, r15d
                xor     edi, edi
                and     r15d, 5
                test    bpl, bpl
                jz      short loc_14077E821
                lea     r14, [rbx+40h]

loc_14077E7FE:                          ; CODE XREF: KeAllocateCalloutStackEx+9F↓j
                xor     r8d, r8d
                xor     edx, edx
                mov     ecx, r15d
                call    sub_14027CC90
                test    rax, rax
                jz      loc_140850CE0
                mov     [r14], rax
                inc     edi
                add     r14, 8
                cmp     edi, ebp
                jb      short loc_14077E7FE

loc_14077E821:                          ; CODE XREF: KeAllocateCalloutStackEx+78↑j
                lea     rcx, [rbx+8]
                mov     dword ptr [rbx], 6B617453h
                xor     edx, edx
                mov     [rbx+4], sil
                mov     [rbx+5], bpl
                mov     byte ptr [rbx+6], 0
                call    KeInitializeMutex
                mov     rax, [rsp+48h+arg_18]
                mov     [rax], rbx
                xor     eax, eax

loc_14077E848:                          ; CODE XREF: KeAllocateCalloutStackEx+D2526↓j
                                        ; KeAllocateCalloutStackEx+D2538↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAllocateCalloutStackEx endp
