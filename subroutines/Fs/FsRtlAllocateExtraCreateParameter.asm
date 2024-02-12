FsRtlAllocateExtraCreateParameter proc near
                                        ; CODE XREF: sub_1405ECB84+85↑p
                                        ; FsRtlAllocateExtraCreateParameterFromLookasideList+ED↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014080236A SIZE 00000018 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, [rsp+28h+arg_28]
                lea     ebx, [rdx+48h]
                mov     rbp, r9
                mov     r14, rcx
                and     qword ptr [rsi], 0
                cmp     ebx, 48h ; 'H'
                jb      loc_140802378
                mov     edx, r8d
                and     edx, 2
                mov     eax, edx
                neg     eax
                sbb     edi, edi
                and     edi, 40h
                add     edi, 2
                neg     edx
                mov     edx, ebx
                sbb     ecx, ecx
                and     ecx, 1FFh
                inc     ecx
                test    r8b, 1
                mov     r8d, [rsp+28h+arg_20]
                jnz     loc_14080236A
                call    ExAllocatePoolWithTag

loc_140629C98:                          ; CODE XREF: FsRtlAllocateExtraCreateParameter+1D8743↓j
                test    rax, rax
                jz      short loc_140629CF3
                and     dword ptr [rax+4], 0
                and     qword ptr [rax+10h], 0
                and     qword ptr [rax+8], 0
                mov     dword ptr [rax], 48706345h
                movups  xmm0, xmmword ptr [r14]
                and     qword ptr [rax+38h], 0
                and     qword ptr [rax+40h], 0
                movdqu  xmmword ptr [rax+18h], xmm0
                mov     [rax+28h], rbp
                mov     [rax+30h], edi
                mov     [rax+34h], ebx
                add     rax, 48h ; 'H'
                mov     [rsi], rax
                xor     eax, eax

loc_140629CD7:                          ; CODE XREF: FsRtlAllocateExtraCreateParameter+C8↓j
                                        ; FsRtlAllocateExtraCreateParameter+1D874D↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140629CF3:                          ; CODE XREF: FsRtlAllocateExtraCreateParameter+6B↑j
                mov     eax, 0C000009Ah
                jmp     short loc_140629CD7
FsRtlAllocateExtraCreateParameter endp
