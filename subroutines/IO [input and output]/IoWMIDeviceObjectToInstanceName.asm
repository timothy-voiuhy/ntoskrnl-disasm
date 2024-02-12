IoWMIDeviceObjectToInstanceName proc near
                                        ; CODE XREF: IoWMIHandleToInstanceName+45↑p
                                        ; DATA XREF: .pdata:000000014010C038↑o

var_28          = dword ptr -28h
var_18          = word ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 40h
                mov     rbx, rcx
                xorps   xmm0, xmm0
                xor     r14d, r14d
                mov     rcx, rdx
                mov     [rax+20h], r14d
                mov     rdi, r8
                movups  xmmword ptr [rax-18h], xmm0
                call    IoGetDeviceAttachmentBaseRef
                lea     r9, [rsp+48h+arg_18]
                mov     rdx, rax
                lea     r8, [rsp+48h+var_18]
                mov     rcx, rbx
                mov     rbp, rax
                call    sub_14078C034
                mov     ebx, eax
                test    eax, eax
                js      short loc_14078C003
                movzx   ecx, [rsp+48h+var_18]
                mov     r8d, 49696D57h
                add     cx, 20h ; ' '
                movzx   edx, cx
                lea     ecx, [r14+1]
                mov     [rdi+2], dx
                call    ExAllocatePoolWithTag
                mov     [rdi+8], rax
                mov     rcx, rax
                test    rax, rax
                jz      short loc_14078C024
                mov     eax, [rsp+48h+arg_18]
                lea     r8, aWsD        ; "%ws_%d"
                movzx   edx, word ptr [rdi+2]
                mov     r9, [rsp+48h+var_10]
                mov     [rsp+48h+var_28], eax
                call    sub_14021C308
                mov     rcx, [rdi+8]
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_14078BFDF:                          ; CODE XREF: IoWMIDeviceObjectToInstanceName+A7↓j
                inc     rax
                cmp     [rcx+rax*2], r14w
                jnz     short loc_14078BFDF
                add     ax, ax
                mov     ebx, r14d
                mov     [rdi], ax

loc_14078BFF2:                          ; CODE XREF: IoWMIDeviceObjectToInstanceName+E9↓j
                cmp     [rsp+48h+var_10], r14
                jz      short loc_14078C003
                lea     rcx, [rsp+48h+var_18]
                call    RtlFreeUnicodeString

loc_14078C003:                          ; CODE XREF: IoWMIDeviceObjectToInstanceName+4D↑j
                                        ; IoWMIDeviceObjectToInstanceName+B7↑j
                mov     rcx, rbp
                call    PsDereferenceSiloContext
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14078C024:                          ; CODE XREF: IoWMIDeviceObjectToInstanceName+78↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_14078BFF2
IoWMIDeviceObjectToInstanceName endp
