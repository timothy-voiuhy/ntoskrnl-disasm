KeReleaseInStackQueuedSpinLockFromDpcLevel proc near
                                        ; CODE XREF: sub_140201F98+62↑p
                                        ; sub_140207F94+89↑p ...

var_8           = qword ptr -8
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041D19A SIZE 00000034 BYTES

                sub     rsp, 28h
                test    byte ptr cs:xmmword_140CFC480+6, 1

loc_14024812B:                          ; DATA XREF: .rdata:0000000140057578↑o
                                        ; .rdata:000000014005758C↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     rbx, rcx
                jnz     loc_14041D19A

loc_140248139:                          ; DATA XREF: .rdata:000000014005758C↑o
                                        ; .rdata:000000014005759C↑o ...
                mov     [rsp+28h+var_8], rdi
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                xor     edi, edi
                test    rax, rax
                jnz     short loc_14024818A
                mov     rcx, [rcx+8]
                mov     rax, rbx
                lock cmpxchg [rcx], rdi
                jnz     short loc_140248182

loc_140248159:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockFromDpcLevel+73↓j
                mov     rdi, [rsp+28h+var_8]

loc_14024815E:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockFromDpcLevel+1D5085↓j
                                        ; DATA XREF: .pdata:00000001400CC5E8↑o ...
                mov     rcx, gs:20h
                mov     rbx, [rsp+28h+arg_0]
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041D1AA

loc_14024817C:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockFromDpcLevel+1D508E↓j
                                        ; KeReleaseInStackQueuedSpinLockFromDpcLevel+1D509D↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140248182:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockFromDpcLevel+37↑j
                                        ; DATA XREF: .pdata:00000001400CC600↑o ...
                mov     rcx, rbx
                call    sub_140313680

loc_14024818A:                          ; CODE XREF: KeReleaseInStackQueuedSpinLockFromDpcLevel+29↑j
                mov     [rbx], rdi
                lock xor qword ptr [rax+8], 1
                jmp     short loc_140248159
KeReleaseInStackQueuedSpinLockFromDpcLevel endp
