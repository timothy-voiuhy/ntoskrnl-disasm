ExSetResourceOwnerPointer proc near     ; CODE XREF: CcSetBcbOwnerPointer+24↓p
                                        ; CcSetBcbOwnerPointer+3B↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                test    byte ptr [rcx+1Ah], 1
                jz      short loc_1405B5795
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+0Eh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B5795:                          ; CODE XREF: ExSetResourceOwnerPointer+8↑j
                xor     r8d, r8d
                call    sub_1403131E0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSetResourceOwnerPointer endp
