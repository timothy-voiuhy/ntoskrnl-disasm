KdRefreshDebuggerNotPresent proc near   ; CODE XREF: sub_140516C30+870↓p
                                        ; DATA XREF: .rdata:00000001400AE20C↑o ...

var_18          = xmmword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404B5D2E SIZE 00000052 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     ecx, ecx
                xorps   xmm0, xmm0
                cmp     cs:byte_140C0F430, cl
                movups  [rsp+38h+var_18], xmm0
                jz      loc_1404B5D2E

loc_1403CFB70:                          ; CODE XREF: KdRefreshDebuggerNotPresent+E61E4↓j
                mov     al, 1

loc_1403CFB72:                          ; CODE XREF: KdRefreshDebuggerNotPresent+E622B↓j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdRefreshDebuggerNotPresent endp
