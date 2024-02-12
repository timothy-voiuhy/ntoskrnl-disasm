IoTranslateBusAddress proc near         ; DATA XREF: .pdata:00000001400F2DCC↑o

var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
arg_20          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_38], rax
                mov     r13, [rbp+4Fh+arg_20]
                xor     edi, edi
                xor     eax, eax
                mov     [rbp+4Fh+var_70], r9
                xorps   xmm0, xmm0
                mov     [rbp+4Fh+var_40], eax
                mov     r14, r9
                mov     [rbp+4Fh+var_80], rdi
                mov     r15d, edx
                mov     [rbp+4Fh+var_78], rdi
                mov     esi, ecx
                mov     [rbp+4Fh+var_58], edi
                movups  [rbp+4Fh+var_50], xmm0
                mov     rax, cr8
                test    al, al
                jnz     loc_14050D051
                cmp     cs:qword_140C44D00, rdi
                jz      loc_14050D051
                mov     eax, [r9]
                test    eax, eax
                jnz     short loc_14050CF16
                movzx   ecx, di
                mov     al, 3
                jmp     short loc_14050CF23
; ---------------------------------------------------------------------------

loc_14050CF16:                          ; CODE XREF: IoTranslateBusAddress+6D↑j
                cmp     eax, 1
                jnz     loc_14050D04D
                mov     ecx, eax
                mov     al, cl

loc_14050CF23:                          ; CODE XREF: IoTranslateBusAddress+74↑j
                mov     word ptr [rbp+4Fh+var_68+2], cx
                xor     ecx, ecx
                mov     byte ptr [rbp+4Fh+var_68], al
                mov     byte ptr [rbp+4Fh+var_68+1], 3
                mov     qword ptr [rbp+4Fh+var_68+4], r8
                mov     dword ptr [rbp+4Fh+var_68+0Ch], 1
                call    sub_14067926C
                mov     edx, r15d
                mov     ecx, esi
                call    sub_14074E7CC
                cmp     rax, cs:qword_140C44D00
                mov     rsi, rax
                jz      loc_14050D01D
                mov     r8b, byte ptr [rbp+4Fh+var_68]

loc_14050CF5E:                          ; CODE XREF: IoTranslateBusAddress+173↓j
                lea     r9, [rbp+4Fh+var_78]
                mov     rdx, rsi
                mov     ecx, 1
                call    sub_14074E73C
                mov     r12b, al
                test    al, al
                jnz     short loc_14050CF92
                mov     rdx, [rsi+20h]
                lea     r9, [rbp+4Fh+var_80]
                mov     ecx, 1
                call    sub_14074E90C
                test    eax, eax
                js      short loc_14050D004
                mov     r14, [rbp+4Fh+var_80]
                jmp     short loc_14050CF9F
; ---------------------------------------------------------------------------

loc_14050CF92:                          ; CODE XREF: IoTranslateBusAddress+D4↑j
                mov     r14, [rbp+4Fh+var_78]
                test    r14, r14
                jz      short loc_14050D008
                mov     r14, [r14+18h]

loc_14050CF9F:                          ; CODE XREF: IoTranslateBusAddress+F0↑j
                mov     rax, [r14+20h]
                lea     rcx, [rbp+4Fh+var_50]
                mov     [rsp+0C0h+var_90], rcx
                lea     rdx, [rbp+4Fh+var_68]
                mov     rcx, [r14+8]
                xor     r9d, r9d
                mov     [rsp+0C0h+var_98], rdi
                xor     r8d, r8d
                mov     [rsp+0C0h+var_A0], rdi
                call    sub_1404079D0
                mov     r15d, eax
                test    r12b, r12b
                jnz     short loc_14050CFE8
                mov     rax, [r14+18h]
                mov     rcx, [r14+8]
                call    sub_1404079D0
                xor     edx, edx
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14050CFE8:                          ; CODE XREF: IoTranslateBusAddress+12F↑j
                test    r15d, r15d
                js      short loc_14050D046
                mov     eax, [rbp+4Fh+var_40]
                mov     [rbp+4Fh+var_58], eax
                movups  xmm0, [rbp+4Fh+var_50]
                movups  [rbp+4Fh+var_68], xmm0
                cmp     r15d, 120h
                jz      short loc_14050D019

loc_14050D004:                          ; CODE XREF: IoTranslateBusAddress+EA↑j
                mov     r8b, byte ptr [rbp+4Fh+var_68]

loc_14050D008:                          ; CODE XREF: IoTranslateBusAddress+F9↑j
                mov     rsi, [rsi+10h]
                cmp     rsi, cs:qword_140C44D00
                jnz     loc_14050CF5E

loc_14050D019:                          ; CODE XREF: IoTranslateBusAddress+162↑j
                mov     r14, [rbp+4Fh+var_70]

loc_14050D01D:                          ; CODE XREF: IoTranslateBusAddress+B4↑j
                xor     ecx, ecx
                call    sub_140679140
                movzx   eax, byte ptr [rbp+4Fh+var_68]
                cmp     eax, 3
                jz      short loc_14050D039
                cmp     eax, 7
                jz      short loc_14050D039
                cmp     eax, 1
                jnz     short loc_14050D04D
                mov     edi, eax

loc_14050D039:                          ; CODE XREF: IoTranslateBusAddress+18B↑j
                                        ; IoTranslateBusAddress+190↑j
                mov     [r14], edi
                mov     rcx, qword ptr [rbp+4Fh+var_68+4]
                mov     [r13+0], rcx
                jmp     short loc_14050D055
; ---------------------------------------------------------------------------

loc_14050D046:                          ; CODE XREF: IoTranslateBusAddress+14B↑j
                xor     ecx, ecx
                call    sub_140679140

loc_14050D04D:                          ; CODE XREF: IoTranslateBusAddress+79↑j
                                        ; IoTranslateBusAddress+195↑j
                xor     al, al
                jmp     short loc_14050D057
; ---------------------------------------------------------------------------

loc_14050D051:                          ; CODE XREF: IoTranslateBusAddress+55↑j
                                        ; IoTranslateBusAddress+62↑j
                mov     [r13+0], r8

loc_14050D055:                          ; CODE XREF: IoTranslateBusAddress+1A4↑j
                mov     al, 1

loc_14050D057:                          ; CODE XREF: IoTranslateBusAddress+1AF↑j
                mov     rcx, [rbp+4Fh+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 90h
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
; } // starts at 14050CEA0
IoTranslateBusAddress endp
