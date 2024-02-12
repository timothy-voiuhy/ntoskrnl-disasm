ObCheckCreateObjectAccess proc near     ; CODE XREF: sub_1406483B0+14B2↓p
                                        ; DATA XREF: .rdata:000000014004F8FC↑o ...

var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = byte ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h
arg_28          = byte ptr  48h
arg_30          = qword ptr  50h

; FUNCTION CHUNK AT 00000001408008A6 SIZE 00000024 BYTES

                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], rsi
                mov     [rsp-18h+arg_18], r13
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     sil, [rbp+arg_28]
                lea     rax, [rcx-30h]
                and     [rbp+var_20], 0
                lea     r13, qword_140CFCE60
                and     [rbp+var_10], 0
                mov     r14, r8
                and     [rbp+var_18], 0
                lea     r8, [rbp+arg_0]
                shr     rax, 8
                mov     r15d, edx
                movzx   r10d, al
                lea     rdx, [rbp+var_18]
                movzx   eax, byte ptr [rcx-18h]
                mov     r9b, sil
                xor     r10, rax
                mov     [rbp+arg_0], 0
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     r10, rax
                mov     r13, [r13+r10*8+0]
                call    sub_140624BE0
                test    eax, eax
                js      loc_1408008A6
                lea     rbx, [r14+20h]
                mov     rcx, rbx
                call    SeLockSubjectContext
                cmp     [rbp+var_18], 0
                jz      loc_140627571
                mov     rax, [rbp+arg_30]
                lea     rcx, [r13+4Ch]
                mov     [rsp+70h+var_28], rax
                mov     r9d, r15d
                lea     rax, [rbp+var_20]
                mov     r8b, 1
                mov     [rsp+70h+var_30], rax
                mov     rdx, rbx
                mov     [rsp+70h+var_38], sil
                lea     rax, [rbp+var_10]
                mov     [rsp+70h+var_40], rcx
                mov     rcx, [rbp+var_18]
                mov     [rsp+70h+var_48], rax
                and     [rsp+70h+var_50], 0
                call    SeAccessCheck
                mov     rdx, [rbp+var_10]
                mov     sil, al
                test    rdx, rdx
                jnz     loc_1408008B3

loc_14062753F:                          ; CODE XREF: ObCheckCreateObjectAccess+114↓j
                                        ; ObCheckCreateObjectAccess+1D9465↓j
                mov     rcx, rbx
                call    SeUnlockSubjectContext
                mov     dl, [rbp+arg_0]
                mov     rcx, [rbp+var_18]
                call    ObReleaseObjectSecurity
                mov     al, sil

loc_140627556:                          ; CODE XREF: ObCheckCreateObjectAccess+1D944E↓j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     r13, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140627571:                          ; CODE XREF: ObCheckCreateObjectAccess+89↑j
                mov     sil, 1
                jmp     short loc_14062753F
ObCheckCreateObjectAccess endp
