RtlFindUnicodePrefix proc near          ; DATA XREF: .rdata:000000014007AFD0↑o
                                        ; .pdata:00000001401044FC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140823656 SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, [rcx+8]
                mov     rbp, rcx
                mov     rcx, rdx
                mov     r12d, r8d
                mov     r15, rdx
                call    sub_1406E65C8
                jmp     short loc_1406E63AA
; ---------------------------------------------------------------------------

loc_1406E63A3:                          ; CODE XREF: RtlFindUnicodePrefix+3E↓j
                mov     rbp, rdi
                mov     rdi, [rdi+8]

loc_1406E63AA:                          ; CODE XREF: RtlFindUnicodePrefix+31↑j
                cmp     [rdi+2], ax
                jg      short loc_1406E63A3
                xor     r13d, r13d

loc_1406E63B3:                          ; CODE XREF: RtlFindUnicodePrefix+E9↓j
                cmp     [rdi+2], r13w
                jg      short loc_1406E63BE
                xor     eax, eax
                jmp     short loc_1406E6422
; ---------------------------------------------------------------------------

loc_1406E63BE:                          ; CODE XREF: RtlFindUnicodePrefix+48↑j
                lea     rsi, [rdi+18h]

loc_1406E63C2:                          ; CODE XREF: RtlFindUnicodePrefix+D4↓j
                                        ; RtlFindUnicodePrefix+DD↓j
                test    rsi, rsi
                jz      loc_1406E6452
                lea     r14, [rsi-18h]
                xor     r8d, r8d
                mov     rcx, [r14+30h]
                mov     rdx, r15
                call    sub_1406E6488
                cmp     eax, 3
                jz      short loc_1406E6440
                test    eax, eax
                jz      short loc_1406E6449
                test    r12d, r12d
                jnz     short loc_1406E645E
                mov     eax, 802h
                cmp     [r14], ax
                jnz     short loc_1406E641F
                mov     rbx, [rdi+8]
                mov     rcx, rsi
                mov     [rdi+8], r13
                mov     [rdi], ax
                call    RtlSplay
                lea     r14, [rax-18h]
                mov     eax, 801h
                mov     [r14], ax
                mov     [rbp+8], r14
                mov     [r14+8], rbx

loc_1406E641F:                          ; CODE XREF: RtlFindUnicodePrefix+85↑j
                mov     rax, r14

loc_1406E6422:                          ; CODE XREF: RtlFindUnicodePrefix+4C↑j
                                        ; RtlFindUnicodePrefix+10E↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1406E6440:                          ; CODE XREF: RtlFindUnicodePrefix+71↑j
                mov     rsi, [rsi+8]
                jmp     loc_1406E63C2
; ---------------------------------------------------------------------------

loc_1406E6449:                          ; CODE XREF: RtlFindUnicodePrefix+75↑j
                mov     rsi, [rsi+10h]
                jmp     loc_1406E63C2
; ---------------------------------------------------------------------------

loc_1406E6452:                          ; CODE XREF: RtlFindUnicodePrefix+55↑j
                                        ; RtlFindUnicodePrefix+13D2F3↓j
                mov     rbp, rdi
                mov     rdi, [rdi+8]
                jmp     loc_1406E63B3
; ---------------------------------------------------------------------------

loc_1406E645E:                          ; CODE XREF: RtlFindUnicodePrefix+7A↑j
                mov     rbx, r14

loc_1406E6461:                          ; CODE XREF: RtlFindUnicodePrefix+13D2ED↓j
                mov     rcx, [rbx+30h]
                mov     r8d, r12d
                mov     rdx, r15
                call    sub_1406E6488
                dec     eax
                cmp     eax, 1
                ja      loc_140823656
                mov     rax, rbx
                jmp     short loc_1406E6422
RtlFindUnicodePrefix endp
