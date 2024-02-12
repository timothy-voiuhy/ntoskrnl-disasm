RtlCreateUnicodeString proc near        ; CODE XREF: sub_1406D3E6C+D2↑p
                                        ; RtlConvertSidToUnicodeString+13C↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E7B86 SIZE 0000002B BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_0], rcx
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, rdx
                mov     rdi, rcx
                or      rax, 0FFFFFFFFFFFFFFFFh
                xor     r15d, r15d

loc_1406D6805:                          ; CODE XREF: RtlCreateUnicodeString+2D↓j
                inc     rax
                cmp     [rdx+rax*2], r15w
                jnz     short loc_1406D6805
                lea     esi, ds:2[rax*2]
                lea     eax, [rsi-1]
                cmp     eax, 0FFFDh
                ja      short loc_1406D6862
                mov     ebx, esi
                mov     ecx, esi
                call    sub_140704930
                mov     [rdi+8], rax
                test    rax, rax
                jz      short loc_1406D6862

loc_1406D6832:                          ; DATA XREF: .rdata:0000000140076998↑o
;   __try { // __finally(loc_1407E7B86)
                mov     [rdi+2], si
                mov     r8d, ebx
                mov     rdx, r14
                mov     rcx, rax
                call    memmove
                sub     bx, 2
                mov     [rdi], bx
;   } // starts at 1406D6832

loc_1406D684B:                          ; DATA XREF: .rdata:0000000140076998↑o
                mov     al, 1

loc_1406D684D:                          ; CODE XREF: RtlCreateUnicodeString+84↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D6862:                          ; CODE XREF: RtlCreateUnicodeString+3E↑j
                                        ; RtlCreateUnicodeString+50↑j
                xor     al, al
                jmp     short loc_1406D684D
; } // starts at 1406D67E0
RtlCreateUnicodeString endp
