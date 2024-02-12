KeReleaseQueuedSpinLock proc near       ; CODE XREF: sub_14021A330+6DA↑p
                                        ; sub_14021A330+90E↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014043B254 SIZE 0000009E BYTES

                push    rdi
                sub     rsp, 20h

loc_140262D36:                          ; DATA XREF: .rdata:000000014005B0D4↑o
                                        ; .rdata:000000014005B0E8↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     rbx, gs:28h
                shl     rcx, 4
                add     rbx, rcx
                movzx   edi, dl
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14043B254

loc_140262D5B:                          ; DATA XREF: .rdata:000000014005B0E8↑o
                                        ; .rdata:000000014005B0F8↑o ...
                mov     [rsp+28h+arg_8], rsi
                prefetchw byte ptr [rbx]
                mov     rax, [rbx]
                xor     esi, esi
                test    rax, rax
                jnz     short loc_140262DBF
                mov     rcx, [rbx+8]
                mov     rax, rbx
                lock cmpxchg [rcx], rsi
                jnz     short loc_140262DB7

loc_140262D7B:                          ; CODE XREF: KeReleaseQueuedSpinLock+98↓j
                mov     rsi, [rsp+28h+arg_8]

loc_140262D80:                          ; CODE XREF: KeReleaseQueuedSpinLock+1D8532↓j
                                        ; DATA XREF: .pdata:00000001400CD890↑o ...
                mov     rcx, gs:20h
                mov     rbx, [rsp+28h+arg_0]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14043B267

loc_140262D9E:                          ; CODE XREF: KeReleaseQueuedSpinLock+1D853B↓j
                                        ; KeReleaseQueuedSpinLock+1D854A↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14043B28B

loc_140262DAC:                          ; CODE XREF: KeReleaseQueuedSpinLock+1D855D↓j
                                        ; KeReleaseQueuedSpinLock+1D8569↓j ...
                mov     cr8, rdi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140262DB7:                          ; CODE XREF: KeReleaseQueuedSpinLock+49↑j
                                        ; DATA XREF: .pdata:00000001400CD8A8↑o ...
                mov     rcx, rbx
                call    sub_140313680

loc_140262DBF:                          ; CODE XREF: KeReleaseQueuedSpinLock+3B↑j
                mov     [rbx], rsi
                lock xor qword ptr [rax+8], 1
                jmp     short loc_140262D7B
KeReleaseQueuedSpinLock endp
