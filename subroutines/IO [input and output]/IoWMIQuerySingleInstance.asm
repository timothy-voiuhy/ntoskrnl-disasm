IoWMIQuerySingleInstance proc near      ; DATA XREF: .rdata:0000000140090180↑o
                                        ; .pdata:00000001401095D8↑o

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083DF2A SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                movzx   edi, word ptr [rdx]
                mov     rsi, r9
                mov     ebp, [r8]
                add     edi, 49h ; 'I'
                and     edi, 0FFFFFFF8h
                mov     r14, r8
                mov     r15, rdx
                mov     r12, rcx
                mov     rbx, r9
                test    r9, r9
                jz      loc_140753559
                cmp     ebp, edi
                jb      loc_140753559

loc_1407534B2:                          ; CODE XREF: IoWMIQuerySingleInstance+100↓j
                test    rbx, rbx
                jz      loc_14083DF2A
                xor     edx, edx
                mov     rcx, rbx
                lea     r8d, [rdx+40h]
                call    memset
                mov     dword ptr [rbx+2Ch], 2
                lea     rcx, [rbx+42h]
                mov     [rbx], edi
                mov     dword ptr [rbx+30h], 40h ; '@'
                mov     [rbx+38h], edi
                movzx   eax, word ptr [r15]
                mov     [rbx+40h], ax
                movzx   r8d, word ptr [r15]
                mov     rdx, [r15+8]
                call    memmove
                mov     eax, [rbx]
                mov     r9b, 1
                mov     [rsp+68h+arg_8], eax
                xor     r8d, r8d
                lea     rax, [rsp+68h+arg_8]
                xor     edx, edx
                mov     [rsp+68h+var_38], rax
                mov     rcx, r12
                mov     [rsp+68h+var_40], ebp
                mov     [rsp+68h+var_48], rbx
                call    sub_1407535A0
                mov     edi, eax
                test    eax, eax
                js      short loc_140753580
                mov     eax, [rbx+2Ch]
                bt      eax, 8
                jb      short loc_140753591
                test    al, 20h
                jnz     short loc_140753575
                mov     eax, [rsp+68h+arg_8]
                mov     [r14], eax
                cmp     rbx, rsi
                jnz     short loc_14075357B

loc_14075353D:                          ; CODE XREF: IoWMIQuerySingleInstance+113↓j
                                        ; IoWMIQuerySingleInstance+11F↓j ...
                lea     r11, [rsp+68h+var_28]
                mov     eax, edi
                mov     rbx, [r11+30h]
                mov     rbp, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140753559:                          ; CODE XREF: IoWMIQuerySingleInstance+34↑j
                                        ; IoWMIQuerySingleInstance+3C↑j
                mov     edx, edi
                mov     ecx, 200h
                mov     r8d, 70696D57h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     ebp, edi
                jmp     loc_1407534B2
; ---------------------------------------------------------------------------

loc_140753575:                          ; CODE XREF: IoWMIQuerySingleInstance+BF↑j
                mov     eax, [rbx+30h]
                mov     [r14], eax

loc_14075357B:                          ; CODE XREF: IoWMIQuerySingleInstance+CB↑j
                mov     edi, 0C0000023h

loc_140753580:                          ; CODE XREF: IoWMIQuerySingleInstance+B2↑j
                                        ; IoWMIQuerySingleInstance+126↓j
                cmp     rbx, rsi
                jz      short loc_14075353D
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_14075353D
; ---------------------------------------------------------------------------

loc_140753591:                          ; CODE XREF: IoWMIQuerySingleInstance+BB↑j
                mov     edi, 0C00000BBh
                jmp     short loc_140753580
IoWMIQuerySingleInstance endp
