PsGetThreadProperty proc near           ; DATA XREF: .rdata:000000014007AB78↑o
                                        ; .rdata:000000014007AB94↑o ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047320E SIZE 00000178 BYTES

                push    rbx
                push    rbp
                push    r12
                push    r13
                sub     rsp, 28h
                xor     ebp, ebp
                mov     r12d, r8d
                mov     r13, rdx
                mov     rbx, rcx
                test    r8d, 0FFFFFFFEh
                jnz     loc_140325D90
                mov     rax, gs:20h
                cmp     rcx, [rax+18h]
                jz      loc_140325D90
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_140325C12
                lea     rax, [rcx-30h]
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [rcx-18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                lea     rax, qword_140CFCE60
                mov     rax, [rax+rdx*8]
                cmp     rax, cs:PsThreadType
                jnz     loc_140325D90

loc_140325C12:                          ; CODE XREF: PsGetThreadProperty+3C↑j
                mov     rax, gs:188h
                cmp     rbx, rax
                jnz     short loc_140325C33
                mov     eax, gs:32ACh
                test    eax, 10001h
                jnz     loc_140325D90

loc_140325C33:                          ; CODE XREF: PsGetThreadProperty+7E↑j
                                        ; DATA XREF: .rdata:000000014007AB78↑o ...
                mov     [rsp+48h+arg_0], rsi
                lea     rsi, [rcx+5C8h]
                mov     [rsp+48h+arg_8], rdi
                lea     rdi, [rsi+10h]
                mov     [rsp+48h+arg_10], r14
                mov     [rsp+48h+var_28], r15
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     r10, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047320E

loc_140325C71:                          ; CODE XREF: PsGetThreadProperty+14D670↓j
                                        ; PsGetThreadProperty+14D67A↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14047324F
                mov     r14, gs:20h
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_140473259

loc_140325C97:                          ; CODE XREF: PsGetThreadProperty+14D6BE↓j
                                        ; PsGetThreadProperty+14D6CD↓j ...
                lock bts qword ptr [rdi], 0
                jb      loc_140473287

loc_140325CA3:                          ; CODE XREF: PsGetThreadProperty+14D71C↓j
                mov     rax, [rsi]
                mov     r14, rbp
                cmp     rax, rsi
                jz      short loc_140325CE0

loc_140325CAE:                          ; CODE XREF: PsGetThreadProperty+1EB↓j
                cmp     [rax+10h], r13
                jnz     loc_140325D7F
                mov     r14, rax
                test    rax, rax
                jz      short loc_140325CE0
                cmp     cs:dword_140CFB010, ebp
                mov     rsi, [rax+18h]
                jnz     loc_1404732C1

loc_140325CD0:                          ; CODE XREF: PsGetThreadProperty+14D73B↓j
                lea     rcx, [rsi-30h]
                call    sub_140233550
                mov     r10, 0FFFFFFFFFFFFFFFFh

loc_140325CE0:                          ; CODE XREF: PsGetThreadProperty+10C↑j
                                        ; PsGetThreadProperty+11E↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 1
                mov     rsi, [rsp+48h+arg_0]
                jnz     loc_1404732E0

loc_140325CF2:                          ; DATA XREF: .pdata:00000001400D5B10↑o
                                        ; .pdata:00000001400D5B1C↑o
                lock and [rdi], rbp

loc_140325CF6:                          ; CODE XREF: PsGetThreadProperty+14D754↓j
                mov     rcx, gs:20h
                mov     rdi, [rsp+48h+arg_8]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404732F9

loc_140325D14:                          ; CODE XREF: PsGetThreadProperty+14D75D↓j
                                        ; PsGetThreadProperty+14D76C↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140473323

loc_140325D22:                          ; CODE XREF: PsGetThreadProperty+14D785↓j
                                        ; PsGetThreadProperty+14D791↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                mov     r15, [rsp+48h+var_28]
                test    r14, r14
                jz      short loc_140325D4C

loc_140325D34:                          ; DATA XREF: .pdata:00000001400D5B28↑o
                                        ; .pdata:00000001400D5B34↑o
                mov     rbp, [r14+18h]

loc_140325D38:                          ; CODE XREF: PsGetThreadProperty+1B0↓j
                                        ; PsGetThreadProperty+1D0↓j ...
                mov     r14, [rsp+48h+arg_10]
                mov     rax, rbp

loc_140325D40:                          ; CODE XREF: PsGetThreadProperty+1F2↓j
                                        ; DATA XREF: .pdata:00000001400D5B34↑o ...
                add     rsp, 28h
                pop     r13
                pop     r12
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140325D4C:                          ; CODE XREF: PsGetThreadProperty+192↑j
                                        ; DATA XREF: .pdata:00000001400D5B40↑o ...
                test    r12b, 1
                jnz     short loc_140325D38
                mov     rcx, [rbx+608h]
                cmp     rcx, 0FFFFFFFFFFFFFFFDh
                jnz     short loc_140325D6D
                mov     rax, [rbx+220h]
                mov     rcx, [rax+510h]

loc_140325D6D:                          ; CODE XREF: PsGetThreadProperty+1BD↑j
                test    rcx, rcx
                jz      short loc_140325D38
                mov     rdx, r13
                call    PsGetJobProperty
                mov     rbp, rax
                jmp     short loc_140325D38
; ---------------------------------------------------------------------------

loc_140325D7F:                          ; CODE XREF: PsGetThreadProperty+112↑j
                                        ; DATA XREF: .pdata:00000001400D5B4C↑o ...
                mov     rax, [rax]
                cmp     rax, rsi
                jz      loc_140325CE0
                jmp     loc_140325CAE
; ---------------------------------------------------------------------------

loc_140325D90:                          ; CODE XREF: PsGetThreadProperty+1D↑j
                                        ; PsGetThreadProperty+30↑j ...
                xor     eax, eax
                jmp     short loc_140325D40
PsGetThreadProperty endp
