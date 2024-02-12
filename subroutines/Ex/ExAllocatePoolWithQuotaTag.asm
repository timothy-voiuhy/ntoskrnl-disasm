ExAllocatePoolWithQuotaTag proc near    ; CODE XREF: sub_1402159F0+1C↑p
                                        ; sub_140215A20+9↑p ...

var_78          = dword ptr -78h
var_58          = qword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140425DA8 SIZE 0000009D BYTES

                mov     [rsp+arg_10], r8d
                push    rbp
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, gs:188h
                mov     r9d, ecx
                and     r9d, 0FFFFFFF7h
                mov     r13d, ecx
                and     r13d, 8
                mov     r14d, r8d
                mov     rdi, [rax+0B8h]
                cmovz   r9d, ecx
                cmp     rdi, cs:PsInitialSystemProcess
                lea     ebp, [r9+8]
                jz      loc_140215C60

loc_140215A87:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+223↓j
                                        ; DATA XREF: .rdata:000000014004B2D8↑o ...
                mov     [rsp+78h+arg_8], rbx
                mov     ecx, ebp
                mov     [rsp+78h+var_30], rsi
                mov     [rsp+78h+var_38], r12
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, 0FFFh
                jz      loc_140215C68
                mov     ecx, cs:dword_140C19184
                test    ecx, ecx
                jnz     loc_140425DA8

loc_140215ABD:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+210380↓j
                test    bpl, 8
                jz      loc_140215C15
                movzx   ecx, word ptr [r15-0Eh]
                lea     rbx, [r15-10h]
                mov     rdx, cs:qword_140CFC9E8
                xor     r8d, r8d
                mov     rax, rdx
                movzx   esi, cl
                xor     rax, rbx
                shr     cx, 8
                mov     [rsp+78h+arg_18], r8
                mov     [rbx+8], rax
                test    cl, 4
                jnz     loc_140215CF4

loc_140215AFC:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+2DB↓j
                shl     rsi, 4
                cmp     rdi, cs:PsInitialSystemProcess
                jz      loc_140215BD3
                mov     rax, [rdi+568h]
                lea     rdx, byte_140CFCB50
                and     ebp, 1
                mov     r14d, ebp
                shl     r14, 7
                add     r14, rax
                lea     rcx, ds:0[rbp*8]
                movzx   r8d, byte ptr [rcx+rdx]
                mov     [rsp+78h+arg_0], r8b
                mov     [rsp+78h+var_40], rcx
                prefetchw byte ptr [r14]
                mov     r12, [r14]
                lock or [rsp+78h+var_78], 0

loc_140215B4E:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+138↓j
                mov     rax, [r14+40h]

loc_140215B52:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+2AF↓j
                mov     [rsp+78h+var_48], rax

loc_140215B57:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+29E↓j
                lea     rdx, [r12+rsi]
                cmp     rdx, r12
                jb      loc_140425DC5
                cmp     rdx, rax
                ja      loc_140215C8E
                mov     rax, r12
                lock cmpxchg [r14], rdx
                mov     r12, rax
                jnz     short loc_140215B4E
                prefetchw byte ptr [r14+8]
                mov     rax, [r14+8]
                cmp     rdx, rax
                ja      loc_140215C72

loc_140215B8C:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+23E↓j
                                        ; ExAllocatePoolWithQuotaTag+249↓j
                test    r8b, 4
                jz      short loc_140215BC3
                mov     rdx, rsi
                lea     rax, ds:0[rbp*8]
                lock xadd [rax+rdi+470h], rdx
                add     rdx, rsi
                prefetchw byte ptr [rdi+rbp*8+480h]
                mov     rax, [rdi+rbp*8+480h]
                cmp     rdx, rax
                ja      loc_140215C40

loc_140215BC3:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+150↑j
                                        ; ExAllocatePoolWithQuotaTag+210↓j ...
                mov     r8, [rsp+78h+arg_18]
                mov     r14d, [rsp+78h+arg_10]

