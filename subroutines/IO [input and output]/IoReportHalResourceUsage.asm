IoReportHalResourceUsage proc near      ; CODE XREF: sub_140A3B2F0+495↑p
                                        ; DATA XREF: .rdata:000000014008DF10↑o ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140A7D450 SIZE 00000029 BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_0], rcx
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                mov     rbp, rsp
                sub     rsp, 70h
                xor     edi, edi
                mov     esi, r9d
                mov     r12, rdx
                mov     [rbp+var_38], rdi
                mov     r14, rcx
                mov     [rbp+var_30], rdi
                xorps   xmm0, xmm0
                mov     [rbp+var_40], edi
                xorps   xmm1, xmm1
                mov     [rbp+var_28], rdi
                lea     rdx, aHardwareAbstra ; "Hardware Abstraction Layer"
                mov     [rbp+var_3C], edi
                lea     rcx, [rbp+var_10]
                mov     r13, r8
                movups  [rbp+var_10], xmm0
                movups  [rbp+var_20], xmm1
                call    RtlInitUnicodeString
                mov     r9d, 2001Fh
                mov     [rsp+70h+var_48], rdi
                lea     r8, unk_140D2EC00
                mov     dword ptr [rsp+70h+var_50], 1
                xor     edx, edx
                lea     rcx, [rbp+var_38]
                call    sub_14073B9B0
                mov     ebx, eax
                test    eax, eax
                js      loc_140A3BF11
                lea     rdx, aRaw       ; ".Raw"
                lea     rcx, [rbp+var_20]
                call    RtlInitUnicodeString
                lea     rax, [rbp+var_40]
                xor     r8d, r8d
                lea     r9, [rbp+var_30]
                mov     [rsp+70h+var_50], rax
                mov     edx, esi
                mov     rcx, r12
                call    sub_140790B50
                mov     rdi, [rbp+var_30]
                mov     ebx, eax
                test    eax, eax
                js      loc_140A3BED0
                test    rdi, rdi
                lea     r9, [rbp+var_20]
                mov     ecx, esi
                lea     rdx, [rbp+var_10]
                cmovnz  ecx, [rbp+var_40]
                mov     rax, r12
                mov     dword ptr [rsp+70h+var_48], ecx
                cmovnz  rax, rdi
                mov     rcx, [rbp+var_38]
                mov     r8, r14
                mov     [rsp+70h+var_50], rax
                call    sub_14074EAAC
                mov     ebx, eax
                test    eax, eax
                js      short loc_140A3BED0
                lea     rdx, aTranslated ; ".Translated"
                lea     rcx, [rbp+var_20]
                call    RtlInitUnicodeString
                lea     rax, [rbp+var_3C]
                mov     r8b, 1
                lea     r9, [rbp+var_28]
                mov     [rsp+70h+var_50], rax
                mov     edx, esi
                mov     rcx, r13
                call    sub_140790B50
                mov     ebx, eax
                test    eax, eax
                js      short loc_140A3BED0
                mov     r14, [rbp+var_28]
                lea     r9, [rbp+var_20]
                mov     r8, [rbp+arg_0]
                lea     rdx, [rbp+var_10]
                mov     rcx, [rbp+var_38]
                test    r14, r14
                mov     eax, esi
                cmovnz  eax, [rbp+var_3C]
                cmovnz  r13, r14
                mov     dword ptr [rsp+70h+var_48], eax
                mov     [rsp+70h+var_50], r13
                call    sub_14074EAAC
                mov     ebx, eax
                test    r14, r14
                jnz     loc_140A7D450

loc_140A3BED0:                          ; CODE XREF: IoReportHalResourceUsage+BD↑j
                                        ; IoReportHalResourceUsage+F4↑j ...
                mov     rcx, [rbp+var_38]
                call    ZwClose
                test    ebx, ebx
                js      loc_140A7D460
                test    rdi, rdi
                jnz     short loc_140A3BF2D
                mov     r8d, 20207050h
                lea     ecx, [rdi+1]
                mov     rdx, rsi
                call    ExAllocatePoolWithTag
                mov     cs:qword_140D58690, rax
                test    rax, rax
                jz      short loc_140A3BF36
                mov     r8, rsi
                mov     rdx, r12
                mov     rcx, rax
                call    memmove

loc_140A3BF11:                          ; CODE XREF: IoReportHalResourceUsage+85↑j
                                        ; IoReportHalResourceUsage+1C4↓j ...
                lea     r11, [rsp+70h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140A3BF2D:                          ; CODE XREF: IoReportHalResourceUsage+174↑j
                mov     cs:qword_140D58690, rdi
                jmp     short loc_140A3BF11
; ---------------------------------------------------------------------------

loc_140A3BF36:                          ; CODE XREF: IoReportHalResourceUsage+191↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_140A3BF11
IoReportHalResourceUsage endp
