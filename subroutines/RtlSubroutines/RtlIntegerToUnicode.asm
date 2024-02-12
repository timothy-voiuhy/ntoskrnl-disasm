RtlIntegerToUnicode proc near           ; CODE XREF: RtlConvertSidToUnicodeString+B9↑p
                                        ; RtlConvertSidToUnicodeString+11D↑p
                                        ; DATA XREF: ...

var_36          = byte ptr -36h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408202C4 SIZE 0000003D BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_28], rax
                mov     rsi, r9
                mov     edi, r8d
                mov     r8d, edx
                mov     r11d, ecx
                xor     r15d, r15d
                test    edx, edx
                jz      loc_1408202EC
                cmp     edx, 0Ah
                jnz     loc_1406D678C

loc_1406D66E5:                          ; CODE XREF: RtlIntegerToUnicode+149C52↓j
                mov     ecx, r15d
                mov     r9d, r15d

loc_1406D66EB:                          ; CODE XREF: RtlIntegerToUnicode+104↓j
                lea     r10, [rsp+98h+var_36]

loc_1406D66F0:                          ; CODE XREF: RtlIntegerToUnicode+7B↓j
                test    ecx, ecx
                jnz     loc_1406D677E
                xor     edx, edx
                mov     eax, r11d
                div     r8d
                mov     r11d, eax

loc_1406D6703:                          ; CODE XREF: RtlIntegerToUnicode+E7↓j
                sub     r10, 2
                mov     eax, edx
                lea     rdx, a0123456789abcd ; "0123456789ABCDEF"
                movzx   eax, word ptr [rdx+rax*2]
                mov     [r10], ax
                test    r11d, r11d
                jnz     short loc_1406D66F0
                lea     rbx, [rsp+98h+var_36]
                sub     rbx, r10
                sar     rbx, 1
                test    edi, edi
                js      short loc_1406D67A9

loc_1406D672C:                          ; CODE XREF: RtlIntegerToUnicode+12D↓j
                cmp     ebx, edi

loc_1406D672E:                          ; CODE XREF: RtlIntegerToUnicode+10D↓j
                jg      loc_1408202F7

loc_1406D6734:                          ; DATA XREF: .rdata:0000000140076954↑o
;   __try { // __except at loc_1406D6753
                mov     eax, ebx
                lea     r14, [rax+rax]
                mov     r8, r14
                mov     rdx, r10
                mov     rcx, rsi
                call    memmove
                cmp     ebx, edi
                jge     short loc_1406D6751
                mov     [r14+rsi], r15w

loc_1406D6751:                          ; CODE XREF: RtlIntegerToUnicode+AA↑j
                jmp     short loc_1406D6755
;   } // starts at 1406D6734
; ---------------------------------------------------------------------------

loc_1406D6753:                          ; DATA XREF: .rdata:0000000140076954↑o
;   __except(1) // owned by 1406D6734
                jmp     short loc_1406D6757
; ---------------------------------------------------------------------------

loc_1406D6755:                          ; CODE XREF: RtlIntegerToUnicode:loc_1406D6751↑j
                xor     eax, eax

loc_1406D6757:                          ; CODE XREF: RtlIntegerToUnicode:loc_1406D6753↑j
                                        ; RtlIntegerToUnicode+149C33↓j ...
                mov     rcx, [rsp+98h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D677E:                          ; CODE XREF: RtlIntegerToUnicode+52↑j
                mov     edx, r9d
                and     edx, r11d
                shr     r11d, cl
                jmp     loc_1406D6703
; ---------------------------------------------------------------------------

loc_1406D678C:                          ; CODE XREF: RtlIntegerToUnicode+3F↑j
                cmp     edx, 10h
                jnz     loc_1408202C4
                lea     ecx, [rdx-0Ch]

loc_1406D6798:                          ; CODE XREF: RtlIntegerToUnicode+149C3D↓j
                                        ; RtlIntegerToUnicode+149C47↓j
                mov     r9d, 1
                shl     r9d, cl
                dec     r9d
                jmp     loc_1406D66EB
; ---------------------------------------------------------------------------

loc_1406D67A9:                          ; CODE XREF: RtlIntegerToUnicode+8A↑j
                neg     edi
                cmp     ebx, edi
                jge     loc_1406D672E
                sub     edi, ebx
                mov     edx, edi
                mov     eax, 30h ; '0'
                movzx   eax, ax
                mov     rdi, rsi
                mov     ecx, edx
                rep stosw
                mov     edi, ebx
                lea     rsi, [rsi+rdx*2]
                jmp     loc_1406D672C
; } // starts at 1406D66A0
RtlIntegerToUnicode endp
