RtlIntegerToChar proc near              ; CODE XREF: sub_1404ECE68+101↑p
                                        ; RtlIntegerToUnicodeString+2E↑p ...

var_27          = byte ptr -27h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014080E8D8 SIZE 00000057 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_20], rax
                mov     r15, r9
                mov     edi, r8d
                mov     r8d, edx
                mov     r10d, ecx
                test    edx, edx
                jz      loc_140674B6A
                cmp     edx, 0Ah
                jnz     loc_140674B83

loc_140674ADF:                          ; CODE XREF: RtlIntegerToChar+D0↓j
                xor     ecx, ecx
                xor     r9d, r9d

loc_140674AE4:                          ; CODE XREF: RtlIntegerToChar+FB↓j
                lea     r14, [rsp+68h+var_27]

loc_140674AE9:                          ; CODE XREF: RtlIntegerToChar+71↓j
                test    ecx, ecx
                jnz     loc_140674B75
                xor     edx, edx
                mov     eax, r10d
                div     r8d
                mov     r10d, eax

loc_140674AFC:                          ; CODE XREF: RtlIntegerToChar+DE↓j
                dec     r14
                mov     eax, edx
                lea     rdx, qword_140985050
                mov     al, [rax+rdx]
                mov     [r14], al
                test    r10d, r10d
                jnz     short loc_140674AE9
                lea     rsi, [rsp+68h+var_27]
                sub     esi, r14d
                test    edi, edi
                js      loc_14080E900

loc_140674B23:                          ; CODE XREF: RtlIntegerToChar+199E80↓j
                cmp     esi, edi

loc_140674B25:                          ; CODE XREF: RtlIntegerToChar+199E64↓j
                jg      loc_14080E925

loc_140674B2B:                          ; DATA XREF: .rdata:00000001400645C8↑o
;   __try { // __except at loc_140674B44
                mov     r8d, esi
                mov     rdx, r14
                mov     rcx, r15
                call    memmove
                cmp     esi, edi
                jge     short loc_140674B42
                mov     byte ptr [rsi+r15], 0

loc_140674B42:                          ; CODE XREF: RtlIntegerToChar+9B↑j
                jmp     short loc_140674B46
;   } // starts at 140674B2B
; ---------------------------------------------------------------------------

loc_140674B44:                          ; DATA XREF: .rdata:00000001400645C8↑o
;   __except(1) // owned by 140674B2B
                jmp     short loc_140674B48
; ---------------------------------------------------------------------------

loc_140674B46:                          ; CODE XREF: RtlIntegerToChar:loc_140674B42↑j
                xor     eax, eax

loc_140674B48:                          ; CODE XREF: RtlIntegerToChar:loc_140674B44↑j
                                        ; RtlIntegerToChar+199E47↓j ...
                mov     rcx, [rsp+68h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140674B6A:                          ; CODE XREF: RtlIntegerToChar+30↑j
                mov     r8d, 0Ah
                jmp     loc_140674ADF
; ---------------------------------------------------------------------------

loc_140674B75:                          ; CODE XREF: RtlIntegerToChar+4B↑j
                mov     edx, r9d
                and     edx, r10d
                shr     r10d, cl
                jmp     loc_140674AFC
; ---------------------------------------------------------------------------

loc_140674B83:                          ; CODE XREF: RtlIntegerToChar+39↑j
                cmp     edx, 10h
                jnz     loc_14080E8D8
                lea     ecx, [rdx-0Ch]

loc_140674B8F:                          ; CODE XREF: RtlIntegerToChar+199E51↓j
                                        ; RtlIntegerToChar+199E5B↓j
                mov     r9d, 1
                shl     r9d, cl
                dec     r9d
                jmp     loc_140674AE4
; } // starts at 140674AA0
RtlIntegerToChar endp
