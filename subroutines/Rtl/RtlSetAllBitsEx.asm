RtlSetAllBitsEx proc near               ; CODE XREF: sub_14089833C+13F↓p
                                        ; sub_140A70C20+4B↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404B351A SIZE 00000021 BYTES

                mov     [rsp+arg_0], rdi
                mov     rdi, [rcx]
                xor     edx, edx
                mov     r8, [rcx+8]
                mov     rax, rdi
                and     eax, 1Fh
                shr     rdi, 5
                test    rax, rax
                setnz   dl
                add     rdx, rdi
                jz      short loc_1403CB286
                or      r9d, 0FFFFFFFFh
                test    r8b, 4
                jnz     loc_1404B351A

loc_1403CB271:                          ; CODE XREF: RtlSetAllBitsEx+E82F6↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     rcx, rdx
                shr     rcx, 1
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jnz     short loc_1403CB28D

loc_1403CB286:                          ; CODE XREF: RtlSetAllBitsEx+21↑j
                                        ; RtlSetAllBitsEx+52↓j ...
                mov     rdi, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CB28D:                          ; CODE XREF: RtlSetAllBitsEx+44↑j
                mov     [r8+rdx*4-4], r9d
                jmp     short loc_1403CB286
RtlSetAllBitsEx endp
