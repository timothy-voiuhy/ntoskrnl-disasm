vswprintf_s     proc near               ; CODE XREF: swprintf_s+13↑p
                                        ; DATA XREF: .pdata:00000001400E0CD0↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_1403D658F
                test    rdx, rdx
                jz      short loc_1403D658F
                test    r8, r8
                jz      short loc_1403D658F
                call    sub_1403D8CE4
                test    eax, eax
                jns     short loc_1403D65A6
                mov     [rbx], di
                cmp     eax, 0FFFFFFFEh
                jnz     short loc_1403D65A3

loc_1403D658F:                          ; CODE XREF: vswprintf_s+12↑j
                                        ; vswprintf_s+17↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D65A3:                          ; CODE XREF: vswprintf_s+2D↑j
                or      eax, 0FFFFFFFFh

loc_1403D65A6:                          ; CODE XREF: vswprintf_s+25↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
vswprintf_s     endp

algn_1403D65B2:                         ; DATA XREF: .pdata:00000001400E0CD0↑o
                align 20h
; Exported entry 2954. _i64toa_s

; =============== S U B R O U T I N E =======================================


