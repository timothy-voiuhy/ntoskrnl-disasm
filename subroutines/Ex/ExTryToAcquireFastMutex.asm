ExTryToAcquireFastMutex proc near       ; CODE XREF: FsRtlTryToAcquireHeaderMutex+11↑p
                                        ; KeTryToAcquireGuardedMutex+4↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140471184 SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebp, 1
                xor     edx, edx
                mov     r8d, ebp
                mov     rdi, rcx
                call    sub_140244C10
                mov     rbx, rax
                mov     rsi, cr8
                mov     cr8, rbp
                lock btr dword ptr [rdi], 0
                jnb     short loc_14031D17E
                test    rax, rax
                jz      short loc_14031D151
                or      [rax+1Ah], bpl

loc_14031D151:                          ; CODE XREF: ExTryToAcquireFastMutex+3B↑j
                mov     rcx, gs:188h
                mov     al, bpl
                mov     [rdi+8], rcx
                movzx   ecx, sil
                mov     [rdi+30h], ecx

loc_14031D168:                          ; CODE XREF: ExTryToAcquireFastMutex+98↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14031D17E:                          ; CODE XREF: ExTryToAcquireFastMutex+36↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140471184

loc_14031D18C:                          ; CODE XREF: ExTryToAcquireFastMutex+154077↓j
                                        ; ExTryToAcquireFastMutex+154083↓j ...
                movzx   eax, sil
                mov     cr8, rax
                test    rbx, rbx
                jz      short loc_14031D1A4
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14031D1B0

loc_14031D1A4:                          ; CODE XREF: ExTryToAcquireFastMutex+87↑j
                pause
                xor     al, al
                jmp     short loc_14031D168
ExTryToAcquireFastMutex endp
