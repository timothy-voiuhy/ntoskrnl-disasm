ExInitializeResourceLite proc near      ; CODE XREF: sub_14026F7FC+83↓p
                                        ; sub_14030D258+3E3↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014042C648 SIZE 00000162 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                xor     edx, edx
                mov     rbx, rcx
                lea     r8d, [rdx+68h]
                call    memset
                mov     [rbx+8], rbx
                xor     r14d, r14d
                mov     [rbx], rbx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx+20h], xmm0
                mov     [rbx+60h], r14
                test    cs:NtGlobalFlag, 2000h
                jnz     loc_14042C648
                mov     eax, r14d

loc_14023433B:                          ; CODE XREF: ExInitializeResourceLite+1F83AC↓j
                mov     [rbx+58h], rax
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rsi, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042C6A1

loc_14023435E:                          ; CODE XREF: ExInitializeResourceLite+1F83B3↓j
                                        ; ExInitializeResourceLite+1F83BD↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                lea     rcx, dword_140D230C0
                movzx   edx, dil
                jnz     loc_14042C6E2
                call    sub_140234420

loc_14023437B:                          ; CODE XREF: ExInitializeResourceLite+1F83F8↓j
                mov     rax, cs:qword_140C16958
                lea     rcx, qword_140C16950
                cmp     [rax], rcx
                jnz     loc_14042C6ED
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                test    byte ptr cs:xmmword_140CFC480+6, 1
                mov     cs:qword_140C16958, rbx
                jnz     loc_14042C6F4
                mov     cs:dword_140D230C0, r14d

loc_1402343B7:                          ; CODE XREF: ExInitializeResourceLite+1F8416↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042C70B

loc_1402343D0:                          ; CODE XREF: ExInitializeResourceLite+1F841F↓j
                                        ; ExInitializeResourceLite+1F842E↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042C72F

loc_1402343DE:                          ; CODE XREF: ExInitializeResourceLite+1F8441↓j
                                        ; ExInitializeResourceLite+1F844D↓j ...
                movzx   eax, dil
                mov     cr8, rax
                inc     dword ptr gs:8658h
                test    dword ptr cs:xmmword_140CFC480+4, 20000h
                jnz     loc_14042C791

loc_1402343FE:                          ; CODE XREF: ExInitializeResourceLite+1F84B5↓j
                mov     rbx, [rsp+28h+arg_8]
                xor     eax, eax
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInitializeResourceLite endp
