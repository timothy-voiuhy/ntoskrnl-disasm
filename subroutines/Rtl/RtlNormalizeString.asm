RtlNormalizeString proc near            ; CODE XREF: sub_14058D844+16E↑p
                                        ; sub_14058D844+1C4↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax+10h], 0
                mov     rbp, r9
                mov     edi, r8d
                mov     rsi, rdx
                test    rdx, rdx
                jz      short loc_14091A6C2
                cmp     r8d, 0FFFFFFFFh
                jl      short loc_14091A6C2
                test    ecx, ecx
                jz      short loc_14091A6C2
                mov     rbx, [rsp+38h+arg_20]
                cmp     dword ptr [rbx], 0
                jl      short loc_14091A6C2
                lea     rdx, [rax+10h]
                call    sub_14091CEF0
                test    eax, eax
                js      short loc_14091A6C7
                mov     rcx, [rsp+38h+arg_8]
                mov     r9, rbp
                mov     r8d, edi
                mov     [rsp+38h+var_18], rbx
                mov     rdx, rsi
                call    sub_14091A6E4
                jmp     short loc_14091A6C7
; ---------------------------------------------------------------------------

loc_14091A6C2:                          ; CODE XREF: RtlNormalizeString+25↑j
                                        ; RtlNormalizeString+2B↑j ...
                mov     eax, 0C000000Dh

loc_14091A6C7:                          ; CODE XREF: RtlNormalizeString+46↑j
                                        ; RtlNormalizeString+60↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNormalizeString endp
