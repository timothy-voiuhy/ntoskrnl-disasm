RtlRaiseException proc near             ; CODE XREF: sub_1403D6020+8F↓p
                                        ; sub_140407560+47↓j ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404809AA SIZE 00000038 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp             ; ExRaiseException
                sub     rsp, 70h
                lea     rbp, [rsp+40h]
                mov     [rbp+30h+arg_0], rbx
                mov     [rbp+30h+arg_8], rsi
                mov     [rbp+30h+arg_10], rdi
                mov     [rbp+30h+arg_18], r14
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+30h+var_10], rax
                and     [rbp+30h+var_30], 0
                lea     rdx, [rbp+30h+var_30]
                and     [rbp+30h+var_20], 0
                mov     rsi, rcx
                and     [rbp+30h+var_18], 0
                mov     edi, 10000Bh
                and     [rbp+30h+var_28], 0
                mov     ecx, edi
                xor     r8d, r8d
                call    sub_1402AA320
                mov     eax, [rbp+30h+var_30]
                lea     r8, [rax+0Fh]
                cmp     r8, rax
                ja      short loc_140349BB8
                mov     r8, 0FFFFFFFFFFFFFF0h

loc_140349BB8:                          ; CODE XREF: RtlRaiseException+5C↑j
                and     r8, 0FFFFFFFFFFFFFFF0h
                mov     rax, r8
                call    __chkstk
                sub     rsp, r8
                xor     r9d, r9d
                lea     r8, [rbp+30h+var_30]
                mov     edx, edi
                lea     rbx, [rsp+70h+var_30]
                mov     rcx, rbx
                call    sub_1402AAD20
                mov     rcx, rbx
                mov     edi, eax
                call    sub_140406FB0
                mov     r14, [rbx+0F8h]
                lea     rdx, [rbp+30h+var_28]
                mov     rcx, r14
                xor     r8d, r8d
                call    RtlLookupFunctionEntry
                test    rax, rax
                jz      short loc_140349C53
                and     [rsp+70h+var_38], 0
                lea     rcx, [rbp+30h+var_20]
                mov     rdx, [rbp+30h+var_28]
                mov     r9, rax
                mov     [rsp+70h+var_40], rcx
                mov     r8, r14
                lea     rcx, [rbp+30h+var_18]
                mov     [rsp+70h+var_48], rcx
                xor     ecx, ecx
                mov     [rsp+70h+var_50], rbx
                call    RtlVirtualUnwind
                mov     rax, [rbx+0F8h]
                mov     rdx, rbx
                mov     rcx, rsi
                mov     [rsi+10h], rax
                call    sub_1402AAF70
                test    al, al
                jz      loc_1404809AA
                jmp     loc_1404809BF
; ---------------------------------------------------------------------------

loc_140349C53:                          ; CODE XREF: RtlRaiseException+B0↑j
                                        ; RtlRaiseException+136E6A↓j
                mov     ecx, edi
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140349B50
RtlRaiseException endp
