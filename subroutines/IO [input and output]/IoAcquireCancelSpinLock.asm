IoAcquireCancelSpinLock proc near       ; CODE XREF: sub_14024DBF0+198↑p
                                        ; sub_14024DBF0+223↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140474FDC SIZE 0000007A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474FDC

loc_14032AE33:                          ; CODE XREF: IoAcquireCancelSpinLock+14A1DE↓j
                                        ; IoAcquireCancelSpinLock+14A1E8↓j ...
                mov     rbx, gs:28h
                mov     rdi, [rbx+78h]
                add     rbx, 70h ; 'p'
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140475021

loc_14032AE5D:                          ; CODE XREF: IoAcquireCancelSpinLock+14A225↓j
                                        ; IoAcquireCancelSpinLock+14A234↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140475045
                mov     rdx, rbx
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_14032AE8F

loc_14032AE75:                          ; CODE XREF: IoAcquireCancelSpinLock+97↓j
                                        ; IoAcquireCancelSpinLock+14A251↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rdi, [rsp+28h+arg_10]
                mov     [r14], sil
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032AE8F:                          ; CODE XREF: IoAcquireCancelSpinLock+73↑j
                mov     rcx, rbx
                call    sub_14025FC20
                jmp     short loc_14032AE75
IoAcquireCancelSpinLock endp
