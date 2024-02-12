ObDereferenceObjectDeferDeleteWithTag proc near
                                        ; CODE XREF: sub_140234C00+F3↑p
                                        ; sub_14023C050+46A↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041CAB0 SIZE 00000070 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140CFB010, 0
                mov     rdi, rcx
                jnz     loc_14041CAB0

loc_14023C89A:                          ; CODE XREF: ObDereferenceObjectDeferDeleteWithTag+1E0243↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi-30h], rax
                sub     rax, 1
                jle     short loc_14023C8B9

loc_14023C8AD:                          ; CODE XREF: ObDereferenceObjectDeferDeleteWithTag+58↓j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023C8B9:                          ; CODE XREF: ObDereferenceObjectDeferDeleteWithTag+2B↑j
                mov     rcx, [rdi-28h]
                test    rcx, rcx
                jnz     loc_14041CAC8
                test    rax, rax
                js      loc_14041CB07
                lea     rcx, [rdi-30h]
                call    sub_14034EBC0
                jmp     short loc_14023C8AD
ObDereferenceObjectDeferDeleteWithTag endp
