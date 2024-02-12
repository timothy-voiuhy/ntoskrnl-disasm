HalReadDmaCounter proc near             ; DATA XREF: .rdata:0000000140005FB0↑o
                                        ; .pdata:00000001400EE6EC↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, [rcx+98h]
                xorps   xmm0, xmm0
                xor     eax, eax
                add     rcx, 78h ; 'x'
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, cs:qword_140C4BD48
                mov     rcx, [rbx+1A8h]
                mov     rax, [rax+38h]
                call    sub_1404079D0
                lea     rcx, [rsp+48h+var_28]
                mov     edi, eax
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    ecx, ecx
                jz      short loc_1404B9123
                test    cl, 1
                jz      short loc_1404B9123
                mov     rcx, cr8
                cmp     cl, 0Fh
                ja      short loc_1404B9123
                cmp     bl, 0Fh
                ja      short loc_1404B9123
                cmp     cl, 2
                jb      short loc_1404B9123
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rsp+48h+var_18]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1404B9123
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404B9123:                          ; CODE XREF: HalReadDmaCounter+61↑j
                                        ; HalReadDmaCounter+66↑j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, edi
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalReadDmaCounter endp
