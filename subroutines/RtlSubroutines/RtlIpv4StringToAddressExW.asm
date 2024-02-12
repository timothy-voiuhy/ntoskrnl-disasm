RtlIpv4StringToAddressExW proc near     ; DATA XREF: .rdata:0000000140086614↑o
                                        ; .pdata:00000001400D8A14↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140487AF4 SIZE 00000175 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r12d, r12d
                mov     r15, r9
                mov     [rax+8], r12
                test    rcx, rcx
                jz      short loc_140358B79
                test    r8, r8
                jz      short loc_140358B79
                test    r9, r9
                jz      short loc_140358B79
                mov     r9, r8
                lea     r8, [rax+8]
                call    RtlIpv4StringToAddressW
                test    eax, eax
                jns     loc_140487AF4

loc_140358B79:                          ; CODE XREF: RtlIpv4StringToAddressExW+29↑j
                                        ; RtlIpv4StringToAddressExW+2E↑j ...
                mov     eax, 0C000000Dh

loc_140358B7E:                          ; CODE XREF: RtlIpv4StringToAddressExW+12F134↓j
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
RtlIpv4StringToAddressExW endp
