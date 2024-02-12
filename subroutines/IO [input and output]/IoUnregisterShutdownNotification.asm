IoUnregisterShutdownNotification proc near
                                        ; CODE XREF: IoDeleteDevice+1728FE↑p
                                        ; DATA XREF: .pdata:00000001401277F4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rcx, cs:qword_140CFC530
                call    MmLockPagableSectionByHandle
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     rbx, cs:qword_140C45B10
                lea     r14, qword_140C45B10
                mov     bpl, al
                jmp     short loc_1409AD258
; ---------------------------------------------------------------------------

loc_1409AD215:                          ; CODE XREF: IoUnregisterShutdownNotification+8B↓j
                mov     rsi, rbx
                cmp     [rbx+10h], rdi
                jnz     short loc_1409AD255
                mov     rdx, [rbx]
                cmp     [rdx+8], rbx
                jnz     loc_1409AD2E7
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     loc_1409AD2E7
                mov     [rax], rdx
                mov     rcx, rdi
                mov     [rdx+8], rax
                mov     rbx, [rbx+8]
                call    PsDereferenceSiloContext
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1409AD255:                          ; CODE XREF: IoUnregisterShutdownNotification+4C↑j
                mov     rbx, [rbx]

loc_1409AD258:                          ; CODE XREF: IoUnregisterShutdownNotification+43↑j
                cmp     rbx, r14
                jnz     short loc_1409AD215
                mov     rbx, cs:qword_140C45B00
                lea     r14, qword_140C45B00
                jmp     short loc_1409AD2A8
; ---------------------------------------------------------------------------

loc_1409AD26D:                          ; CODE XREF: IoUnregisterShutdownNotification+DB↓j
                mov     rsi, rbx
                cmp     [rbx+10h], rdi
                jnz     short loc_1409AD2A5
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_1409AD2E7
                mov     rdx, [rbx+8]
                cmp     [rdx], rbx
                jnz     short loc_1409AD2E7
                mov     [rdx], rax
                mov     rcx, rdi
                mov     [rax+8], rdx
                mov     rbx, [rbx+8]
                call    PsDereferenceSiloContext
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1409AD2A5:                          ; CODE XREF: IoUnregisterShutdownNotification+A4↑j
                mov     rbx, [rbx]

loc_1409AD2A8:                          ; CODE XREF: IoUnregisterShutdownNotification+9B↑j
                cmp     rbx, r14
                jnz     short loc_1409AD26D
                mov     dl, bpl
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rcx, cs:qword_140CFC530
                call    MmUnlockPagableImageSection
                btr     dword ptr [rdi+30h], 0Bh
                mov     rdi, [rsp+28h+arg_18]
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409AD2E7:                          ; CODE XREF: IoUnregisterShutdownNotification+55↑j
                                        ; IoUnregisterShutdownNotification+62↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
IoUnregisterShutdownNotification endp
