IoCreateDeviceSecure proc near          ; DATA XREF: .rdata:0000000140091AE4↑o
                                        ; .pdata:0000000140109CEC↑o

var_60          = dword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_40          = byte ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = dword ptr  48h
arg_10          = qword ptr  50h
arg_18          = dword ptr  58h
arg_20          = dword ptr  60h
arg_28          = byte ptr  68h
arg_30          = qword ptr  70h
arg_38          = qword ptr  78h
arg_40          = qword ptr  80h

; FUNCTION CHUNK AT 0000000140841DA0 SIZE 00000025 BYTES

                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], edx
                mov     [rax+8], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                mov     rbp, rsp
                sub     rsp, 80h
                mov     r12, [rbp+arg_40]
                xor     r10d, r10d
                mov     r13d, [rbp+arg_20]
                mov     rax, rcx
                xor     ecx, ecx
                mov     [rbp+var_40], r10b
                mov     [rbp+var_38], r10
                xorps   xmm0, xmm0
                mov     [r12], r10
                mov     edi, r10d
                mov     [rbp+var_3C], r10d
                mov     r14d, r10d
                mov     [rbp+arg_40], r10
                mov     [rbp+var_20], rcx
                movups  [rbp+var_30], xmm0
                test    r8, r8
                jz      loc_14075E717

loc_14075E59A:                          ; CODE XREF: IoCreateDeviceSecure+1EA↓j
                cmp     [rbp+arg_38], r10
                jz      short loc_14075E5BD
                mov     rcx, [rbp+arg_38]
                lea     r8, [rbp+var_30]
                mov     rdx, rax
                call    sub_14075E964
                xor     r10d, r10d
                mov     ebx, eax
                test    eax, eax
                js      loc_140841DA5

loc_14075E5BD:                          ; CODE XREF: IoCreateDeviceSecure+6E↑j
                mov     esi, dword ptr [rbp+var_30]
                test    sil, 2
                jnz     loc_14075E650
                mov     rbx, [rbp+arg_30]
                movzx   edx, word ptr [rbx]
                movzx   eax, word ptr [rbx+2]
                lea     r9, [rdx+2]
                cmp     rax, r9
                jnz     loc_14075E725
                mov     rcx, [rbx+8]
                shr     rdx, 1
                cmp     [rcx+rdx*2], r10w
                jnz     loc_14075E725

loc_14075E5F4:                          ; CODE XREF: IoCreateDeviceSecure+234↓j
                xor     r9d, r9d
                lea     r8, [rbp+var_38]
                lea     edx, [r9+1]
                call    SeConvertStringSecurityDescriptorToSecurityDescriptor
                xor     r10d, r10d
                mov     ebx, eax
                test    eax, eax
                js      loc_14075E6E3
                mov     rax, [rbp+var_38]
                lea     ecx, [r10+2]
                mov     esi, ecx
                mov     dword ptr [rbp+var_30], ecx
                mov     qword ptr [rbp+var_30+8], rax
                or      word ptr [rax+2], 8
                cmp     [rbp+arg_38], r10
                jz      short loc_14075E650
                mov     [rbp+var_18], rcx
                lea     rdx, [rbp+var_18]
                mov     rcx, [rbp+arg_38]
                mov     [rbp+var_8], r10
                mov     [rbp+var_10], rax
                call    sub_1407BD384
                mov     ebx, eax
                test    eax, eax
                js      loc_14075E6E3

loc_14075E650:                          ; CODE XREF: IoCreateDeviceSecure+94↑j
                                        ; IoCreateDeviceSecure+FB↑j
                mov     al, byte ptr [rbp+var_30]
                mov     r9d, [rbp+arg_18]
                test    al, 1
                movzx   ecx, [rbp+arg_28]
                cmovnz  r9d, dword ptr [rbp+var_30+4]
                test    al, 4
                mov     r8, [rbp+arg_10]
                cmovnz  r13d, dword ptr [rbp+var_20]
                test    al, 8
                movzx   eax, byte ptr [rbp+var_20+4]
                mov     edx, [rbp+arg_8]
                cmovnz  ecx, eax
                lea     rax, [rbp+arg_40]
                mov     [rsp+80h+var_50], rax
                mov     [rsp+80h+var_58], cl
                mov     rcx, [rbp+arg_0]
                mov     [rsp+80h+var_60], r13d
                call    IoCreateDevice
                mov     rdi, [rbp+arg_40]
                xor     r10d, r10d
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075E6E3
                test    sil, 2
                jz      short loc_14075E6DC
                mov     rcx, qword ptr [rbp+var_30+8]
                lea     r8, [rbp+var_3C]
                lea     rdx, [rbp+var_40]
                call    sub_14075E77C
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075E6E3
                mov     r8, qword ptr [rbp+var_30+8]
                mov     rcx, rdi
                mov     edx, [rbp+var_3C]
                call    ObSetSecurityObjectByPointer
                xor     r10d, r10d
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075E6E3

loc_14075E6DC:                          ; CODE XREF: IoCreateDeviceSecure+17B↑j
                mov     [r12], rdi
                mov     rdi, r10

loc_14075E6E3:                          ; CODE XREF: IoCreateDeviceSecure+DB↑j
                                        ; IoCreateDeviceSecure+11A↑j ...
                test    sil, 2
                jz      short loc_14075E6F4
                mov     rcx, qword ptr [rbp+var_30+8]
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14075E6F4:                          ; CODE XREF: IoCreateDeviceSecure+1B7↑j
                test    rdi, rdi
                jnz     loc_140841DB7

loc_14075E6FD:                          ; CODE XREF: IoCreateDeviceSecure+E3890↓j
                test    r14, r14
                jnz     short loc_14075E769

loc_14075E702:                          ; CODE XREF: IoCreateDeviceSecure+243↓j
                mov     eax, ebx
                add     rsp, 80h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075E717:                          ; CODE XREF: IoCreateDeviceSecure+64↑j
                test    r13b, r13b
                js      loc_14075E59A
                jmp     loc_140841DA0
; ---------------------------------------------------------------------------

loc_14075E725:                          ; CODE XREF: IoCreateDeviceSecure+AC↑j
                                        ; IoCreateDeviceSecure+BE↑j
                mov     r8d, 63466F49h
                mov     rdx, r9
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_140841DAD
                movzx   r8d, word ptr [rbx]
                mov     rcx, rax
                mov     rdx, [rbx+8]
                call    memmove
                movzx   eax, word ptr [rbx]
                shr     rax, 1
                xor     ecx, ecx
                mov     [r14+rax*2], cx
                mov     rcx, r14
                jmp     loc_14075E5F4
; ---------------------------------------------------------------------------

loc_14075E769:                          ; CODE XREF: IoCreateDeviceSecure+1D0↑j
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag
                jmp     short loc_14075E702
IoCreateDeviceSecure endp
