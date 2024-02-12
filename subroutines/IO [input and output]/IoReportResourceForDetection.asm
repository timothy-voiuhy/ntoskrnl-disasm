IoReportResourceForDetection proc near  ; DATA XREF: .pdata:000000014011D0E4↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 50h
                xor     ebp, ebp
                mov     rbx, r9
                mov     rdi, rcx
                test    r9, r9
                jz      loc_1408A17F3
                mov     rax, [r9+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1408A17F3
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1408A17F3
                lea     r14d, [rbp+2]
                test    rdi, rdi
                jz      short loc_1408A16E3
                movsx   edx, word ptr [rdi+2]
                mov     rcx, rdi
                call    sub_1403CC478
                lea     rsi, [rdi+38h]
                cmp     [rsi], bp
                jz      short loc_1408A16E3
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1403CC478
                movzx   edx, word ptr [rsi]
                mov     rcx, [rdi+40h]
                call    sub_1403CC478

loc_1408A16E3:                          ; CODE XREF: IoReportResourceForDetection+55↑j
                                        ; IoReportResourceForDetection+6A↑j
                movzx   edx, word ptr [rbx+2]
                mov     rcx, rbx
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_1408A1727
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_1408A1727
                mov     edx, r14d
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_1408A1727:                          ; CODE XREF: IoReportResourceForDetection+96↑j
                                        ; IoReportResourceForDetection+AC↑j
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1408A17DA
                mov     edx, 310h
                lea     rsi, [rcx+28h]
                call    sub_1403CC478
                cmp     [rsi], bp
                jz      short loc_1408A1765
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1403CC478
                movzx   edx, word ptr [rsi]
                mov     rcx, [rsi+8]
                call    sub_1403CC478

loc_1408A1765:                          ; CODE XREF: IoReportResourceForDetection+EC↑j
                mov     rdx, [rbx+138h]
                mov     rcx, [rdx+28h]
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_1408A17A0
                mov     edx, r14d
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rdx, [rbx+138h]

loc_1408A17A0:                          ; CODE XREF: IoReportResourceForDetection+117↑j
                mov     rax, [rdx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_1408A17DA
                add     rcx, 38h ; '8'
                cmp     [rcx], bp
                jz      short loc_1408A17DA
                mov     edx, r14d
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_1408A17DA:                          ; CODE XREF: IoReportResourceForDetection+D5↑j
                                        ; IoReportResourceForDetection+14B↑j ...
                mov     r9, rdi
                mov     [rsp+58h+var_38], rbp
                mov     r8, rbx
                mov     rdx, r14
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1408A17F3:                          ; CODE XREF: IoReportResourceForDetection+24↑j
                                        ; IoReportResourceForDetection+38↑j ...
                mov     rax, [rsp+58h+arg_30]
                mov     r9, rdx
                mov     [rsp+58h+var_10], rax
                mov     r8, rdi
                mov     rax, [rsp+58h+arg_20]
                mov     ecx, 3
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
IoReportResourceForDetection endp
