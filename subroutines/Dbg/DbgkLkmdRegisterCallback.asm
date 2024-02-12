DbgkLkmdRegisterCallback proc near      ; DATA XREF: .rdata:000000014009F3F8↑o
                                        ; .pdata:000000014010CA34↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140853DE4 SIZE 00000045 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     eax, r8d
                mov     ebp, r8d
                and     eax, 3
                mov     r14, rdx
                mov     rsi, rcx
                cmp     al, 3
                jz      loc_140798FA0
                xor     ebx, ebx
                lea     r15, unk_140C53DB0

loc_140798F28:                          ; CODE XREF: DbgkLkmdRegisterCallback+57↓j
                mov     edi, ebx
                shl     rdi, 4
                add     rdi, r15
                mov     rcx, rdi
                call    sub_1402A9540
                test    rax, rax
                jnz     loc_140853DE4

loc_140798F42:                          ; CODE XREF: DbgkLkmdRegisterCallback+BAF06↓j
                inc     ebx
                cmp     ebx, 8
                jb      short loc_140798F28
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_140799480
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140798FA7
                xor     ebx, ebx

loc_140798F5E:                          ; CODE XREF: DbgkLkmdRegisterCallback+BAF1F↓j
                mov     ecx, ebx
                xor     r8d, r8d
                shl     rcx, 4
                mov     rdx, rsi
                add     rcx, r15
                mov     edi, ebx
                call    sub_1403AF5DC
                test    al, al
                jz      loc_140853E0A
                add     rdi, rdi
                xor     eax, eax
                mov     [r15+rdi*8+8], ebp

loc_140798F86:                          ; CODE XREF: DbgkLkmdRegisterCallback+B5↓j
                                        ; DbgkLkmdRegisterCallback+BC↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140798FA0:                          ; CODE XREF: DbgkLkmdRegisterCallback+29↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140798F86
; ---------------------------------------------------------------------------

loc_140798FA7:                          ; CODE XREF: DbgkLkmdRegisterCallback+6A↑j
                mov     eax, 0C0000017h
                jmp     short loc_140798F86
DbgkLkmdRegisterCallback endp
