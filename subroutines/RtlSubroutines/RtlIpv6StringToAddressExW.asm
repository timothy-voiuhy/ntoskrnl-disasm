RtlIpv6StringToAddressExW proc near     ; DATA XREF: .rdata:0000000140085BE4↑o
                                        ; .pdata:00000001400D87BC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140486734 SIZE 00000223 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     edi, edi
                mov     r15, r9
                mov     [r11+8], rdi
                mov     r12, r8
                mov     rax, rcx
                test    rcx, rcx
                jz      short loc_1403568EC
                test    rdx, rdx
                jz      short loc_1403568EC
                test    r8, r8
                jz      short loc_1403568EC
                test    r9, r9
                jz      short loc_1403568EC
                movzx   ebp, word ptr [rcx]
                mov     r8, rdx
                cmp     bp, 5Bh ; '['
                lea     rcx, [rcx+2]
                lea     rdx, [r11+8]
                movzx   esi, di
                cmovnz  rcx, rax
                mov     r14d, edi
                setz    r13b
                call    RtlIpv6StringToAddressW
                test    eax, eax
                jns     loc_140486734

loc_1403568EC:                          ; CODE XREF: RtlIpv6StringToAddressExW+2E↑j
                                        ; RtlIpv6StringToAddressExW+33↑j ...
                mov     eax, 0C000000Dh

loc_1403568F1:                          ; CODE XREF: RtlIpv6StringToAddressExW+1300D2↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIpv6StringToAddressExW endp
