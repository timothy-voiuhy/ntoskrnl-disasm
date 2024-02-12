KeRemoveDeviceQueue proc near           ; CODE XREF: sub_1404CCFEC+A3↑p
                                        ; IoFreeController+D↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rdi, rcx
                lea     rdx, [rsp+48h+var_28]
                xorps   xmm0, xmm0
                xor     eax, eax
                add     rcx, 18h
                mov     [rsp+48h+var_18], rax
                movups  [rsp+48h+var_28], xmm0
                xor     ebx, ebx
                call    KeAcquireInStackQueuedSpinLockForDpc
                lea     rax, [rdi+8]
                mov     rcx, [rax]
                cmp     rcx, rax
                jnz     short loc_14051AD6D
                mov     [rdi+20h], bl
                jmp     short loc_14051ADA1
; ---------------------------------------------------------------------------

loc_14051AD6D:                          ; CODE XREF: KeRemoveDeviceQueue+36↑j
                mov     rbx, rcx
                cmp     [rcx+8], rax
                jnz     short loc_14051ADBA
                mov     rcx, [rcx]
                cmp     [rcx+8], rbx
                jnz     short loc_14051ADBA
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     byte ptr [rbx+14h], 0
                mov     rax, [rdi+20h]
                mov     rcx, rax
                sar     rcx, 8
                cmp     rbx, rcx
                jnz     short loc_14051ADA1
                movzx   ecx, al
                mov     [rdi+20h], rcx

loc_14051ADA1:                          ; CODE XREF: KeRemoveDeviceQueue+3B↑j
                                        ; KeRemoveDeviceQueue+68↑j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockForDpc
                mov     rax, rbx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14051ADBA:                          ; CODE XREF: KeRemoveDeviceQueue+44↑j
                                        ; KeRemoveDeviceQueue+4D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeRemoveDeviceQueue endp
