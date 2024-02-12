FsRtlIsNameInUnUpcasedExpression proc near
                                        ; DATA XREF: .rdata:0000000140046548↑o
                                        ; .pdata:00000001400C9618↑o

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404185F0 SIZE 00000032 BYTES
; FUNCTION CHUNK AT 00000001404210B6 SIZE 00000020 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                mov     rbx, r9
                mov     rdi, rcx
                xor     eax, eax
                mov     [rsp+58h+var_28], rax
                mov     [rsp+58h+var_18], rax
                mov     [rsp+58h+var_20], rax
                mov     [rsp+58h+var_10], rax

loc_140206756:                          ; DATA XREF: .rdata:0000000140046534↑o
;   __try { // __finally(loc_1404185F0)
                test    r8b, r8b
                jz      short loc_14020679A
                test    rbx, rbx
                jnz     short loc_14020679A
                lea     rcx, [rsp+58h+var_28]
                call    sub_14021D920
                test    eax, eax
                jns     short loc_140206775
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_140206775:                          ; CODE XREF: FsRtlIsNameInUnUpcasedExpression+3C↑j
                mov     rdx, rdi
                lea     rcx, [rsp+58h+var_18]
                call    sub_14021D920
                test    eax, eax
                jns     short loc_14020678D
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_14020678D:                          ; CODE XREF: FsRtlIsNameInUnUpcasedExpression+54↑j
                lea     rdx, [rsp+58h+var_28]
                lea     rdi, [rsp+58h+var_18]
                xor     r8b, r8b

loc_14020679A:                          ; CODE XREF: FsRtlIsNameInUnUpcasedExpression+29↑j
                                        ; FsRtlIsNameInUnUpcasedExpression+2E↑j
                mov     [rsp+58h+var_38], rbx
                mov     r9b, 1
                mov     rcx, rdi
                call    sub_1402067E0
                movzx   ebx, al
;   } // starts at 140206756

loc_1402067AD:                          ; DATA XREF: .rdata:0000000140046534↑o
                cmp     [rsp+58h+var_20], 0
                jnz     loc_1404210B6

loc_1402067B9:                          ; CODE XREF: FsRtlIsNameInUnUpcasedExpression+21A991↓j
                cmp     [rsp+58h+var_10], 0
                jnz     loc_1404210C6

loc_1402067C5:                          ; CODE XREF: FsRtlIsNameInUnUpcasedExpression+21A9A1↓j
                movzx   eax, bl
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140206730
FsRtlIsNameInUnUpcasedExpression endp
