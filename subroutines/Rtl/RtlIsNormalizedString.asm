RtlIsNormalizedString proc near         ; CODE XREF: sub_14058D594+159↑p
                                        ; sub_14058D594+20D↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                xor     r14d, r14d
                mov     rbp, r9
                mov     [rax+10h], r14
                mov     edi, r8d
                mov     rsi, rdx
                test    rdx, rdx
                jz      short loc_14091A63D
                test    r9, r9
                jz      short loc_14091A63D
                or      rbx, 0FFFFFFFFFFFFFFFFh
                cmp     r8d, ebx
                jl      short loc_14091A63D
                test    ecx, ecx
                jz      short loc_14091A63D
                lea     rdx, [rax+10h]
                call    sub_14091CEF0
                test    eax, eax
                js      short loc_14091A642
                cmp     edi, ebx
                jnz     short loc_14091A628

loc_14091A61B:                          ; CODE XREF: RtlIsNormalizedString+53↓j
                inc     rbx
                cmp     [rsi+rbx*2], r14w
                jnz     short loc_14091A61B
                lea     edi, [rbx+1]

loc_14091A628:                          ; CODE XREF: RtlIsNormalizedString+49↑j
                mov     rcx, [rsp+38h+arg_8]
                mov     r9, rbp
                mov     r8d, edi
                mov     rdx, rsi
                call    sub_1409194F4
                jmp     short loc_14091A642
; ---------------------------------------------------------------------------

loc_14091A63D:                          ; CODE XREF: RtlIsNormalizedString+26↑j
                                        ; RtlIsNormalizedString+2B↑j ...
                mov     eax, 0C000000Dh

loc_14091A642:                          ; CODE XREF: RtlIsNormalizedString+45↑j
                                        ; RtlIsNormalizedString+6B↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIsNormalizedString endp
