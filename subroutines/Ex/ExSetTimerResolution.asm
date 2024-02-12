ExSetTimerResolution proc near          ; DATA XREF: .pdata:00000001400F9D44↑o

arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     al, dl
                mov     edi, ecx
                neg     al
                mov     r14b, dl
                mov     edx, 52545345h
                sbb     ecx, ecx
                xor     r8d, r8d
                and     ecx, edi
                call    sub_14034E1AC
                lea     rcx, unk_140C19548
                call    KeAcquireSpinLockRaiseToDpc
                mov     ebp, cs:dword_140CFC468
                xor     ebx, ebx
                mov     [rsp+38h+arg_8], al
                mov     sil, al
                test    r14b, r14b
                jnz     short loc_1405B26D2
                mov     ecx, cs:dword_140C19544
                test    ecx, ecx
                jz      short loc_1405B26ED
                add     ecx, 0FFFFFFFFh
                mov     cs:dword_140C19544, ecx
                jnz     short loc_1405B26ED
                mov     eax, cs:dword_140CFC418
                mov     cs:dword_140CFC56C, eax
                jmp     loc_1405B2764
; ---------------------------------------------------------------------------

loc_1405B26D2:                          ; CODE XREF: ExSetTimerResolution+4A↑j
                mov     eax, cs:dword_140C19544
                inc     eax
                mov     cs:dword_140C19544, eax
                cmp     eax, 1
                jz      short loc_1405B275C
                cmp     edi, cs:dword_140C19540
                jb      short loc_1405B275C

loc_1405B26ED:                          ; CODE XREF: ExSetTimerResolution+54↑j
                                        ; ExSetTimerResolution+5F↑j
                lea     rcx, unk_140C19548
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B2752
                test    al, 1
                jz      short loc_1405B2752
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B2752
                cmp     sil, 0Fh
                ja      short loc_1405B2752
                cmp     al, 2
                jb      short loc_1405B2752
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   esi, [rsp+38h+arg_8]
                lea     ecx, [rsi+1]
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B2752
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B2752:                          ; CODE XREF: ExSetTimerResolution+A1↑j
                                        ; ExSetTimerResolution+A5↑j ...
                movzx   eax, sil
                mov     cr8, rax
                jmp     short loc_1405B277B
; ---------------------------------------------------------------------------

loc_1405B275C:                          ; CODE XREF: ExSetTimerResolution+83↑j
                                        ; ExSetTimerResolution+8B↑j
                mov     cs:dword_140CFC56C, edi
                mov     ebx, edi

loc_1405B2764:                          ; CODE XREF: ExSetTimerResolution+6D↑j
                lea     r8, [rsp+38h+arg_8]
                mov     cs:dword_140C19540, ebx
                mov     edx, ebx
                mov     cl, r14b
                call    sub_140356048
                mov     ebp, eax

loc_1405B277B:                          ; CODE XREF: ExSetTimerResolution+FA↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, ebp
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSetTimerResolution endp
