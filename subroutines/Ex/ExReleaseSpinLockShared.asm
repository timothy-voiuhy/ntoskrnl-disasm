ExReleaseSpinLockShared proc near       ; DATA XREF: .rdata:000000014007AAEC↑o
                                        ; .pdata:00000001400D5AC8↑o

; FUNCTION CHUNK AT 000000014041DF2C SIZE 0000009A BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                movzx   ebx, dl
                jnz     loc_14041DF2C
                lock and dword ptr [rcx], 0BFFFFFFFh
                lock dec dword ptr [rcx]

loc_1403258E0:                          ; CODE XREF: ExReleaseSpinLockShared+F8677↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041DF3C

loc_1403258F9:                          ; CODE XREF: ExReleaseSpinLockShared+F8680↓j
                                        ; ExReleaseSpinLockShared+F868F↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041DF60

loc_140325907:                          ; CODE XREF: ExReleaseSpinLockShared+F86A2↓j
                                        ; ExReleaseSpinLockShared+F86AE↓j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseSpinLockShared endp
