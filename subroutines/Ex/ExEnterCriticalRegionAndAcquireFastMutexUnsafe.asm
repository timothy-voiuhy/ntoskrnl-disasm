ExEnterCriticalRegionAndAcquireFastMutexUnsafe proc near
                                        ; DATA XREF: .pdata:00000001400D62E4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rsi, gs:188h
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                lock btr dword ptr [rdi], 0
                mov     rbx, rax
                jnb     short loc_14032D96D

loc_14032D94F:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireFastMutexUnsafe+68↓j
                test    rbx, rbx
                jz      short loc_14032D958
                or      byte ptr [rbx+1Ah], 1

loc_14032D958:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireFastMutexUnsafe+42↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     [rdi+8], rsi
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032D96D:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireFastMutexUnsafe+3D↑j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402F5E40
                jmp     short loc_14032D94F
ExEnterCriticalRegionAndAcquireFastMutexUnsafe endp
