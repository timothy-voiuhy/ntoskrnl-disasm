RtlUpperString  proc near               ; DATA XREF: .rdata:0000000140050E08↑o
                                        ; .rdata:0000000140050E1C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                movzx   ebp, word ptr [rdx]
                movzx   eax, word ptr [rcx+2]
                mov     rdi, [rcx+8]
                mov     rsi, [rdx+8]
                cmp     bp, ax
                ja      short loc_140630BA9

loc_140630B63:                          ; CODE XREF: RtlUpperString+6B↓j
                mov     [rcx], bp
                test    ebp, ebp
                jz      short loc_140630B93

loc_140630B6A:                          ; DATA XREF: .rdata:0000000140050E08↑o
                                        ; .rdata:0000000140050E1C↑o ...
                mov     [rsp+28h+arg_0], rbx
                nop

loc_140630B70:                          ; CODE XREF: RtlUpperString+4C↓j
                movzx   ebx, byte ptr [rsi]
                xor     ecx, ecx
                call    sub_140630C90
                lea     eax, [rbx-61h]
                cmp     al, 19h
                jbe     short loc_140630BA4

loc_140630B81:                          ; CODE XREF: RtlUpperString+67↓j
                mov     [rdi], bl
                inc     rsi
                inc     rdi
                add     ebp, 0FFFFFFFFh
                jnz     short loc_140630B70
                mov     rbx, [rsp+28h+arg_0]

loc_140630B93:                          ; CODE XREF: RtlUpperString+28↑j
                                        ; DATA XREF: .pdata:00000001400FE6DC↑o ...
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140630BA4:                          ; CODE XREF: RtlUpperString+3F↑j
                                        ; DATA XREF: .pdata:00000001400FE6E8↑o ...
                xor     bl, 20h
                jmp     short loc_140630B81
; ---------------------------------------------------------------------------

loc_140630BA9:                          ; CODE XREF: RtlUpperString+21↑j
                                        ; DATA XREF: .pdata:00000001400FE6F4↑o ...
                mov     ebp, eax
                jmp     short loc_140630B63
RtlUpperString  endp

; ---------------------------------------------------------------------------
algn_140630BAD:                         ; DATA XREF: .pdata:00000001400FE700↑o
                align 20h
; Exported entry 1987. RtlAnsiCharToUnicodeChar

; =============== S U B R O U T I N E =======================================


