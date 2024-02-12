IoReportResourceUsage proc near         ; DATA XREF: .pdata:000000014011D0F0↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_40          = qword ptr  48h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 50h
                mov     rbx, [rsp+58h+arg_20]
                xor     ebp, ebp
                mov     rdi, rdx
                test    rbx, rbx
                jz      loc_1408A19E8
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1408A19E8
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1408A19E8
                lea     r14d, [rbp+2]
                test    rdx, rdx
                jz      short loc_1408A18D8
                movsx   edx, word ptr [rdx+2]
                mov     rcx, rdi
                call    sub_1403CC478
                lea     rsi, [rdi+38h]
                cmp     [rsi], bp
                jz      short loc_1408A18D8
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1403CC478
                movzx   edx, word ptr [rsi]
                mov     rcx, [rdi+40h]
                call    sub_1403CC478

loc_1408A18D8:                          ; CODE XREF: IoReportResourceUsage+5A↑j
                                        ; IoReportResourceUsage+6F↑j
                movzx   edx, word ptr [rbx+2]
                mov     rcx, rbx
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_1408A191C
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_1408A191C
                mov     edx, r14d
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_1408A191C:                          ; CODE XREF: IoReportResourceUsage+9B↑j
                                        ; IoReportResourceUsage+B1↑j
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1408A19CF
                mov     edx, 310h
                lea     rsi, [rcx+28h]
                call    sub_1403CC478
                cmp     [rsi], bp
                jz      short loc_1408A195A
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1403CC478
                movzx   edx, word ptr [rsi]
                mov     rcx, [rsi+8]
                call    sub_1403CC478

loc_1408A195A:                          ; CODE XREF: IoReportResourceUsage+F1↑j
                mov     rdx, [rbx+138h]
                mov     rcx, [rdx+28h]
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_1408A1995
                mov     edx, r14d
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rdx, [rbx+138h]

loc_1408A1995:                          ; CODE XREF: IoReportResourceUsage+11C↑j
                mov     rax, [rdx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_1408A19CF
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_1408A19CF
                mov     edx, r14d
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_1408A19CF:                          ; CODE XREF: IoReportResourceUsage+DA↑j
                                        ; IoReportResourceUsage+150↑j ...
                mov     r9, rdi
                mov     [rsp+58h+var_38], rbp
                mov     r8, rbx
                mov     rdx, r14
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1408A19E8:                          ; CODE XREF: IoReportResourceUsage+29↑j
                                        ; IoReportResourceUsage+3D↑j ...
                mov     rax, [rsp+58h+arg_40]
                mov     r9, r8
                mov     [rsp+58h+var_10], rax
                mov     r8, rdi
                mov     rax, [rsp+58h+arg_28]
                xor     ecx, ecx
                mov     [rsp+58h+var_28], rax
                mov     [rsp+58h+var_30], rbx
                call    sub_1408A1A38
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReportResourceUsage endp
