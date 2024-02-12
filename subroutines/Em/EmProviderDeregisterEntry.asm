EmProviderDeregisterEntry proc near     ; DATA XREF: .pdata:000000014011C178↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, qword_140C47818
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, rbx
                call    sub_1404EF060
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C47818, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14088B9FE
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock

loc_14088B9FE:                          ; CODE XREF: EmProviderDeregisterEntry+30↑j
                lea     rcx, qword_140C47818
                call    sub_140243660
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EmProviderDeregisterEntry endp
