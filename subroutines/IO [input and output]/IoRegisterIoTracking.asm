IoRegisterIoTracking proc near          ; DATA XREF: .pdata:000000014011CB50↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rdx], 0
                mov     rsi, rdx
                mov     rbx, rcx
                mov     edx, 18h
                mov     ecx, 200h
                mov     r8d, 72546F49h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140896E10
                mov     eax, 0C000009Ah
                jmp     loc_140896EC2
; ---------------------------------------------------------------------------

loc_140896E10:                          ; CODE XREF: IoRegisterIoTracking+34↑j
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  xmmword ptr [rdi], xmm0
                mov     [rdi+10h], rax
                mov     rax, [rbx+8]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     [rdi+10h], rax
                mov     rax, gs:188h
                add     [rax+1E6h], bx
                xor     edx, edx
                lea     rcx, qword_140C45B38
                call    ExAcquirePushLockExclusiveEx
                mov     rax, cs:qword_140C45B48
                lea     rcx, qword_140C45B40
                cmp     [rax], rcx
                jz      short loc_140896E5E
                lea     ecx, [rbx+4]
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140896E5E:                          ; CODE XREF: IoRegisterIoTracking+87↑j
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     cs:qword_140C45B48, rdi
                lock xadd cs:qword_140C45B38, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_140896E8C
                lea     rcx, qword_140C45B38
                call    ExfTryToWakePushLock

loc_140896E8C:                          ; CODE XREF: IoRegisterIoTracking+AE↑j
                lea     rcx, qword_140C45B38
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     edx, 1
                lea     ecx, [rdx+1]
                call    sub_140500FA4
                mov     ecx, 2
                call    sub_140507F38
                xor     eax, eax
                mov     [rsi], rdi

loc_140896EC2:                          ; CODE XREF: IoRegisterIoTracking+3B↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRegisterIoTracking endp
