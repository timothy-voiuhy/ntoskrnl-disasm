CcSetLogHandleForFileEx proc near       ; DATA XREF: .rdata:0000000140082A10↑o
                                        ; .pdata:00000001400D7D30↑o

var_100         = qword ptr -100h
var_F8          = xmmword ptr -0F8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_20          = byte ptr -20h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140481920 SIZE 000000B9 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-57h]
                sub     rsp, 100h
                xor     eax, eax
                xor     r14d, r14d
                mov     [rsp+120h+var_E0], rax
                xorps   xmm0, xmm0
                mov     rax, [rcx+28h]
                mov     r12, r9
                movups  [rsp+120h+var_F8+8], xmm0
                mov     [rbp+4Fh+var_C8], r14
                mov     r13, r8
                mov     r15, rdx
                mov     rbx, [rax+8]
                cmp     [rbx+4], r14d
                jz      loc_1404819BB
                mov     rcx, rbx
                call    sub_140265960
                test    dword ptr [rbx+98h], 2000000h
                mov     rdi, rax
                jnz     loc_14048199D
                lea     rdx, [rsp+120h+var_F8+8]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock
                lea     rdx, [rdi+80h]
                mov     [rsp+120h+var_D8], r14
                lea     rcx, [rsp+120h+var_D8]
                mov     [rsp+120h+var_D0], rdx
                call    sub_14024B3F0
                cmp     [rbx+0F0h], r14
                jnz     loc_14034C898

loc_14034C7C8:                          ; CODE XREF: CcSetLogHandleForFileEx+19D↓j
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    r15, r15
                jz      loc_14034C8CB
                lea     rax, [rbx+78h]
                cmp     [rbx+70h], r14d
                jnz     loc_14034C8C2
                lea     rcx, [rdi+20h]

loc_14034C7E7:                          ; CODE XREF: CcSetLogHandleForFileEx+1A6↓j
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     FatalListEntryError_33
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                mov     r14, [rbx+1F8h]
                cmp     qword ptr [r14+28h], 0
                jz      loc_14034C8DF

loc_14034C814:                          ; CODE XREF: CcSetLogHandleForFileEx+269↓j
                mov     rcx, [rbx+1F8h]
                mov     r8d, 1000000h
                mov     eax, [rbx+98h]
                add     rcx, 28h ; '('
                mov     [rbx+0F0h], rcx
                test    r8d, eax
                jnz     short loc_14034C842
                mov     edx, [rbx+70h]
                test    edx, edx
                jnz     loc_140481927

loc_14034C842:                          ; CODE XREF: CcSetLogHandleForFileEx+115↑j
                                        ; CcSetLogHandleForFileEx+135216↓j
                or      eax, r8d
                mov     [rbx+98h], eax

loc_14034C84B:                          ; CODE XREF: CcSetLogHandleForFileEx+1BA↓j
                lea     rcx, [rsp+120h+var_D8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                lea     rcx, [rsp+120h+var_F8+8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+120h+var_E0]
                test    eax, eax
                jnz     loc_14048193B

loc_14034C872:                          ; CODE XREF: CcSetLogHandleForFileEx+13521D↓j
                                        ; CcSetLogHandleForFileEx+135229↓j ...
                mov     cr8, rbx
                lea     r11, [rsp+120h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14034C898:                          ; CODE XREF: CcSetLogHandleForFileEx+A2↑j
                lea     rax, [rbx+78h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     FatalListEntryError_33
                cmp     [rcx], rax
                jnz     FatalListEntryError_33
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                jmp     loc_14034C7C8
; ---------------------------------------------------------------------------

loc_14034C8C2:                          ; CODE XREF: CcSetLogHandleForFileEx+BD↑j
                lea     rcx, [rdi+60h]
                jmp     loc_14034C7E7
; ---------------------------------------------------------------------------

loc_14034C8CB:                          ; CODE XREF: CcSetLogHandleForFileEx+AF↑j
                btr     dword ptr [rbx+98h], 18h
                mov     [rbx+0F0h], r14
                jmp     loc_14034C84B
; ---------------------------------------------------------------------------

loc_14034C8DF:                          ; CODE XREF: CcSetLogHandleForFileEx+EE↑j
                xor     edx, edx
                lea     rcx, [rbp+4Fh+var_C0]
                mov     r8d, 98h
                call    memset
                mov     rdi, [rbp+4Fh+arg_20]
                mov     [rbp+4Fh+var_B0], r12
                mov     [rbp+4Fh+var_B8], r13
                mov     [rbp+4Fh+var_C0], r15
                mov     [rbp+4Fh+var_38], rsi
                test    rdi, rdi
                jz      short loc_14034C921
                mov     edx, 746C6644h
                mov     rcx, rdi
                call    ObfReferenceObjectWithTag
                mov     r14, [rbx+1F8h]
                mov     [rbp+4Fh+var_48], rdi

loc_14034C921:                          ; CODE XREF: CcSetLogHandleForFileEx+1E7↑j
                lea     rax, [rbp+4Fh+var_C0]
                mov     edx, 80h
                movups  xmm0, xmmword ptr [rax]
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [r14+28h], xmm0
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [r14+38h], xmm1
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [r14+48h], xmm0
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [r14+58h], xmm1
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [r14+68h], xmm0
                movups  xmm0, xmmword ptr [rax+60h]
                movups  xmmword ptr [r14+78h], xmm1
                movups  xmm1, xmmword ptr [rax+rdx]
                movups  xmmword ptr [r14+88h], xmm0
                movups  xmm0, xmmword ptr [rax+70h]
                mov     rax, [rax+rdx+10h]
                movups  xmmword ptr [r14+rdx+18h], xmm0
                movups  xmmword ptr [r14+rdx+28h], xmm1
                mov     [r14+rdx+38h], rax
                jmp     loc_14034C814
CcSetLogHandleForFileEx endp
