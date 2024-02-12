RtlQueryAllFeatureConfigurations proc near
                                        ; DATA XREF: .pdata:0000000140121DB8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-20h], 0
                mov     r15, r8
                and     qword ptr [rax-28h], 0
                lea     r8, [rax-28h]
                mov     rdi, rdx
                movsxd  rbp, ecx
                lea     rdx, [rax-20h]
                mov     r14, r9
                lea     rcx, unk_140C48030
                call    sub_1403A6958
                mov     ecx, ebp
                call    sub_14038C600
                mov     rsi, [rsp+48h+var_28]
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091190A
                and     dword ptr [rsp+48h+var_28], 0
                mov     r8, r14
                mov     dword ptr [rsp+48h+var_28+4], 1
                mov     rdx, r15
                mov     ecx, dword ptr [rsp+rbp*4+48h+var_28]
                lea     rax, [rcx+rcx*2]
                lea     rcx, [rsi+rax*8]
                call    sub_14091B95C
                mov     ebx, eax

loc_14091190A:                          ; CODE XREF: RtlQueryAllFeatureConfigurations+52↑j
                test    ebx, ebx
                js      short loc_14091191D
                test    rdi, rdi
                jz      short loc_14091191B
                mov     rax, [rsp+48h+var_20]
                mov     [rdi], rax

loc_14091191B:                          ; CODE XREF: RtlQueryAllFeatureConfigurations+81↑j
                xor     ebx, ebx

loc_14091191D:                          ; CODE XREF: RtlQueryAllFeatureConfigurations+7C↑j
                mov     rdx, rsi
                lea     rcx, unk_140C48030
                call    sub_1403A6D3C
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlQueryAllFeatureConfigurations endp
