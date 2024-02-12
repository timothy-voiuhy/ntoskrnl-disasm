PoFxPowerControl proc near              ; DATA XREF: .rdata:0000000140099110↑o
                                        ; .pdata:00000001400DBFC0↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 000000014049B3E2 SIZE 0000004F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     rsi, r9
                mov     dword ptr [rsp+58h+var_38], 20h ; ' '
                mov     rbp, r8
                mov     r14, rdx
                mov     rbx, rcx
                lea     r8, qword_140412E80
                add     rcx, 0F0h
                mov     r9d, 1
                xor     edx, edx
                call    IoAcquireRemoveLockEx
                mov     edi, eax
                test    eax, eax
                js      short loc_14038CB1B
                mov     rax, [rsp+58h+arg_30]
                mov     edi, 0C00000BBh
                mov     rcx, [rbx+38h]
                test    rax, rax
                jnz     short loc_14038CB31

loc_14038CAFD:                          ; CODE XREF: PoFxPowerControl+95↓j
                cmp     byte ptr [rcx+7Ch], 0
                jnz     loc_14049B3E2

loc_14038CB07:                          ; CODE XREF: PoFxPowerControl+10E975↓j
                or      eax, 0FFFFFFFFh
                lock xadd [rbx+0F4h], eax
                cmp     eax, 1
                jz      loc_14049B41A

loc_14038CB1B:                          ; CODE XREF: PoFxPowerControl+45↑j
                                        ; PoFxPowerControl+10E98C↓j
                mov     rbx, [rsp+58h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14038CB31:                          ; CODE XREF: PoFxPowerControl+5B↑j
                and     qword ptr [rax], 0
                jmp     short loc_14038CAFD
PoFxPowerControl endp
