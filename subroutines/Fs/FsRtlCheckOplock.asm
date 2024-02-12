FsRtlCheckOplock proc near              ; DATA XREF: .pdata:00000001400CCB10↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 50h
                mov     r14, r8
                mov     rbp, r9
                xor     r8d, r8d
                mov     rbx, rdx
                mov     rdi, rcx
                xor     esi, esi
                call    sub_14024D9B0
                cmp     [rdi], rsi
                jz      short loc_14024DB90

loc_14024DB25:                          ; CODE XREF: FsRtlCheckOplock+AF↓j
                mov     rax, [rbx+0B8h]
                cmp     [rax], sil
                jz      short loc_14024DBA5

loc_14024DB31:                          ; CODE XREF: FsRtlCheckOplock+C4↓j
                                        ; FsRtlCheckOplock+CE↓j
                mov     rax, [rsp+58h+arg_20]
                xor     r9d, r9d
                mov     [rsp+58h+var_10], 0
                mov     r8d, esi
                mov     [rsp+58h+var_18], 0
                mov     rdx, rbx
                mov     [rsp+58h+var_20], 0
                mov     rcx, rdi
                mov     [rsp+58h+var_28], rax
                mov     [rsp+58h+var_30], rbp
                mov     [rsp+58h+var_38], r14
                call    FsRtlCheckOplockEx2

loc_14024DB74:                          ; CODE XREF: FsRtlCheckOplock+B3↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14024DB90:                          ; CODE XREF: FsRtlCheckOplock+33↑j
                test    rbx, rbx
                jz      short loc_14024DBA1
                mov     rax, [rbx+0B8h]
                cmp     [rax], sil
                jz      short loc_14024DB25

loc_14024DBA1:                          ; CODE XREF: FsRtlCheckOplock+A3↑j
                xor     eax, eax
                jmp     short loc_14024DB74
; ---------------------------------------------------------------------------

loc_14024DBA5:                          ; CODE XREF: FsRtlCheckOplock+3F↑j
                mov     eax, [rax+10h]
                mov     esi, eax
                shr     esi, 8
                and     esi, 1
                bt      eax, 10h
                jnb     loc_14024DB31
                bts     esi, 1Ch
                jmp     loc_14024DB31
FsRtlCheckOplock endp
