KdRegisterPowerHandler proc near        ; DATA XREF: .pdata:00000001400F3114↑o

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
                mov     r14, r8
                mov     rdi, rdx
                mov     rsi, rcx
                mov     edx, 20h ; ' '
                mov     ecx, 200h
                mov     r8d, 6F49644Bh
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140510B49
                mov     eax, 0C000009Ah
                jmp     loc_140510C44
; ---------------------------------------------------------------------------

loc_140510B49:                          ; CODE XREF: KdRegisterPowerHandler+3D↑j
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     rdi, cr8
                mov     ebp, 0Fh
                mov     cr8, rbp
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_140510BA2
                test    al, 1
                jz      short loc_140510BA2
                cmp     dil, bpl
                ja      short loc_140510BA2
                mov     rax, gs:20h
                mov     rdx, rsi
                movzx   ecx, dil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140510BA2:                          ; CODE XREF: KdRegisterPowerHandler+6A↑j
                                        ; KdRegisterPowerHandler+6E↑j ...
                lea     rcx, qword_140CF4390
                call    KeAcquireSpinLockAtDpcLevel
                mov     rax, cs:qword_140C40718
                lea     rcx, qword_140C40710
                cmp     [rax], rcx
                jz      short loc_140510BC8
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140510BC8:                          ; CODE XREF: KdRegisterPowerHandler+BF↑j
                mov     [rbx], rcx
                lea     rcx, qword_140CF4390
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C40718, rbx
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140510C37
                test    al, 1
                jz      short loc_140510C37
                mov     rax, cr8
                cmp     al, bpl
                ja      short loc_140510C37
                cmp     dil, bpl
                ja      short loc_140510C37
                cmp     al, 2
                jb      short loc_140510C37
                mov     r9, gs:20h
                movzx   ecx, dil
                inc     ecx
                shl     rsi, cl
                mov     r8, [r9+84B8h]
                movzx   eax, si
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140510C37
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140510C37:                          ; CODE XREF: KdRegisterPowerHandler+ED↑j
                                        ; KdRegisterPowerHandler+F1↑j ...
                movzx   eax, dil
                mov     cr8, rax
                mov     [r14], rbx
                xor     eax, eax

loc_140510C44:                          ; CODE XREF: KdRegisterPowerHandler+44↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdRegisterPowerHandler endp
