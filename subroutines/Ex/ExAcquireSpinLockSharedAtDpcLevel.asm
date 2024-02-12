ExAcquireSpinLockSharedAtDpcLevel proc near
                                        ; CODE XREF: sub_14021A224+45↑p
                                        ; sub_140261CF8+30↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041D5AE SIZE 0000004E BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                mov     rbx, rcx
                jnz     short loc_140261DAA

loc_140261D52:                          ; DATA XREF: .rdata:000000014005AF7C↑o
                                        ; .rdata:000000014005AF90↑o ...
                mov     [rsp+28h+arg_0], rdi
                mov     rdi, gs:20h
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14041D5AE

loc_140261D70:                          ; CODE XREF: ExAcquireSpinLockSharedAtDpcLevel+1BB872↓j
                                        ; ExAcquireSpinLockSharedAtDpcLevel+1BB881↓j ...
                prefetchw byte ptr [rbx]
                mov     eax, [rbx]
                btr     eax, 1Fh
                lea     ecx, [rax+1]
                lock cmpxchg [rbx], ecx
                jnz     short loc_140261D8E

loc_140261D82:                          ; CODE XREF: ExAcquireSpinLockSharedAtDpcLevel+68↓j
                mov     rdi, [rsp+28h+arg_0]

loc_140261D87:                          ; CODE XREF: ExAcquireSpinLockSharedAtDpcLevel+71↓j
                                        ; DATA XREF: .pdata:00000001400CD7DC↑o ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140261D8E:                          ; CODE XREF: ExAcquireSpinLockSharedAtDpcLevel+40↑j
                                        ; DATA XREF: .pdata:00000001400CD7E8↑o ...
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14041D5D5

loc_140261D9E:                          ; CODE XREF: ExAcquireSpinLockSharedAtDpcLevel+1BB899↓j
                                        ; ExAcquireSpinLockSharedAtDpcLevel+1BB8A8↓j ...
                mov     dl, 0FFh
                mov     rcx, rbx
                call    sub_140329420
                jmp     short loc_140261D82
; ---------------------------------------------------------------------------

loc_140261DAA:                          ; CODE XREF: ExAcquireSpinLockSharedAtDpcLevel+10↑j
                                        ; DATA XREF: .pdata:00000001400CD7F4↑o ...
                mov     dl, 0FFh
                call    sub_1405B5F24
                jmp     short loc_140261D87
ExAcquireSpinLockSharedAtDpcLevel endp
