KeRemoveByKeyDeviceQueue proc near      ; CODE XREF: sub_140506D54+47↑p
                                        ; DATA XREF: .pdata:00000001400F3ABC↑o

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
                lea     r8, [rdi+8]
                mov     rcx, [r8]
                cmp     rcx, r8
                jnz     short loc_14051ABB3
                mov     [rdi+20h], bl
                jmp     short loc_14051AC1E
; ---------------------------------------------------------------------------

loc_14051ABB3:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+3C↑j
                mov     rax, [rdi+10h]
                cmp     [rax+10h], esi
                jnb     short loc_14051ABC1
                mov     rbx, rcx
                jmp     short loc_14051ABE3
; ---------------------------------------------------------------------------

loc_14051ABC1:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+4A↑j
                mov     rax, [rdi+20h]
                sar     rax, 8
                test    rax, rax
                jz      short loc_14051ABD3
                cmp     esi, [rax+10h]
                ja      short loc_14051ABDE

loc_14051ABD3:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+5C↑j
                mov     rax, rcx
                jmp     short loc_14051ABDB
; ---------------------------------------------------------------------------

loc_14051ABD8:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+71↓j
                mov     rax, [rax]

loc_14051ABDB:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+66↑j
                cmp     esi, [rax+10h]

loc_14051ABDE:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+61↑j
                mov     rbx, rax
                ja      short loc_14051ABD8

loc_14051ABE3:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+4F↑j
                mov     rax, [rbx+8]
                xor     edx, edx
                cmp     rax, r8
                cmovnz  rdx, rax
                mov     eax, [rdi+20h]
                movzx   ecx, al
                shl     rdx, 8
                or      rdx, rcx
                mov     [rdi+20h], rdx
                mov     rcx, [rbx]
                cmp     [rcx+8], rbx
                jnz     short loc_14051AC3C
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_14051AC3C
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     byte ptr [rbx+14h], 0

loc_14051AC1E:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+41↑j
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

loc_14051AC3C:                          ; CODE XREF: KeRemoveByKeyDeviceQueue+98↑j
                                        ; KeRemoveByKeyDeviceQueue+A1↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeRemoveByKeyDeviceQueue endp
