ObfDereferenceObjectWithTag proc near   ; CODE XREF: sub_1402000B0+B7↑p
                                        ; PsReleaseSiloHardReference+1A↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140431C46 SIZE 00000083 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140CFB010, 0
                mov     rsi, rcx
                jnz     loc_140431C46

loc_140245B5F:                          ; CODE XREF: ObfDereferenceObjectWithTag+1EC119↓j
                mov     rbx, 0FFFFFFFFFFFFFFFFh
                lock xadd [rsi-30h], rbx
                sub     rbx, 1
                jle     short loc_140245B86

loc_140245B72:                          ; CODE XREF: ObfDereferenceObjectWithTag+E4↓j
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140245B86:                          ; CODE XREF: ObfDereferenceObjectWithTag+30↑j
                mov     rcx, [rsi-28h]
                test    rcx, rcx
                jnz     loc_140431C5E
                test    rbx, rbx
                js      loc_140431CA1
                mov     rax, gs:188h
                cmp     [rax+1E6h], cx
                jnz     short loc_140245C1B
                call    sub_14024B150
                test    al, al
                jz      short loc_140245C1B
                mov     rax, cr8
                cmp     al, 1
                jnb     short loc_140245C1B
                movzx   eax, byte ptr [rsi-16h]
                test    al, 40h
                jz      short loc_140245BEF
                and     eax, 7Fh
                lea     r10, cs:140000000h
                lea     rcx, [rsi-30h]
                movzx   eax, byte ptr [rax+r10+0C25E20h]
                sub     rcx, rax
                mov     rcx, [rcx]
                cmp     byte ptr [rcx+18h], 0
                jz      short loc_140245BEF
                call    sub_1406E7870

loc_140245BEF:                          ; CODE XREF: ObfDereferenceObjectWithTag+85↑j
                                        ; ObfDereferenceObjectWithTag+A8↑j
                cmp     cs:dword_140CFB010, 0
                jnz     loc_140431CBA

loc_140245BFC:                          ; CODE XREF: ObfDereferenceObjectWithTag+1EC184↓j
                xor     edx, edx
                lea     rcx, [rsi-30h]
                call    sub_1406448D0
                mov     rsi, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140245C1B:                          ; CODE XREF: ObfDereferenceObjectWithTag+6C↑j
                                        ; ObfDereferenceObjectWithTag+75↑j ...
                lea     rcx, [rsi-30h]
                call    sub_14034EBC0
                jmp     loc_140245B72
ObfDereferenceObjectWithTag endp
