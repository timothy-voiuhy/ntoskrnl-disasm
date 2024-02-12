NtDuplicateObject proc near             ; DATA XREF: .rdata:000000014007D818↑o
                                        ; .pdata:0000000140104988↑o ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h

; FUNCTION CHUNK AT 00000001407E7F70 SIZE 00000036 BYTES
; FUNCTION CHUNK AT 000000014082474E SIZE 00000012 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rbx, r9
                mov     r14, r8
                mov     r15, rdx
                xor     edi, edi
                mov     [rsp+88h+var_30], rdi
                mov     [rsp+88h+var_38], rdi
                mov     [rsp+88h+var_40], rdi
                mov     rax, gs:188h
                movzx   esi, byte ptr [rax+232h]
                test    r9, r9
                jz      short loc_1406ECFAB
                test    sil, sil
                jnz     loc_1406ED0D8

loc_1406ECFAB:                          ; CODE XREF: NtDuplicateObject+40↑j
                                        ; NtDuplicateObject+196↓j
                mov     [rsp+88h+var_58], rdi
                lea     rax, [rsp+88h+var_38]
                mov     [rsp+88h+var_60], rax
                mov     [rsp+88h+var_68], 7544624Fh
                movzx   r9d, sil
                mov     r8, cs:PsProcessType
                mov     edx, 40h ; '@'
                call    ObReferenceObjectByHandleWithTag
                test    eax, eax
                js      loc_1406ED0C1
                test    r14, r14
                jz      loc_1406ED0FD
                mov     [rsp+88h+var_58], rdi
                lea     rax, [rsp+88h+var_40]
                mov     [rsp+88h+var_60], rax
                mov     [rsp+88h+var_68], 7544624Fh
                movzx   r9d, sil
                mov     r8, cs:PsProcessType
                mov     edx, 40h ; '@'
                mov     rcx, r14
                call    ObReferenceObjectByHandleWithTag
                mov     r14d, eax
                mov     [rsp+88h+arg_18], eax
                test    eax, eax
                js      loc_14082474E

loc_1406ED029:                          ; CODE XREF: NtDuplicateObject+1A7↓j
                mov     rdi, [rsp+88h+var_40]

loc_1406ED02E:                          ; CODE XREF: NtDuplicateObject+1377F3↓j
                mov     [rsp+88h+var_50], sil
                mov     eax, [rsp+88h+arg_30]
                mov     dword ptr [rsp+88h+var_58], eax
                mov     eax, [rsp+88h+arg_28]
                mov     dword ptr [rsp+88h+var_60], eax
                mov     eax, [rsp+88h+arg_20]
                mov     [rsp+88h+var_68], eax
                lea     r9, [rsp+88h+var_30]
                mov     r8, rdi
                mov     rdx, r15
                mov     r15, [rsp+88h+var_38]
                mov     rcx, r15
                call    ObDuplicateObject
                mov     esi, eax
                mov     [rsp+88h+var_44], eax
                test    rbx, rbx
                jz      short loc_1406ED097

loc_1406ED077:                          ; DATA XREF: .rdata:000000014007D7F4↑o
;   __try { // __except at loc_1406ED081
                mov     rcx, [rsp+88h+var_30]
                mov     [rbx], rcx
                jmp     short loc_1406ED097
;   } // starts at 1406ED077
; ---------------------------------------------------------------------------

loc_1406ED081:                          ; DATA XREF: .rdata:000000014007D7F4↑o
;   __except(loc_1407E7F70) // owned by 1406ED077
                mov     r15, [rsp+88h+var_38]
                mov     r14d, [rsp+88h+arg_18]
                mov     esi, [rsp+88h+var_44]
                mov     rdi, [rsp+88h+var_40]

loc_1406ED097:                          ; CODE XREF: NtDuplicateObject+115↑j
                                        ; NtDuplicateObject+11F↑j
                mov     edx, 7544624Fh
                mov     rcx, r15
                call    ObfDereferenceObjectWithTag
                test    rdi, rdi
                jz      short loc_1406ED0B6
                mov     edx, 7544624Fh
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag

loc_1406ED0B6:                          ; CODE XREF: NtDuplicateObject+147↑j
                test    r14d, r14d
                js      loc_140824758

loc_1406ED0BF:                          ; CODE XREF: NtDuplicateObject+1377FB↓j
                mov     eax, esi

loc_1406ED0C1:                          ; CODE XREF: NtDuplicateObject+79↑j
                                        ; NtDuplicateObject:loc_1406ED0FB↓j
                lea     r11, [rsp+88h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406ED0D8:                          ; CODE XREF: NtDuplicateObject+45↑j
                                        ; DATA XREF: .rdata:000000014007D804↑o
;   __try { // __except at loc_1406ED0FB
                mov     rdx, rbx
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                jb      short loc_1406ED0ED
                mov     rdx, rax

loc_1406ED0ED:                          ; CODE XREF: NtDuplicateObject+188↑j
                mov     rax, [rdx]
                mov     [rdx], rax
                mov     [r9], rdi
                jmp     loc_1406ECFAB
;   } // starts at 1406ED0D8
; ---------------------------------------------------------------------------

loc_1406ED0FB:                          ; DATA XREF: .rdata:000000014007D804↑o
;   __except(1) // owned by 1406ED0D8
                jmp     short loc_1406ED0C1
; ---------------------------------------------------------------------------

loc_1406ED0FD:                          ; CODE XREF: NtDuplicateObject+82↑j
                mov     r14d, edi
                mov     [rsp+88h+arg_18], edi
                jmp     loc_1406ED029
; } // starts at 1406ECF60
NtDuplicateObject endp
