RtlOpenCurrentUser proc near            ; CODE XREF: sub_1403A483C+2C↑p
                                        ; DATA XREF: .rdata:000000014009DE5C↑o ...

var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140853332 SIZE 00000048 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                xorps   xmm1, xmm1
                mov     esi, ecx
                xorps   xmm0, xmm0
                lea     rcx, [rbp+var_40]
                movups  [rbp+var_40], xmm0
                mov     rdi, rdx
                movups  [rbp+var_30], xmm1
                movups  [rbp+var_20], xmm1
                movups  [rbp+var_10], xmm1
                call    RtlFormatCurrentUserKeyPath
                mov     ebx, eax
                test    eax, eax
                js      short loc_14078B38D
                and     qword ptr [rbp+var_30+8], 0
                lea     rax, [rbp+var_40]
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+var_20], rax
                lea     r8, [rbp+var_30]
                mov     dword ptr [rbp+var_30], 30h ; '0'
                mov     edx, esi
                mov     dword ptr [rbp+var_20+8], 640h
                mov     rcx, rdi
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                lea     rcx, [rbp+var_40]
                mov     ebx, eax
                call    RtlFreeUnicodeString

loc_14078B38D:                          ; CODE XREF: RtlOpenCurrentUser+3F↑j
                cmp     ebx, 0C0000034h
                jz      loc_140853332

loc_14078B399:                          ; CODE XREF: RtlOpenCurrentUser+C8065↓j
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlOpenCurrentUser endp
