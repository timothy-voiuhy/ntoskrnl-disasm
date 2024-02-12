CcSetAdditionalCacheAttributes proc near
                                        ; CODE XREF: CcSetAdditionalCacheAttributesEx+4F↑p
                                        ; DATA XREF: .rdata:000000014007F9F4↑o ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047C19C SIZE 00000084 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                mov     dil, r8b
                mov     rax, [rcx+28h]
                mov     sil, dl
                movups  [rsp+58h+var_28], xmm0
                mov     rbx, [rax+8]
                cmp     dword ptr [rbx+4], 0
                jbe     loc_14047C203
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rsp+58h+var_28]
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rbx+98h]
                test    sil, sil
                jnz     short loc_14033DD1D
                and     eax, 0FFFFFFFEh

loc_14033DCDD:                          ; CODE XREF: CcSetAdditionalCacheAttributes+A0↓j
                test    dil, dil
                jnz     short loc_14033DD22
                and     eax, 0FFFFFFFDh

loc_14033DCE5:                          ; CODE XREF: CcSetAdditionalCacheAttributes+A7↓j
                lea     rcx, [rsp+58h+var_28]
                mov     [rbx+98h], eax
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+58h+var_18]
                test    eax, eax
                jnz     loc_14047C19C

loc_14033DD08:                          ; CODE XREF: CcSetAdditionalCacheAttributes+13E51E↓j
                                        ; CcSetAdditionalCacheAttributes+13E52A↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033DD1D:                          ; CODE XREF: CcSetAdditionalCacheAttributes+58↑j
                or      eax, 1
                jmp     short loc_14033DCDD
; ---------------------------------------------------------------------------

loc_14033DD22:                          ; CODE XREF: CcSetAdditionalCacheAttributes+60↑j
                or      eax, 202h
                jmp     short loc_14033DCE5
CcSetAdditionalCacheAttributes endp
