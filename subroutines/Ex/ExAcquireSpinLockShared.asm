ExAcquireSpinLockShared proc near       ; CODE XREF: sub_140203354+27↑p
                                        ; sub_140219BBC+59↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140441424 SIZE 000000A5 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140441424

loc_14026F538:                          ; CODE XREF: ExAcquireSpinLockShared+1D1F16↓j
                                        ; ExAcquireSpinLockShared+1D1F20↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140441469

loc_14026F545:                          ; DATA XREF: .rdata:000000014005D4E0↑o
                                        ; .rdata:000000014005D4F4↑o ...
                mov     [rsp+28h+arg_0], rsi
                mov     rsi, gs:20h
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14044147B

loc_14026F563:                          ; CODE XREF: ExAcquireSpinLockShared+1D1F6F↓j
                                        ; ExAcquireSpinLockShared+1D1F7E↓j ...
                prefetchw byte ptr [rbx]
                mov     eax, [rbx]
                btr     eax, 1Fh
                lea     ecx, [rax+1]
                lock cmpxchg [rbx], ecx
                jnz     short loc_14026F58A

loc_14026F575:                          ; CODE XREF: ExAcquireSpinLockShared+96↓j
                mov     rsi, [rsp+28h+arg_0]

loc_14026F57A:                          ; CODE XREF: ExAcquireSpinLockShared+1D1F66↓j
                                        ; DATA XREF: .pdata:00000001400CE388↑o ...
                mov     rbx, [rsp+28h+arg_8]
                movzx   eax, dil
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14026F58A:                          ; CODE XREF: ExAcquireSpinLockShared+63↑j
                                        ; DATA XREF: .pdata:00000001400CE394↑o ...
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_1404414A2

loc_14026F59A:                          ; CODE XREF: ExAcquireSpinLockShared+1D1F96↓j
                                        ; ExAcquireSpinLockShared+1D1FA5↓j ...
                movzx   edx, dil
                mov     rcx, rbx
                call    sub_140329420
                jmp     short loc_14026F575
ExAcquireSpinLockShared endp
