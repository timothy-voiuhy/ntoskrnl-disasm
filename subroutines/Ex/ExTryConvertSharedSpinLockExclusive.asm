ExTryConvertSharedSpinLockExclusive proc near
                                        ; CODE XREF: sub_1402364B0+1F6↑p
                                        ; sub_1402364B0+28E↑p ...

arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 000000014049707C SIZE 00000044 BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                mov     rbx, rcx
                jnz     loc_14049707C
                lock bts dword ptr [rcx], 1Fh
                jb      short loc_140381932
                mov     edx, [rcx]
                mov     ecx, edx
                and     [rsp+28h+arg_8], 0
                btr     ecx, 1Eh
                cmp     ecx, 80000001h
                jnz     loc_14049708C

loc_140381926:                          ; CODE XREF: ExTryConvertSharedSpinLockExclusive+1157CB↓j
                mov     eax, 1

loc_14038192B:                          ; CODE XREF: ExTryConvertSharedSpinLockExclusive+44↓j
                                        ; ExTryConvertSharedSpinLockExclusive+115797↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140381932:                          ; CODE XREF: ExTryConvertSharedSpinLockExclusive+1B↑j
                xor     eax, eax
                jmp     short loc_14038192B
ExTryConvertSharedSpinLockExclusive endp
