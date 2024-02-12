KeTryToAcquireQueuedSpinLock proc near  ; DATA XREF: .pdata:00000001400F36F0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r15
                sub     rsp, 20h
                mov     rsi, rdx
                mov     r10, rcx
                mov     rbx, cr8
                mov     r15d, 2
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140516389
                test    al, 1
                jz      short loc_140516389
                cmp     bl, 0Fh
                ja      short loc_140516389
                mov     rax, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140516389:                          ; CODE XREF: KeTryToAcquireQueuedSpinLock+35↑j
                                        ; KeTryToAcquireQueuedSpinLock+39↑j ...
                mov     rcx, gs:28h
                shl     r10, 4
                add     rcx, r10
                mov     rdx, [rcx+8]
                call    sub_1402E44F4
                test    eax, eax
                jnz     short loc_140516402
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405163F7
                test    al, 1
                jz      short loc_1405163F7
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405163F7
                cmp     bl, 0Fh
                ja      short loc_1405163F7
                cmp     al, r15b
                jb      short loc_1405163F7
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
                jnz     short loc_1405163F7
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405163F7:                          ; CODE XREF: KeTryToAcquireQueuedSpinLock+8E↑j
                                        ; KeTryToAcquireQueuedSpinLock+92↑j ...
                movzx   eax, bl
                mov     cr8, rax
                xor     eax, eax
                jmp     short loc_140516409
; ---------------------------------------------------------------------------

loc_140516402:                          ; CODE XREF: KeTryToAcquireQueuedSpinLock+84↑j
                mov     [rsi], bl
                mov     eax, 1

loc_140516409:                          ; CODE XREF: KeTryToAcquireQueuedSpinLock+E0↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeTryToAcquireQueuedSpinLock endp
