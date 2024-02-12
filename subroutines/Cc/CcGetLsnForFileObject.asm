CcGetLsnForFileObject proc near         ; DATA XREF: .pdata:00000001400F0EE8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+28h]
                mov     rsi, rdx
                and     dword ptr [rsp+38h+arg_0], 0
                and     dword ptr [rsp+38h+arg_0+4], 0
                and     dword ptr [rsp+38h+arg_10], 0
                mov     rbx, [rax+8]
                and     dword ptr [rsp+38h+arg_10+4], 0
                test    rbx, rbx
                jnz     short loc_1404EAD17
                mov     rax, [rsp+38h+arg_0]
                jmp     short loc_1404EAD8A
; ---------------------------------------------------------------------------

loc_1404EAD17:                          ; CODE XREF: CcGetLsnForFileObject+2E↑j
                lea     rbp, [rbx+118h]
                mov     rcx, rbp
                call    ExAcquireFastMutex
                mov     rdi, [rsp+38h+arg_0]
                lea     r8, [rbx+10h]
                mov     rax, [r8]
                mov     rbx, [rsp+38h+arg_10]

loc_1404EAD37:                          ; CODE XREF: CcGetLsnForFileObject+95↓j
                lea     rdx, [rax-10h]
                cmp     rax, r8
                jz      short loc_1404EAD77
                mov     eax, 2FDh
                cmp     [rdx], ax
                jnz     short loc_1404EAD71
                cmp     byte ptr [rdx+2], 0
                jz      short loc_1404EAD71
                mov     rax, [rdx+28h]
                mov     rcx, [rdx+30h]
                test    rax, rax
                jz      short loc_1404EAD71
                test    rdi, rdi
                jz      short loc_1404EAD67
                cmp     rax, rdi
                jge     short loc_1404EAD6A

loc_1404EAD67:                          ; CODE XREF: CcGetLsnForFileObject+80↑j
                mov     rdi, rax

loc_1404EAD6A:                          ; CODE XREF: CcGetLsnForFileObject+85↑j
                cmp     rcx, rbx
                cmovg   rbx, rcx

loc_1404EAD71:                          ; CODE XREF: CcGetLsnForFileObject+68↑j
                                        ; CcGetLsnForFileObject+6E↑j ...
                mov     rax, [rdx+10h]
                jmp     short loc_1404EAD37
; ---------------------------------------------------------------------------

loc_1404EAD77:                          ; CODE XREF: CcGetLsnForFileObject+5E↑j
                mov     rcx, rbp
                call    KeReleaseGuardedMutex
                test    rsi, rsi
                jz      short loc_1404EAD87
                mov     [rsi], rdi

loc_1404EAD87:                          ; CODE XREF: CcGetLsnForFileObject+A2↑j
                mov     rax, rbx

loc_1404EAD8A:                          ; CODE XREF: CcGetLsnForFileObject+35↑j
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcGetLsnForFileObject endp
