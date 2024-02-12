ExAcquireSpinLockExclusiveAtDpcLevel proc near
                                        ; CODE XREF: sub_140209860+413↑p
                                        ; sub_14020B2C0:loc_14020B465↑p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 000000014041D5FC SIZE 0000005B BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                mov     rbx, rcx
                jnz     loc_14041D5FC

loc_140269E56:                          ; DATA XREF: .rdata:000000014005C784↑o
                                        ; .rdata:000000014005C798↑o ...
                mov     [rsp+28h+arg_0], rdi
                mov     rdi, gs:20h
                mov     [rsp+28h+arg_8], 0
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14041D609

loc_140269E7C:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+1B37CD↓j
                                        ; ExAcquireSpinLockExclusiveAtDpcLevel+1B37DC↓j ...
                lock bts dword ptr [rbx], 1Fh
                jb      short loc_140269E9F

loc_140269E83:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+7D↓j
                mov     edx, [rbx]
                mov     ecx, edx
                mov     rdi, [rsp+28h+arg_0]
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     short loc_140269EC0

loc_140269E98:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+AD↓j
                                        ; ExAcquireSpinLockExclusiveAtDpcLevel+1B37C4↓j
                                        ; DATA XREF: ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140269E9F:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+41↑j
                                        ; DATA XREF: .pdata:00000001400CDF98↑o ...
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14041D630

loc_140269EAF:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+1B37F4↓j
                                        ; ExAcquireSpinLockExclusiveAtDpcLevel+1B3803↓j ...
                mov     dl, 0FFh
                mov     rcx, rbx
                call    sub_14028EAE0
                mov     [rsp+28h+arg_8], eax
                jmp     short loc_140269E83
; ---------------------------------------------------------------------------
                align 20h

loc_140269EC0:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+56↑j
                                        ; ExAcquireSpinLockExclusiveAtDpcLevel+AF↓j
                                        ; DATA XREF: ...
                bt      edx, 1Eh
                jb      short loc_140269ED6
                mov     ecx, edx
                mov     eax, edx
                bts     ecx, 1Eh
                lock cmpxchg [rbx], ecx
                mov     edx, eax
                jnz     short loc_140269EE2

loc_140269ED6:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+84↑j
                lea     rcx, [rsp+28h+arg_8]
                call    sub_1402C8C70
                mov     edx, [rbx]

loc_140269EE2:                          ; CODE XREF: ExAcquireSpinLockExclusiveAtDpcLevel+94↑j
                mov     eax, edx
                btr     eax, 1Eh
                cmp     eax, 80000000h
                jz      short loc_140269E98
                jmp     short loc_140269EC0
ExAcquireSpinLockExclusiveAtDpcLevel endp
