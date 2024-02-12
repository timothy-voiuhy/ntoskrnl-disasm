IoFreeSfioStreamIdentifier proc near    ; DATA XREF: .pdata:00000001400F2754↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                xor     r8d, r8d
                mov     r14, rdx
                mov     r9, rcx
                lea     edx, [r8+4]
                call    sub_14021B460
                mov     rbx, rax
                mov     esi, 0C0000225h
                test    rax, rax
                jz      loc_140505C7B
                lea     rbp, [r9+0B8h]
                mov     rcx, rbp
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, [rbx]
                movzx   edi, al
                cmp     rcx, rbx
                jz      short loc_140505C1B

loc_140505C06:                          ; CODE XREF: IoFreeSfioStreamIdentifier+69↓j
                mov     rdx, [rcx]
                cmp     [rcx+18h], r14
                jz      loc_140505C99
                mov     rcx, rdx
                cmp     rdx, rbx
                jnz     short loc_140505C06

loc_140505C1B:                          ; CODE XREF: IoFreeSfioStreamIdentifier+54↑j
                                        ; IoFreeSfioStreamIdentifier+108↓j
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140505C77
                test    al, 1
                jz      short loc_140505C77
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140505C77
                cmp     dil, 0Fh
                ja      short loc_140505C77
                cmp     al, 2
                jb      short loc_140505C77
                mov     r10, gs:20h
                lea     ecx, [rdi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   edx, dx
                mov     r9, [r10+84B8h]
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_140505C77
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140505C77:                          ; CODE XREF: IoFreeSfioStreamIdentifier+7B↑j
                                        ; IoFreeSfioStreamIdentifier+7F↑j ...
                mov     cr8, rdi

loc_140505C7B:                          ; CODE XREF: IoFreeSfioStreamIdentifier+36↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140505C99:                          ; CODE XREF: IoFreeSfioStreamIdentifier+5D↑j
                mov     rax, [rcx+8]
                cmp     [rdx+8], rcx
                jnz     short loc_140505CBD
                cmp     [rax], rcx
                jnz     short loc_140505CBD
                mov     [rax], rdx
                mov     [rdx+8], rax
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     esi, esi
                jmp     loc_140505C1B
; ---------------------------------------------------------------------------

loc_140505CBD:                          ; CODE XREF: IoFreeSfioStreamIdentifier+F1↑j
                                        ; IoFreeSfioStreamIdentifier+F6↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
IoFreeSfioStreamIdentifier endp
