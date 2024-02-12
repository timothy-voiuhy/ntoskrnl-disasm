KeUserModeCallback proc near            ; DATA XREF: .rdata:000000014005E49C↑o
                                        ; .pdata:00000001400FFE58↑o

var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408098C8 SIZE 000000D7 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], ecx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r15d, r8d
                mov     rbx, gs:188h
                mov     [rsp+98h+var_50], rbx
                test    dword ptr [rbx+74h], 1000h
                jnz     loc_1408098C8
                mov     rax, cr8
                test    al, al
                jnz     loc_1408098E4
                movzx   eax, byte ptr [rbx+24Ah]
                test    al, al
                jnz     loc_14080997B
                cmp     dword ptr [rbx+1E4h], 0
                jnz     loc_14080997B
                movzx   ecx, byte ptr [rbx+2DBh]
                lea     eax, [rcx+1]
                mov     [rbx+2DBh], al
                cmp     al, 1Fh
                ja      loc_140809909
                mov     eax, [rbx+24Ch]
                lea     rcx, qword_140CFDCC0
                mov     rax, [rcx+rax*8]
                mov     rcx, [rax+0C0h]
                movzx   edx, word ptr [rcx+92h]
                mov     r8, rbx
                xor     ecx, ecx
                call    sub_14027CC90
                mov     r14, rax
                mov     [rsp+98h+var_58], rax
                test    rax, rax
                jz      loc_140809919
                mov     [rax-30h], rax
                mov     eax, cs:dword_140CFB038
                mov     rcx, r14
                sub     rcx, rax
                mov     [r14-28h], rcx
                mov     rax, [rbx+38h]
                mov     [r14-20h], rax
                mov     rax, [rbx+30h]
                mov     [r14-18h], rax
                mov     rax, [rbx+28h]
                mov     [r14-8], rax
                mov     r13, [rbx+90h]
                mov     [rsp+98h+var_40], r13
                mov     r12, [r13+180h]
                mov     [rsp+98h+var_48], r12
                mov     r8d, r15d
                lea     rax, [r15+0Fh]
                and     rax, 0FFFFFFFFFFFFFFF0h
                add     rax, 58h ; 'X'
                mov     rsi, r12
                sub     rsi, rax
                and     rsi, 0FFFFFFFFFFFFFFF0h

loc_14065DF22:                          ; DATA XREF: .rdata:000000014005E478↑o
;   __try { // __except at loc_14065DFA3
                mov     rcx, rsi
                lea     rdx, [rax-1]
                add     rdx, rsi
                cmp     rsi, rdx
                ja      short loc_14065DF9D
                mov     rax, 7FFFFFFF0000h
                cmp     rdx, rax
                jnb     short loc_14065DF9D
                and     rdx, 0FFFFFFFFFFFFF000h
                add     rdx, 1000h

loc_14065DF4E:                          ; CODE XREF: KeUserModeCallback+154↓j
                movzx   eax, byte ptr [rcx]
                mov     [rcx], al
                and     rcx, 0FFFFFFFFFFFFF000h
                add     rcx, 1000h
                cmp     rcx, rdx
                jnz     short loc_14065DF4E
                lea     rdi, [rsi+58h]
                mov     rdx, [rsp+98h+arg_8]
                mov     rcx, rdi
                call    memmove
                mov     [rsi+20h], rdi
                mov     [rsi+28h], r15d
                mov     eax, [rsp+98h+arg_0]
                mov     [rsi+2Ch], eax
                mov     [rsi+48h], r12
                mov     rax, [r13+168h]
                mov     [rsi+30h], rax
                jmp     short loc_14065DFB4
; ---------------------------------------------------------------------------

loc_14065DF9D:                          ; CODE XREF: KeUserModeCallback+11F↑j
                                        ; KeUserModeCallback+12E↑j
                call    ExRaiseAccessViolation
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 14065DF22
; ---------------------------------------------------------------------------

loc_14065DFA3:                          ; DATA XREF: .rdata:000000014005E478↑o
;   __except(1) // owned by 14065DF22
                mov     esi, eax
                mov     r14, [rsp+98h+var_58]
                mov     rbx, [rsp+98h+var_50]
                jmp     loc_14065E055
; ---------------------------------------------------------------------------

loc_14065DFB4:                          ; CODE XREF: KeUserModeCallback+18B↑j
                xor     r15d, r15d
                mov     [rsp+98h+var_60], r15
                test    dword ptr [rbx+74h], 100000h
                jnz     loc_140809929

loc_14065DFC9:                          ; CODE XREF: KeUserModeCallback+1ABB29↓j
                                        ; KeUserModeCallback+1ABB45↓j
                mov     dil, gs:853h
                mov     [r13+180h], rsi
                mov     r9, r14
                lea     r8, [r14-30h]
                mov     rdx, [rsp+98h+arg_20]
                mov     rcx, [rsp+98h+arg_18]
                call    sub_140401940
                mov     esi, eax
                mov     [rsp+98h+var_64], eax
                test    dil, 1
                jnz     loc_14080995A

loc_14065E005:                          ; CODE XREF: KeUserModeCallback+1ABB50↓j
                lfence

loc_14065E008:                          ; DATA XREF: .rdata:000000014005E488↑o
;   __try { // __except at loc_14065E01B
                mov     rax, [rbx+0F0h]
                mov     ecx, [rax+1740h]
                mov     [rsp+98h+var_68], ecx
                jmp     short loc_14065E041
;   } // starts at 14065E008
; ---------------------------------------------------------------------------

loc_14065E01B:                          ; DATA XREF: .rdata:000000014005E488↑o
;   __except(1) // owned by 14065E008
                mov     ecx, 1
                mov     [rsp+98h+var_68], ecx
                mov     r14, [rsp+98h+var_58]
                mov     r12, [rsp+98h+var_48]
                mov     esi, [rsp+98h+var_64]
                mov     rbx, [rsp+98h+var_50]
                mov     r13, [rsp+98h+var_40]
                mov     r15, [rsp+98h+var_60]

loc_14065E041:                          ; CODE XREF: KeUserModeCallback+209↑j
                test    ecx, ecx
                jnz     short loc_14065E078

loc_14065E045:                          ; CODE XREF: KeUserModeCallback+283↓j
                test    r15, r15
                jnz     loc_140809965

loc_14065E04E:                          ; CODE XREF: KeUserModeCallback+1ABB66↓j
                mov     [r13+180h], r12

loc_14065E055:                          ; CODE XREF: KeUserModeCallback+19F↑j
                dec     byte ptr [rbx+2DBh]
                xor     edx, edx
                mov     rcx, r14
                call    sub_14027D2A0
                mov     eax, esi

loc_14065E067:                          ; CODE XREF: KeUserModeCallback+1ABB04↓j
                                        ; KeUserModeCallback+1ABB14↓j
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14065E078:                          ; CODE XREF: KeUserModeCallback+233↑j
                add     qword ptr [r13+180h], 0FFFFFFFFFFFFFF00h
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     ecx, [rdx+7]
                call    sub_1406630E0
                jmp     short loc_14065E045
; } // starts at 14065DE10
KeUserModeCallback endp ; sp-analysis failed
