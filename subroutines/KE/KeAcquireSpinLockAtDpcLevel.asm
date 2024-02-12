KeAcquireSpinLockAtDpcLevel proc near   ; CODE XREF: sub_1402000B0+5C↑p
                                        ; sub_140208198+A9↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404316E6 SIZE 0000004E BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                mov     rbx, rcx
                jnz     short loc_14024304E

loc_140243002:                          ; DATA XREF: .rdata:00000001400562A4↑o
                                        ; .rdata:00000001400562B8↑o ...
                mov     [rsp+28h+arg_0], rdi
                mov     rdi, gs:20h
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_1404316E6

loc_140243020:                          ; CODE XREF: KeAcquireSpinLockAtDpcLevel+1EE6FA↓j
                                        ; KeAcquireSpinLockAtDpcLevel+1EE709↓j ...
                lock bts qword ptr [rbx], 0
                jb      short loc_140243034

loc_140243028:                          ; CODE XREF: KeAcquireSpinLockAtDpcLevel+5C↓j
                mov     rdi, [rsp+28h+arg_0]

loc_14024302D:                          ; CODE XREF: KeAcquireSpinLockAtDpcLevel+63↓j
                                        ; DATA XREF: .pdata:00000001400CBF28↑o ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140243034:                          ; CODE XREF: KeAcquireSpinLockAtDpcLevel+36↑j
                                        ; DATA XREF: .pdata:00000001400CBF34↑o ...
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14043170D

loc_140243044:                          ; CODE XREF: KeAcquireSpinLockAtDpcLevel+1EE721↓j
                                        ; KeAcquireSpinLockAtDpcLevel+1EE730↓j ...
                mov     rcx, rbx
                call    sub_140300EA0
                jmp     short loc_140243028
; ---------------------------------------------------------------------------

loc_14024304E:                          ; CODE XREF: KeAcquireSpinLockAtDpcLevel+10↑j
                                        ; DATA XREF: .pdata:00000001400CBF40↑o ...
                call    sub_1405169EC
                jmp     short loc_14024302D
KeAcquireSpinLockAtDpcLevel endp
