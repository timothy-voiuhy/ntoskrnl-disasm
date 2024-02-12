ObfReferenceObject proc near            ; CODE XREF: NtSetInformationFile+2E8↑p
                                        ; sub_14023D030+2BA↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041D09A SIZE 00000034 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140CFB010, 0
                mov     rsi, rcx
                mov     ebx, 1
                jnz     loc_14041D09A

loc_140245C54:                          ; CODE XREF: ObfReferenceObject+1D7480↓j
                lock xadd [rsi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_14041D0B5
                mov     rsi, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObfReferenceObject endp
