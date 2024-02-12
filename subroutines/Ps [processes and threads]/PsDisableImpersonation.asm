PsDisableImpersonation proc near        ; CODE XREF: NtOpenThreadTokenEx+22C↑p
                                        ; sub_14077B76C+143↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407FE520 SIZE 0000001A BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    r14
                sub     rsp, 20h
                mov     eax, [rcx+510h]
                xor     r14b, r14b
                mov     rsi, rdx
                mov     rbx, rcx
                test    al, 8
                jz      loc_14061CB31

loc_14061CA47:                          ; DATA XREF: .rdata:000000014004E1D8↑o
                                        ; .rdata:000000014004E1EC↑o ...
                mov     [rsp+28h+arg_0], rbp
                mov     rbp, gs:188h
                mov     [rsp+28h+arg_8], rdi
                dec     word ptr [rbp+1E4h]
                xor     edx, edx
                add     rcx, 500h
                call    ExAcquirePushLockExclusiveEx
                lock btr dword ptr [rbx+510h], 3
                jnb     short loc_14061CAC2
                mov     eax, [rbx+4A8h]
                mov     r14b, 1
                and     eax, 3
                mov     [rsi+0Ch], eax
                movzx   eax, byte ptr [rbx+4A8h]
                shr     al, 2
                and     al, r14b
                mov     [rsi+9], al
                mov     eax, [rbx+510h]
                shr     eax, 8
                and     al, r14b
                mov     [rsi+8], al
                mov     rax, [rbx+5B8h]
                test    rax, rax
                jnz     short loc_14061CB11
                mov     rax, [rbx+4A8h]
                and     rax, 0FFFFFFFFFFFFFFF8h
                mov     [rsi], rax

loc_14061CAC2:                          ; CODE XREF: PsDisableImpersonation+58↑j
                                        ; PsDisableImpersonation+10F↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx+500h], rax
                test    al, 2
                jnz     loc_1407FE520

loc_14061CADA:                          ; CODE XREF: PsDisableImpersonation+1E1B02↓j
                                        ; PsDisableImpersonation+1E1B15↓j
                lea     rcx, [rbx+500h]
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rdi, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_0]
                test    r14b, r14b
                jz      short loc_14061CB31

loc_14061CAFD:                          ; DATA XREF: .pdata:00000001400FD89C↑o
                                        ; .pdata:00000001400FD8A8↑o
                mov     al, 1

loc_14061CAFF:                          ; CODE XREF: PsDisableImpersonation+127↓j
                mov     rbx, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061CB11:                          ; CODE XREF: PsDisableImpersonation+92↑j
                                        ; DATA XREF: .pdata:00000001400FD8A8↑o ...
                mov     [rsi], rax
                mov     rcx, [rbx+4A8h]
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     qword ptr [rbx+5B8h], 0
                call    PsDereferenceSiloContext
                jmp     short loc_14061CAC2
; ---------------------------------------------------------------------------

loc_14061CB31:                          ; CODE XREF: PsDisableImpersonation+21↑j
                                        ; PsDisableImpersonation+DB↑j
                                        ; DATA XREF: ...
                mov     dword ptr [rsi+0Ch], 0
                xor     al, al
                mov     word ptr [rsi+8], 0
                mov     qword ptr [rsi], 0
                jmp     short loc_14061CAFF
PsDisableImpersonation endp