loc_140215BD3:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+C7↑j
                mov     rcx, cs:qword_140CFC9E8
                mov     rax, rcx
                xor     rax, rbx
                xor     rax, rdi
                mov     [rbx+8], rax
                test    r8, r8
                jnz     loc_140215D20

loc_140215BF0:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+2EA↓j
                cmp     cs:dword_140CFB010, 0
                mov     ebx, 1
                jnz     loc_140425E00

loc_140215C02:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+2103D3↓j
                lock xadd [rdi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_140425E18

loc_140215C15:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+81↑j
                                        ; ExAllocatePoolWithQuotaTag+22B↓j ...
                mov     rax, r15

loc_140215C18:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+2103BB↓j
                mov     r12, [rsp+78h+var_38]
                mov     rsi, [rsp+78h+var_30]
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
algn_140215C37:                         ; DATA XREF: .pdata:00000001400CA23C↑o
                                        ; .pdata:00000001400CA248↑o
                align 20h

loc_140215C40:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+17D↑j
                                        ; ExAllocatePoolWithQuotaTag+219↓j
                                        ; DATA XREF: ...
                mov     rcx, rax
                lock cmpxchg [rdi+rbp*8+480h], rdx
                cmp     rax, rcx
                jz      loc_140215BC3
                cmp     rdx, rax
                ja      short loc_140215C40
                jmp     loc_140215BC3
; ---------------------------------------------------------------------------

loc_140215C60:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+41↑j
                                        ; DATA XREF: .pdata:00000001400CA254↑o ...
                mov     ebp, r9d
                jmp     loc_140215A87
; ---------------------------------------------------------------------------

loc_140215C68:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+69↑j
                                        ; DATA XREF: .pdata:00000001400CA260↑o ...
                test    r15, r15
                jnz     short loc_140215C15
                jmp     loc_140425E31
; ---------------------------------------------------------------------------

loc_140215C72:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+146↑j
                                        ; ExAllocatePoolWithQuotaTag+247↓j
                mov     rcx, rax
                lock cmpxchg [r14+8], rdx
                cmp     rax, rcx
                jz      loc_140215B8C
                cmp     rdx, rax
                ja      short loc_140215C72
                jmp     loc_140215B8C
; ---------------------------------------------------------------------------

loc_140215C8E:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+127↑j
                test    r8b, 1
                jz      loc_140425DC5
                cmp     qword ptr [r14+50h], 0
                jz      loc_140425DC5
                xor     ecx, ecx
                xchg    rcx, [r14+48h]
                test    rcx, rcx
                jnz     short loc_140215CE3
                lea     rax, [rsp+78h+var_48]
                mov     r9, rsi
                mov     r8, r12
                mov     [rsp+78h+var_58], rax
                mov     rdx, r14
                mov     ecx, ebp
                call    sub_140352228
                test    al, al
                jz      loc_140425DC5
                mov     rax, [rsp+78h+var_48]
                movzx   r8d, [rsp+78h+arg_0]
                jmp     loc_140215B57
; ---------------------------------------------------------------------------

loc_140215CE3:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+26C↑j
                mov     rax, rcx
                lock xadd [r14+40h], rax
                add     rax, rcx
                jmp     loc_140215B52
; ---------------------------------------------------------------------------

loc_140215CF4:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+B6↑j
                movzx   eax, word ptr [rbx]
                mov     r8, rbx
                movzx   ecx, al
                shl     rcx, 4
                sub     r8, rcx
                xor     rdx, r8
                mov     [rsp+78h+arg_18], r8
                movzx   eax, word ptr [r8+2]
                movzx   esi, al
                mov     [r8+8], rdx
                jmp     loc_140215AFC
; ---------------------------------------------------------------------------

loc_140215D20:                          ; CODE XREF: ExAllocatePoolWithQuotaTag+1AA↑j
                xor     rcx, r8
                xor     rcx, rdi
                mov     [r8+8], rcx
                jmp     loc_140215BF0
ExAllocatePoolWithQuotaTag endp
