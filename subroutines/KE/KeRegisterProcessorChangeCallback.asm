KeRegisterProcessorChangeCallback proc near
                                        ; CODE XREF: sub_140A40EB8+900↓p
                                        ; DATA XREF: .rdata:00000001400AAA68↑o ...

var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140860042 SIZE 00000025 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                mov     rsi, rdx
                mov     [rbp+57h+var_A0], rdx
                mov     r13, rcx
                mov     [rbp+57h+var_80], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_68], 240h
                xorps   xmm1, xmm1
                lea     rdx, aCallbackProces ; "\\Callback\\ProcessorAdd"
                xor     eax, eax
                lea     rcx, [rbp+57h+var_90]
                xor     ebx, ebx
                mov     [rbp+57h+var_40], eax
                mov     [rbp+57h+var_A8], rbx
                mov     edi, r8d
                movups  [rbp+57h+var_90], xmm0
                movups  [rbp+57h+var_50], xmm1
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_78], rbx
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_70], rax
                xor     r9d, r9d
                lea     rdx, [rbp+57h+var_80]
                xor     r8d, r8d
                lea     rcx, [rbp+57h+var_A8]
                movdqu  [rbp+57h+var_60], xmm0
                call    ExCreateCallback
                mov     [rbp+57h+var_B0], eax
                test    eax, eax
                js      loc_140860042
                lea     rcx, dword_140C31C60
                call    ExAcquireFastMutex
                mov     rcx, [rbp+57h+var_A8]
                mov     r8, rsi
                mov     rdx, r13
                call    ExRegisterCallback
                mov     rcx, [rbp+57h+var_A8]
                mov     rsi, rax
                mov     [rbp+57h+var_98], rax
                call    PsDereferenceSiloContext
                test    rsi, rsi
                jz      short loc_1407C73E8
                test    dil, 1
                jnz     short loc_1407C741F

loc_1407C73E8:                          ; CODE XREF: KeRegisterProcessorChangeCallback+D0↑j
                                        ; KeRegisterProcessorChangeCallback+197↓j ...
                lea     rcx, dword_140C31C60
                call    KeReleaseGuardedMutex
                mov     rax, rsi

loc_1407C73F7:                          ; CODE XREF: KeRegisterProcessorChangeCallback+98D34↓j
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D0h+arg_10]
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407C741F:                          ; CODE XREF: KeRegisterProcessorChangeCallback+D6↑j
                mov     r15d, cs:dword_140CFC404
                lea     r12, qword_140CFDCC0
                mov     edi, ebx
                test    r15d, r15d
                jz      loc_1407C74FE
                mov     r14, r12

loc_1407C743B:                          ; CODE XREF: KeRegisterProcessorChangeCallback+181↓j
                mov     rcx, [r14]
                lea     rdx, [rbp+57h+var_40]
                mov     dword ptr [rbp+57h+var_50+4], edi
                movzx   eax, byte ptr [rcx+0D0h]
                mov     word ptr [rbp+57h+var_50+0Ch], ax
                mov     al, [rcx+0D1h]
                mov     ecx, edi
                mov     byte ptr [rbp+57h+var_50+0Eh], al
                mov     dword ptr [rbp+57h+var_50+8], ebx
                call    HalGetProcessorIdByNtNumber
                mov     rcx, [rbp+57h+var_A0]
                lea     r8, [rbp+57h+var_B0]
                lea     rdx, [rbp+57h+var_50]
                mov     dword ptr [rbp+57h+var_50], ebx
                mov     rax, r13
                mov     [rbp+57h+var_B0], ebx
                call    sub_1404079D0
                mov     eax, [rbp+57h+var_B0]
                test    eax, eax
                js      loc_140860049
                inc     edi
                add     r14, 8
                cmp     edi, r15d
                jb      short loc_1407C743B

loc_1407C7493:                          ; CODE XREF: KeRegisterProcessorChangeCallback+1F1↓j
                test    eax, eax
                js      loc_140860049
                mov     dword ptr [rbp+57h+var_50], 1

loc_1407C74A2:                          ; CODE XREF: KeRegisterProcessorChangeCallback+98D52↓j
                mov     dword ptr [rbp+57h+var_50+8], eax
                test    edi, edi
                jz      loc_1407C73E8
                mov     rsi, [rbp+57h+var_A0]

loc_1407C74B1:                          ; CODE XREF: KeRegisterProcessorChangeCallback+1E3↓j
                mov     rcx, [r12]
                lea     rdx, [rbp+57h+var_40]
                mov     dword ptr [rbp+57h+var_50+4], ebx
                movzx   eax, byte ptr [rcx+0D0h]
                mov     word ptr [rbp+57h+var_50+0Ch], ax
                mov     al, [rcx+0D1h]
                mov     ecx, ebx
                mov     byte ptr [rbp+57h+var_50+0Eh], al
                call    HalGetProcessorIdByNtNumber
                lea     r8, [rbp+57h+var_B0]
                mov     rcx, rsi
                lea     rdx, [rbp+57h+var_50]
                mov     rax, r13
                call    sub_1404079D0
                inc     ebx
                lea     r12, [r12+8]
                cmp     ebx, edi
                jb      short loc_1407C74B1
                mov     rsi, [rbp+57h+var_98]
                jmp     loc_1407C73E8
; ---------------------------------------------------------------------------

loc_1407C74FE:                          ; CODE XREF: KeRegisterProcessorChangeCallback+122↑j
                mov     eax, [rbp+57h+var_B0]
                jmp     short loc_1407C7493
; } // starts at 1407C7310
KeRegisterProcessorChangeCallback endp
