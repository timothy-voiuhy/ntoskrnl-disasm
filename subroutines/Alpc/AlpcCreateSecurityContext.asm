AlpcCreateSecurityContext proc near     ; DATA XREF: .pdata:000000014011E344↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax-10h], 0
                mov     rsi, r9
                mov     rax, gs:188h
                mov     rbp, rdx
                dec     word ptr [rax+1E4h]
                test    r8d, r8d
                jz      short loc_1408C39DE
                mov     ebx, 0C000000Dh
                jmp     loc_1408C3A64
; ---------------------------------------------------------------------------

loc_1408C39DE:                          ; CODE XREF: AlpcCreateSecurityContext+32↑j
                mov     r8, cs:qword_140CFC548
                lea     rax, [rsp+48h+var_18]
                and     [rsp+48h+var_20], 0
                xor     r9d, r9d
                and     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_28], rax
                lea     edx, [r9+1]
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408C3A64
                mov     rdi, [rsp+48h+var_18]
                test    rsi, rsi
                jz      short loc_1408C3A20
                mov     r9, [rsi+8]
                test    r9, r9
                jnz     short loc_1408C3A27

loc_1408C3A20:                          ; CODE XREF: AlpcCreateSecurityContext+75↑j
                lea     r9, [rdi+104h]

loc_1408C3A27:                          ; CODE XREF: AlpcCreateSecurityContext+7E↑j
                lea     rax, [rsp+48h+var_10]
                mov     r8b, 1
                mov     rdx, rbp
                mov     [rsp+48h+var_28], rax
                mov     rcx, rdi
                call    sub_1406BF240
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408C3A5C
                mov     rcx, [rsp+48h+var_10]
                mov     edx, 1
                mov     r8, [rcx+8]
                mov     [rsi+10h], r8
                call    sub_14061A320

loc_1408C3A5C:                          ; CODE XREF: AlpcCreateSecurityContext+A3↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext

loc_1408C3A64:                          ; CODE XREF: AlpcCreateSecurityContext+39↑j
                                        ; AlpcCreateSecurityContext+6B↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
AlpcCreateSecurityContext endp
