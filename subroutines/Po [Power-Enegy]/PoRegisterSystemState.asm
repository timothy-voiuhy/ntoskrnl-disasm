PoRegisterSystemState proc near         ; DATA XREF: .pdata:00000001400F69C0↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                xor     ebx, ebx
                xor     edi, edi
                xor     r14d, r14d
                mov     [rsp+48h+arg_18], rbx
                mov     esi, edx
                mov     rbp, rcx
                test    edx, 7FFFFFF8h
                jnz     loc_14056F292
                test    edx, edx
                jz      short loc_14056F211
                js      short loc_14056F211
                mov     ecx, edx
                call    PoSetSystemState
                jmp     loc_14056F292
; ---------------------------------------------------------------------------

loc_14056F211:                          ; CODE XREF: PoRegisterSystemState+31↑j
                                        ; PoRegisterSystemState+33↑j
                mov     rdx, rbp
                mov     ecx, esi
                call    sub_14057317C
                mov     [rsp+48h+arg_10], rbp
                mov     rdi, rbp
                test    rbp, rbp
                jnz     short loc_14056F268
                lea     rax, [rsp+48h+arg_18]
                mov     r9b, 1
                mov     [rsp+48h+var_20], rax
                xor     r8d, r8d
                and     [rsp+48h+var_28], rbx
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1403416A4
                mov     rbx, [rsp+48h+arg_18]
                test    eax, eax
                js      short loc_14056F285
                mov     rdx, rbx
                lea     rcx, [rsp+48h+arg_10]
                call    sub_140771428
                mov     rdi, [rsp+48h+arg_10]
                mov     r14d, eax
                test    eax, eax
                js      short loc_14056F285

loc_14056F268:                          ; CODE XREF: PoRegisterSystemState+56↑j
                xor     r8d, r8d
                mov     edx, esi
                mov     rcx, rdi
                call    sub_14034155C
                mov     r8d, eax
                mov     rcx, rdi
                call    sub_1403415B0
                test    r14d, r14d
                jns     short loc_14056F292

loc_14056F285:                          ; CODE XREF: PoRegisterSystemState+7D↑j
                                        ; PoRegisterSystemState+96↑j
                test    rbx, rbx
                jz      short loc_14056F292
                mov     rcx, rbx
                call    sub_1402B25B4

loc_14056F292:                          ; CODE XREF: PoRegisterSystemState+29↑j
                                        ; PoRegisterSystemState+3C↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rax, rdi
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoRegisterSystemState endp
