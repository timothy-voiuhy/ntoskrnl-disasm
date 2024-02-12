CcSetParallelFlushFile proc near        ; DATA XREF: .rdata:0000000140080CD4↑o
                                        ; .pdata:00000001400D7460↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047D8CA SIZE 00000067 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+48h+var_18], rax
                mov     dil, dl
                mov     rax, [rcx+28h]
                movups  [rsp+48h+var_28], xmm0
                mov     rbx, [rax+8]
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rsp+48h+var_28]
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rbx+98h]
                test    dil, dil
                jz      short loc_14034291F
                bts     eax, 12h

loc_1403428EC:                          ; CODE XREF: CcSetParallelFlushFile+83↓j
                lea     rcx, [rsp+48h+var_28]
                mov     [rbx+98h], eax
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14047D8CA

loc_14034290F:                          ; CODE XREF: CcSetParallelFlushFile+13B02C↓j
                                        ; CcSetParallelFlushFile+13B038↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034291F:                          ; CODE XREF: CcSetParallelFlushFile+46↑j
                btr     eax, 12h
                jmp     short loc_1403428EC
CcSetParallelFlushFile endp
