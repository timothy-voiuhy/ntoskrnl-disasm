CcDeductDirtyPagesFromExternalCache proc near
                                        ; CODE XREF: CcUnregisterExternalCache+15↓p
                                        ; DATA XREF: .rdata:000000014009A1CC↑o ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049E386 SIZE 00000075 BYTES

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
                mov     rdi, rdx
                mov     r14, rcx
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                mov     rax, cs:qword_140CFC760
                mov     rsi, [rax+8]
                test    rdx, rdx
                jz      short loc_1403923D0
                mov     r12d, 0FFFFFFFFh

loc_140392367:                          ; CODE XREF: CcDeductDirtyPagesFromExternalCache+AE↓j
                cmp     rdi, r12
                lea     rdx, [rsp+58h+var_38]
                mov     ebp, edi
                lea     rcx, [rsi+80h]
                cmova   ebp, r12d
                mov     ebx, ebp
                sub     rdi, rbx
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, [r14+8]
                cmp     rax, rbx
                jb      short loc_140392400

loc_14039238F:                          ; CODE XREF: CcDeductDirtyPagesFromExternalCache+E2↓j
                mov     edx, ebp
                sub     rax, rdx
                mov     [r14+8], rax
                mov     rax, cs:qword_140CFC760
                mov     rcx, [rax+8]
                sub     [rcx+280h], rdx
                lea     rcx, [rsp+58h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+58h+var_28]
                test    eax, eax
                jnz     loc_14049E386

loc_1403923C7:                          ; CODE XREF: CcDeductDirtyPagesFromExternalCache+10C068↓j
                                        ; CcDeductDirtyPagesFromExternalCache+10C074↓j ...
                mov     cr8, rbx
                test    rdi, rdi
                jnz     short loc_140392367

loc_1403923D0:                          ; CODE XREF: CcDeductDirtyPagesFromExternalCache+3F↑j
                lea     rax, [rsi+310h]
                cmp     [rax], rax
                jnz     loc_14049E3ED

loc_1403923E0:                          ; CODE XREF: CcDeductDirtyPagesFromExternalCache+10C0D6↓j
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
                align 20h

loc_140392400:                          ; CODE XREF: CcDeductDirtyPagesFromExternalCache+6D↑j
                mov     ebp, eax
                jmp     short loc_14039238F
CcDeductDirtyPagesFromExternalCache endp
