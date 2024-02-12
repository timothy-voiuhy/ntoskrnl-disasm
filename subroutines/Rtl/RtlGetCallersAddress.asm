RtlGetCallersAddress proc near          ; DATA XREF: .pdata:00000001400F7CF8↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 30h
                xor     r9d, r9d
                lea     r8, [rax-18h]
                mov     rdi, rdx
                mov     rbx, rcx
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax-18h], xmm0
                lea     esi, [r9+2]
                mov     edx, esi
                mov     ecx, esi
                call    RtlCaptureStackBackTrace
                xor     r9d, r9d
                cmp     ax, 1
                mov     r8d, r9d
                cmovnb  r8, [rsp+38h+var_18]
                cmp     ax, si
                mov     rsi, [rsp+38h+arg_8]
                cmovnb  r9, [rsp+38h+var_10]
                mov     [rbx], r8
                mov     rbx, [rsp+38h+arg_0]
                mov     [rdi], r9
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetCallersAddress endp
