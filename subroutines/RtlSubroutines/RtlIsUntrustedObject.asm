RtlIsUntrustedObject proc near          ; CODE XREF: sub_1405E25E8+147↓p
                                        ; DATA XREF: .rdata:0000000140044E3C↑o ...

var_D0          = qword ptr -0D0h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = byte ptr -0B0h
var_30          = qword ptr -30h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014041EEE0 SIZE 0000010A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                lea     rbp, [rsp-37h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                and     [rbp+57h+var_C0], 0
                lea     rdi, [rbp+57h+var_B0]
                mov     [rbp+57h+var_B8], r8
                mov     r13, rdx
                mov     byte ptr [r8], 1
                mov     rsi, rcx
                test    rdx, rdx
                jz      loc_14041EEE0
                test    rcx, rcx
                jnz     loc_14041EEE9

loc_140201E9E:                          ; CODE XREF: RtlIsUntrustedObject+21D093↓j
                mov     r9d, 7Ch ; '|'
                lea     rax, [rbp+57h+var_C0]
                xor     r12b, r12b
                mov     [rsp+0F0h+var_D0], rax
                lea     r8, [rbp+57h+var_B0]
                lea     edx, [r9-6Ch]
                test    rsi, rsi
                jnz     loc_14041EEF3
                mov     rcx, r13
                call    sub_1405E4D78
                mov     ebx, eax
                test    eax, eax
                js      loc_14041EF8E
                xor     r13d, r13d

loc_140201ED6:                          ; CODE XREF: RtlIsUntrustedObject+21D0AF↓j
                                        ; RtlIsUntrustedObject+21D128↓j
                movzx   eax, word ptr [rdi+2]
                test    al, 10h
                jz      short loc_140201F11
                test    ax, ax
                jns     short loc_140201F47
                mov     eax, [rdi+0Ch]
                test    eax, eax
                jz      short loc_140201F11
                lea     rsi, [rdi+rax]

loc_140201EEE:                          ; CODE XREF: RtlIsUntrustedObject+FB↓j
                test    rsi, rsi
                jz      short loc_140201F11
                mov     [rbp+57h+var_BC], r13d

loc_140201EF7:                          ; CODE XREF: RtlIsUntrustedObject+21D172↓j
                lea     r8, [rbp+57h+var_BC]
                mov     edx, 11h
                mov     rcx, rsi
                call    RtlFindAceByType
                test    rax, rax
                jnz     loc_14041EFBE

loc_140201F11:                          ; CODE XREF: RtlIsUntrustedObject+8C↑j
                                        ; RtlIsUntrustedObject+98↑j ...
                mov     rax, [rbp+57h+var_B8]
                mov     [rax], r13b

loc_140201F18:                          ; CODE XREF: RtlIsUntrustedObject+21D17E↓j
                                        ; RtlIsUntrustedObject+21D18F↓j
                test    r12b, r12b
                jnz     loc_14041EF7E

loc_140201F21:                          ; CODE XREF: RtlIsUntrustedObject+21D139↓j
                mov     eax, ebx

loc_140201F23:                          ; CODE XREF: RtlIsUntrustedObject+21D09E↓j
                                        ; RtlIsUntrustedObject+21D0BA↓j ...
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F0h+arg_18]
                add     rsp, 0D0h
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140201F47:                          ; CODE XREF: RtlIsUntrustedObject+91↑j
                mov     rsi, [rdi+18h]
                jmp     short loc_140201EEE
; } // starts at 140201E50
RtlIsUntrustedObject endp
