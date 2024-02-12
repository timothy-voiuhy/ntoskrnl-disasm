IoUnregisterContainerNotification proc near
                                        ; DATA XREF: .pdata:000000014011CB08↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C45870
                call    ExAcquirePushLockExclusiveEx
                mov     rax, cs:qword_140C45860
                lea     rcx, qword_140C45860
                jmp     short loc_140896447
; ---------------------------------------------------------------------------

loc_14089643B:                          ; CODE XREF: IoUnregisterContainerNotification+4A↓j
                mov     rbx, rax
                mov     rax, [rax]
                cmp     [rbx+20h], rdi
                jz      short loc_140896474

loc_140896447:                          ; CODE XREF: IoUnregisterContainerNotification+39↑j
                cmp     rax, rcx
                jnz     short loc_14089643B

loc_14089644C:                          ; CODE XREF: IoUnregisterContainerNotification+A8↓j
                xor     edx, edx
                lea     rcx, qword_140C45870
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140896474:                          ; CODE XREF: IoUnregisterContainerNotification+45↑j
                mov     rcx, [rbx+10h]
                call    PsDereferenceSiloContext
                mov     rcx, rdi
                call    ExUnregisterCallback
                mov     rcx, [rbx]
                cmp     [rcx+8], rbx
                jnz     short loc_1408964AA
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_1408964AA
                mov     [rax], rcx
                xor     edx, edx
                mov     [rcx+8], rax
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_14089644C
; ---------------------------------------------------------------------------

loc_1408964AA:                          ; CODE XREF: IoUnregisterContainerNotification+8C↑j
                                        ; IoUnregisterContainerNotification+95↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
IoUnregisterContainerNotification endp
