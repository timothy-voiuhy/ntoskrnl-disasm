RtlLargeIntegerToChar proc near         ; CODE XREF: RtlInt64ToUnicodeString+3D↑p
                                        ; DATA XREF: .rdata:0000000140064400↑o ...

var_37          = byte ptr -37h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080E7E4 SIZE 00000063 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_28], rax
                mov     r15, r9
                mov     edi, r8d
                mov     rax, rcx
                test    edx, edx
                jz      loc_14080E80E
                cmp     edx, 10h
                jnz     loc_140673C2B
                lea     r9d, [rdx-0Ch]

loc_140673B73:                          ; CODE XREF: RtlLargeIntegerToChar+19ACCE↓j
                                        ; RtlLargeIntegerToChar+19ACD9↓j
                mov     ecx, r9d
                mov     r10d, 1
                shl     r10d, cl
                dec     r10d

loc_140673B82:                          ; CODE XREF: RtlLargeIntegerToChar+10A↓j
                lea     r14, [rsp+98h+var_37]
                mov     rax, [rax]
                lea     r11, qword_140985050
                test    r9d, r9d
                jz      short loc_140673C10

loc_140673B96:                          ; CODE XREF: RtlLargeIntegerToChar+82↓j
                mov     r8d, eax
                mov     ecx, r9d
                shr     rax, cl
                dec     r14
                mov     ecx, r10d
                and     r8, rcx
                mov     cl, [r8+r11]
                mov     [r14], cl
                test    rax, rax
                jnz     short loc_140673B96

loc_140673BB4:                          ; CODE XREF: RtlLargeIntegerToChar+F9↓j
                lea     rsi, [rsp+98h+var_37]
                sub     esi, r14d
                test    edi, edi
                js      loc_14080E818

loc_140673BC4:                          ; CODE XREF: RtlLargeIntegerToChar+19AD08↓j
                cmp     esi, edi

loc_140673BC6:                          ; CODE XREF: RtlLargeIntegerToChar+19ACEC↓j
                jg      loc_14080E83D

loc_140673BCC:                          ; DATA XREF: .rdata:00000001400643E8↑o
;   __try { // __except at loc_140673BE5
                mov     r8d, esi
                mov     rdx, r14
                mov     rcx, r15
                call    memmove
                cmp     esi, edi
                jge     short loc_140673BE3
                mov     byte ptr [rsi+r15], 0

loc_140673BE3:                          ; CODE XREF: RtlLargeIntegerToChar+AC↑j
                jmp     short loc_140673BE7
;   } // starts at 140673BCC
; ---------------------------------------------------------------------------

loc_140673BE5:                          ; DATA XREF: .rdata:00000001400643E8↑o
;   __except(1) // owned by 140673BCC
                jmp     short loc_140673BE9
; ---------------------------------------------------------------------------

loc_140673BE7:                          ; CODE XREF: RtlLargeIntegerToChar:loc_140673BE3↑j
                xor     eax, eax

loc_140673BE9:                          ; CODE XREF: RtlLargeIntegerToChar:loc_140673BE5↑j
                                        ; RtlLargeIntegerToChar+19ACC3↓j ...
                mov     rcx, [rsp+98h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_18]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140673C10:                          ; CODE XREF: RtlLargeIntegerToChar+64↑j
                mov     r8d, edx

loc_140673C13:                          ; CODE XREF: RtlLargeIntegerToChar+F7↓j
                xor     edx, edx
                div     r8
                dec     r14
                mov     ecx, edx
                mov     cl, [rcx+r11]
                mov     [r14], cl
                test    rax, rax
                jnz     short loc_140673C13
                jmp     short loc_140673BB4
; ---------------------------------------------------------------------------

loc_140673C2B:                          ; CODE XREF: RtlLargeIntegerToChar+39↑j
                cmp     edx, 0Ah
                jnz     loc_14080E7E4

loc_140673C34:                          ; CODE XREF: RtlLargeIntegerToChar+19ACE3↓j
                xor     r9d, r9d
                xor     r10d, r10d
                jmp     loc_140673B82
; } // starts at 140673B30
RtlLargeIntegerToChar endp
