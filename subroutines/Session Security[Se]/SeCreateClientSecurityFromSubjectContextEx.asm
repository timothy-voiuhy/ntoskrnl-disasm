SeCreateClientSecurityFromSubjectContextEx proc near
                                        ; DATA XREF: .pdata:00000001400F87F0↑o

var_68          = byte ptr -68h
var_60          = dword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = byte ptr  8

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
                mov     rsi, r9
                mov     r12b, r8b
                mov     r13, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jnz     short loc_14059739E
                mov     rbx, [rcx+10h]

loc_14059739E:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContextEx+38↑j
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     rdx, [rdi]
                test    rdx, rdx
                jz      short loc_1405973EC
                mov     rax, [rdi+10h]
                lea     r8, [rsp+88h+arg_0]
                mov     rdx, [rdx+450h]
                mov     ebp, 2
                mov     r11, [rax+450h]
                mov     rcx, r11
                call    sub_140219E70
                cmp     [rsp+88h+arg_0], r14b
                jnz     short loc_1405973F1
                mov     r15b, 1
                mov     r14, r11
                jmp     short loc_1405973F1
; ---------------------------------------------------------------------------

loc_1405973EC:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContextEx+51↑j
                mov     ebp, 1

loc_1405973F1:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContextEx+82↑j
                                        ; SeCreateClientSecurityFromSubjectContextEx+8A↑j
                mov     eax, [rdi+8]
                mov     r9d, ebp
                mov     [rsp+88h+var_38], rsi
                mov     r8b, r12b
                mov     [rsp+88h+var_40], r14
                mov     rdx, r13
                mov     [rsp+88h+var_48], r15b
                xor     r14d, r14d
                mov     [rsp+88h+var_50], r14
                mov     rcx, rbx
                mov     [rsp+88h+var_58], 1
                mov     [rsp+88h+var_60], eax
                mov     [rsp+88h+var_68], r14b
                call    sub_140619C30
                mov     edi, eax
                test    eax, eax
                js      short loc_140597436
                cmp     [rsi+8], r14b
                jnz     short loc_140597443

loc_140597436:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContextEx+CE↑j
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag

loc_140597443:                          ; CODE XREF: SeCreateClientSecurityFromSubjectContextEx+D4↑j
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
SeCreateClientSecurityFromSubjectContextEx endp
