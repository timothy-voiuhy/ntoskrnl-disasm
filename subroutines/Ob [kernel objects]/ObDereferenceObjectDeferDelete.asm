ObDereferenceObjectDeferDelete proc near
                                        ; CODE XREF: sub_14022B420+9EA↑p
                                        ; sub_14023D030+21C↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041CC70 SIZE 00000073 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140CFB010, 0
                mov     rdi, rcx
                jnz     loc_14041CC70

loc_14023DBAA:                          ; CODE XREF: ObDereferenceObjectDeferDelete+1DF0F6↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi-30h], rax
                sub     rax, 1
                jle     short loc_14023DBC9

loc_14023DBBD:                          ; CODE XREF: ObDereferenceObjectDeferDelete+58↓j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023DBC9:                          ; CODE XREF: ObDereferenceObjectDeferDelete+2B↑j
                mov     rcx, [rdi-28h]
                test    rcx, rcx
                jnz     loc_14041CC8B
                test    rax, rax
                js      loc_14041CCCA
                lea     rcx, [rdi-30h]
                call    sub_14034EBC0
                jmp     short loc_14023DBBD
ObDereferenceObjectDeferDelete endp
