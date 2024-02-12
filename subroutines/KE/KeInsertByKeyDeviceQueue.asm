KeInsertByKeyDeviceQueue proc near      ; CODE XREF: IoStartPacket+A5↑p
                                        ; DATA XREF: .pdata:00000001400F3AA4↑o

var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     [rdx+10h], r8d
                mov     rbx, rdx
                mov     rbp, rcx
                xor     eax, eax
                lea     rdx, [r11-28h]
                movups  [rsp+48h+var_28], xmm0
                add     rcx, 18h
                mov     [r11-18h], rax
                mov     esi, r8d
                xor     dil, dil
                call    KeAcquireInStackQueuedSpinLockForDpc
                mov     al, [rbp+20h]
                mov     byte ptr [rbp+20h], 1
                cmp     al, 1
                jnz     short loc_14051AAA5
                lea     rcx, [rbp+8]
                cmp     [rcx], rcx
                jz      short loc_14051AA84
                mov     rax, [rcx+8]
                cmp     esi, [rax+10h]
                jnb     short loc_14051AA84

loc_14051AA7C:                          ; CODE XREF: KeInsertByKeyDeviceQueue+62↓j
                mov     rcx, [rcx]
                cmp     esi, [rcx+10h]
                jnb     short loc_14051AA7C

loc_14051AA84:                          ; CODE XREF: KeInsertByKeyDeviceQueue+51↑j
                                        ; KeInsertByKeyDeviceQueue+5A↑j
                mov     rax, [rcx+8]
                cmp     [rax], rcx
                jz      short loc_14051AA94
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14051AA94:                          ; CODE XREF: KeInsertByKeyDeviceQueue+6B↑j
                mov     [rbx], rcx
                mov     dil, 1
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     [rcx+8], rbx

loc_14051AAA5:                          ; CODE XREF: KeInsertByKeyDeviceQueue+48↑j
                lea     rcx, [rsp+48h+var_28]
                mov     [rbx+14h], dil
                call    KeReleaseInStackQueuedSpinLockForDpc
                mov     rbx, [rsp+48h+arg_0]
                mov     al, dil
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInsertByKeyDeviceQueue endp
