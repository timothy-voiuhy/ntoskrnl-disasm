SeConvertStringSidToSid proc near       ; DATA XREF: .rdata:00000001400A76C4↑o
                                        ; .pdata:00000001400DF0EC↑o

var_40          = byte ptr -40h
var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AE4BC SIZE 000000D3 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r15d, r15d
                mov     rdi, rdx
                mov     [rax+8], r15
                mov     rsi, rcx
                mov     [rax+18h], r15
                test    rcx, rcx
                jz      short loc_1403C062A
                test    rdx, rdx
                jz      short loc_1403C062A
                lea     r8, [rax+8]
                call    sub_1407B77E0
                mov     ebx, eax
                test    eax, eax
                js      short loc_1403C0618
                lea     rax, [rsp+68h+arg_10]
                xor     r8d, r8d
                mov     [rsp+68h+var_38], rax
                xor     edx, edx
                mov     rcx, rsi
                mov     [rsp+68h+var_40], r15b
                call    sub_1406D62D4
                mov     rbp, [rsp+68h+arg_10]
                mov     r14, rax
                test    rax, rax
                jnz     loc_1404AE4F8

loc_1403C05FF:                          ; CODE XREF: SeConvertStringSidToSid+EDF6F↓j
                test    rbp, rbp
                jnz     short loc_1403C0621

loc_1403C0604:                          ; CODE XREF: SeConvertStringSidToSid+9F↓j
                                        ; SeConvertStringSidToSid+EDF58↓j ...
                mov     eax, ebx
                mov     rbx, [rsp+68h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403C0618:                          ; CODE XREF: SeConvertStringSidToSid+3A↑j
                or      rcx, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1404AE4BC
; ---------------------------------------------------------------------------

loc_1403C0621:                          ; CODE XREF: SeConvertStringSidToSid+72↑j
                or      rcx, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1404AE564
; ---------------------------------------------------------------------------

loc_1403C062A:                          ; CODE XREF: SeConvertStringSidToSid+26↑j
                                        ; SeConvertStringSidToSid+2B↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1403C0604
SeConvertStringSidToSid endp
