KeDeregisterBugCheckCallback proc near  ; DATA XREF: .pdata:00000001400F37A4↑o

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
                mov     rbx, rcx
                mov     rdi, cr8
                mov     r14d, 0Fh
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140517AAE
                test    al, 1
                jz      short loc_140517AAE
                cmp     dil, r14b
                ja      short loc_140517AAE
                mov     rax, gs:20h
                mov     rdx, rbp
                movzx   ecx, dil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140517AAE:                          ; CODE XREF: KeDeregisterBugCheckCallback+36↑j
                                        ; KeDeregisterBugCheckCallback+3A↑j ...
                lea     rcx, qword_140C31E20
                call    KeAcquireSpinLockAtDpcLevel
                xor     sil, sil
                cmp     byte ptr [rbx+38h], 1
                jnz     short loc_140517AEB
                mov     [rbx+38h], sil
                mov     rcx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     loc_140517B71
                cmp     [rax], rbx
                jnz     loc_140517B71
                mov     [rax], rcx
                mov     sil, 1
                mov     [rcx+8], rax

loc_140517AEB:                          ; CODE XREF: KeDeregisterBugCheckCallback+81↑j
                lea     rcx, qword_140C31E20
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140517B4A
                test    al, 1
                jz      short loc_140517B4A
                mov     rax, cr8
                cmp     al, r14b
                ja      short loc_140517B4A
                cmp     dil, r14b
                ja      short loc_140517B4A
                cmp     al, 2
                jb      short loc_140517B4A
                mov     rax, gs:20h
                movzx   ecx, dil
                inc     ecx
                shl     rbp, cl
                mov     r9, [rax+84B8h]
                movzx   edx, bp
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_140517B4A
                mov     rcx, rax
                call    sub_1403F2EC4

loc_140517B4A:                          ; CODE XREF: KeDeregisterBugCheckCallback+BF↑j
                                        ; KeDeregisterBugCheckCallback+C3↑j ...
                movzx   ecx, dil
                mov     cr8, rcx
                mov     rbx, [rsp+28h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+28h+arg_10]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140517B71:                          ; CODE XREF: KeDeregisterBugCheckCallback+92↑j
                                        ; KeDeregisterBugCheckCallback+9B↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeDeregisterBugCheckCallback endp
