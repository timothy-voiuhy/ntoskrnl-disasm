PoFxRegisterDevice proc near            ; DATA XREF: .rdata:00000001400A6E2C↑o
                                        ; .pdata:000000014010DA00↑o

var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_0           = dword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014085A596 SIZE 00000089 BYTES

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0A0h
                xor     esi, esi
                xor     r14d, r14d
                mov     rbx, rdx
                mov     r13, rcx
                test    rcx, rcx
                jz      loc_14085A596
                mov     eax, [rdx]
                xor     r15d, r15d
                xor     edi, edi
                mov     [rbp+57h+var_40], r15
                mov     [rbp+57h+var_38], rdi
                xorps   xmm0, xmm0
                movdqa  [rbp+57h+var_50], xmm0
                cmp     eax, 1
                jnz     loc_1407B4503
                mov     r8, rcx
                lea     rdx, aDeviceUsingPoF ; "Device using PO_FX_VERSION_V1: devobj 0"...
                mov     ecx, eax
                call    sub_140364B78
                mov     r8, [r13+8]
                lea     rdx, aDriverWz  ; " - Driver: \"%wZ\""
                add     r8, 38h ; '8'
                lea     ecx, [rsi+1]
                call    sub_140364B78
                lea     rdx, qword_1407DB1A0
                lea     ecx, [rsi+1]
                call    sub_140364B78
                mov     rax, [rbx+38h]
                lea     rcx, [rbx+40h]
                mov     edx, [rbx+4]
                and     [rbp+57h+var_90], rsi
                mov     [rbp+57h+arg_18], rax
                mov     rax, [rbx+8]
                mov     [rbp+57h+var_80], rax
                mov     rax, [rbx+10h]
                mov     [rbp+57h+var_78], rax
                mov     rax, [rbx+18h]
                mov     [rbp+57h+var_70], rax
                mov     rax, [rbx+20h]
                mov     [rbp+57h+var_68], rax
                mov     rax, [rbx+28h]
                mov     [rbp+57h+var_60], rax
                mov     rax, [rbx+30h]
                mov     [rbp+57h+var_58], rax
                mov     [rbp+57h+arg_0], edx
                call    sub_1407B53AC
                mov     ecx, [rbp+57h+arg_0]
                mov     rsi, rax
                mov     rax, [rbp+57h+var_90]
                mov     rdx, [rbp+57h+arg_18]
                mov     r8, [rbp+57h+arg_10]

loc_1407B4489:                          ; CODE XREF: PoFxRegisterDevice+1C7↓j
                xor     r12b, r12b
                test    r15, r15
                jnz     loc_1407B456C
                test    rdi, rdi
                jnz     loc_14085A615

loc_1407B449E:                          ; CODE XREF: PoFxRegisterDevice+1D8↓j
                mov     [rsp+0D0h+var_A0], r8
                mov     r9d, ecx
                mov     [rsp+0D0h+var_A8], rax
                mov     r8, rsi
                mov     [rsp+0D0h+var_B0], rdx
                mov     rcx, r13
                lea     rdx, [rbp+57h+var_80]
                call    sub_1407B45EC
                mov     edi, eax
                test    eax, eax
                js      short loc_1407B44CE
                test    r12b, r12b
                jnz     loc_1407B457D

loc_1407B44CE:                          ; CODE XREF: PoFxRegisterDevice+123↑j
                                        ; PoFxRegisterDevice+22F↓j ...
                test    rsi, rsi
                jz      short loc_1407B44E5
                cmp     dword ptr [rbx], 1
                jnz     short loc_1407B44E5
                mov     edx, 4D584650h
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1407B44E5:                          ; CODE XREF: PoFxRegisterDevice+131↑j
                                        ; PoFxRegisterDevice+136↑j ...
                mov     rbx, [rsp+0D0h+arg_8]
                mov     eax, edi
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407B4503:                          ; CODE XREF: PoFxRegisterDevice+4F↑j
                cmp     eax, 2
                jz      loc_14085A5A0
                cmp     eax, 3
                jnz     loc_14085A615
                mov     rax, [rdx+10h]
                lea     rsi, [rbx+68h]
                mov     r15, [rdx+40h]
                mov     r14, rbx
                mov     rdi, [rdx+48h]
                mov     ecx, [rdx+60h]
                mov     [rbp+57h+var_80], rax
                mov     rax, [rdx+18h]
                mov     [rbp+57h+var_78], rax
                mov     rax, [rdx+20h]
                mov     [rbp+57h+var_70], rax
                mov     rax, [rdx+28h]
                mov     [rbp+57h+var_68], rax
                mov     rax, [rdx+30h]
                mov     [rbp+57h+var_60], rax
                mov     rax, [rdx+38h]
                mov     rdx, [rdx+58h]
                mov     [rbp+57h+var_40], r15
                mov     [rbp+57h+var_38], rdi

loc_1407B455F:                          ; CODE XREF: PoFxRegisterDevice+A6237↓j
                mov     [rbp+57h+var_58], rax
                mov     rax, [rbx+8]
                jmp     loc_1407B4489
; ---------------------------------------------------------------------------

loc_1407B456C:                          ; CODE XREF: PoFxRegisterDevice+EF↑j
                test    rdi, rdi
                jz      loc_14085A615
                mov     r12b, 1
                jmp     loc_1407B449E
; ---------------------------------------------------------------------------

loc_1407B457D:                          ; CODE XREF: PoFxRegisterDevice+128↑j
                mov     rcx, [rbp+57h+arg_10]
                mov     edx, [r14+50h]
                mov     rcx, [rcx]
                cmp     edx, 0FFFFFFFFh
                jz      short loc_1407B45DA
                test    edx, edx
                cmovz   edx, cs:dword_140C12168
                mov     [rcx+390h], edx

loc_1407B459C:                          ; CODE XREF: PoFxRegisterDevice+241↓j
                mov     rax, [r14+8]
                test    al, 2
                jz      short loc_1407B45B3
                lock or dword ptr [rcx+338h], 200h
                mov     rax, [r14+8]

loc_1407B45B3:                          ; CODE XREF: PoFxRegisterDevice+202↑j
                test    al, 4
                jz      short loc_1407B45C2
                lock or dword ptr [rcx+338h], 400h

loc_1407B45C2:                          ; CODE XREF: PoFxRegisterDevice+215↑j
                lock or dword ptr [rcx+338h], 20h
                cmp     [rbp+57h+var_80], 0
                jnz     loc_1407B44CE
                jmp     loc_14085A5DC
; ---------------------------------------------------------------------------

loc_1407B45DA:                          ; CODE XREF: PoFxRegisterDevice+1EB↑j
                and     dword ptr [rcx+390h], 0
                jmp     short loc_1407B459C
PoFxRegisterDevice endp
