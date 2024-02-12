KeRemoveEntryDeviceQueue proc near      ; DATA XREF: .pdata:00000001400F3AE0↑o

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     rdi, rcx
                lea     rdx, [r11-28h]
                xor     eax, eax
                add     rcx, 18h
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     sil, [rbx+14h]
                cmp     sil, 1
                jnz     short loc_14051AE47
                mov     byte ptr [rbx+14h], 0
                mov     rcx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     loc_14051AEC5
                cmp     [rax], rbx
                jnz     loc_14051AEC5
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     rcx, [rdi+20h]
                mov     rax, rcx
                sar     rax, 8
                cmp     rbx, rax
                jnz     short loc_14051AE47
                movzx   eax, cl
                mov     [rdi+20h], rax

loc_14051AE47:                          ; CODE XREF: KeRemoveEntryDeviceQueue+39↑j
                                        ; KeRemoveEntryDeviceQueue+6E↑j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+48h+var_18]
                test    eax, eax
                jz      short loc_14051AEAD
                test    al, 1
                jz      short loc_14051AEAD
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14051AEAD
                cmp     bl, 0Fh
                ja      short loc_14051AEAD
                cmp     al, 2
                jb      short loc_14051AEAD
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+48h+var_18]
                inc     ecx
                shl     rdx, cl
                movzx   edx, dx
                not     edx
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_14051AEAD
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14051AEAD:                          ; CODE XREF: KeRemoveEntryDeviceQueue+8E↑j
                                        ; KeRemoveEntryDeviceQueue+92↑j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14051AEC5:                          ; CODE XREF: KeRemoveEntryDeviceQueue+4A↑j
                                        ; KeRemoveEntryDeviceQueue+53↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeRemoveEntryDeviceQueue endp
