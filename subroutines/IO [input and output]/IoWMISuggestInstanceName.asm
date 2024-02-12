IoWMISuggestInstanceName proc near      ; DATA XREF: .pdata:0000000140123444↑o

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                mov     [rsp-28h+arg_10], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                xor     r13d, r13d
                xorps   xmm0, xmm0
                cmp     cs:qword_140C19E38, r13
                mov     rsi, r9
                mov     r12b, r8b
                mov     [rbp+var_18], r13
                mov     r15, rdx
                mov     [rbp+var_1C], r13d
                mov     r14, rcx
                mov     ebx, 0C0000030h
                movups  [rbp+var_10], xmm0
                jnz     short loc_140932B63
                lea     eax, [rbx-2Fh]
                jmp     loc_140932DAA
; ---------------------------------------------------------------------------

loc_140932B63:                          ; CODE XREF: IoWMISuggestInstanceName+49↑j
                mov     ecx, r13d
                mov     rdi, r13
                mov     [rbp+var_20], ecx
                test    r14, r14
                jz      short loc_140932BE6
                lea     rax, [rbp+var_20]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+50h+var_30], rax
                xor     edx, edx
                mov     rcx, r14
                call    IoGetDeviceProperty
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jnz     short loc_140932BDB
                mov     edx, [rbp+var_20]
                mov     ecx, 1
                mov     r8d, 70696D57h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140932BB6
                lea     eax, [rbx+77h]
                jmp     loc_140932DAA
; ---------------------------------------------------------------------------

loc_140932BB6:                          ; CODE XREF: IoWMISuggestInstanceName+9C↑j
                mov     r8d, [rbp+var_20]
                lea     rax, [rbp+var_20]
                mov     r9, rdi
                mov     [rsp+50h+var_30], rax
                xor     edx, edx
                mov     rcx, r14
                call    IoGetDeviceProperty
                mov     ebx, eax
                test    eax, eax
                jns     short loc_140932BE3
                jmp     loc_140932D80
; ---------------------------------------------------------------------------

loc_140932BDB:                          ; CODE XREF: IoWMISuggestInstanceName+81↑j
                test    eax, eax
                js      loc_140932DAA

loc_140932BE3:                          ; CODE XREF: IoWMISuggestInstanceName+C4↑j
                mov     ecx, [rbp+var_20]

loc_140932BE6:                          ; CODE XREF: IoWMISuggestInstanceName+5F↑j
                test    r15, r15
                jz      loc_140932D8C
                lea     r8, [rbp+var_18]
                mov     edx, 0F003Fh
                mov     rcx, r15
                call    IoOpenDeviceInterfaceRegistryKey
                mov     ebx, eax
                test    eax, eax
                js      loc_140932D77
                mov     rcx, [rbp+var_18]
                lea     rax, [rbp+var_1C]
                xor     r9d, r9d
                mov     [rsp+50h+var_28], rax
                lea     rdx, [rbp+var_10]
                mov     dword ptr [rsp+50h+var_30], r13d
                lea     r15d, [r9+1]
                mov     r8d, r15d
                call    ZwQueryValueKey
                mov     ebx, eax
                cmp     eax, 80000005h
                jz      short loc_140932C43
                cmp     eax, 0C0000023h
                jnz     loc_140932D6E

loc_140932C43:                          ; CODE XREF: IoWMISuggestInstanceName+126↑j
                mov     edx, [rbp+var_1C]
                mov     r8d, 70696D57h
                mov     ecx, r15d
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_140932D69
                mov     ecx, [rbp+var_1C]
                lea     rax, [rbp+var_1C]
                mov     [rsp+50h+var_28], rax
                lea     rdx, [rbp+var_10]
                mov     dword ptr [rsp+50h+var_30], ecx
                mov     r9, r14
                mov     rcx, [rbp+var_18]
                mov     r8d, r15d
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                js      loc_140932D5D
                mov     r15d, [r14+8]
                add     r15, r14
                test    r12b, r12b
                jz      short loc_140932D0F
                mov     r12d, [rbp+var_20]
                mov     ecx, 1
                add     r12d, 2
                mov     r8d, 70696D57h
                add     r12d, [r14+0Ch]
                mov     edx, r12d
                call    ExAllocatePoolWithTag
                test    rax, rax
                jnz     short loc_140932CC4
                mov     ebx, 0C000009Ah
                jmp     short loc_140932CFB
