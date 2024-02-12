NtClose         proc near               ; CODE XREF: sub_140354F20+22E↑p
                                        ; sub_1403A83F0:loc_1403A8442↑p ...

var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408064D8 SIZE 000000A3 BYTES

                push    rbx
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, gs:188h
                mov     rbx, rcx
                test    cs:dword_140C2A6E0, 100h
                movzx   r14d, byte ptr [rax+232h]
                jnz     loc_1408064D8

loc_140644E41:                          ; CODE XREF: NtClose+1C16CB↓j
                                        ; NtClose+1C16DA↓j ...
                mov     rdi, gs:188h
                movzx   edx, r14b

loc_140644E4E:                          ; DATA XREF: .rdata:00000001400563A0↑o
                                        ; .rdata:00000001400563B0↑o ...
                mov     [rsp+68h+arg_10], rbp
                mov     rcx, rbx
                mov     [rsp+68h+var_30], rsi
                xor     r15b, r15b
                mov     [rsp+68h+var_38], r12
                mov     r13, [rdi+0B8h]
                mov     [rsp+68h+arg_0], 0
                call    sub_140243260
                test    al, al
                jnz     loc_140644F25
                mov     rax, gs:188h
                mov     r12, r13
                cmp     byte ptr [rax+24Ah], 1
                jz      loc_140644F65
                mov     rbp, [r13+570h]
                cmp     rbp, cs:qword_140C259A0
                jz      loc_1408064FB

loc_140644EAC:                          ; CODE XREF: NtClose+12A↓j
                                        ; NtClose+16C↓j
                dec     word ptr [rdi+1E4h]
                test    ebx, 3FCh
                jz      loc_140644F3F
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_140645680
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140644F3F
                mov     rdx, rax
                mov     rcx, rbp
                call    sub_140243200
                test    al, al
                jz      short loc_140644F3F
                mov     [rsp+68h+var_40], 0
                mov     r9, rbx
                mov     r8, r12
                mov     byte ptr [rsp+68h+var_48], r14b
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_140649AF0
                mov     edi, eax

loc_140644EFE:                          ; CODE XREF: NtClose+153↓j
                                        ; NtClose+1C1733↓j ...
                test    r15b, r15b
                jnz     short loc_140644F81

loc_140644F03:                          ; CODE XREF: NtClose+17E↓j
                                        ; NtClose+1C16F0↓j
                mov     r12, [rsp+68h+var_38]
                mov     eax, edi
                mov     rsi, [rsp+68h+var_30]
                mov     rbp, [rsp+68h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_140644F24  db 0CCh                 ; DATA XREF: .pdata:00000001400FF0B4↑o
                                        ; .pdata:00000001400FF0C0↑o
; ---------------------------------------------------------------------------

loc_140644F25:                          ; CODE XREF: NtClose+69↑j
                                        ; DATA XREF: .pdata:00000001400FF0C0↑o ...
                mov     rbp, cs:qword_140C259A0
                xor     rbx, 0FFFFFFFF80000000h
                mov     r12, cs:PsInitialSystemProcess
                jmp     loc_140644EAC
; ---------------------------------------------------------------------------

loc_140644F3F:                          ; CODE XREF: NtClose+A9↑j
                                        ; NtClose+C0↑j ...
                mov     rcx, rdi
                call    sub_14021E1F0
                lea     rax, [rbx+6]
                cmp     rax, 6
                ja      short loc_140644F93

loc_140644F51:                          ; CODE XREF: NtClose+1C7↓j
                                        ; NtClose+1DA↓j ...
                xor     eax, eax
                add     rbx, 6
                cmp     rbx, 5
                mov     edi, 0C0000008h
                cmovbe  edi, eax
                jmp     short loc_140644EFE
; ---------------------------------------------------------------------------

loc_140644F65:                          ; CODE XREF: NtClose+82↑j
                mov     rcx, r13
                call    sub_140639CB4
                mov     rbp, rax
                test    rax, rax
                jz      loc_1408064FB
                mov     r15b, 1
                jmp     loc_140644EAC
; ---------------------------------------------------------------------------

loc_140644F81:                          ; CODE XREF: NtClose+F1↑j
                lea     rcx, [r12+458h]
                call    sub_14024C380
                jmp     loc_140644F03
; ---------------------------------------------------------------------------

loc_140644F93:                          ; CODE XREF: NtClose+13F↑j
                lea     r8, [rsp+68h+arg_0]
                mov     rcx, rbp
                lea     rdx, [rsp+68h+arg_8]
                call    sub_140380CF0
                test    byte ptr [rbp+2Ch], 10h
                jnz     loc_140806505

loc_140644FAF:                          ; CODE XREF: NtClose+1C16FA↓j
                                        ; NtClose+1C1710↓j
                test    r14b, r14b
                jz      short loc_140644FE2
                test    cs:NtGlobalFlag, 400000h
                jnz     loc_140806525
                cmp     qword ptr [r13+578h], 0
                jnz     loc_140806525
                cmp     qword ptr [rbp+60h], 0
                jz      loc_140644F51
                jmp     loc_140806525
; ---------------------------------------------------------------------------

loc_140644FE2:                          ; CODE XREF: NtClose+1A2↑j
                mov     eax, [rdi+510h]
                test    al, 1
                jnz     loc_140644F51
                cmp     qword ptr [r13+550h], 0
                jz      loc_140644F51
                jmp     loc_140806552
NtClose         endp

; ---------------------------------------------------------------------------
algn_140645003:                         ; DATA XREF: .pdata:00000001400FF0CC↑o
                align 10h
; Exported entry 1668. ObReferenceObjectByHandleWithTag

; =============== S U B R O U T I N E =======================================


