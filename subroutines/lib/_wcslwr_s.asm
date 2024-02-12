_wcslwr_s       proc near               ; DATA XREF: .pdata:00000001400E0760↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                xor     esi, esi
                mov     rdi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jnz     short loc_1403D1E07

loc_1403D1DEC:                          ; CODE XREF: _wcslwr_s+44↓j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rsi
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h
                jmp     short loc_1403D1E34
; ---------------------------------------------------------------------------

loc_1403D1E07:                          ; CODE XREF: _wcslwr_s+1A↑j
                call    wcsnlen
                cmp     rax, rdi
                jb      short loc_1403D1E2A
                mov     [rbx], si
                jmp     short loc_1403D1DEC
; ---------------------------------------------------------------------------

loc_1403D1E16:                          ; CODE XREF: _wcslwr_s+60↓j
                lea     eax, [rcx-41h]
                cmp     ax, 19h
                ja      short loc_1403D1E26
                add     cx, 20h ; ' '
                mov     [rbx], cx

loc_1403D1E26:                          ; CODE XREF: _wcslwr_s+4D↑j
                add     rbx, 2

loc_1403D1E2A:                          ; CODE XREF: _wcslwr_s+3F↑j
                movzx   ecx, word ptr [rbx]
                test    cx, cx
                jnz     short loc_1403D1E16
                xor     eax, eax

loc_1403D1E34:                          ; CODE XREF: _wcslwr_s+35↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_wcslwr_s       endp

algn_1403D1E45:                         ; DATA XREF: .pdata:00000001400E0760↑o
                align 10h
; Exported entry 2997. _wcsnicmp

; =============== S U B R O U T I N E =======================================


