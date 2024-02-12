ZwQueryInformationJobObject proc near   ; CODE XREF: NtQueryInformationProcess+1A85↓p
                                        ; NtQueryInformationProcess+1AA4↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 14Bh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryInformationJobObject endp
