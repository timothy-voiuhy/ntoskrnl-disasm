PoFxRegisterPrimaryDevice proc near     ; DATA XREF: .pdata:000000014011F8E0↑o

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 90h
                xor     edi, edi
                mov     r14, r8
                mov     rbx, rdx
                mov     rsi, rcx
                test    rcx, rcx
                jz      loc_1408E5BAC
                test    rdx, rdx
                jz      loc_1408E5BAC
                cmp     dword ptr [rdx], 1
                jnz     loc_1408E5BAC
                lea     rcx, [rdx+50h]
                mov     edx, [rdx+4]
                call    sub_1407B53AC
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1408E5B0C
                mov     esi, 0C000009Ah
                jmp     loc_1408E5BC3
; ---------------------------------------------------------------------------

loc_1408E5B0C:                          ; CODE XREF: PoFxRegisterPrimaryDevice+50↑j
                mov     rax, [rbx+10h]
                lea     rdx, [rsp+98h+var_58]
                mov     r9d, [rbx+4]
                xorps   xmm0, xmm0
                and     [rsp+98h+var_20], 0
                mov     r8, rdi
                mov     [rsp+98h+var_58], rax
                mov     rcx, rsi
                mov     rax, [rbx+18h]
                mov     [rsp+98h+var_50], rax
                mov     rax, [rbx+20h]
                mov     [rsp+98h+var_48], rax
                mov     rax, [rbx+28h]
                mov     [rsp+98h+var_40], rax
                mov     rax, [rbx+30h]
                mov     [rsp+98h+var_38], rax
                mov     rax, [rbx+38h]
                mov     [rsp+98h+var_30], rax
                mov     rax, [rbx+40h]
                mov     [rsp+98h+var_28], rax
                mov     rax, [rbx+48h]
                mov     [rsp+98h+var_68], r14
                and     [rsp+98h+var_70], 0
                mov     [rsp+98h+var_78], rax
                movdqa  [rsp+98h+var_18], xmm0
                call    sub_1407B45EC
                mov     esi, eax
                test    eax, eax
                js      short loc_1408E5BB1
                cmp     cs:byte_140C20558, 0
                jz      short loc_1408E5BB1
                mov     ecx, [rbx+8]
                test    cl, 1
                jz      short loc_1408E5BB1
                mov     rcx, [r14]
                lock or dword ptr [rcx+338h], 80h
                jmp     short loc_1408E5BB1
; ---------------------------------------------------------------------------

loc_1408E5BAC:                          ; CODE XREF: PoFxRegisterPrimaryDevice+26↑j
                                        ; PoFxRegisterPrimaryDevice+2F↑j ...
                mov     esi, 0C000000Dh

loc_1408E5BB1:                          ; CODE XREF: PoFxRegisterPrimaryDevice+D9↑j
                                        ; PoFxRegisterPrimaryDevice+E2↑j ...
                test    rdi, rdi
                jz      short loc_1408E5BC3
                mov     edx, 4D584650h
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1408E5BC3:                          ; CODE XREF: PoFxRegisterPrimaryDevice+57↑j
                                        ; PoFxRegisterPrimaryDevice+104↑j
                lea     r11, [rsp+98h+var_8]
                mov     eax, esi
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxRegisterPrimaryDevice endp
