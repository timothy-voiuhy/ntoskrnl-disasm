PoFxRegisterCoreDevice proc near        ; CODE XREF: sub_1403BDD20+BF↑p
                                        ; sub_1403BDE3C+C0↑p ...

var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_28          = qword ptr -28h
var_8           = byte ptr -8
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014085A582 SIZE 00000014 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 0A0h
                mov     rbx, rdx
                mov     r14, r8
                xor     edx, edx
                mov     rsi, rcx
                lea     rcx, [rax-58h]
                lea     r8d, [rdx+50h]
                call    memset
                xor     edi, edi
                and     [rsp+0A8h+arg_0], rdi
                test    rsi, rsi
                jz      loc_14085A58C
                cmp     dword ptr [rbx], 1
                jnz     loc_14085A58C
                cmp     [rbx+18h], rdi
                jz      loc_14085A58C
                mov     edx, [rbx+4]
                lea     rcx, [rbx+30h]
                call    sub_1407B53AC
                mov     rdi, rax
                test    rax, rax
                jz      loc_14085A582
                mov     rax, [rbx+8]
                lea     r8, [rsp+0A8h+var_58]
                mov     [rsp+0A8h+var_58], rax
                mov     r9, rdi
                mov     rax, [rbx+10h]
                mov     rdx, rsi
                mov     [rsp+0A8h+var_50], rax
                xor     ecx, ecx
                mov     rax, [rbx+20h]
                mov     [rsp+0A8h+var_48], rax
                mov     rax, [rbx+18h]
                mov     [rsp+0A8h+var_28], rax
                lea     rax, [rsp+0A8h+arg_0]
                mov     [rsp+0A8h+var_68], rax
                and     [rsp+0A8h+var_70], 0
                mov     rax, [rbx+28h]
                mov     [rsp+0A8h+var_78], 0
                mov     [rsp+0A8h+var_80], rax
                mov     eax, [rbx+4]
                mov     [rsp+0A8h+var_88], eax
                call    sub_1407B478C
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407B438E
                mov     r8, [rsp+0A8h+arg_0]
                call    sub_1403BE1A4
                xor     ebx, ebx

loc_1407B4354:                          ; CODE XREF: PoFxRegisterCoreDevice+127↓j
                                        ; PoFxRegisterCoreDevice+A6321↓j
                test    rdi, rdi
                jz      short loc_1407B4366
                mov     edx, 4D584650h
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1407B4366:                          ; CODE XREF: PoFxRegisterCoreDevice+E7↑j
                                        ; PoFxRegisterCoreDevice+A6317↓j
                mov     rax, [rsp+0A8h+arg_0]
                lea     r11, [rsp+0A8h+var_8]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     [r14], rax
                mov     eax, ebx
                mov     rbx, [r11+18h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407B438E:                          ; CODE XREF: PoFxRegisterCoreDevice+D3↑j
                and     [rsp+0A8h+arg_0], 0
                jmp     short loc_1407B4354
PoFxRegisterCoreDevice endp
