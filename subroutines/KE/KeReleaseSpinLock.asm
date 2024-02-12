KeReleaseSpinLock proc near             ; CODE XREF: NtSetInformationFile+8CE↑p
                                        ; NtSetInformationFile+8E6↑p ...

; FUNCTION CHUNK AT 000000014041CD88 SIZE 0000009A BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                movzx   ebx, dl
                jnz     loc_14041CD88
                lock and qword ptr [rcx], 0

loc_14024307B:                          ; CODE XREF: KeReleaseSpinLock+1D9D33↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041CD98

loc_140243094:                          ; CODE XREF: KeReleaseSpinLock+1D9D3C↓j
                                        ; KeReleaseSpinLock+1D9D4B↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041CDBC

loc_1402430A2:                          ; CODE XREF: KeReleaseSpinLock+1D9D5E↓j
                                        ; KeReleaseSpinLock+1D9D6A↓j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseSpinLock endp
