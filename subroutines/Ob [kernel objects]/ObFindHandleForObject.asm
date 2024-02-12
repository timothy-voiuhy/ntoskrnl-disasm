ObFindHandleForObject proc near         ; DATA XREF: .pdata:000000014010464C↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     rbp, r9
                mov     r14, r8
                mov     rdi, rdx
                mov     rsi, rcx
                xor     ebx, ebx
                call    sub_140639CB4
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1406E849B
                test    rdi, rdi
                jz      short loc_1406E84B9
                lea     rax, [rdi-30h]
                mov     [rsp+48h+var_28], rax

loc_1406E8462:                          ; CODE XREF: ObFindHandleForObject+9E↓j
                mov     r9, [rsp+48h+arg_20]
                lea     r8, [rsp+48h+var_28]
                lea     rdx, sub_1406E4E20
                mov     [rsp+48h+var_20], r14
                mov     [rsp+48h+var_18], rbp
                call    ExEnumHandleTable
                test    al, al
                movzx   ebx, bl
                mov     edx, 1
                lea     rcx, [rsi+458h]
                cmovnz  ebx, edx
                call    sub_14024C380

loc_1406E849B:                          ; CODE XREF: ObFindHandleForObject+32↑j
                mov     rbp, [rsp+48h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E84B9:                          ; CODE XREF: ObFindHandleForObject+37↑j
                mov     [rsp+48h+var_28], rbx
                jmp     short loc_1406E8462
ObFindHandleForObject endp
