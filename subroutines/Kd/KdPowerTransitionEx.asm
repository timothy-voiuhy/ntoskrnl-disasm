KdPowerTransitionEx proc near           ; CODE XREF: sub_140254310+C98↑p
                                        ; sub_140255E30+1E1453↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     r14b, dl
                cmp     cs:byte_140C0F430, r15b
                mov     ebx, ecx
                mov     edi, r15d
                jnz     loc_1405112F0
                mov     eax, ecx
                and     eax, 40000000h
                xor     ebx, eax
                cmp     cs:KdDebuggerEnabled, r15b
                jnz     short loc_14051116F
                test    eax, eax
                jz      loc_1405112F0

loc_14051116F:                          ; CODE XREF: KdPowerTransitionEx+45↑j
                mov     edi, ebx
                mov     sil, 0FFh
                and     edi, 80000000h
                mov     r13d, 2
                xor     ebx, edi
                cmp     cs:dword_140C12530, 480h
                cmovnz  edi, r15d
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    r14b, r14b
                jz      short loc_1405111F5
                call    KeGetEffectiveIrql
                cmp     al, r13b
                jnb     short loc_1405111E9
                mov     rsi, cr8
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405111E9
                test    al, 1
                jz      short loc_1405111E9
                cmp     sil, 0Fh
                ja      short loc_1405111E9
                mov     rax, gs:20h
                mov     rdx, rbp
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405111E9:                          ; CODE XREF: KdPowerTransitionEx+81↑j
                                        ; KdPowerTransitionEx+93↑j ...
                lea     rcx, unk_140D23280
                call    KeAcquireSpinLockAtDpcLevel

loc_1405111F5:                          ; CODE XREF: KdPowerTransitionEx+77↑j
                cmp     ebx, 1
                jz      short loc_140511225
                lea     eax, [rbx-2]
                cmp     eax, r13d
                ja      short loc_14051121E
                or      edi, 4
                lea     rdx, xmmword_140C320A0
                mov     ecx, edi
                call    cs:KdPower
                nop     dword ptr [rax+rax+00h]
                mov     edi, eax
                jmp     short loc_14051127E
; ---------------------------------------------------------------------------

loc_14051121E:                          ; CODE XREF: KdPowerTransitionEx+E0↑j
                mov     edi, 0C000000Dh
                jmp     short loc_14051127E
; ---------------------------------------------------------------------------

loc_140511225:                          ; CODE XREF: KdPowerTransitionEx+D8↑j
                mov     rcx, gs:20h
                call    sub_1405658E0
                call    KeGetEffectiveIrql
                mov     bl, al
                cmp     al, r13b
                jb      short loc_14051124F
                mov     rax, cs:off_140C00738
                xor     edx, edx
                mov     cl, 1
                call    sub_1404079D0

loc_14051124F:                          ; CODE XREF: KdPowerTransitionEx+11D↑j
                or      edi, 1
                lea     rdx, xmmword_140C320A0
                mov     ecx, edi
                call    cs:KdPower
                nop     dword ptr [rax+rax+00h]
                mov     edi, eax
                cmp     bl, r13b
                jb      short loc_14051127E
                mov     rax, cs:off_140C00738
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1404079D0

loc_14051127E:                          ; CODE XREF: KdPowerTransitionEx+FC↑j
                                        ; KdPowerTransitionEx+103↑j ...
                test    r14b, r14b
                jz      short loc_1405112F0
                lea     rcx, unk_140D23280
                call    KeReleaseSpinLockFromDpcLevel
                cmp     sil, 0FFh
                jz      short loc_1405112F0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405112E8
                test    al, 1
                jz      short loc_1405112E8
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405112E8
                cmp     sil, 0Fh
                ja      short loc_1405112E8
                cmp     al, r13b
                jb      short loc_1405112E8
                mov     r9, gs:20h
                movzx   ecx, sil
                inc     ecx
                shl     rbp, cl
                mov     r8, [r9+84B8h]
                movzx   eax, bp
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405112E8
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405112E8:                          ; CODE XREF: KdPowerTransitionEx+17D↑j
                                        ; KdPowerTransitionEx+181↑j ...
                movzx   eax, sil
                mov     cr8, rax

loc_1405112F0:                          ; CODE XREF: KdPowerTransitionEx+2F↑j
                                        ; KdPowerTransitionEx+49↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdPowerTransitionEx endp
