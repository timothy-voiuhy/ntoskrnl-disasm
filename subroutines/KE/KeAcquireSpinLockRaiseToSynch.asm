KeAcquireSpinLockRaiseToSynch proc near ; DATA XREF: .pdata:00000001400F3768↑o
                push    rbx
                sub     rsp, 20h
                mov     r10, rcx
                mov     rbx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405169D2
                mov     r11d, 1
                test    r11b, al
                jz      short loc_1405169D2
                cmp     bl, 0Fh
                ja      short loc_1405169D2
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

loc_1405169D2:                          ; CODE XREF: KeAcquireSpinLockRaiseToSynch+1E↑j
                                        ; KeAcquireSpinLockRaiseToSynch+29↑j ...
                mov     rcx, r10
                call    KeAcquireSpinLockAtDpcLevel
                mov     al, bl
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireSpinLockRaiseToSynch endp
