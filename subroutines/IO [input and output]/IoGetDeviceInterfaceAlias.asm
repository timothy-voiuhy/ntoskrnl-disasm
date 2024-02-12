IoGetDeviceInterfaceAlias proc near     ; CODE XREF: sub_14072A4A4+F6↑p
                                        ; DATA XREF: .rdata:000000014008AB04↑o ...

var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_E0          = byte ptr -0E0h
var_DF          = byte ptr -0DFh
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_90          = byte ptr -90h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140831076 SIZE 000000FC BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-10h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+40h+var_40], rax
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+140h+var_E0], al
                mov     r13, r8
                mov     [rbp+40h+var_C0], rax
                mov     r12, rdx
                mov     [rsp+140h+var_DF], al
                mov     r15, rcx
                mov     [rsp+140h+var_D4], eax
                mov     r14d, eax
                mov     [rsp+140h+var_C8], eax
                mov     esi, eax
                mov     [rsp+140h+var_D0], rax
                mov     edi, eax
                movups  [rbp+40h+var_B8], xmm0
                movups  [rbp+40h+var_A8], xmm0
                test    rcx, rcx
                jz      loc_140831168
                cmp     [rcx+8], rax
                jz      loc_140831168
                cmp     [rcx], ax
                jz      loc_140831168
                mov     r8, rcx
                xor     edx, edx
                lea     rcx, [rsp+140h+var_D0]
                call    sub_1406CC09C
                mov     rdi, [rsp+140h+var_D0]
                mov     ebx, eax
                test    eax, eax
                js      loc_14072A9A7
                mov     rdx, rdi
                call    sub_14062BFEC
                test    eax, eax
                js      loc_140831076
                lea     rcx, [rbp+40h+var_B8]
                call    SeCaptureSubjectContext
                mov     rcx, cs:qword_140CF4378
                lea     rax, [rsp+140h+var_E0]
                mov     [rsp+140h+var_118], rax
                lea     r8d, [rsi+3]
                lea     rax, [rbp+40h+var_B8]
                xor     r9d, r9d
                mov     rdx, rdi
                mov     [rsp+140h+var_120], rax
                call    sub_1406C8510
                lea     rcx, [rbp+40h+var_B8]
                mov     ebx, eax
                call    SeReleaseSubjectContext
                test    ebx, ebx
                js      loc_14072A9A7
                cmp     [rsp+140h+var_E0], sil
                jz      loc_140831080
                lea     rdx, [rbp+40h+var_90]
                mov     rcx, r12
                call    sub_1407383A8
                xor     r12d, r12d
                mov     ebx, eax
                test    eax, eax
                js      loc_14072A9A7
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceExclusiveLite
                mov     ebx, 190h
                lea     ecx, [rsi+1]
                mov     edx, ebx
                mov     r8d, 20207050h
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_14083108A
                mov     rdi, [rsp+140h+var_D0]
                lea     rax, [rsp+140h+var_C8]
                mov     rcx, cs:qword_140CF4378
                lea     r8d, [rsi+3]
                mov     [rsp+140h+var_F0], r12d
                xor     r9d, r9d
                mov     [rsp+140h+var_F8], rax
                mov     rdx, rdi
                mov     [rsp+140h+var_100], ebx
                lea     rax, [rsp+140h+var_D4]
                mov     [rsp+140h+var_108], r14
                mov     [rsp+140h+var_110], rax
                lea     rax, qword_14000ACF8
                mov     [rsp+140h+var_118], rax
                mov     [rsp+140h+var_120], r12
                call    sub_1406CC6BC
                mov     ebx, eax
                test    eax, eax
                js      loc_14072A96A
                cmp     [rsp+140h+var_D4], 12h
                jnz     loc_140831094
                mov     ebx, 80h
                lea     ecx, [rsi+1]
                mov     edx, 100h
                mov     [rsp+140h+var_DC], ebx
                mov     r8d, 20207050h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_14083108A
                lea     rax, [rsp+140h+var_DC]
                mov     r9d, ebx
                mov     r8, rsi
                mov     [rsp+140h+var_120], rax
                mov     rdx, rdi
                call    sub_14072AA78
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jz      loc_14083109E

loc_14072A882:                          ; CODE XREF: IoGetDeviceInterfaceAlias+106A63↓j
                cmp     ebx, 0C0000034h
                jz      loc_1408310E8

loc_14072A88E:                          ; CODE XREF: IoGetDeviceInterfaceAlias+106A78↓j
                test    ebx, ebx
                js      loc_14072A96A
                lea     r8, [rsp+140h+var_DF]
                mov     rdx, rdi
                call    sub_14072A9E4
                mov     ebx, eax
                test    eax, eax
                js      loc_14072A96A
                mov     ebx, 200h
                mov     edx, 400h
                mov     ecx, 1
                mov     [rsp+140h+var_D8], ebx
                mov     r8d, 20207050h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14083108A
                mov     r12b, [rsp+140h+var_DF]
                lea     rax, [rsp+140h+var_D8]
                mov     [rsp+140h+var_108], rax
                lea     rdx, [rbp+40h+var_90]
                mov     dword ptr [rsp+140h+var_110], ebx
                mov     r9, rsi
                mov     [rsp+140h+var_118], rdi
                mov     r8, r14
                mov     byte ptr [rsp+140h+var_120], r12b
                call    sub_14074212C
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jz      loc_1408310FD

loc_14072A910:                          ; CODE XREF: IoGetDeviceInterfaceAlias+106AD5↓j
                xor     r12d, r12d
                test    ebx, ebx
                js      short loc_14072A96A
                mov     rdx, rdi
                mov     rcx, r13
                call    RtlInitUnicodeStringEx
                mov     ebx, eax
                test    eax, eax
                js      short loc_14072A96A
                mov     rcx, cs:qword_140CF4378
                lea     rax, [rbp+40h+var_C0]
                mov     [rsp+140h+var_108], r12
                lea     r8d, [r12+30h]
                mov     [rsp+140h+var_110], rax
                mov     rdx, rdi
                mov     byte ptr [rsp+140h+var_118], r12b
                mov     dword ptr [rsp+140h+var_120], 20019h
                call    sub_1405E0494
                mov     ebx, eax
                test    eax, eax
                js      loc_14083115A
                mov     rcx, [rbp+40h+var_C0]
                call    ZwClose

loc_14072A96A:                          ; CODE XREF: IoGetDeviceInterfaceAlias+1A4↑j
                                        ; IoGetDeviceInterfaceAlias+210↑j ...
                lea     rcx, unk_140C44D40
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rdi, [rsp+140h+var_D0]

loc_14072A989:                          ; CODE XREF: IoGetDeviceInterfaceAlias+106AED↓j
                test    rsi, rsi
                jz      short loc_14072A998
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_14072A998:                          ; CODE XREF: IoGetDeviceInterfaceAlias+30C↑j
                test    r14, r14
                jz      short loc_14072A9A7
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14072A9A7:                          ; CODE XREF: IoGetDeviceInterfaceAlias+94↑j
                                        ; IoGetDeviceInterfaceAlias+E9↑j ...
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_1406CA2D4
                mov     eax, ebx
                mov     rcx, [rbp+40h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+140h+arg_18]
                add     rsp, 110h
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
; } // starts at 14072A680
IoGetDeviceInterfaceAlias endp
