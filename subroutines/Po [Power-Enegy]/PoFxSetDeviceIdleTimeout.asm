PoFxSetDeviceIdleTimeout proc near      ; DATA XREF: .rdata:00000001400A9F24↑o
                                        ; .pdata:00000001400DF710↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B1AEE SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+168h]
                mov     rsi, rcx
                mov     rcx, rdi
                mov     rbx, rdx
                call    KeAcquireSpinLockRaiseToDpc
                mov     r8, 3FFFFFFFFFFFFFFFh
                movzx   ebp, al
                cmp     rbx, r8
                mov     rcx, rsi
                cmovbe  r8, rbx
                mov     [rsi+1F0h], r8
                call    sub_1403C8354
                mov     rcx, rdi
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B1AEE

loc_1403C8332:                          ; CODE XREF: PoFxSetDeviceIdleTimeout+E9820↓j
                                        ; PoFxSetDeviceIdleTimeout+E982C↓j ...
                mov     cr8, rbp
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxSetDeviceIdleTimeout endp
