FsRtlPrepareMdlWrite proc near          ; CODE XREF: FsRtlPrepareMdlWriteEx+3B↑p
                                        ; DATA XREF: .pdata:00000001401070DC↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     edi, r9d
                mov     esi, r8d
                mov     rbp, rdx
                mov     rbx, rcx
                call    IoGetRelatedDeviceObject
                mov     rcx, rax
                mov     r10, [rax+8]
                mov     r11, [r10+50h]
                test    r11, r11
                jz      short loc_14071F36A
                cmp     dword ptr [r11], 90h
                jbe     short loc_14071F36A
                mov     rax, [r11+90h]
                test    rax, rax
                jz      short loc_14071F36A
                mov     [rsp+48h+var_18], rcx
                mov     r9d, edi
                mov     rcx, [rsp+48h+arg_28]
                mov     r8d, esi
                mov     [rsp+48h+var_20], rcx
                mov     rdx, rbp
                mov     rcx, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rcx
                mov     rcx, rbx
                call    sub_1404079D0

loc_14071F354:                          ; CODE XREF: FsRtlPrepareMdlWrite+8C↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14071F36A:                          ; CODE XREF: FsRtlPrepareMdlWrite+33↑j
                                        ; FsRtlPrepareMdlWrite+3C↑j ...
                xor     al, al
                jmp     short loc_14071F354
FsRtlPrepareMdlWrite endp
