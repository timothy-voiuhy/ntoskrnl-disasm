_vsnprintf_s    proc near               ; CODE XREF: _snprintf_s+13↑p
                                        ; DATA XREF: .pdata:00000001400E0D84↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rax, r9
                mov     rdi, r8
                mov     rbx, rcx
                test    r9, r9
                jz      short loc_1403D6DBC
                test    r8, r8
                jnz     short loc_1403D6D8B
                test    rcx, rcx
                jnz     short loc_1403D6D90
                test    rdx, rdx
                jnz     short loc_1403D6DBC
                xor     eax, eax
                jmp     short loc_1403D6DD4
; ---------------------------------------------------------------------------

loc_1403D6D8B:                          ; CODE XREF: _vsnprintf_s+1B↑j
                test    rbx, rbx
                jz      short loc_1403D6DBC

loc_1403D6D90:                          ; CODE XREF: _vsnprintf_s+20↑j
                test    rdx, rdx
                jz      short loc_1403D6DBC
                mov     r9, [rsp+38h+arg_20]
                cmp     rdx, rdi
                jbe     short loc_1403D6DE0
                lea     rdx, [r8+1]
                mov     r8, rax
                call    sub_1403D8B7C
                cmp     eax, 0FFFFFFFEh
                jz      short loc_1403D6DD1

loc_1403D6DB0:                          ; CODE XREF: _vsnprintf_s+8B↓j
                test    eax, eax
                jns     short loc_1403D6DD4

loc_1403D6DB4:                          ; CODE XREF: _vsnprintf_s+91↓j
                mov     byte ptr [rbx], 0
                cmp     eax, 0FFFFFFFEh
                jnz     short loc_1403D6DD1

loc_1403D6DBC:                          ; CODE XREF: _vsnprintf_s+16↑j
                                        ; _vsnprintf_s+25↑j ...
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D6DD1:                          ; CODE XREF: _vsnprintf_s+4E↑j
                                        ; _vsnprintf_s+5A↑j ...
                or      eax, 0FFFFFFFFh

loc_1403D6DD4:                          ; CODE XREF: _vsnprintf_s+29↑j
                                        ; _vsnprintf_s+52↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403D6DE0:                          ; CODE XREF: _vsnprintf_s+3D↑j
                mov     r8, rax
                call    sub_1403D8B7C
                cmp     eax, 0FFFFFFFEh
                jnz     short loc_1403D6DB0
                cmp     rdi, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1403D6DB4
                jmp     short loc_1403D6DD1
_vsnprintf_s    endp

; ---------------------------------------------------------------------------
algn_1403D6DF5:                         ; DATA XREF: .pdata:00000001400E0D84↑o
                align 20h
; Exported entry 2969. _snscanf_s

; =============== S U B R O U T I N E =======================================


