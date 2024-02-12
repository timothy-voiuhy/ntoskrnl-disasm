KeAcquireInStackQueuedSpinLockRaiseToSynch proc near
                                        ; CODE XREF: sub_1409DC878+6B↓p
                                        ; DATA XREF: .pdata:00000001400F36D8↑o
                push    rbx
                sub     rsp, 20h
                and     qword ptr [rdx], 0
                mov     r10, rdx
                mov     rbx, rcx
                mov     [rdx+8], rcx
                mov     r11, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140516268
                test    al, 1
                jz      short loc_140516268
                cmp     r11b, 0Fh
                ja      short loc_140516268
                mov     rax, gs:20h
                mov     edx, 1
                movzx   ecx, r11b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                dec     edx
                not     edx
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      edx, r8d
                mov     [r9+14h], edx

loc_140516268:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockRaiseToSynch+29↑j
                                        ; KeAcquireInStackQueuedSpinLockRaiseToSynch+2D↑j ...
                mov     rdx, rbx
                mov     [r10+10h], r11b
                mov     rcx, r10
                call    sub_14024B3F0
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireInStackQueuedSpinLockRaiseToSynch endp
