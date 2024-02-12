KdReleaseDebuggerLock proc near         ; DATA XREF: .pdata:00000001400F3174↑o
                push    rbx
                sub     rsp, 20h
                movzx   ebx, cl
                lea     rcx, unk_140D23280
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140511388
                test    al, 1
                jz      short loc_140511388
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140511388
                cmp     bl, 0Fh
                ja      short loc_140511388
                cmp     al, 2
                jb      short loc_140511388
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
                jnz     short loc_140511388
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140511388:                          ; CODE XREF: KdReleaseDebuggerLock+1D↑j
                                        ; KdReleaseDebuggerLock+21↑j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdReleaseDebuggerLock endp
