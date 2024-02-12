EmClientRuleDeregisterNotification proc near
                                        ; DATA XREF: .pdata:000000014011C148↑o

arg_0           = qword ptr  8

                test    rcx, rcx
                jz      locret_14088B569
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, qword_140C47818
                call    ExAcquirePushLockExclusiveEx
                xor     r8d, r8d
                or      rbx, 0FFFFFFFFFFFFFFFFh
                cmp     [rdi+10h], r8d
                jbe     short loc_14088B50E

loc_14088B4D1:                          ; CODE XREF: EmClientRuleDeregisterNotification+6C↓j
                mov     rax, [rdi+8]
                lea     rdx, [r8+r8*4]
                mov     rcx, [rax+rdx*8]
                lock add [rcx], ebx
                mov     rax, [rdi+8]
                lea     rdx, [rdx+3]
                lea     rcx, [rax+rdx*8]
                mov     rdx, [rcx]
                cmp     [rdx+8], rcx
                jnz     short loc_14088B56B
                mov     rax, [rcx+8]
                cmp     [rax], rcx
                jnz     short loc_14088B56B
                mov     [rax], rdx
                inc     r8d
                mov     [rdx+8], rax
                cmp     r8d, [rdi+10h]
                jb      short loc_14088B4D1

loc_14088B50E:                          ; CODE XREF: EmClientRuleDeregisterNotification+2F↑j
                mov     rcx, [rdi]
                test    rcx, rcx
                jz      short loc_14088B51B
                call    PsDereferenceSiloContext

loc_14088B51B:                          ; CODE XREF: EmClientRuleDeregisterNotification+74↑j
                mov     rcx, [rdi+8]
                mov     edx, 6C634D45h
                call    ExFreePoolWithTag
                mov     edx, 6C634D45h
                mov     rcx, rdi
                call    ExFreePoolWithTag
                lock xadd cs:qword_140C47818, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14088B553
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock

loc_14088B553:                          ; CODE XREF: EmClientRuleDeregisterNotification+A5↑j
                lea     rcx, qword_140C47818
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi

locret_14088B569:                       ; CODE XREF: EmClientRuleDeregisterNotification+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14088B56B:                          ; CODE XREF: EmClientRuleDeregisterNotification+53↑j
                                        ; EmClientRuleDeregisterNotification+5C↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
EmClientRuleDeregisterNotification endp
