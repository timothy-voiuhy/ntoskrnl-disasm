SeAppendPrivileges proc near            ; CODE XREF: sub_14033AA88+E9↑p
                                        ; sub_140631260+5E2↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408249BC SIZE 000000A8 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, [rcx+48h]
                mov     rbp, rcx
                mov     r8d, [rdx]
                mov     r14, rdx
                mov     rcx, [rdi]
                mov     r9d, [rcx]
                lea     eax, [r9+r8]
                cmp     eax, 3
                ja      loc_1408249BC
                mov     r8, rdx
                call    sub_1406EE028

loc_1406EE001:                          ; CODE XREF: SeAppendPrivileges+136A9F↓j
                xor     eax, eax

loc_1406EE003:                          ; CODE XREF: SeAppendPrivileges+136A51↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAppendPrivileges endp
