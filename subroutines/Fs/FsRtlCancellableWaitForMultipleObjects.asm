FsRtlCancellableWaitForMultipleObjects proc near
                                        ; CODE XREF: FsRtlSetKernelEaFile+12E↓p
                                        ; FsRtlQueryKernelEaFile+18C↓p ...

var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140813274 SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     ebx, ebx
                mov     rsi, r9
                mov     r13d, r8d
                mov     r15, rdx
                mov     r14d, ecx
                mov     rdi, 0FFFFF78000000320h
                test    r9, r9
                jz      short loc_14068A4C6
                mov     rbx, [r9]
                test    rbx, rbx
                jns     short loc_14068A4C6
                mov     rbx, [rdi]
                call    KeQueryTimeIncrement
                mov     ecx, eax
                mov     rax, [rsi]
                cqo
                idiv    rcx
                sub     rbx, rax

loc_14068A4C6:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+37↑j
                                        ; FsRtlCancellableWaitForMultipleObjects+3F↑j
                mov     rbp, [rsp+68h+arg_28]
                mov     r12, [rsp+68h+arg_20]

loc_14068A4D6:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+ED↓j
                                        ; FsRtlCancellableWaitForMultipleObjects+188E47↓j ...
                cmp     r14d, 1
                jz      short loc_14068A527
                mov     [rsp+68h+var_30], r12
                xor     r9d, r9d
                mov     [rsp+68h+var_38], rsi
                mov     r8d, r13d
                mov     [rsp+68h+var_40], 1
                mov     rdx, r15
                mov     ecx, r14d
                mov     byte ptr [rsp+68h+var_48], 0
                call    KeWaitForMultipleObjects

loc_14068A501:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+CC↓j
                cmp     eax, 101h
                jz      short loc_14068A53E

loc_14068A508:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+FD↓j
                                        ; FsRtlCancellableWaitForMultipleObjects+188E13↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14068A527:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+6A↑j
                mov     rcx, [r15]
                mov     r9b, 1
                xor     r8d, r8d
                mov     [rsp+68h+var_48], rsi
                xor     edx, edx
                call    KeWaitForSingleObject
                jmp     short loc_14068A501
; ---------------------------------------------------------------------------

loc_14068A53E:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+96↑j
                mov     rax, gs:188h
                mov     eax, [rax+510h]
                test    al, 1
                jnz     short loc_14068A568
                test    rbp, rbp
                jnz     loc_140813274

loc_14068A55A:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+188E08↓j
                test    rsi, rsi
                jz      loc_14068A4D6
                jmp     loc_140813288
; ---------------------------------------------------------------------------

loc_14068A568:                          ; CODE XREF: FsRtlCancellableWaitForMultipleObjects+DF↑j
                mov     eax, 0C000004Bh
                jmp     short loc_14068A508
FsRtlCancellableWaitForMultipleObjects endp
