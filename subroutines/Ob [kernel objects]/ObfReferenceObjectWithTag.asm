ObfReferenceObjectWithTag proc near     ; CODE XREF: sub_140200540+47↑p
                                        ; sub_14020091C+42↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041C0DE SIZE 00000031 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140CFB010, 0
                mov     rsi, rcx
                mov     ebx, 1
                jnz     loc_14041C0DE

loc_140219CB4:                          ; CODE XREF: ObfReferenceObjectWithTag+202461↓j
                lock xadd [rsi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_14041C0F6
                mov     rsi, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObfReferenceObjectWithTag endp
