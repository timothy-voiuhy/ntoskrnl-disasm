ExRaiseHardError proc near              ; CODE XREF: sub_14079E9F0+824↑p
                                        ; sub_1407AA6A4+AD5BF↑p ...

var_118         = qword ptr -118h
var_110         = dword ptr -110h
var_108         = qword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = dword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = dword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_98          = xmmword ptr -98h
var_48          = qword ptr -48h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_48], rax
                mov     rsi, r9
                mov     r12d, r8d
                mov     r15d, edx
                mov     ebx, ecx
                mov     [rsp+138h+var_DC], ecx
                mov     [rsp+138h+var_D8], ecx
                mov     [rsp+138h+var_D0], edx
                mov     [rsp+138h+var_C8], r8d
                mov     [rsp+138h+var_B8], r9
                mov     r14, [rsp+138h+arg_28]
                mov     [rsp+138h+var_B0], r14
                and     [rsp+138h+var_F0], 0
                and     [rsp+138h+var_E8], 0
                cmp     cs:byte_140CF9FD4, 0
                jz      short loc_14095784B
                mov     dword ptr [r14], 1
                xor     eax, eax
                jmp     loc_140957A10
; ---------------------------------------------------------------------------

loc_14095784B:                          ; CODE XREF: ExRaiseHardError+6B↑j
                and     dword ptr [r14], 0
                cmp     r15d, 5
                jbe     short loc_14095785F
                mov     eax, 0C00000F0h
                jmp     loc_140957A10
; ---------------------------------------------------------------------------

loc_14095785F:                          ; CODE XREF: ExRaiseHardError+83↑j
                xor     r9d, r9d
                mov     [rsp+138h+var_F8], r9
                test    rsi, rsi
                jz      loc_1409579B0
                test    r12d, r12d
                jz      loc_1409579A8
                mov     r8d, 88h
                mov     [rsp+138h+var_E8], r8
                xor     edx, edx

loc_140957886:                          ; CODE XREF: ExRaiseHardError+E8↓j
                cmp     edx, r15d
                jnb     short loc_1409578BA
                bt      r12d, edx
                jnb     short loc_1409578B6
                mov     ecx, edx
                add     rcx, rcx
                mov     rax, [rsi+rdx*8]
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rsp+rcx*8+138h+var_98], xmm0
                movzx   eax, word ptr [rsp+rcx*8+138h+var_98+2]
                add     r8, rax
                mov     [rsp+138h+var_E8], r8

loc_1409578B6:                          ; CODE XREF: ExRaiseHardError+BF↑j
                inc     edx
                jmp     short loc_140957886
; ---------------------------------------------------------------------------

loc_1409578BA:                          ; CODE XREF: ExRaiseHardError+B9↑j
                mov     [rsp+138h+var_110], 4
                mov     dword ptr [rsp+138h+var_118], 1000h
                lea     r9, [rsp+138h+var_E8]
                xor     r8d, r8d
                lea     rdx, [rsp+138h+var_F8]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwAllocateVirtualMemory
                test    eax, eax
                js      loc_140957A10
                mov     r9, [rsp+138h+var_F8]
                mov     r13, r9
                lea     rdx, [r9+28h]
                lea     r8, [rdx+50h]
                mov     [rsp+138h+var_C0], r8

loc_1409578FD:                          ; DATA XREF: .rdata:00000001400C5674↑o
;   __try { // __except at loc_140957983
                xor     edi, edi
                mov     [rsp+138h+var_E0], edi

loc_140957903:                          ; CODE XREF: ExRaiseHardError+1AB↓j
                cmp     edi, r15d
                jnb     short loc_14095797D
                mov     eax, edi
                lea     rcx, ds:0[rdi*8]
                bt      r12d, edi
                jnb     short loc_140957968
                shl     rax, 4
                add     rax, rdx
                mov     [rcx+r13], rax
                mov     eax, edi
                shl     rax, 4
                lea     rcx, [rax+rdx]
                mov     [rcx+8], r8
                movzx   ebx, word ptr [rsp+rax+138h+var_98+2]
                mov     [rcx+2], bx
                lea     rdx, [rsp+138h+var_98]
                add     rdx, rax
                call    RtlCopyUnicodeString
                mov     r8, [rsp+138h+var_C0]
                add     r8, rbx
                mov     [rsp+138h+var_C0], r8
                mov     [rsp+138h+var_A8], r8
                lea     rdx, [r13+28h]
                jmp     short loc_140957970
; ---------------------------------------------------------------------------

loc_140957968:                          ; CODE XREF: ExRaiseHardError+146↑j
                mov     rax, [rsi+rdi*8]
                mov     [rcx+r13], rax

loc_140957970:                          ; CODE XREF: ExRaiseHardError+196↑j
                inc     edi
                mov     [rsp+138h+var_E0], edi
                mov     r9, [rsp+138h+var_F8]
                jmp     short loc_140957903
; ---------------------------------------------------------------------------

loc_14095797D:                          ; CODE XREF: ExRaiseHardError+136↑j
                mov     ebx, [rsp+138h+var_DC]
                jmp     short loc_1409579B0
;   } // starts at 1409578FD
; ---------------------------------------------------------------------------

loc_140957983:                          ; DATA XREF: .rdata:00000001400C5674↑o
;   __except(1) // owned by 1409578FD
                mov     r9, [rsp+138h+var_F8]
                mov     ebx, [rsp+138h+var_D8]
                mov     r15d, [rsp+138h+var_D0]
                mov     r12d, [rsp+138h+var_C8]
                mov     rsi, [rsp+138h+var_B8]
                mov     r14, [rsp+138h+var_B0]
                jmp     short loc_1409579B0
; ---------------------------------------------------------------------------

loc_1409579A8:                          ; CODE XREF: ExRaiseHardError+A3↑j
                mov     r9, rsi
                mov     [rsp+138h+var_F8], rsi

loc_1409579B0:                          ; CODE XREF: ExRaiseHardError+9A↑j
                                        ; ExRaiseHardError+1B1↑j ...
                lea     rax, [rsp+138h+var_F0]
                mov     [rsp+138h+var_108], rax
                mov     eax, [rsp+138h+arg_20]
                mov     [rsp+138h+var_110], eax
                mov     [rsp+138h+var_118], r9
                mov     r8d, r12d
                mov     edx, r15d
                mov     ecx, ebx
                call    sub_140957A3C
                mov     ebx, eax
                mov     rcx, [rsp+138h+var_F8]
                test    rcx, rcx
                jz      short loc_140957A07
                cmp     rcx, rsi
                jz      short loc_140957A07
                and     [rsp+138h+var_E8], 0
                mov     r9d, 8000h
                lea     r8, [rsp+138h+var_E8]
                lea     rdx, [rsp+138h+var_F8]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwFreeVirtualMemory

loc_140957A07:                          ; CODE XREF: ExRaiseHardError+211↑j
                                        ; ExRaiseHardError+216↑j
                mov     eax, [rsp+138h+var_F0]
                mov     [r14], eax
                mov     eax, ebx

loc_140957A10:                          ; CODE XREF: ExRaiseHardError+76↑j
                                        ; ExRaiseHardError+8A↑j ...
                mov     rcx, [rsp+138h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409577D0
ExRaiseHardError endp
