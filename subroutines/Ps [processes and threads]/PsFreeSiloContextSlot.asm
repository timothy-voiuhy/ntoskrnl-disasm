PsFreeSiloContextSlot proc near         ; CODE XREF: sub_140883FC0+2D↑p
                                        ; DATA XREF: .pdata:00000001401213EC↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+arg_8], 0
                mov     edi, ecx
                xor     ecx, ecx
                jmp     short loc_140907155
; ---------------------------------------------------------------------------

loc_140907136:                          ; CODE XREF: PsFreeSiloContextSlot+42↓j
                mov     rcx, [rbx+518h]
                test    rcx, rcx
                jz      short loc_140907152
                lea     r8, [rsp+38h+arg_8]
                mov     edx, edi
                call    sub_140200540
                test    eax, eax
                jns     short loc_140907177

loc_140907152:                          ; CODE XREF: PsFreeSiloContextSlot+20↑j
                mov     rcx, rbx

loc_140907155:                          ; CODE XREF: PsFreeSiloContextSlot+14↑j
                xor     edx, edx
                call    sub_1406048A0
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_140907136
                mov     ecx, edi
                call    sub_140910634
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140907177:                          ; CODE XREF: PsFreeSiloContextSlot+30↑j
                mov     rcx, [rsp+38h+arg_8]
                call    PsDereferenceSiloContext
                mov     rdx, [rbx+518h]
                xor     r9d, r9d
                and     [rsp+38h+var_18], 0
                xor     r8d, r8d
                mov     ecx, 199h
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
PsFreeSiloContextSlot endp
