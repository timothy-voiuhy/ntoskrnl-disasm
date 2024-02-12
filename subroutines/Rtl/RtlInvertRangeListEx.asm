RtlInvertRangeListEx proc near          ; CODE XREF: RtlInvertRangeList+10↑p
                                        ; sub_140868920+D8↓p
                                        ; DATA XREF: ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rbx, rdx
                mov     rsi, r9
                xor     edx, edx
                mov     bpl, r8b
                mov     r14, rcx
                cmp     [rbx+14h], edx
                jz      loc_1407B7652
                mov     rax, [rbx]
                mov     r15, [rsp+58h+arg_20]

loc_1407B75CA:                          ; CODE XREF: RtlInvertRangeListEx+56↓j
                lea     rdi, [rax-28h]
                cmp     rbx, rax
                jz      short loc_1407B760B
                mov     r8, [rdi]
                cmp     r8, rdx
                ja      short loc_1407B75E8

loc_1407B75DB:                          ; CODE XREF: RtlInvertRangeListEx+77↓j
                mov     rdx, [rdi+8]
                mov     rax, [rdi+28h]
                inc     rdx
                jmp     short loc_1407B75CA
; ---------------------------------------------------------------------------

loc_1407B75E8:                          ; CODE XREF: RtlInvertRangeListEx+49↑j
                mov     [rsp+58h+var_28], r15
                dec     r8
                mov     [rsp+58h+var_30], rsi
                mov     r9b, bpl
                and     [rsp+58h+var_38], 0
                mov     rcx, r14
                call    RtlAddRange
                test    eax, eax
                jns     short loc_1407B75DB
                jmp     short loc_1407B7638
; ---------------------------------------------------------------------------

loc_1407B760B:                          ; CODE XREF: RtlInvertRangeListEx+41↑j
                lea     rax, [rdx-1]
                cmp     rdx, rax
                jbe     short loc_1407B7636
                mov     [rsp+58h+var_28], r15
                mov     r9b, bpl
                mov     [rsp+58h+var_30], rsi
                or      r8, 0FFFFFFFFFFFFFFFFh
                and     [rsp+58h+var_38], 0
                mov     rcx, r14
                call    RtlAddRange
                test    eax, eax
                js      short loc_1407B7638

loc_1407B7636:                          ; CODE XREF: RtlInvertRangeListEx+82↑j
                xor     eax, eax

loc_1407B7638:                          ; CODE XREF: RtlInvertRangeListEx+79↑j
                                        ; RtlInvertRangeListEx+A4↑j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407B7652:                          ; CODE XREF: RtlInvertRangeListEx+29↑j
                mov     rax, [rsp+58h+arg_20]
                mov     r9b, bpl
                mov     [rsp+58h+var_28], rax
                or      r8, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+58h+var_30], rsi
                and     [rsp+58h+var_38], edx
                call    RtlAddRange
                jmp     short loc_1407B7638
RtlInvertRangeListEx endp
