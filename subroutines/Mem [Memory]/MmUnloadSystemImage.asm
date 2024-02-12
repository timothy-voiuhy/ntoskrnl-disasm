MmUnloadSystemImage proc near           ; CODE XREF: sub_140687200:loc_1406874FE↑p
                                        ; sub_140687200+72D↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140848ECC SIZE 00000026 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, rcx
                xor     edi, edi
                xor     sil, sil
                call    sub_1402B95B0
                cmp     [rax+498h], sil
                jnz     loc_140848ECC

loc_140770DEE:                          ; CODE XREF: MmUnloadSystemImage+D811F↓j
                call    sub_1406F51C0
                or      edx, 0FFFFFFFFh
                mov     rcx, rbp
                mov     rbx, rax
                call    sub_1406F5218
                mov     rcx, rbx
                call    sub_1406F5160
                test    sil, sil
                jnz     loc_140848EE4

loc_140770E12:                          ; CODE XREF: MmUnloadSystemImage+D812D↓j
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmUnloadSystemImage endp
