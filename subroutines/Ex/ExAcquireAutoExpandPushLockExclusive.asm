ExAcquireAutoExpandPushLockExclusive proc near
                                        ; CODE XREF: sub_140289B60+281↑p
                                        ; sub_1402FEC38+37↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140479E36 SIZE 00000018 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                mov     rdi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_140479E36
                test    dl, 2
                jnz     short loc_14033894D
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140244C10
                mov     rbx, rax

loc_14033894D:                          ; CODE XREF: ExAcquireAutoExpandPushLockExclusive+1E↑j
                lock bts qword ptr [rdi], 0
                jb      short loc_140338971

loc_140338955:                          ; CODE XREF: ExAcquireAutoExpandPushLockExclusive+5F↓j
                mov     eax, [rdi+8]
                test    al, 1
                jnz     short loc_140338981

loc_14033895C:                          ; CODE XREF: ExAcquireAutoExpandPushLockExclusive+76↓j
                test    rbx, rbx
                jz      short loc_140338965
                or      byte ptr [rbx+1Ah], 1

loc_140338965:                          ; CODE XREF: ExAcquireAutoExpandPushLockExclusive+3F↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140338971:                          ; CODE XREF: ExAcquireAutoExpandPushLockExclusive+33↑j
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402F5F10
                jmp     short loc_140338955
; ---------------------------------------------------------------------------

loc_140338981:                          ; CODE XREF: ExAcquireAutoExpandPushLockExclusive+3A↑j
                mov     ecx, eax
                mov     r8, rdi
                mov     eax, 0FFFFFFF8h
                mov     rdx, rbx
                and     rcx, rax
                call    sub_140391250
                jmp     short loc_14033895C
ExAcquireAutoExpandPushLockExclusive endp
