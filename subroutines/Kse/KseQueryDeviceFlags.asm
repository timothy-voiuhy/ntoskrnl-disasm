KseQueryDeviceFlags proc near           ; DATA XREF: .rdata:000000014009154C↑o
                                        ; .pdata:0000000140109BD8↑o

var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_18          = dword ptr  38h

; FUNCTION CHUNK AT 0000000140840BE0 SIZE 0000000A BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_28], 0
                mov     r14, r8
                mov     eax, cs:dword_140C50464
                mov     rbx, rdx
                mov     r15, rcx
                cmp     eax, 2
                jnz     loc_14075BD25
                mov     eax, cs:dword_140C50460
                test    al, 2
                jnz     loc_14075BD25
                test    rcx, rcx
                jz      loc_140840BE0
                test    rdx, rdx
                jz      loc_140840BE0
                test    r8, r8
                jz      loc_140840BE0
                and     qword ptr [r8], 0
                lea     rax, [rbp+var_28]
                lea     r8, [rbp+arg_18]
                mov     [r11-58h], rax
                lea     r9, [rbp+var_30]
                mov     [rbp+arg_18], 0Bh
                mov     [rbp+var_30], 8
                call    KseQueryDeviceData
                mov     edi, eax
                test    eax, eax
                jns     short loc_14075BCCB

loc_14075BCAE:                          ; CODE XREF: KseQueryDeviceFlags+103↓j
                                        ; KseQueryDeviceFlags+10A↓j ...
                lea     r11, [rsp+60h+var_s0]
                mov     eax, edi
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075BCCB:                          ; CODE XREF: KseQueryDeviceFlags+8C↑j
                mov     esi, [rbp+arg_18]
                mov     ecx, esi
                and     ecx, 0CFFFFFFFh
                cmp     ecx, 0Bh
                jnz     short loc_14075BD25
                xorps   xmm0, xmm0
                lea     rcx, [rbp+var_10]
                xorps   xmm1, xmm1
                mov     rdx, r15
                movups  [rbp+var_10], xmm0
                movups  [rbp+var_20], xmm1
                call    RtlInitUnicodeString
                mov     rdx, rbx
                lea     rcx, [rbp+var_20]
                call    RtlInitUnicodeString
                mov     rbx, [rbp+var_28]
                lea     rdx, [rbp+var_20]
                shr     esi, 1Ch
                lea     rcx, [rbp+var_10]
                not     esi
                mov     r9, rbx
                and     esi, 1
                mov     r8d, esi
                call    sub_1403C9334
                mov     [r14], rbx
                jmp     short loc_14075BCAE
; ---------------------------------------------------------------------------

loc_14075BD25:                          ; CODE XREF: KseQueryDeviceFlags+32↑j
                                        ; KseQueryDeviceFlags+40↑j ...
                mov     edi, 0C0000225h
                jmp     short loc_14075BCAE
KseQueryDeviceFlags endp
