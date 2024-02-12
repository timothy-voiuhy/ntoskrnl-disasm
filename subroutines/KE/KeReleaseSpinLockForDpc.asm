KeReleaseSpinLockForDpc proc near       ; DATA XREF: .pdata:00000001400F375C↑o
                push    rbx
                sub     rsp, 20h
                mov     rax, gs:20h
                movzx   ebx, dl
                mov     r8d, [rax+312Ch]
                bt      r8d, 10h
                jnb     short loc_14051695E
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140516958
                test    al, 1
                jz      short loc_140516958
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140516958
                cmp     bl, 0Fh
                ja      short loc_140516958
                cmp     al, 2
                jb      short loc_140516958
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
                jnz     short loc_140516958
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140516958:                          ; CODE XREF: KeReleaseSpinLockForDpc+2D↑j
                                        ; KeReleaseSpinLockForDpc+31↑j ...
                mov     cr8, rbx
                jmp     short loc_140516963
; ---------------------------------------------------------------------------

loc_14051695E:                          ; CODE XREF: KeReleaseSpinLockForDpc+1E↑j
                call    KeReleaseSpinLockFromDpcLevel

loc_140516963:                          ; CODE XREF: KeReleaseSpinLockForDpc+7C↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseSpinLockForDpc endp
