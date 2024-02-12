KeDeregisterBugCheckReasonCallback proc near
                                        ; DATA XREF: .rdata:000000014009E0D4↑o
                                        ; .pdata:00000001400DD850↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404A6664 SIZE 000000A6 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdi, cr8
                mov     r14d, 0Fh
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404A6664

loc_1403A4FEC:                          ; CODE XREF: KeDeregisterBugCheckReasonCallback+1016B6↓j
                                        ; KeDeregisterBugCheckReasonCallback+1016BF↓j ...
                lea     rcx, qword_140C31E20
                call    KeAcquireSpinLockAtDpcLevel
                xor     bpl, bpl
                cmp     byte ptr [rbx+2Ch], 1
                jnz     short loc_1403A502A
                cmp     dword ptr [rbx+28h], 3FFh
                mov     [rbx+2Ch], bpl
                jz      short loc_1403A506B

loc_1403A500E:                          ; CODE XREF: KeDeregisterBugCheckReasonCallback+C2↓j
                mov     rcx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     short loc_1403A5074
                cmp     [rax], rbx
                jnz     short loc_1403A5074
                mov     [rax], rcx
                mov     bpl, 1
                mov     [rcx+8], rax

loc_1403A502A:                          ; CODE XREF: KeDeregisterBugCheckReasonCallback+4F↑j
                lea     rcx, qword_140C31E20
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A66A7

loc_1403A5044:                          ; CODE XREF: KeDeregisterBugCheckReasonCallback+1016F9↓j
                                        ; KeDeregisterBugCheckReasonCallback+101706↓j ...
                movzx   ecx, dil
                mov     cr8, rcx
                mov     rbx, [rsp+28h+arg_0]
                mov     al, bpl
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A506B:                          ; CODE XREF: KeDeregisterBugCheckReasonCallback+5C↑j
                lock add cs:dword_140C2AE60, esi
                jmp     short loc_1403A500E
; ---------------------------------------------------------------------------

loc_1403A5074:                          ; CODE XREF: KeDeregisterBugCheckReasonCallback+69↑j
                                        ; KeDeregisterBugCheckReasonCallback+6E↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
KeDeregisterBugCheckReasonCallback endp
