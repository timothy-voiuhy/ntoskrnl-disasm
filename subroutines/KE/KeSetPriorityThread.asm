KeSetPriorityThread proc near           ; CODE XREF: sub_1402BA410+1AE↑p
                                        ; sub_1402BA410+1C1↑p ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

; FUNCTION CHUNK AT 0000000140458BEE SIZE 000000E9 BYTES

                mov     r11, rsp
                push    rbx
                push    rdi
                sub     rsp, 58h
                lea     rax, unk_140D24A00
                mov     edi, edx
                mov     rbx, rcx
                cmp     [rcx+220h], rax
                jz      loc_140458BEE

loc_1402CC722:                          ; DATA XREF: .rdata:00000001400695B8↑o
                                        ; .rdata:00000001400695DC↑o ...
                mov     [r11+10h], rbp

loc_1402CC726:                          ; DATA XREF: .rdata:00000001400695DC↑o
                                        ; .rdata:00000001400695F4↑o ...
                mov     [r11-18h], rsi
                mov     [r11-20h], r12
                mov     [r11-28h], r13
                xor     r13d, r13d
                mov     [r11-30h], r14
                mov     [r11-38h], r15
                mov     r15d, r13d
                mov     [r11+18h], r13
                mov     r12, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140458BF8

loc_1402CC75F:                          ; CODE XREF: KeSetPriorityThread+18C4FA↓j
                                        ; KeSetPriorityThread+18C504↓j ...
                mov     rsi, gs:20h
                mov     rbp, gs:20h
                mov     [rsp+68h+arg_0], r13d
                mov     r14, [rsi+8]
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_140458C3D

loc_1402CC78A:                          ; CODE XREF: KeSetPriorityThread+1D2↓j
                                        ; KeSetPriorityThread+18C541↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_1402CC8A5
                movzx   ecx, byte ptr [rbx+234h]
                movsx   eax, byte ptr [rbx+0C3h]
                mov     ebp, eax
                test    cl, cl
                jnz     loc_1402CC8DD

loc_1402CC7AF:                          ; CODE XREF: KeSetPriorityThread+1E9↓j
                movsx   eax, al
                cmp     edi, eax
                jz      short loc_1402CC832
                cmp     rbx, r14
                jnz     loc_1402CC886
                cmp     [rsi+20h], r13b
                jnz     loc_1402CC886
                cli
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402CDFD0
                mov     rdx, rax
                sti

loc_1402CC7DC:                          ; CODE XREF: KeSetPriorityThread+18A↓j
                movzx   ecx, byte ptr [rbx+28Bh]
                imul    ecx, cs:dword_140CFB150
                mov     eax, [rbx+78h]
                add     rcx, rdx
                test    al, 20h
                jnz     loc_1402CC89A

loc_1402CC7F8:                          ; CODE XREF: KeSetPriorityThread+1A0↓j
                movzx   eax, byte ptr [rbx+233h]
                mov     [rbx+20h], rcx
                test    al, al
                jz      short loc_1402CC80F
                test    edi, edi
                jz      loc_140458CA6

loc_1402CC80F:                          ; CODE XREF: KeSetPriorityThread+105↑j
                                        ; KeSetPriorityThread+18C5AB↓j
                cmp     al, 10h
                jge     short loc_1402CC88F

loc_1402CC813:                          ; CODE XREF: KeSetPriorityThread+192↓j
                mov     r8d, edi
                lea     rdx, [rsp+68h+arg_10]
                mov     rcx, rbx
                call    sub_14025C570
                test    al, al
                jz      short loc_1402CC832
                movsx   r15d, byte ptr [rbx+0C3h]

loc_1402CC832:                          ; CODE XREF: KeSetPriorityThread+B4↑j
                                        ; KeSetPriorityThread+128↑j ...
                mov     rcx, rbx
                call    sub_1403261B0
                movzx   r8d, r12b
                lea     rdx, [rsp+68h+arg_10]
                mov     rcx, rsi
                call    sub_14028D950
                test    dword ptr cs:xmmword_140CFC480+4, 2000h
                mov     r14, [rsp+68h+var_30]
                mov     r12, [rsp+68h+var_20]
                mov     rsi, [rsp+68h+var_18]
                jnz     loc_140458CB0

loc_1402CC86D:                          ; CODE XREF: KeSetPriorityThread+18C5B3↓j
                                        ; KeSetPriorityThread+18C5D2↓j
                                        ; DATA XREF: ...
                mov     r15, [rsp+68h+var_38]
                mov     eax, ebp
                mov     rbp, [rsp+68h+arg_8]
                mov     r13, [rsp+68h+var_28]

loc_1402CC87E:                          ; CODE XREF: KeSetPriorityThread+18C4F3↓j
                                        ; DATA XREF: .pdata:00000001400D1C1C↑o ...
                add     rsp, 58h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402CC886:                          ; CODE XREF: KeSetPriorityThread+B9↑j
                                        ; KeSetPriorityThread+C3↑j
                                        ; DATA XREF: ...
                mov     rdx, [rbx+48h]
                jmp     loc_1402CC7DC
; ---------------------------------------------------------------------------

loc_1402CC88F:                          ; CODE XREF: KeSetPriorityThread+111↑j
                cmp     edi, 10h
                jge     loc_1402CC813
                jmp     short loc_1402CC832
; ---------------------------------------------------------------------------

loc_1402CC89A:                          ; CODE XREF: KeSetPriorityThread+F2↑j
                lock btr dword ptr [rbx+78h], 5
                jmp     loc_1402CC7F8
; ---------------------------------------------------------------------------

loc_1402CC8A5:                          ; CODE XREF: KeSetPriorityThread+91↑j
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jnz     loc_140458C64

loc_1402CC8B5:                          ; CODE XREF: KeSetPriorityThread+1C6↓j
                                        ; KeSetPriorityThread+18C568↓j ...
                lea     rcx, [rsp+68h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_1402CC8B5
                mov     rcx, [rbp+84B8h]
                test    rcx, rcx
                jz      loc_1402CC78A
                jmp     loc_140458C8B
; ---------------------------------------------------------------------------

loc_1402CC8DD:                          ; CODE XREF: KeSetPriorityThread+A9↑j
                test    cl, 0Fh
                jnz     short loc_1402CC8EE

loc_1402CC8E2:                          ; CODE XREF: KeSetPriorityThread+204↓j
                mov     [rbx+234h], r13b
                jmp     loc_1402CC7AF
; ---------------------------------------------------------------------------

loc_1402CC8EE:                          ; CODE XREF: KeSetPriorityThread+1E0↑j
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+368h], eax
                movzx   eax, byte ptr [rbx+0C3h]
                jmp     short loc_1402CC8E2
KeSetPriorityThread endp
