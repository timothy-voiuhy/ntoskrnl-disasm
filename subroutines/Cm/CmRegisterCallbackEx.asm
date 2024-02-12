CmRegisterCallbackEx proc near          ; CODE XREF: sub_14093D0C0+71↓p
                                        ; DATA XREF: .pdata:000000014011ADF8↑o

var_18          = byte ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     r10, r9
                test    r8, r8
                jnz     short loc_14086B433
                mov     eax, 0C00000F1h
                jmp     short loc_14086B45F
; ---------------------------------------------------------------------------

loc_14086B433:                          ; CODE XREF: CmRegisterCallbackEx+A↑j
                cmp     [rsp+38h+arg_28], 0
                jz      short loc_14086B442
                mov     eax, 0C00000F4h
                jmp     short loc_14086B45F
; ---------------------------------------------------------------------------

loc_14086B442:                          ; CODE XREF: CmRegisterCallbackEx+19↑j
                mov     rax, [rsp+38h+arg_20]
                mov     r8, rdx
                mov     [rsp+38h+var_10], rax
                xor     r9d, r9d
                mov     rdx, r10
                mov     [rsp+38h+var_18], 0
                call    sub_1407021C8

loc_14086B45F:                          ; CODE XREF: CmRegisterCallbackEx+11↑j
                                        ; CmRegisterCallbackEx+20↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CmRegisterCallbackEx endp
