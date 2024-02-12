NtCreateCrossVmEvent proc near          ; DATA XREF: .pdata:0000000140124518↑o
                                        ; PAGE:000000014098AED8↓o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                mov     r10d, edx
                mov     rbx, rcx
                and     [rsp+58h+var_10], 0
                mov     rax, gs:188h
                mov     dil, [rax+232h]
                test    dil, dil
                jz      short loc_140950A76

loc_140950A5B:                          ; DATA XREF: .rdata:00000001400C4EE8↑o
;   __try { // __except at loc_140950A74
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovb   rdx, rcx
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_140950A76
;   } // starts at 140950A5B
; ---------------------------------------------------------------------------

loc_140950A74:                          ; DATA XREF: .rdata:00000001400C4EE8↑o
;   __except(1) // owned by 140950A5B
                jmp     short loc_140950ACB
; ---------------------------------------------------------------------------

loc_140950A76:                          ; CODE XREF: NtCreateCrossVmEvent+29↑j
                                        ; NtCreateCrossVmEvent+42↑j
                mov     [rsp+58h+var_28], dil
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_30], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                mov     edx, r10d
                lea     rcx, [rsp+58h+var_10]
                call    sub_14095DA18
                mov     edx, eax
                mov     [rsp+58h+var_18], eax
                test    eax, eax
                js      short loc_140950AC9
                test    dil, dil
                jz      short loc_140950AC1

loc_140950AB1:                          ; DATA XREF: .rdata:00000001400C4EF8↑o
;   __try { // __except at loc_140950ABB
                mov     rcx, [rsp+58h+var_10]
                mov     [rbx], rcx
                jmp     short loc_140950AC9
;   } // starts at 140950AB1
; ---------------------------------------------------------------------------

loc_140950ABB:                          ; DATA XREF: .rdata:00000001400C4EF8↑o
;   __except(1) // owned by 140950AB1
                mov     edx, [rsp+58h+var_18]
                jmp     short loc_140950AC9
; ---------------------------------------------------------------------------

loc_140950AC1:                          ; CODE XREF: NtCreateCrossVmEvent+7F↑j
                mov     rax, [rsp+58h+var_10]
                mov     [rbx], rax

loc_140950AC9:                          ; CODE XREF: NtCreateCrossVmEvent+7A↑j
                                        ; NtCreateCrossVmEvent+89↑j ...
                mov     eax, edx

loc_140950ACB:                          ; CODE XREF: NtCreateCrossVmEvent:loc_140950A74↑j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140950A30
NtCreateCrossVmEvent endp
