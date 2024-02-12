PoFxQueryCurrentComponentPerfState proc near
                                        ; DATA XREF: .pdata:00000001400F6528↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     r10d, r9d
                test    edx, edx
                jnz     short loc_1405693CE
                cmp     r8d, [rcx+33Ch]
                jnb     short loc_1405693CE
                lfence
                mov     rax, [rcx+340h]
                mov     edx, r8d
                mov     rdx, [rax+rdx*8]
                cmp     qword ptr [rdx+1A8h], 0
                jz      short loc_1405693CE
                mov     rax, [rsp+38h+arg_20]
                xor     r9d, r9d
                and     [rsp+38h+var_10], 0
                mov     r8d, r10d
                mov     [rsp+38h+var_18], rax
                call    sub_14056C0FC
                xor     eax, eax
                jmp     short loc_1405693D3
; ---------------------------------------------------------------------------

loc_1405693CE:                          ; CODE XREF: PoFxQueryCurrentComponentPerfState+9↑j
                                        ; PoFxQueryCurrentComponentPerfState+12↑j ...
                mov     eax, 0C000000Dh

loc_1405693D3:                          ; CODE XREF: PoFxQueryCurrentComponentPerfState+4C↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxQueryCurrentComponentPerfState endp
