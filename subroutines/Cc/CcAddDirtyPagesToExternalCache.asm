CcAddDirtyPagesToExternalCache proc near
                                        ; DATA XREF: .rdata:000000014009A244↑o
                                        ; .pdata:00000001400DC668↑o

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049E48C SIZE 00000068 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     rbp, rcx
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                mov     rax, cs:qword_140CFC760
                mov     rsi, [rax+8]
                test    rdx, rdx
                jz      short loc_14039270D
                mov     r12d, 0FFFFFFFFh

loc_140392697:                          ; CODE XREF: CcAddDirtyPagesToExternalCache+BB↓j
                cmp     rbx, r12
                lea     rdx, [rsp+58h+var_38]
                mov     edi, ebx
                lea     rcx, [rsi+80h]
                cmova   edi, r12d
                mov     r14d, edi
                sub     rbx, r14
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, [rbp+8]
                test    rax, rax
                jnz     short loc_1403926D1
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402F9FDC
                mov     rax, [rbp+8]

loc_1403926D1:                          ; CODE XREF: CcAddDirtyPagesToExternalCache+6E↑j
                add     rax, r14
                mov     r9d, edi
                xor     r8d, r8d
                mov     [rbp+8], rax
                xor     edx, edx
                xor     ecx, ecx
                call    sub_140288780
                lea     rcx, [rsp+58h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+58h+var_28]
                test    eax, eax
                jnz     loc_14049E48C

loc_140392704:                          ; CODE XREF: CcAddDirtyPagesToExternalCache+10BE3E↓j
                                        ; CcAddDirtyPagesToExternalCache+10BE4A↓j ...
                mov     cr8, rdi
                test    rbx, rbx
                jnz     short loc_140392697

loc_14039270D:                          ; CODE XREF: CcAddDirtyPagesToExternalCache+3F↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcAddDirtyPagesToExternalCache endp
