CcIsThereDirtyData proc near            ; DATA XREF: .pdata:00000001400F0EF4↑o

var_10          = byte ptr -10h

                mov     rax, rsp
                sub     rsp, 38h
                xorps   xmm0, xmm0
                lea     rdx, [rax-18h]
                movups  xmmword ptr [rax-18h], xmm0
                mov     [rax-18h], rcx
                mov     r8b, 1
                lea     rcx, sub_1404EAF30
                mov     byte ptr [rax-10h], 0
                call    sub_1402FBF50
                mov     al, [rsp+38h+var_10]
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcIsThereDirtyData endp
