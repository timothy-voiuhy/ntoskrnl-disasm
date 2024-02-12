KeReleaseInStackQueuedSpinLockForDpc proc near
                                        ; CODE XREF: KeInsertByKeyDeviceQueue+8E↓p
                                        ; KeInsertDeviceQueue+6D↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rax, gs:20h
                mov     rbx, rcx
                mov     edx, [rax+312Ch]
                bt      edx, 10h
                jnb     short loc_1405168C0
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbx+10h]
                test    eax, eax
                jz      short loc_1405168BA
                test    al, 1
                jz      short loc_1405168BA
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405168BA
                cmp     bl, 0Fh
                ja      short loc_1405168BA
                cmp     al, 2
                jb      short loc_1405168BA
                mov     r10, gs:20h
                lea     ecx, [rbx+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405168BA
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405168BA:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockForDpc+2F↑j
                                        ; KeReleaseInStackQueuedSpinLockForDpc+33↑j ...
                mov     cr8, rbx
                jmp     short loc_1405168C5
; ---------------------------------------------------------------------------

loc_1405168C0:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockForDpc+1C↑j
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_1405168C5:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockForDpc+7E↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseInStackQueuedSpinLockForDpc endp
