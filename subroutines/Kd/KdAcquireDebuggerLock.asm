KdAcquireDebuggerLock proc near         ; DATA XREF: .pdata:00000001400F3120↑o
                sub     rsp, 28h
                mov     r11, rcx
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140510CC8
                test    al, 1
                jz      short loc_140510CC8
                cmp     r10b, 0Fh
                ja      short loc_140510CC8
                mov     rax, gs:20h
                mov     edx, 1
                movzx   ecx, r10b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                dec     edx
                not     edx
                and     edx, 4
                mov     r8d, [r9+14h]
                or      edx, r8d
                mov     [r9+14h], edx

loc_140510CC8:                          ; CODE XREF: KdAcquireDebuggerLock+1C↑j
                                        ; KdAcquireDebuggerLock+20↑j ...
                lea     rcx, unk_140D23280
                mov     [r11], r10b
                call    KeAcquireSpinLockAtDpcLevel
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdAcquireDebuggerLock endp
