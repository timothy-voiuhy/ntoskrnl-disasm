RtlUnwind       proc near               ; CODE XREF: _local_unwind+1E↓p
                                        ; DATA XREF: .pdata:00000001400D93E0↑o

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    r14
                push    r15
                sub     rsp, 40h
                lea     rbp, [rsp+30h]
                mov     [rbp+20h+arg_0], rbx
                mov     [rbp+20h+arg_8], rsi
                mov     [rbp+20h+arg_10], rdi
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+20h+var_18], rax
                and     [rbp+20h+var_20], 0
                mov     rsi, r8
                mov     r14, rdx
                mov     r15, rcx
                xor     r8d, r8d
                lea     rdx, [rbp+20h+var_20]
                mov     ecx, 10000Bh
                mov     rdi, r9
                call    sub_1402AA320
                mov     eax, [rbp+20h+var_20]
                lea     r10, [rax+0Fh]
                cmp     r10, rax
                ja      short loc_140361870
                mov     r10, 0FFFFFFFFFFFFFF0h

loc_140361870:                          ; CODE XREF: RtlUnwind+54↑j
                and     r10, 0FFFFFFFFFFFFFFF0h
                mov     rax, r10
                call    __chkstk
                sub     rsp, rax
                lea     r8, [rbp+20h+var_20]
                xor     r9d, r9d
                mov     edx, 10000Bh
                lea     rbx, [rsp+50h+var_20]
                mov     rcx, rbx
                call    sub_1402AAD20
                and     [rsp+50h+var_28], 0
                mov     r9, rdi
                mov     r8, rsi
                mov     [rsp+50h+var_30], rbx
                mov     rdx, r14
                mov     rcx, r15
                call    RtlUnwindEx
                mov     rcx, [rbp+20h+var_18]
                xor     rcx, rbp
                call    __security_check_cookie
                mov     rbx, [rbp+20h+arg_0]
                mov     rsi, [rbp+20h+arg_8]
                mov     rdi, [rbp+20h+arg_10]
                lea     rsp, [rbp+10h]
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140361810
RtlUnwind       endp

algn_1403618D7:                         ; DATA XREF: .pdata:00000001400D93E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403618E0   proc near               ; CODE XREF: sub_1403EBD44+F↓p
                                        ; sub_1403EBEF0+20↓p ...
                sub     rsp, 28h
                call    PsGetHostSilo
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403618E0   endp

algn_1403618EF:                         ; DATA XREF: .pdata:00000001400D93EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140361900   proc near               ; DATA XREF: .pdata:00000001400D93F8↑o
                                        ; sub_1405F3CF0+14B2↓o ...
                mov     eax, [rcx+464h]
                test    eax, 40000008h
                jnz     short loc_140361925
                mov     eax, [rcx+460h]
                test    al, 1
                jnz     short loc_140361925
                cmp     byte ptr [rdx], 0
                jnz     short loc_140361929
                lock btr dword ptr [rcx+278h], 6

loc_140361925:                          ; CODE XREF: sub_140361900+B↑j
                                        ; sub_140361900+15↑j ...
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140361929:                          ; CODE XREF: sub_140361900+1A↑j
                lock bts dword ptr [rcx+278h], 6
                jmp     short loc_140361925
sub_140361900   endp

; ---------------------------------------------------------------------------
algn_140361934:                         ; DATA XREF: .pdata:00000001400D93F8↑o
                align 20h
; Exported entry 2181. RtlGetProductInfo

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=50h

