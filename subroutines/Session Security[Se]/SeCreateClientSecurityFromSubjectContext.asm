SeCreateClientSecurityFromSubjectContext proc near
                                        ; DATA XREF: .rdata:00000001400889D8↑o
                                        ; .pdata:0000000140106E90↑o

var_68          = byte ptr -68h
var_60          = dword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = byte ptr  8

; FUNCTION CHUNK AT 000000014082E1C2 SIZE 0000000B BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     rbx, [rcx]
                xor     r14d, r14d
                xor     r15b, r15b
                mov     [rax+8], r14b
                mov     r12, r9
                mov     r13b, r8b
                mov     rsi, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jnz     short loc_14071D70E
                mov     rbx, [rcx+10h]

loc_14071D70E:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+38↑j
                mov     rcx, rbx
                call    ObfReferenceObject
                mov     rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_14071D787
                lea     ebp, [rdx+1]

loc_14071D721:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+E6↓j
                                        ; SeCreateClientSecurityFromSubjectContext+110AF8↓j
                mov     eax, [rdi+8]
                mov     r9d, ebp
                mov     [rsp+88h+var_38], r12
                mov     r8b, r13b
                mov     [rsp+88h+var_40], r14
                mov     rdx, rsi
                mov     [rsp+88h+var_48], r15b
                xor     r14d, r14d
                mov     [rsp+88h+var_50], r14
                mov     rcx, rbx
                mov     [rsp+88h+var_58], r14b
                mov     [rsp+88h+var_60], eax
                mov     [rsp+88h+var_68], r14b
                call    sub_140619C30
                mov     edi, eax
                test    eax, eax
                js      short loc_14071D7C1
                cmp     [rsi+8], r14b
                jz      short loc_14071D7C1

loc_14071D766:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+F9↓j
                lea     r11, [rsp+88h+var_28]
                mov     eax, edi
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071D787:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+4C↑j
                mov     rax, [rdi+10h]
                lea     r8, [rsp+88h+arg_0]
                mov     rdx, [rdx+450h]
                mov     ebp, 2
                mov     r11, [rax+450h]
                mov     rcx, r11
                call    sub_140219E70
                cmp     [rsp+88h+arg_0], r14b
                jnz     loc_14071D721
                jmp     loc_14082E1C2
; ---------------------------------------------------------------------------

loc_14071D7C1:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContext+8E↑j
                                        ; SeCreateClientSecurityFromSubjectContext+94↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                jmp     short loc_14071D766
SeCreateClientSecurityFromSubjectContext endp
