NtAddAtom       proc near               ; DATA XREF: .pdata:00000001401249B0↑o
                                        ; PAGE:000000014098AE98↓o
                sub     rsp, 28h
                xor     r9d, r9d
                call    sub_140703F00
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtAddAtom       endp

algn_1409582C2:                         ; DATA XREF: .pdata:00000001401249B0↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1409582C8   proc near               ; CODE XREF: PcwAddInstance:loc_1406AD016↑p
                                        ; PcwCreateInstance+16CDD4↑p ...

var_78          = byte ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = dword ptr  10h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h

                mov     [rsp-8+arg_10], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0A0h
                mov     eax, cs:dword_140D2D1C8
                xor     ebx, ebx
                mov     [rbp+57h+arg_0], ebx
                test    eax, eax
                jnz     loc_140958371
                or      [rbp+57h+arg_8], 0FFFFFFFFh
                lea     rax, aStart     ; "Start"
                mov     [rbp+57h+var_60], rax
                lea     r8, [rbp+57h+var_70]
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_70], rbx
                lea     rax, [rbp+57h+arg_0]
                mov     [rbp+57h+var_68], 120h
                mov     [rbp+57h+var_58], rax
                lea     rdx, aPcw       ; "pcw"
                lea     rax, [rbp+57h+arg_8]
                mov     [rbp+57h+var_50], 4000004h
                mov     [rbp+57h+var_48], rax
                lea     ecx, [rbx+1]
                xor     eax, eax
                mov     [rbp+57h+var_40], 4
                xor     r9d, r9d
                mov     [rbp+57h+var_8], rax
                movups  [rbp+57h+var_38], xmm0
                mov     [rsp+0A0h+var_78], 1
                movups  [rbp+57h+var_28], xmm0
                movups  [rbp+57h+var_18], xmm0
                call    sub_14062B088
                cmp     eax, 0C0000034h
                cmovz   eax, ebx
                test    eax, eax
                js      short loc_14095837C
                mov     eax, [rbp+57h+arg_0]
                neg     eax
                sbb     eax, eax
                add     eax, 2
                mov     cs:dword_140D2D1C8, eax

loc_140958371:                          ; CODE XREF: sub_1409582C8+1F↑j
                dec     eax
                neg     eax
                sbb     eax, eax
                and     eax, 0C0000002h

loc_14095837C:                          ; CODE XREF: sub_1409582C8+97↑j
                mov     rbx, [rsp+0A0h+arg_10]
                add     rsp, 0A0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409582C8   endp

algn_14095838E:                         ; DATA XREF: .pdata:00000001401249BC↑o
                align 20h
; Exported entry 1692. PcwUnregister

; =============== S U B R O U T I N E =======================================


