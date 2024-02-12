PoFxRegisterComponentPerfStates proc near
                                        ; DATA XREF: .pdata:000000014011F8C8↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     r10, r8
                mov     r8d, edx
                cmp     edx, [rcx+33Ch]
                jb      short loc_1408E5A36
                mov     rdx, rcx
                mov     r9d, 2
                mov     ecx, 614h
                call    sub_1405695EC
; ---------------------------------------------------------------------------
                align 2

loc_1408E5A36:                          ; CODE XREF: PoFxRegisterComponentPerfStates+10↑j
                lfence
                mov     rax, [rcx+340h]
                mov     rdx, [rax+r8*8]
                mov     rax, [rdx+1A8h]
                test    rax, rax
                jz      short loc_1408E5A61
                mov     rdx, rcx
                xor     r9d, r9d
                mov     ecx, 600h
                call    sub_1405695EC
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408E5A61:                          ; CODE XREF: PoFxRegisterComponentPerfStates+3E↑j
                mov     rax, [rsp+38h+arg_28]
                mov     r8, r10
                mov     [rsp+38h+var_10], rax
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                call    sub_1408E6A24
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxRegisterComponentPerfStates endp
