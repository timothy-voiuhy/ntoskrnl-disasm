KeInsertDeviceQueue proc near           ; CODE XREF: sub_1404CC904+9F↑p
                                        ; IoAllocateController+30↑p ...

var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     rsi, rcx
                lea     rdx, [r11-28h]
                xor     eax, eax
                add     rcx, 18h
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                xor     dil, dil
                call    KeAcquireInStackQueuedSpinLockForDpc
                mov     al, [rsi+20h]
                mov     byte ptr [rsi+20h], 1
                cmp     al, 1
                jnz     short loc_14051AB44
                lea     rax, [rsi+8]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jz      short loc_14051AB33
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14051AB33:                          ; CODE XREF: KeInsertDeviceQueue+4A↑j
                mov     [rbx], rax
                mov     dil, 1
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx

loc_14051AB44:                          ; CODE XREF: KeInsertDeviceQueue+3D↑j
                lea     rcx, [rsp+48h+var_28]
                mov     [rbx+14h], dil
                call    KeReleaseInStackQueuedSpinLockForDpc
                mov     rbx, [rsp+48h+arg_0]
                mov     al, dil
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInsertDeviceQueue endp
