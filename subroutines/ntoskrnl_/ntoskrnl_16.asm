ntoskrnl_16     proc near               ; DATA XREF: .pdata:00000001401069D4↑o

var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                mov     rdi, rdx
                mov     [rsp+38h+var_14], ebx
                test    rdx, rdx
                jz      short loc_1407199A5
                test    rcx, rcx
                jz      short loc_1407199AC
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]

loc_14071995D:                          ; CODE XREF: ntoskrnl_16+83↓j
                lea     r8, [rsp+38h+var_18]
                mov     [rsp+38h+var_10], rbx
                lea     rdx, sub_14071F7F0
                mov     [rsp+38h+var_18], ebx
                call    sub_140719A30
                mov     esi, eax
                test    eax, eax
                js      short loc_1407199B5
                mov     rcx, [rsp+38h+var_10]
                mov     [rdi], rcx
                mov     [rsp+38h+var_10], rbx

loc_14071998A:                          ; CODE XREF: ntoskrnl_16+8A↓j
                mov     rcx, rbx
                call    sub_1407199E8
                mov     eax, esi

loc_140719994:                          ; CODE XREF: ntoskrnl_16+7A↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407199A5:                          ; CODE XREF: ntoskrnl_16+1B↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140719994
; ---------------------------------------------------------------------------

loc_1407199AC:                          ; CODE XREF: ntoskrnl_16+20↑j
                mov     rcx, cs:qword_140C44D00
                jmp     short loc_14071995D
; ---------------------------------------------------------------------------

loc_1407199B5:                          ; CODE XREF: ntoskrnl_16+4B↑j
                mov     rbx, [rsp+38h+var_10]
                jmp     short loc_14071998A
ntoskrnl_16     endp

; ---------------------------------------------------------------------------
byte_1407199BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001401069D4↑o
; Exported entry  13.

; =============== S U B R O U T I N E =======================================


