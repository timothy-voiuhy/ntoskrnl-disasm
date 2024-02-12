PsQueryTotalCycleTimeProcess proc near  ; CODE XREF: NtQueryInformationProcess+1950↑p
                                        ; DATA XREF: .pdata:000000014012162C↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, gs:188h
                mov     rdi, rcx
                mov     cl, 1
                mov     rbx, rdx
                call    sub_1402B906C
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_140513628
                dec     word ptr [rbp+1E4h]
                lea     rbx, [rdi+860h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                mov     rsi, [rdi+360h]
                add     rdi, 5E0h
                mov     rcx, [rdi]
                jmp     short loc_14090901D
; ---------------------------------------------------------------------------

loc_140909010:                          ; CODE XREF: PsQueryTotalCycleTimeProcess+70↓j
                mov     rax, [rcx-4A0h]
                mov     rcx, [rcx]
                add     rsi, rax

loc_14090901D:                          ; CODE XREF: PsQueryTotalCycleTimeProcess+5E↑j
                cmp     rcx, rdi
                jnz     short loc_140909010
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx], rcx
                jz      short loc_140909036
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_140909036:                          ; CODE XREF: PsQueryTotalCycleTimeProcess+7C↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_8]
                mov     rax, rsi
                mov     rsi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsQueryTotalCycleTimeProcess endp
