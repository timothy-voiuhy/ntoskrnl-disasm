IoGetDeviceProperty proc near           ; CODE XREF: sub_1402B1E40+21D↑p
                                        ; sub_1402B1E40+27A↑p ...

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_80          = byte ptr -80h
var_78          = dword ptr -78h
var_40          = qword ptr -40h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408278C2 SIZE 00000118 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_40], rax
                mov     r14, [rbp+4Fh+arg_20]
                mov     ebx, edx
                xor     edx, edx
                mov     [rbp+4Fh+var_A0], rcx
                mov     r13d, r8d
                mov     rdi, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rbp+4Fh+var_80]
                mov     r12, r9
                lea     r8d, [rdx+40h]
                movups  [rbp+4Fh+var_98], xmm0
                call    memset
                xor     edx, edx
                and     ebx, 0FFFh
                mov     [rbp+4Fh+var_A8], edx
                mov     [rbp+4Fh+var_AC], edx
                mov     [r14], edx
                test    rdi, rdi
                jz      loc_1408279D0
                mov     rax, [rdi+138h]
                mov     rsi, [rax+28h]
                test    rsi, rsi
                jz      loc_1408279AE
                test    dword ptr [rsi+18Ch], 20000h
                jnz     loc_1408279AE
                cmp     ebx, 0Bh
                ja      loc_140700380
                jz      loc_1407003A2
                cmp     ebx, 5
                ja      loc_140700447
                jz      loc_1407005B5
                test    ebx, ebx
                jz      loc_14070043A
                sub     ebx, 1
                jnz     loc_14070072B
                lea     edi, [rdx+7]
                lea     r15d, [rdx+2]

loc_140700327:                          ; CODE XREF: IoGetDeviceProperty+139↓j
                                        ; IoGetDeviceProperty+1E2↓j ...
                cmp     [rsi+30h], rdx
                jz      loc_1408279D0
                mov     [r14], r13d
                mov     r9d, r15d
                mov     rcx, [rsi+30h]
                mov     r8d, edi
                mov     [rsp+0F0h+var_C8], r14
                mov     [rsp+0F0h+var_D0], r12
                call    sub_1407007B8
                mov     ebx, eax
                cmp     eax, 0C0000225h

loc_140700354:                          ; CODE XREF: IoGetDeviceProperty+127749↓j
                jz      short loc_14070039B

loc_140700356:                          ; CODE XREF: IoGetDeviceProperty+140↓j
                                        ; IoGetDeviceProperty+1D5↓j ...
                mov     eax, ebx
                mov     rcx, [rbp+4Fh+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0F0h+arg_8]
                add     rsp, 0C0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140700380:                          ; CODE XREF: IoGetDeviceProperty+94↑j
                mov     r15d, 11h
                cmp     ebx, r15d
                ja      loc_140700467
                jnz     loc_1407004A1
                lea     edi, [r15-0Dh]
                jmp     short loc_140700327
; ---------------------------------------------------------------------------

loc_14070039B:                          ; CODE XREF: IoGetDeviceProperty:loc_140700354↑j
                                        ; IoGetDeviceProperty+25E↓j ...
                mov     ebx, 0C0000034h
                jmp     short loc_140700356
; ---------------------------------------------------------------------------

loc_1407003A2:                          ; CODE XREF: IoGetDeviceProperty+9A↑j
                lea     eax, [r13+10h]
                mov     ecx, 1
                mov     edx, eax
                mov     r8d, 6F697050h
                mov     [rbp+4Fh+var_B0], eax
                call    ExAllocatePoolWithTag
                xor     esi, esi
                mov     rdi, rax
                test    rax, rax
                jz      loc_1408278F7
                mov     r8d, [rbp+4Fh+var_B0]
                mov     r9, r14
                mov     rcx, [rbp+4Fh+var_A0]
                mov     rdx, rax
                mov     byte ptr [rsp+0F0h+var_D0], sil
                call    sub_1406C14C0
                cmp     eax, 0C0000004h
                mov     ebx, eax
                mov     ecx, 0C0000023h
                cmovz   ebx, ecx
                test    ebx, ebx
                js      loc_140700594
                movzx   eax, word ptr [rdi]
                test    ax, ax
                jz      loc_140827901
                add     eax, 2
                mov     [r14], eax
                cmp     eax, r13d
                ja      loc_140827909
                movzx   r8d, word ptr [rdi]
                mov     rcx, r12
                mov     rdx, [rdi+8]
                call    memmove
                movzx   eax, word ptr [rdi]
                mov     [rax+r12], si

loc_14070042B:                          ; CODE XREF: IoGetDeviceProperty+338↓j
                                        ; IoGetDeviceProperty+1276A4↓j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_14070043A:                          ; CODE XREF: IoGetDeviceProperty+B1↑j
                mov     edi, 1
                mov     r15d, edi
                jmp     loc_140700327
; ---------------------------------------------------------------------------

loc_140700447:                          ; CODE XREF: IoGetDeviceProperty+A3↑j
                sub     ebx, 6
                jz      loc_1407005EB
                sub     ebx, 1
                jnz     loc_14070063B
                lea     r15d, [rbx+0Ah]

loc_14070045D:                          ; CODE XREF: IoGetDeviceProperty+346↓j
                                        ; IoGetDeviceProperty+35B↓j ...
                mov     edi, 1
                jmp     loc_140700327
; ---------------------------------------------------------------------------

loc_140700467:                          ; CODE XREF: IoGetDeviceProperty+129↑j
                sub     ebx, 12h
                jz      loc_140700656
                sub     ebx, 1
                jnz     loc_140700520
                mov     dword ptr [r14], 4
                cmp     r13d, 4
                jb      loc_1407005AB
                mov     r8, r12
                lea     edx, [rbx+1]
                mov     rcx, rsi
                call    sub_140700AA8

loc_140700498:                          ; CODE XREF: IoGetDeviceProperty+515↓j
                xor     edi, edi

loc_14070049A:                          ; CODE XREF: IoGetDeviceProperty+3D6↓j
                mov     ebx, edi
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_1407004A1:                          ; CODE XREF: IoGetDeviceProperty+12F↑j
                sub     ebx, 0Ch
                jz      short loc_1407004E6
                sub     ebx, 1
                jz      loc_140700788
                sub     ebx, 1
                jnz     loc_14070059D
                cmp     [rsi+1CCh], edx
                jl      loc_14070039B
                mov     dword ptr [r14], 4
                cmp     r13d, 4
                jb      loc_1407005AB
                mov     eax, [rsi+1CCh]

loc_1407004DB:                          ; CODE XREF: IoGetDeviceProperty+54C↓j
                mov     [r12], eax

loc_1407004DF:                          ; CODE XREF: IoGetDeviceProperty+4EC↓j
                mov     ebx, edx
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_1407004E6:                          ; CODE XREF: IoGetDeviceProperty+244↑j
                movzx   ecx, word ptr [rsi+1D0h]
                lea     rdx, [rbp+4Fh+var_98]
                call    sub_140700B28
                mov     ebx, eax
                test    eax, eax
                js      loc_140700356
                mov     dword ptr [r14], 10h
                cmp     r13d, 10h
                jb      loc_1407005AB
                movups  xmm0, [rbp+4Fh+var_98]
                movdqu  xmmword ptr [r12], xmm0
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_140700520:                          ; CODE XREF: IoGetDeviceProperty+213↑j
                sub     ebx, 1
                jz      loc_140827932
                sub     ebx, 1
                jnz     loc_140827910
                lea     rcx, unk_140C44CA0
                call    ExAcquireFastMutex
                mov     rcx, [rsi+1A0h]
                xor     eax, eax
                test    rcx, rcx
                jz      loc_140827928
                mov     rbx, [rsi+1A8h]
                test    rbx, rbx
                jz      loc_140827928
                call    sub_14074CF5C
                mov     rcx, rbx
                mov     edi, eax
                call    sub_14074CF5C
                mov     r15d, eax
                lea     ecx, [r15+rdi]
                mov     [r14], ecx
                cmp     ecx, r13d
                jbe     short loc_1407005C0

loc_14070057E:                          ; CODE XREF: IoGetDeviceProperty+1276F4↓j
                mov     ebx, 0C0000023h

loc_140700583:                          ; CODE XREF: IoGetDeviceProperty+389↓j
                                        ; IoGetDeviceProperty+1276CD↓j
                lea     rcx, unk_140C44CA0
                call    KeReleaseGuardedMutex
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_140700594:                          ; CODE XREF: IoGetDeviceProperty+192↑j
                add     dword ptr [r14], 0FFFFFFF0h
                jmp     loc_14070042B
; ---------------------------------------------------------------------------

loc_14070059D:                          ; CODE XREF: IoGetDeviceProperty+252↑j
                sub     ebx, 1
                jnz     short loc_1407005F6
                lea     r15d, [rbx+17h]
                jmp     loc_14070045D
; ---------------------------------------------------------------------------

loc_1407005AB:                          ; CODE XREF: IoGetDeviceProperty+224↑j
                                        ; IoGetDeviceProperty+26F↑j ...
                mov     ebx, 0C0000023h
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_1407005B5:                          ; CODE XREF: IoGetDeviceProperty+A9↑j
                mov     r15d, 8
                jmp     loc_14070045D
; ---------------------------------------------------------------------------

loc_1407005C0:                          ; CODE XREF: IoGetDeviceProperty+31C↑j
                mov     rdx, [rsi+1A0h]
                mov     r8, rdi
                mov     rcx, r12
                call    memmove
                mov     rdx, [rsi+1A8h]
                lea     rcx, [rdi+r12]
                mov     r8, r15
                call    memmove
                xor     edi, edi

loc_1407005E7:                          ; CODE XREF: IoGetDeviceProperty+127706↓j
                                        ; IoGetDeviceProperty+12770E↓j
                mov     ebx, edi
                jmp     short loc_140700583
; ---------------------------------------------------------------------------

