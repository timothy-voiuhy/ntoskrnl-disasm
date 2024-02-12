ExReleaseSpinLockExclusive proc near    ; CODE XREF: sub_14026DEF0+295↑p
                                        ; PoFxReportDevicePoweredOn+F8↓p ...

; FUNCTION CHUNK AT 000000014041E006 SIZE 0000009A BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                movzx   ebx, dl
                jnz     loc_14041E006
                mov     dword ptr [rcx], 0

loc_14032D8CC:                          ; CODE XREF: ExReleaseSpinLockExclusive+F0761↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041E016

loc_14032D8E5:                          ; CODE XREF: ExReleaseSpinLockExclusive+F076A↓j
                                        ; ExReleaseSpinLockExclusive+F0779↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041E03A

loc_14032D8F3:                          ; CODE XREF: ExReleaseSpinLockExclusive+F078C↓j
                                        ; ExReleaseSpinLockExclusive+F0798↓j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseSpinLockExclusive endp
