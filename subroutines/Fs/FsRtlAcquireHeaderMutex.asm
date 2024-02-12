FsRtlAcquireHeaderMutex proc near       ; CODE XREF: sub_14032274C+128↓p
                                        ; DATA XREF: .pdata:00000001400CC0E4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_8], rdx
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx+18h]
                xor     r8d, r8d
                xor     edx, edx
                mov     rdi, [rax+30h]
                mov     rcx, rdi
                call    sub_140244C10
                mov     rbx, rax
                mov     rsi, cr8
                mov     eax, 1
                mov     cr8, rax
                lock btr dword ptr [rdi], 0
                jnb     short loc_140243AD0

loc_140243A90:                          ; CODE XREF: FsRtlAcquireHeaderMutex+8B↓j
                test    rbx, rbx
                jz      short loc_140243A99
                or      byte ptr [rbx+1Ah], 1

loc_140243A99:                          ; CODE XREF: FsRtlAcquireHeaderMutex+43↑j
                mov     rax, gs:188h
                mov     [rdi+8], rax
                movzx   eax, sil
                mov     [rdi+30h], eax
                mov     rax, [rsp+28h+arg_8]
                test    rax, rax
                jz      short loc_140243ABF
                mov     rax, [rsp+28h+arg_8]
                lock inc dword ptr [rax]

loc_140243ABF:                          ; CODE XREF: FsRtlAcquireHeaderMutex+65↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140243AD0:                          ; CODE XREF: FsRtlAcquireHeaderMutex+3E↑j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402F5E40
                jmp     short loc_140243A90
FsRtlAcquireHeaderMutex endp
