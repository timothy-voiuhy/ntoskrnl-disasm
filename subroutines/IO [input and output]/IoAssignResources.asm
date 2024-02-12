IoAssignResources proc near             ; DATA XREF: .pdata:000000014011CEE0↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    r14
                sub     rsp, 30h
                xor     r14d, r14d
                mov     rbx, r9
                mov     rsi, r8
                test    r9, r9
                jz      loc_14089E941
                mov     rax, [r9+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14089E941
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_14089E941
                test    r8, r8
                jz      short loc_14089E821
                movsx   edx, word ptr [r8+2]
                mov     rcx, r8
                call    sub_1403CC478
                lea     rbp, [rsi+38h]
                cmp     [rbp+0], r14w
                jz      short loc_14089E821
                lea     edx, [r14+2]
                mov     rcx, rbp
                call    sub_1403CC478
                movzx   edx, word ptr [rbp+0]
                mov     rcx, [rsi+40h]
                call    sub_1403CC478

loc_14089E821:                          ; CODE XREF: IoAssignResources+4E↑j
                                        ; IoAssignResources+66↑j
                movzx   edx, word ptr [rbx+2]
                mov     rcx, rbx
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14089E868
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], r14w
                jz      short loc_14089E868
                mov     edx, 2
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089E868:                          ; CODE XREF: IoAssignResources+94↑j
                                        ; IoAssignResources+AB↑j
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14089E926
                mov     edx, 310h
                lea     rbp, [rcx+28h]
                call    sub_1403CC478
                cmp     [rbp+0], r14w
                jz      short loc_14089E8AB
                mov     edx, 2
                mov     rcx, rbp
                call    sub_1403CC478
                movzx   edx, word ptr [rbp+0]
                mov     rcx, [rbp+8]
                call    sub_1403CC478

loc_14089E8AB:                          ; CODE XREF: IoAssignResources+EF↑j
                mov     rdx, [rbx+138h]
                mov     rcx, [rdx+28h]
                add     rcx, 38h ; '8'
                cmp     [rcx], r14w
                jz      short loc_14089E8E9
                mov     edx, 2
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rdx, [rbx+138h]

loc_14089E8E9:                          ; CODE XREF: IoAssignResources+11E↑j
                mov     rax, [rdx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_14089E926
                add     rcx, 38h ; '8'
                cmp     [rcx], r14w
                jz      short loc_14089E926
                mov     edx, 2
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089E926:                          ; CODE XREF: IoAssignResources+D6↑j
                                        ; IoAssignResources+154↑j ...
                mov     r9, rsi
                mov     [rsp+38h+var_18], r14
                mov     r8, rbx
                mov     edx, 2
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089E941:                          ; CODE XREF: IoAssignResources+21↑j
                                        ; IoAssignResources+35↑j ...
                mov     r9, [rsp+38h+arg_20]
                test    r9, r9
                jz      short loc_14089E95A
                cmp     [r9+1Ch], r14d
                jz      short loc_14089E957
                cmp     [r9+24h], r14d
                jnz     short loc_14089E95A

loc_14089E957:                          ; CODE XREF: IoAssignResources+1AF↑j
                mov     r9, r14

loc_14089E95A:                          ; CODE XREF: IoAssignResources+1A9↑j
                                        ; IoAssignResources+1B5↑j
                mov     rax, [rsp+38h+arg_28]
                test    rax, rax
                jz      short loc_14089E967
                mov     [rax], r14

loc_14089E967:                          ; CODE XREF: IoAssignResources+1C2↑j
                mov     r8, rbx
                mov     [rsp+38h+var_18], rax
                mov     rdx, rsi
                mov     ecx, 2
                call    sub_14074F9B4
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAssignResources endp
