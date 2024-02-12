CmSetCallbackObjectContext proc near    ; CODE XREF: sub_1405D17AC+1F7↑p
                                        ; sub_1405D3540+212↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E9F7E SIZE 0000005E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r12b, r12b
                mov     rbx, r9
                mov     r13, r8
                mov     r15, rdx
                mov     rbp, rcx
                mov     edi, 0C0000225h
                test    rcx, rcx
                jz      loc_1407E9FD2
                cmp     dword ptr [rcx], 6B793032h
                jnz     loc_1407E9FD2
                test    rbx, rbx
                jz      short loc_1405D499E
                and     qword ptr [r9], 0

loc_1405D499E:                          ; CODE XREF: CmSetCallbackObjectContext+48↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C48358
                call    ExAcquirePushLockSharedEx
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExAcquirePushLockSharedEx
                lea     r14, [rbp+48h]

loc_1405D49DE:                          ; CODE XREF: CmSetCallbackObjectContext+111↓j
                mov     rsi, [r14]
                cmp     rsi, r14
                jnz     loc_1407E9F7E

loc_1405D49EA:                          ; CODE XREF: CmSetCallbackObjectContext+215637↓j
                                        ; CmSetCallbackObjectContext+215645↓j ...
                test    edi, edi
                jns     loc_1405D4AE3
                test    r12b, r12b
                jz      short loc_1405D4A24
                mov     rbx, cs:qword_140C48360
                lea     rcx, qword_140C48360
                cmp     rbx, rcx
                jz      loc_1407E9FB0
                mov     rax, [r15]

loc_1405D4A11:                          ; CODE XREF: CmSetCallbackObjectContext+CD↓j
                cmp     rax, [rbx+18h]
                jz      short loc_1405D4A66
                mov     rbx, [rbx]
                cmp     rbx, rcx
                jnz     short loc_1405D4A11
                jmp     loc_1407E9FB0
; ---------------------------------------------------------------------------

loc_1405D4A24:                          ; CODE XREF: CmSetCallbackObjectContext+A5↑j
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, gs:188h
                mov     r12b, 1
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExAcquirePushLockExclusiveEx
                jmp     loc_1405D49DE
; ---------------------------------------------------------------------------

loc_1405D4A66:                          ; CODE XREF: CmSetCallbackObjectContext+C5↑j
                                        ; CmSetCallbackObjectContext+215662↓j
                test    rbx, rbx
                jz      loc_1407E9FC8
                xor     edi, edi
                mov     r8d, 63634D43h
                lea     edx, [rdi+40h]
                lea     ecx, [rdi+1]
                call    ExAllocatePoolWithTag
                mov     rcx, rax
                test    rax, rax
                jz      loc_1407E9FB7
                mov     [rax+28h], rbx
                add     rbx, 40h ; '@'
                mov     rax, [r15]
                mov     [rcx+20h], rax
                lea     rax, [rcx+10h]
                mov     [rcx+38h], r13
                mov     [rcx+30h], rbp
                mov     rdx, [rbx+8]
                cmp     [rdx], rbx
                jnz     loc_1407E9FC1
                mov     [rax], rbx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rbx+8], rax
                mov     rax, [rsi+8]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     loc_1407E9FC1
                mov     [rcx], rdx
                mov     [rcx+8], rax
                mov     [rdx+8], rcx
                mov     [rax], rcx

loc_1405D4AE3:                          ; CODE XREF: CmSetCallbackObjectContext+9C↑j
                                        ; CmSetCallbackObjectContext+21566C↓j ...
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     edx, edx
                lea     rcx, qword_140C48358
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, edi

loc_1405D4B1D:                          ; CODE XREF: CmSetCallbackObjectContext+215687↓j
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
CmSetCallbackObjectContext endp
