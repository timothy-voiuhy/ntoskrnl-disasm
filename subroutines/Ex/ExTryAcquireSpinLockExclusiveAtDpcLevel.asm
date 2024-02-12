ExTryAcquireSpinLockExclusiveAtDpcLevel proc near
                                        ; CODE XREF: sub_14021B194+72↑p
                                        ; sub_1402BB4B0+F2↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140451F80 SIZE 00000065 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, gs:20h
                mov     rbx, rcx
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140451F80

loc_1402BB856:                          ; CODE XREF: ExTryAcquireSpinLockExclusiveAtDpcLevel+196754↓j
                                        ; ExTryAcquireSpinLockExclusiveAtDpcLevel+196763↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140451FA7
                mov     ecx, 80000000h
                xor     eax, eax
                lock cmpxchg [rbx], ecx
                jnz     short loc_1402BB881
                mov     eax, 1

loc_1402BB875:                          ; CODE XREF: ExTryAcquireSpinLockExclusiveAtDpcLevel+196789↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BB881:                          ; CODE XREF: ExTryAcquireSpinLockExclusiveAtDpcLevel+3E↑j
                xor     ebx, ebx

loc_1402BB883:                          ; CODE XREF: ExTryAcquireSpinLockExclusiveAtDpcLevel+196783↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140451FBE

loc_1402BB893:                          ; CODE XREF: ExTryAcquireSpinLockExclusiveAtDpcLevel+196792↓j
                                        ; ExTryAcquireSpinLockExclusiveAtDpcLevel+1967A1↓j ...
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExTryAcquireSpinLockExclusiveAtDpcLevel endp
