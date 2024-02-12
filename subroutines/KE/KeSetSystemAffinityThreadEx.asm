KeSetSystemAffinityThreadEx proc near   ; CODE XREF: KeSetSystemAffinityThread+4↑p
                                        ; DATA XREF: .rdata:00000001400ADF00↑o ...

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

; FUNCTION CHUNK AT 00000001404B5422 SIZE 0000000F BYTES

                sub     rsp, 48h
                xorps   xmm1, xmm1
                xor     eax, eax
                cmp     cs:byte_140CFC47E, al
                xorps   xmm0, xmm0
                movups  [rsp+48h+var_28], xmm1
                mov     qword ptr [rsp+48h+var_28], rcx
                movups  [rsp+48h+var_18], xmm0
                jnz     loc_1404B5422

loc_1403CF387:                          ; CODE XREF: KeSetSystemAffinityThreadEx+E60CC↓j
                lea     rdx, [rsp+48h+var_18]
                mov     word ptr [rsp+48h+var_28+8], ax
                lea     rcx, [rsp+48h+var_28]
                call    KeSetSystemGroupAffinityThread
                mov     rax, qword ptr [rsp+48h+var_18]
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSetSystemAffinityThreadEx endp
