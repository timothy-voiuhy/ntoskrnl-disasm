IoUnregisterIoTracking proc near        ; DATA XREF: .pdata:000000014011CB5C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     ecx, 2
                call    sub_140508034
                xor     edx, edx
                lea     ecx, [rdx+2]
                call    sub_140500FA4
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E6h], bx
                xor     edx, edx
                lea     rcx, qword_140C45B38
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, [rdi]
                cmp     [rdx+8], rdi
                jnz     short loc_140896F8C
                mov     rax, [rdi+8]
                cmp     [rax], rdi
                jnz     short loc_140896F8C
                mov     [rax], rdx
                mov     [rdx+8], rax
                lock xadd cs:qword_140C45B38, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_140896F59
                lea     rcx, qword_140C45B38
                call    ExfTryToWakePushLock

loc_140896F59:                          ; CODE XREF: IoUnregisterIoTracking+6B↑j
                lea     rcx, qword_140C45B38
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     edx, 72546F49h
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140896F8C:                          ; CODE XREF: IoUnregisterIoTracking+4A↑j
                                        ; IoUnregisterIoTracking+53↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
IoUnregisterIoTracking endp
