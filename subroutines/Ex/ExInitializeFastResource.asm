ExInitializeFastResource proc near      ; DATA XREF: .rdata:000000014009B780↑o
                                        ; .pdata:00000001400DCDE8↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A0CE8 SIZE 00000036 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     edi, edx
                mov     rbx, rcx
                mov     rax, cr8
                mov     esi, 1
                cmp     al, sil
                ja      loc_1404A0CE8
                test    edi, 0FFFFFFFEh
                jnz     loc_1404A0D02
                call    sub_140399C70
                movzx   eax, word ptr [rbx+1Ah]
                or      ax, si
                mov     [rbx+1Ah], ax
                test    sil, dil
                jz      short loc_140399BCF
                or      ax, 40h
                mov     [rbx+1Ah], ax

loc_140399BCF:                          ; CODE XREF: ExInitializeFastResource+45↑j
                lea     rax, [rbx+30h]
                mov     rcx, rbx
                mov     [rax+8], rax
                mov     [rax], rax
                call    sub_140399BFC
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExInitializeFastResource endp
