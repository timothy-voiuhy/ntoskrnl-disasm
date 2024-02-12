KeTryToAcquireQueuedSpinLockRaiseToSynch proc near
                                        ; CODE XREF: sub_1409DD7F0+50↓p
                                        ; DATA XREF: .pdata:00000001400F36FC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     r10, rcx
                mov     rbx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140516495
                test    al, 1
                jz      short loc_140516495
                cmp     bl, 0Fh
                ja      short loc_140516495
                mov     rax, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140516495:                          ; CODE XREF: KeTryToAcquireQueuedSpinLockRaiseToSynch+2E↑j
                                        ; KeTryToAcquireQueuedSpinLockRaiseToSynch+32↑j ...
                mov     rcx, gs:28h
                shl     r10, 4
                add     rcx, r10
                mov     rdx, [rcx+8]
                call    sub_1402E44F4
                test    eax, eax
                jnz     short loc_14051650D
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140516502
                test    al, 1
                jz      short loc_140516502
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140516502
                cmp     bl, 0Fh
                ja      short loc_140516502
                cmp     al, 2
                jb      short loc_140516502
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rdi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, di
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140516502
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140516502:                          ; CODE XREF: KeTryToAcquireQueuedSpinLockRaiseToSynch+8A↑j
                                        ; KeTryToAcquireQueuedSpinLockRaiseToSynch+8E↑j ...
                movzx   eax, bl
                mov     cr8, rax
                xor     eax, eax
                jmp     short loc_140516514
; ---------------------------------------------------------------------------

loc_14051650D:                          ; CODE XREF: KeTryToAcquireQueuedSpinLockRaiseToSynch+80↑j
                mov     [rsi], bl
                mov     eax, 1

loc_140516514:                          ; CODE XREF: KeTryToAcquireQueuedSpinLockRaiseToSynch+DB↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeTryToAcquireQueuedSpinLockRaiseToSynch endp
