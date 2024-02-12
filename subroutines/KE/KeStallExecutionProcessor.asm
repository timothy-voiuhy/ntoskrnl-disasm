KeStallExecutionProcessor proc near     ; CODE XREF: sub_1403A6870+21↓p
                                        ; sub_1403A6870+56↓p ...

var_78          = dword ptr -78h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140435C88 SIZE 0000014F BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                pushfq
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_38], rax
                mov     eax, cs:dword_140C4BF20
                mov     r12d, ecx
                mov     ebp, 1
                test    eax, eax
                jnz     loc_140435C88

loc_140250CD7:                          ; CODE XREF: KeStallExecutionProcessor+1A5↓j
                mov     rsi, cs:qword_140C4BFC0
                xor     r13b, r13b
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  [rsp+78h+var_58], xmm0
                mov     eax, [rsi+0E0h]
                movups  [rsp+78h+var_48], xmm1
                test    bpl, al
                jz      short loc_140250D17
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                cmp     eax, 2
                jb      short loc_140250D17
                mov     rax, cr8
                cmp     al, 2
                jb      loc_140250E03

loc_140250D17:                          ; CODE XREF: KeStallExecutionProcessor+6A↑j
                                        ; KeStallExecutionProcessor+79↑j ...
                mov     rcx, rsi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rsi+70h]
                call    sub_1404079D0
                mov     r15, rax
                call    sub_1403F9500
                mov     ecx, [rsi+0DCh]
                xor     r14d, r14d
                shl     rbp, cl
                mov     rax, 0D6BF94D5E57A42BDh
                mov     qword ptr [rsp+78h+var_58], rbp
                lea     ecx, [r12+r12*4]
                mov     rdi, r15
                mov     ebx, r14d
                lea     edx, [rcx+rcx]
                imul    rdx, [rsi+0C0h]
                add     rdx, 98967Fh
                mul     rdx
                mov     rbp, rdx
                shr     rbp, 17h
                add     rbp, 1
                jz      short loc_140250DCA
                mov     r12, qword ptr [rsp+78h+var_58]
                nop

loc_140250D80:                          ; CODE XREF: KeStallExecutionProcessor+138↓j
                inc     ebx
                test    cs:dword_140C4A27C, ebx
                jnz     short loc_140250D9A
                mov     rax, cs:qword_140C4A280
                test    rax, rax
                jnz     loc_140435DB2

loc_140250D9A:                          ; CODE XREF: KeStallExecutionProcessor+F8↑j
                pause

loc_140250D9C:                          ; CODE XREF: KeStallExecutionProcessor+1E512A↓j
                mov     rcx, rsi
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rsi+70h]
                call    sub_1404079D0
                cmp     rax, rdi
                jb      loc_140435DBF

loc_140250DB9:                          ; CODE XREF: KeStallExecutionProcessor+1E5132↓j
                mov     rcx, r14
                mov     rdi, rax
                sub     rcx, r15
                add     rcx, rax
                cmp     rcx, rbp
                jb      short loc_140250D80

loc_140250DCA:                          ; CODE XREF: KeStallExecutionProcessor+E8↑j
                test    r13b, r13b
                jnz     loc_140435DC7

loc_140250DD3:                          ; CODE XREF: KeStallExecutionProcessor+1E5142↓j
                mov     rcx, [rsp+78h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140250E03:                          ; CODE XREF: KeStallExecutionProcessor+81↑j
                mov     ecx, 200h
                test    [rsp+78h+var_8], ecx
                jz      loc_140250D17
                mov     eax, [rsi+0B8h]
                test    al, 20h
                jnz     loc_140250D17
                jmp     loc_140435D5F
; ---------------------------------------------------------------------------

loc_140250E25:                          ; CODE XREF: KeStallExecutionProcessor+1E5002↓j
                                        ; KeStallExecutionProcessor+1E502C↓j ...
                mov     rcx, gs:20h
                xor     edx, edx
                call    sub_14051DF10
                jmp     loc_140250CD7
; } // starts at 140250C90
KeStallExecutionProcessor endp
