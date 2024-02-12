PoUnregisterCoalescingCallback proc near
                                        ; DATA XREF: .pdata:000000014011FA24↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, gs:188h
                mov     rbp, rcx
                dec     word ptr [rdi+1E4h]
                lea     rsi, [rcx+40h]
                mov     rcx, rsi
                call    sub_1402A9540
                mov     r8, rax
                xor     edx, edx
                mov     rcx, rsi
                mov     rbx, rax
                call    sub_1403AF5DC
                mov     rdx, rbx
                mov     rcx, rsi
                test    al, al
                jz      short loc_1408E7E5A
                call    sub_1402A9600
                mov     rcx, rdi
                call    sub_14021E1F0
                mov     rcx, rbx
                call    ExWaitForRundownProtectionRelease
                lea     rcx, qword_140C243B0
                call    sub_1402B4578
                lea     rdx, [rbp+30h]
                mov     r8, [rdx]
                cmp     [r8+8], rdx
                jnz     short loc_1408E7E53
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     short loc_1408E7E53
                mov     [rax], r8
                lea     rcx, qword_140C243B0
                mov     [r8+8], rax
                call    sub_140216274
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_1408E7E67
; ---------------------------------------------------------------------------

loc_1408E7E53:                          ; CODE XREF: PoUnregisterCoalescingCallback+79↑j
                                        ; PoUnregisterCoalescingCallback+82↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1408E7E5A:                          ; CODE XREF: PoUnregisterCoalescingCallback+4B↑j
                call    sub_1402A9600
                mov     rcx, rdi
                call    sub_14021E1F0

loc_1408E7E67:                          ; CODE XREF: PoUnregisterCoalescingCallback+A1↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoUnregisterCoalescingCallback endp
