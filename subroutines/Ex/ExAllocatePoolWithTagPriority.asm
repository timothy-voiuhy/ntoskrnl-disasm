ExAllocatePoolWithTagPriority proc near ; CODE XREF: sub_14036D5A0+B14CA↓p
                                        ; sub_1402159F0+21039F↓p ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042D34A SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     ebx, r9d
                mov     ebp, r8d
                mov     rsi, rdx
                mov     edi, ecx
                cmp     r9d, 20h ; ' '
                jz      short loc_1402368FB
                test    dil, 2
                jnz     short loc_1402368FB
                mov     r8d, ebx
                call    sub_140238E40
                test    eax, eax
                jz      loc_14042D34A

loc_1402368FB:                          ; CODE XREF: ExAllocatePoolWithTagPriority+23↑j
                                        ; ExAllocatePoolWithTagPriority+29↑j ...
                xor     edx, edx
                test    bl, 8
                jnz     short loc_140236946

loc_140236902:                          ; CODE XREF: ExAllocatePoolWithTagPriority+8B↓j
                mov     rax, gs:20h
                mov     r8d, ebp
                mov     [rsp+38h+var_18], edx
                mov     rdx, rsi
                mov     rcx, [rax+0C0h]
                movzx   r9d, word ptr [rcx+92h]
                mov     ecx, edi
                bts     r9d, 1Fh
                call    sub_140236960

loc_140236930:                          ; CODE XREF: ExAllocatePoolWithTagPriority+1F6A99↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140236946:                          ; CODE XREF: ExAllocatePoolWithTagPriority+40↑j
                mov     edx, 1
                jmp     short loc_140236902
ExAllocatePoolWithTagPriority endp