; ---------------------------------------------------------------------------

loc_140932CC4:                          ; CODE XREF: IoWMISuggestInstanceName+1AB↑j
                mov     [rsi+8], rax
                mov     [rsi], r13w
                mov     [rsi+2], r12w
                test    rdi, rdi
                jz      short loc_140932CE1
                mov     rdx, rdi
                mov     rcx, rsi
                call    RtlAppendUnicodeToString

loc_140932CE1:                          ; CODE XREF: IoWMISuggestInstanceName+1C4↑j
                lea     rdx, qword_1407D5250
                mov     rcx, rsi
                call    RtlAppendUnicodeToString
                mov     rdx, r15
                mov     rcx, rsi
                call    RtlAppendUnicodeToString

loc_140932CFB:                          ; CODE XREF: IoWMISuggestInstanceName+1B2↑j
                test    rdi, rdi
                jz      short loc_140932D5D
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rdi, r13
                jmp     short loc_140932D5D
; ---------------------------------------------------------------------------

loc_140932D0F:                          ; CODE XREF: IoWMISuggestInstanceName+187↑j
                test    rdi, rdi
                jz      short loc_140932D21
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rdi, r13

loc_140932D21:                          ; CODE XREF: IoWMISuggestInstanceName+202↑j
                mov     edx, [r14+0Ch]
                mov     ecx, 1
                mov     r8d, 70696D57h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jnz     short loc_140932D41
                mov     ebx, 0C000009Ah
                jmp     short loc_140932D5D
; ---------------------------------------------------------------------------

loc_140932D41:                          ; CODE XREF: IoWMISuggestInstanceName+228↑j
                mov     [rsi+8], rax
                mov     rdx, r15
                mov     [rsi], r13w
                mov     rcx, rsi
                movzx   eax, word ptr [r14+0Ch]
                mov     [rsi+2], ax
                call    RtlAppendUnicodeToString

loc_140932D5D:                          ; CODE XREF: IoWMISuggestInstanceName+177↑j
                                        ; IoWMISuggestInstanceName+1EE↑j ...
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     short loc_140932D6E
; ---------------------------------------------------------------------------

loc_140932D69:                          ; CODE XREF: IoWMISuggestInstanceName+14A↑j
                mov     ebx, 0C000009Ah

loc_140932D6E:                          ; CODE XREF: IoWMISuggestInstanceName+12D↑j
                                        ; IoWMISuggestInstanceName+257↑j
                mov     rcx, [rbp+var_18]
                call    ZwClose

loc_140932D77:                          ; CODE XREF: IoWMISuggestInstanceName+F4↑j
                test    rdi, rdi
                jz      short loc_140932DA8
                test    ebx, ebx
                jns     short loc_140932DA8

loc_140932D80:                          ; CODE XREF: IoWMISuggestInstanceName+C6↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     short loc_140932DA8
; ---------------------------------------------------------------------------

loc_140932D8C:                          ; CODE XREF: IoWMISuggestInstanceName+D9↑j
                test    rdi, rdi
                jz      short loc_140932DA1
                lea     eax, [rcx-2]
                mov     [rsi+8], rdi
                mov     [rsi], ax
                mov     [rsi+2], cx
                jmp     short loc_140932DA8
; ---------------------------------------------------------------------------

loc_140932DA1:                          ; CODE XREF: IoWMISuggestInstanceName+27F↑j
                mov     [rsi+8], r13
                mov     [rsi], r13d

loc_140932DA8:                          ; CODE XREF: IoWMISuggestInstanceName+26A↑j
                                        ; IoWMISuggestInstanceName+26E↑j ...
                mov     eax, ebx

loc_140932DAA:                          ; CODE XREF: IoWMISuggestInstanceName+4E↑j
                                        ; IoWMISuggestInstanceName+A1↑j ...
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWMISuggestInstanceName endp
