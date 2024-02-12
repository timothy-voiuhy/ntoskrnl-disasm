KeRemoveByKeyDeviceQueueIfBusy proc near
                                        ; DATA XREF: .pdata:00000001400F3AC8↑o

var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     esi, edx
                mov     rdi, rcx
                lea     rdx, [r11-28h]
                xor     eax, eax
                add     rcx, 18h
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                xor     ebx, ebx
                call    KeAcquireInStackQueuedSpinLockForDpc
                cmp     [rdi+20h], bl
                jz      short loc_14051AC96
                lea     rax, [rdi+8]
                mov     rcx, [rax]
                cmp     rcx, rax
                jnz     short loc_14051ACB4
                mov     [rdi+20h], bl

loc_14051AC96:                          ; CODE XREF: KeRemoveByKeyDeviceQueueIfBusy+35↑j
                                        ; KeRemoveByKeyDeviceQueueIfBusy+BF↓j ...
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockForDpc
                mov     rsi, [rsp+48h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14051ACB4:                          ; CODE XREF: KeRemoveByKeyDeviceQueueIfBusy+41↑j
                                        ; KeRemoveByKeyDeviceQueueIfBusy+72↓j
                mov     rbx, rcx
                cmp     esi, [rcx+10h]
                jbe     short loc_14051ACC4
                mov     rcx, [rcx]
                cmp     rcx, rax
                jnz     short loc_14051ACB4

loc_14051ACC4:                          ; CODE XREF: KeRemoveByKeyDeviceQueueIfBusy+6A↑j
                cmp     rcx, rax
                jz      short loc_14051ACE4
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_14051AD1D
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_14051AD1D
                mov     [rcx], rax
                mov     [rax+8], rcx
                jmp     short loc_14051ACFD
; ---------------------------------------------------------------------------

loc_14051ACE4:                          ; CODE XREF: KeRemoveByKeyDeviceQueueIfBusy+77↑j
                mov     rbx, [rax]
                cmp     [rbx+8], rax
                jnz     short loc_14051AD1D
                mov     rcx, [rbx]
                cmp     [rcx+8], rbx
                jnz     short loc_14051AD1D
                mov     [rax], rcx
                mov     [rcx+8], rax

loc_14051ACFD:                          ; CODE XREF: KeRemoveByKeyDeviceQueueIfBusy+92↑j
                mov     byte ptr [rbx+14h], 0
                mov     rcx, [rdi+20h]
                mov     rax, rcx
                sar     rax, 8
                cmp     rbx, rax
                jnz     short loc_14051AC96
                movzx   eax, cl
                mov     [rdi+20h], rax
                jmp     loc_14051AC96
; ---------------------------------------------------------------------------

loc_14051AD1D:                          ; CODE XREF: KeRemoveByKeyDeviceQueueIfBusy+80↑j
                                        ; KeRemoveByKeyDeviceQueueIfBusy+89↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeRemoveByKeyDeviceQueueIfBusy endp
