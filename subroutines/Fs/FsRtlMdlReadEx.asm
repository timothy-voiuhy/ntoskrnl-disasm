FsRtlMdlReadEx  proc near               ; DATA XREF: .rdata:0000000140088FD0↑o
                                        ; .pdata:00000001401070E8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014082E972 SIZE 0000008B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, [rsp+48h+arg_28]
                mov     r12d, r9d
                mov     r14, [rsp+48h+arg_20]
                mov     ebx, r8d
                mov     [rax-20h], rsi
                mov     r15, rdx
                mov     [rax-28h], r14
                mov     rdi, rcx
                call    FsRtlMdlRead
                test    al, al
                jz      loc_14082E972
                xor     edi, edi

loc_14071F3CA:                          ; CODE XREF: FsRtlMdlReadEx+10F678↓j
                mov     eax, edi

loc_14071F3CC:                          ; CODE XREF: FsRtlMdlReadEx+10F629↓j
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
FsRtlMdlReadEx  endp

algn_14071F3EC:                         ; DATA XREF: .rdata:0000000140088FD0↑o
                                        ; .pdata:00000001401070E8↑o
                align 20h
; Exported entry 502. FsRtlMdlRead

; =============== S U B R O U T I N E =======================================


