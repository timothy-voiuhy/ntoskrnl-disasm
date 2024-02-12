FsRtlPrepareMdlWriteEx proc near        ; DATA XREF: .rdata:0000000140088F88↑o
                                        ; .pdata:00000001401070D0↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014082E8E8 SIZE 0000008A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, [rsp+48h+arg_28]
                mov     r12d, r9d
                mov     r14, [rsp+48h+arg_20]
                mov     ebx, r8d
                mov     [rax-20h], rdi
                mov     r15, rdx
                mov     [rax-28h], r14
                mov     rsi, rcx
                call    FsRtlPrepareMdlWrite
                test    al, al
                jz      loc_14082E8E8
                xor     esi, esi

loc_14071F2AA:                          ; CODE XREF: FsRtlPrepareMdlWriteEx+10F70D↓j
                mov     eax, esi

loc_14071F2AC:                          ; CODE XREF: FsRtlPrepareMdlWriteEx+10F6BE↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlPrepareMdlWriteEx endp
