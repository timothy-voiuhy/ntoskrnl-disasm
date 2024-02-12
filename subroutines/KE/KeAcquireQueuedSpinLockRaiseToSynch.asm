KeAcquireQueuedSpinLockRaiseToSynch proc near
                                        ; CODE XREF: sub_1409DC930+45↓p
                                        ; DATA XREF: .pdata:00000001400F36E4↑o
                push    rbx
                sub     rsp, 20h
                mov     r10, rcx
                mov     rbx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405162F2
                mov     r11d, 1
                test    r11b, al
                jz      short loc_1405162F2
                cmp     bl, 0Fh
                ja      short loc_1405162F2
                mov     rax, gs:20h
                mov     edx, r11d
                movzx   ecx, bl
                add     ecx, r11d
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                sub     edx, r11d
                not     edx
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      edx, r8d
                mov     [r9+14h], edx

loc_1405162F2:                          ; CODE XREF: KeAcquireQueuedSpinLockRaiseToSynch+1E↑j
                                        ; KeAcquireQueuedSpinLockRaiseToSynch+29↑j ...
                mov     rcx, gs:28h
                shl     r10, 4
                add     rcx, r10
                mov     rdx, [rcx+8]
                call    sub_14024B3F0
                mov     al, bl
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireQueuedSpinLockRaiseToSynch endp
