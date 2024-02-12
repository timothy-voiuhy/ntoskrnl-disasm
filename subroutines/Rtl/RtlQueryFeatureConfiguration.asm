RtlQueryFeatureConfiguration proc near  ; CODE XREF: sub_140363FAC+51↑p
                                        ; sub_1405CC7D0+3C↓p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                and     qword ptr [rax-18h], 0
                mov     rbx, r9
                and     qword ptr [rax-10h], 0
                mov     rdi, r8
                mov     ebp, edx
                mov     r14d, ecx
                call    KeGetEffectiveIrql
                movzx   r8d, al
                cmp     r8b, 1
                jbe     short loc_14038C55B
                xor     ecx, ecx
                call    sub_14039AADC
                test    al, al
                jnz     short loc_14038C554
                cmp     cs:byte_140C22DB4, cl
                jz      loc_14038C5DB

loc_14038C554:                          ; CODE XREF: RtlQueryFeatureConfiguration+46↑j
                mov     eax, 80000022h
                jmp     short loc_14038C5BF
; ---------------------------------------------------------------------------

loc_14038C55B:                          ; CODE XREF: RtlQueryFeatureConfiguration+3B↑j
                call    sub_140911968
                mov     rcx, rax
                lea     r8, [rsp+48h+var_10]
                lea     rdx, [rsp+48h+var_18]
                mov     rsi, rax
                call    sub_1403A6958
                mov     rcx, [rsp+48h+var_10]
                mov     r9, rbx
                mov     r8d, ebp
                mov     edx, r14d
                call    sub_140777CC4
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14038C5A6
                cmp     eax, 0C0000225h
                jz      short loc_14038C59C
                cmp     eax, 80000022h
                jnz     short loc_14038C5B0

loc_14038C59C:                          ; CODE XREF: RtlQueryFeatureConfiguration+93↑j
                mov     rcx, [rsp+48h+var_18]
                mov     [rdi], rcx
                jmp     short loc_14038C5B0
; ---------------------------------------------------------------------------

loc_14038C5A6:                          ; CODE XREF: RtlQueryFeatureConfiguration+8C↑j
                mov     rax, [rsp+48h+var_18]
                xor     ebx, ebx
                mov     [rdi], rax

loc_14038C5B0:                          ; CODE XREF: RtlQueryFeatureConfiguration+9A↑j
                                        ; RtlQueryFeatureConfiguration+A4↑j
                mov     rdx, [rsp+48h+var_10]
                mov     rcx, rsi
                call    sub_1403A6D3C
                mov     eax, ebx

loc_14038C5BF:                          ; CODE XREF: RtlQueryFeatureConfiguration+59↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14038C5DB:                          ; CODE XREF: RtlQueryFeatureConfiguration+4E↑j
                mov     rcx, [rsp+48h]
                lea     rdx, RtlQueryFeatureConfiguration
                xor     r9d, r9d
                mov     [rsp+48h+var_28], rcx
                lea     ecx, [r9+0Ah]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
RtlQueryFeatureConfiguration endp