loc_1407005EB:                          ; CODE XREF: IoGetDeviceProperty+1EA↑j
                mov     r15d, 9
                jmp     loc_14070045D
; ---------------------------------------------------------------------------

loc_1407005F6:                          ; CODE XREF: IoGetDeviceProperty+340↑j
                cmp     ebx, 1
                jnz     loc_14082791E
                lea     rdx, [rbp+4Fh+var_80]
                mov     rcx, rdi
                call    sub_14073D650
                xor     edi, edi
                test    eax, eax
                js      loc_14070039B
                mov     eax, [rbp+4Fh+var_78]
                cmp     eax, 0FFFFFFFFh
                jz      loc_14070039B
                mov     dword ptr [r14], 4
                cmp     r13d, 4
                jb      loc_1407005AB
                mov     [r12], eax
                jmp     loc_14070049A
; ---------------------------------------------------------------------------

loc_14070063B:                          ; CODE XREF: IoGetDeviceProperty+1F3↑j
                sub     ebx, 1
                jz      loc_1408278EC
                sub     ebx, 1
                jnz     loc_1408278DE
                lea     r15d, [rbx+0Dh]
                jmp     loc_14070045D
; ---------------------------------------------------------------------------

loc_140700656:                          ; CODE XREF: IoGetDeviceProperty+20A↑j
                cmp     rsi, cs:qword_140C44D00
                jz      loc_140827973
                cmp     [rsi+30h], rdx
                jz      loc_1408279D0
                mov     edi, 1
                lea     r15d, [rdi+2]

loc_140700676:                          ; CODE XREF: IoGetDeviceProperty+4A3↓j
                mov     rcx, cs:qword_140CF4378
                lea     rax, [rbp+4Fh+var_B0]
                mov     [rsp+0F0h+var_B8], edx
                mov     r9d, 0Bh
                mov     [rsp+0F0h+var_C0], rax
                xor     r8d, r8d
                lea     rax, [rbp+4Fh+var_A8]
                mov     [rbp+4Fh+var_B0], 4
                mov     rdx, [rsi+30h]
                mov     [rsp+0F0h+var_C8], rax
                lea     rax, [rbp+4Fh+var_AC]
                mov     [rsp+0F0h+var_D0], rax
                call    sub_14062BA8C
                xor     edx, edx
                mov     ebx, eax
                test    eax, eax
                js      loc_14082798D
                cmp     [rbp+4Fh+var_AC], 4
                jnz     loc_14082798D
                cmp     [rbp+4Fh+var_B0], 4
                jnz     loc_14082798D
                mov     eax, [rbp+4Fh+var_A8]
                test    al, 20h
                jnz     loc_14082797C
                test    al, 40h
                jnz     loc_140827983
                and     eax, 400h
                neg     eax
                sbb     eax, eax
                and     eax, r15d

loc_1407006F4:                          ; CODE XREF: IoGetDeviceProperty+12771E↓j
                                        ; IoGetDeviceProperty+127728↓j
                mov     rsi, [rsi+10h]
                test    eax, eax
                jnz     short loc_140700709
                cmp     rsi, cs:qword_140C44D00
                jnz     loc_140700676

loc_140700709:                          ; CODE XREF: IoGetDeviceProperty+49A↑j
                                        ; IoGetDeviceProperty+127732↓j
                test    ebx, ebx
                js      loc_140827997

loc_140700711:                          ; CODE XREF: IoGetDeviceProperty+127717↓j
                mov     dword ptr [r14], 4
                cmp     r13d, 4
                jb      loc_1407005AB
                mov     [r12], eax
                jmp     loc_140700356
; ---------------------------------------------------------------------------

loc_14070072B:                          ; CODE XREF: IoGetDeviceProperty+BA↑j
                sub     ebx, 1
                jz      short loc_14070077A
                sub     ebx, 1
                jz      loc_1408278C2
                cmp     ebx, 1
                jnz     loc_14082791E
                mov     rcx, [rsi+228h]
                test    rcx, rcx
                jz      loc_1407004DF
                call    sub_14074CF5C
                mov     [r14], eax
                cmp     eax, r13d
                ja      loc_1407005AB
                mov     rdx, [rsi+228h]
                mov     rcx, r12
                mov     r8d, eax
                call    memmove
                jmp     loc_140700498
; ---------------------------------------------------------------------------

loc_14070077A:                          ; CODE XREF: IoGetDeviceProperty+4CE↑j
                mov     edi, 7
                lea     r15d, [rdi-4]
                jmp     loc_140700327
; ---------------------------------------------------------------------------

loc_140700788:                          ; CODE XREF: IoGetDeviceProperty+249↑j
                cmp     dword ptr [rsi+1C8h], 0FFFFFFFFh
                jz      loc_14070039B
                mov     dword ptr [r14], 4
                cmp     r13d, 4
                jb      loc_1407005AB
                mov     eax, [rsi+1C8h]
                jmp     loc_1407004DB
; } // starts at 140700260
IoGetDeviceProperty endp
