KeReleaseInterruptSpinLock proc near    ; DATA XREF: .rdata:00000001400870F4↑o
                                        ; .pdata:00000001400D8D14↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140488DFE SIZE 0000007E BYTES

                push    rbx
                sub     rsp, 30h
                cmp     byte ptr [rcx+5Dh], 0
                movzx   ebx, dl
                jz      loc_140488DFE
                mov     rcx, [rcx+48h]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140488E19

loc_14035B2CA:                          ; CODE XREF: KeReleaseInterruptSpinLock+12DB7B↓j
                                        ; KeReleaseInterruptSpinLock+12DB87↓j ...
                mov     cr8, rbx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseInterruptSpinLock endp
