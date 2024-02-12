SeQuerySecurityAttributesToken proc near
                                        ; CODE XREF: sub_140201574+B0↑p
                                        ; sub_1402048F8+64↑p ...

var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     edi, [rsp+48h+arg_20]
                mov     rbx, r9
                mov     ebp, r8d
                mov     r14, rdx
                mov     rsi, rcx
                test    edi, edi
                jz      short loc_1405E8EB1
                test    rbx, rbx
                jz      short loc_1405E8EB6

loc_1405E8E42:                          ; CODE XREF: SeQuerySecurityAttributesToken+A4↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rax, [rsp+48h+arg_28]
                mov     r9d, ebp
                mov     [rsp+48h+var_10], rax
                mov     r8, r14
                mov     [rsp+48h+var_18], edi
                mov     rcx, rsi
                mov     [rsp+48h+var_20], rbx
                mov     [rsp+48h+var_28], 0
                call    sub_140205A00
                mov     rcx, [rsi+30h]
                mov     ebx, eax
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     eax, ebx

loc_1405E8E95:                          ; CODE XREF: SeQuerySecurityAttributesToken+AB↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E8EB1:                          ; CODE XREF: SeQuerySecurityAttributesToken+2B↑j
                test    rbx, rbx
                jz      short loc_1405E8E42

loc_1405E8EB6:                          ; CODE XREF: SeQuerySecurityAttributesToken+30↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1405E8E95
SeQuerySecurityAttributesToken endp
